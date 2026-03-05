# Relatório Técnico: Migração de Dados Supabase → SQL Server

Este relatório detalha a arquitetura de dados atual do projeto **planejamento_spobras**, mapeando a origem dos dados (SQL Server Legado) e as lacunas funcionais que hoje residem no Supabase, visando a eliminação do uso do Supabase para dados funcionais.

## 1. Mapa de Origens (VIEW → Tabela Supabase)

Atualmente, o script `scripts/sync-staging.js` realiza uma sincronização unidirecional do SQL Server para o Supabase.

| Tabela Supabase | VIEW/Tabela SQL origem | Tipo de relação | Observações |
| :--- | :--- | :--- | :--- |
| `empreendimentos` | `[empreendimentos].[TB_EMPREENDIMENTOS]` | 1:1 (Sync) | Chave primária derivada via MD5: `empreendimento-${idEmpreendimento}`. |
| `contratos` | `[contratos].[TB_CONTRATOS_SECRETARIA]` | 1:1 (Sync) | Chave primária derivada via MD5: `contrato-${nmContrato}`. |
| `empreendimentos_contratos` | `[contratos].[TB_CONTRATO_EMPREENDIMENTOS]` | N:N (Sync) | Alimenta a tabela de junção entre Empreendimentos e Contratos. |
| `programas` | `[empreendimentos].[VW_EMPREENDIMENTOS]` | Lookup | Obtido via `SELECT DISTINCT "Id Programas", "Programas"`. |
| `distritos` | `[empreendimentos].[VW_EMPREENDIMENTO_LOCALIZACAO]` | Lookup | Obtido via `SELECT DISTINCT idDistrito, Distrito, Subprefeitura`. |
| `gerencias` | `[contratos].[VW_CONTRATOS]` | Lookup | Mapeado a partir de `idSetorGestor` / `nmSetorGestor`. |
| `empreendimento_fases` | `[empreendimentos].[VW_EMPREENDIMENTOS]` | Lookup | Mapeado a partir de `idFase` / `Fase`. |

> [!NOTE]
> Os UUIDs no Supabase são gerados deterministicamente no script de sync para garantir que re-execuções não dupliquem registros, utilizando o algoritmo MD5 sobre prefixos pré-definidos.

## 2. Detalhamento de Campos (Principais Entidades)

### Entidade: Empreendimento
| Coluna Supabase | Origem (SQL ou Calculada) | Observações |
| :--- | :--- | :--- |
| `id` | Calculada (MD5) | `generateUUID('empreendimento-' + idEmpreendimento)` |
| `nome` | `nmEmpreendimento` | |
| `codigo` | `idEmpreendimento` | Armazenado como string no Supabase. |
| `descricao` | `nmDescricao` | |
| `localizacao` | `nmEndereco` | |
| `status` | `idFase` | |
| `valor_total` | `vlEstimado` | |
| `id_programa` | `idPrograma` | |
| `id_distrito` | `idDistrito` | |
| `gerencia` | `idGestor` | |

### Entidade: Contrato
| Coluna Supabase | Origem (SQL ou Calculada) | Observações |
| :--- | :--- | :--- |
| `id` | Calculada (MD5) | `generateUUID('contrato-' + nmContrato)` |
| `numero` | `nmContrato` | |
| `objeto` | `nmObjeto` | |
| `valor_total` | `vlContrato` | |
| `data_inicio` | `dtInicioVigencia` | |
| `data_fim` | `dtTerminoVigencia` | |
| `status` | `idStatus` + Lookup | O nome do status é resolvido via `[contratos].[TB_STATUS]`. |
| `contratada` | `idContratada` | Atualmente armazena apenas o ID pois não há acesso à `TB_CONTRATADA`. |

## 3. Lacunas para Escrita Direta no SQL

As seguintes entidades hoje existem **apenas** no Supabase e precisam ser migradas para novas tabelas no SQL Server local:

### Entidade: Lotes
- **Criar tabela no SQL?** Sim (`TB_APP_LOTES`).
- **Estrutura sugerida:**
  ```sql
  CREATE TABLE contratos.TB_APP_LOTES (
      idLote UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
      idContrato INT NOT NULL, -- FK para TB_CONTRATOS_SECRETARIA
      nmLote NVARCHAR(255) NOT NULL,
      nmTipo NVARCHAR(50), -- GERAL, OAE, ESCOLA
      nmDescricao NVARCHAR(MAX),
      dtCriacao DATETIME DEFAULT GETDATE(),
      dtAtualizacao DATETIME DEFAULT GETDATE(),
      idUsuarioCriacao UNIQUEIDENTIFIER
  );
  ```
- **Campos de auditoria:** `dtCriacao`, `dtAtualizacao`, `idUsuarioCriacao`.

### Entidade: Serviços
- **Criar tabela no SQL?** Sim (`TB_APP_SERVICOS`).
- **Estrutura sugerida:**
  ```sql
  CREATE TABLE contratos.TB_APP_SERVICOS (
      idServico UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
      idContrato INT NULL,
      idEmpreendimento INT NULL,
      nmCodigo NVARCHAR(50),
      nmDescricao NVARCHAR(MAX) NOT NULL,
      nmUnidade NVARCHAR(20),
      vlQuantidade DECIMAL(15,2),
      vlPrecoUnitario DECIMAL(15,2),
      vlTotal DECIMAL(15,2),
      nmTipo NVARCHAR(100), -- Ex: Execução de Obras, Receita, etc.
      nmStatus NVARCHAR(50),
      jsSubtipos JSON, -- Para armazenar array de subtipos se necessário (SQL 2016+)
      dtCriacao DATETIME DEFAULT GETDATE()
  );
  ```

### Entidade: Planejamento (Fases)
- **Criar tabela no SQL?** Sim (`TB_APP_PLANEJAMENTO_FASES`).
- **Estrutura sugerida:**
  ```sql
  CREATE TABLE empreendimentos.TB_APP_PLANEJAMENTO_FASES (
      idFasePlanejamento UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
      idEmpreendimento INT NOT NULL,
      nmFase NVARCHAR(255),
      nmTipoFase NVARCHAR(50), -- receita, despesa, execução
      dtInicio DATE,
      dtFim DATE,
      vlPlanejado DECIMAL(15,2),
      nrOrdem INT,
      idPredecessora UNIQUEIDENTIFIER NULL,
      nrDiasFolga INT DEFAULT 0
  );
  ```

### Entidade: Medições e Empenhos
- Ambas precisam de tabelas próprias no SQL Server seguindo o padrão acima, correlacionando com `idServico` ou `idContrato`/`idEmpreendimento` através dos IDs originais do SQL Server (INT).

## 4. Proposta de Arquitetura de API

A nova API deve atuar como um Proxy Seguro entre o Frontend (Next.js) e o SQL Server.

| Entidade | Endpoint | Operações | Origem SQL | Observações |
| :--- | :--- | :--- | :--- | :--- |
| **Empreendimento** | `/api/empreendimentos` | GET | `VW_EMPREENDIMENTOS` | **Read-only**. |
| **Contrato** | `/api/contratos` | GET | `TB_CONTRATOS_SECRETARIA` | **Read-only**. |
| **Lote** | `/api/lotes` | GET/POST/PUT/DELETE | `TB_APP_LOTES` | **Read-write**. |
| **Serviço** | `/api/servicos` | GET/POST/PUT/DELETE | `TB_APP_SERVICOS` | **Read-write**. |
| **Planejamento** | `/api/planejamento` | GET/POST/PUT/DELETE | `TB_APP_PLANEJAMENTO_FASES` | **Read-write**. |

### Recomendações Técnicas:
- **Tecnologia:** Utilizar o próprio Next.js API Routes (Backend) com `mssql` ou um microserviço Node.js dedicado.
- **Identificadores:** Parar de usar UUIDs derivados (MD5) para novas transações. Usar os IDs nativos do SQL Server (INT ou NEWID).
- **Consistência:** Implementar Stored Procedures para operações complexas de escrita (como salvar medição e atualizar saldo do contrato) para garantir atomicidade no banco local.

## 5. Recomendações para a Migração

1.  **Criação do Schema:** Executar os DDLs no SQL Server para as tabelas "APP" (Lotes, Serviços, etc.).
2.  **Migração Inicial:** Realizar um script de "one-time migration" para mover os dados atuais do Supabase para estas novas tabelas.
    - *Atenção:* É necessário mapear os UUIDs do Supabase de volta para os IDs INT originais do SQL Server para manter os relacionamentos.
3.  **Desenvolvimento da API:** Implementar os endpoints de leitura e escrita.
4.  **Troca de Cliente no Frontend:**
    - Substituir o `supabaseClient` por um `apiClient` (axios/fetch) nas páginas de Lotes, Serviços e Planejamento.
    - Manter o Supabase apenas no `Middleware` e `AuthProvider` para gerenciamento de sessão (JWT).
5.  **Desativação do Sync:** Uma vez que o Frontend consuma a API (que lê direto do SQL), o script `sync-staging.js` e as tabelas duplicadas no Supabase podem ser eliminados.

> [!WARNING]
> **Ponto Crítico:** A performance das VIEWS do SQL Server legado pode impactar a experiência de navegação. Recomenda-se a criação de **INDEXED VIEWS** ou tabelas de cache no SQL Server caso a latência de leitura das views atuais seja alta.
