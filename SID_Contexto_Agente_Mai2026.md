# SID — Sistema Integrado de Dados (SPObras)
## Documento de Contexto para Agente de Desenvolvimento — Maio 2026

> **Instruções para o agente:** Você está auxiliando no desenvolvimento do SID, sistema web da SPObras (Superintendência de Obras da Prefeitura de São Paulo). Comunique-se sempre em português. Não abra o browser, não execute testes manuais e não inicie servidores — apenas leia, analise e corrija o código conforme solicitado.

---

## 1. Visão Geral

O **SID (Sistema Integrado de Dados)** centraliza e visualiza informações de obras públicas da SPObras, integrando uma API REST legada externa com uma camada de dados local no Supabase. O sistema acompanha o ciclo de vida completo de empreendimentos (obras): contratos, lotes, serviços, medições, empenhos, aditamentos e licenciamentos ambientais.

**Repositório:** `https://github.com/projetos-spobras/planejamento-spobras`
**Branch ativa:** `feat/modulo-ambiental`
**Ambiente local:** `http://10.89.244.42:3000`
**Deploy produção:** IIS (Windows Server)

---

## 2. Stack Tecnológica

| Camada | Tecnologia |
|---|---|
| Framework web | Next.js App Router (SSR + Client Components) |
| Banco de dados local | Supabase (PostgreSQL) |
| Autenticação | Supabase Auth (email/password) |
| API de dados legados | API REST externa SPObras |
| Linguagem | TypeScript |
| Estilização | Tailwind CSS + shadcn/ui |
| Deploy | IIS (Windows Server) |
| Automação | n8n (workflows de integração) |

---

## 3. Arquitetura Geral

O sistema adota arquitetura híbrida com três padrões de carregamento:

- **Server Components (SSR):** dados estáticos e pesados — empreendimentos, contratos, lotes, serviços, vínculos. Carregados em `page.tsx` via `createServerClient`.
- **Client Components com hooks customizados:** dados financeiros dinâmicos (empenhos, medições, aditamentos) carregados de forma **lazy** após a página montar, para não bloquear o TTFB.
- **API Route Handlers:** intermediam chamadas do cliente para a API legada, centralizando autenticação e tratamento de erros.
- **Server Actions:** processam todas as mutações (login, criação de vínculos, importação de aditamentos, upload de anexos, salvamento ambiental).

### Fluxo de dados principal

```
Browser (Client)
│
├─► Server Component (page.tsx) ──► Supabase (dados locais)
│                                └─► API externa (via lib/api-client.ts)
│
└─► Hook lazy (useLoteDetalhe) ──► /api/contrato-financeiro (Route Handler)
                                └─► API legada /api/Contratos/{_originalId}/Empenhos
                                                /api/Contratos/{_originalId}/Medicoes
                                                /api/Contratos/{_originalId}/Aditamentos
```

---

## 4. Estrutura de Pastas

```
src/
├── app/
│   ├── (auth)/login/
│   │   ├── page.tsx               # Formulário de login (Client Component)
│   │   └── actions.ts             # Server Action de autenticação
│   ├── (dashboard)/
│   │   ├── layout.tsx             # Layout protegido + verificação trocar_senha
│   │   ├── empreendimentos/
│   │   │   ├── page.tsx           # Listagem de empreendimentos
│   │   │   └── [id]/page.tsx      # Detalhe do empreendimento
│   │   ├── contratos/[id]/page.tsx
│   │   ├── lotes/[id]/page.tsx
│   │   ├── servicos/
│   │   ├── planejamento/
│   │   ├── ambiental/             # Módulo Ambiental (rota canônica: /ambiental)
│   │   │   ├── page.tsx           # Listagem: empreendimentos com gestão ambiental
│   │   │   └── [id]/page.tsx      # Detalhe do serviço ambiental
│   │   ├── desapropriações/
│   │   ├── empenhos/
│   │   └── usuarios/
│   ├── api/
│   │   └── contrato-financeiro/route.ts   # Route Handler financeiro
│   └── actions/
│       ├── aditamentos.ts
│       └── empreendimento-anexos.ts
├── components/
│   ├── app-sidebar.tsx            # Menu lateral com todas as rotas
│   ├── layout/
│   │   └── dashboard-shell.tsx
│   └── relationships/
│       ├── empreendimento-details.tsx
│       ├── lote-details.tsx
│       └── contrato-details.tsx
├── hooks/
│   └── useLoteDetalhe.ts          # Hook lazy de dados financeiros do lote
├── lib/
│   ├── api-client.ts              # Funções de acesso à API legada + fetchAllPages
│   ├── financial-utils.ts         # Cálculos financeiros
│   └── supabase/
│       ├── client.ts              # createBrowserClient
│       └── server.ts              # createServerClient
└── types/
    └── index.ts
```

---

## 5. Módulos Funcionais

### 5.1 Empreendimentos (`/empreendimentos`)
Tela central do sistema. Exibe informações cadastrais, contratos vinculados, serviços, avanço físico e financeiro, empenhos, medições, aditamentos e anexos.

- **Dados cadastrais:** SSR no `page.tsx`
- **Empenhos/medições/aditamentos:** lazy, via `contratosComOriginalId` passado ao `EmpreendimentoDetails`
- **Avanço físico:** RPC Supabase `get_avanco_fisico(p_empreendimento_id)`

**Aba Serviços:** Ao cadastrar um serviço de tipo ambiental, exibe bloco adicional "Tipos de Licença" com 12 checkboxes opcionais (LAP, LAI, LAO, TCA, Arqueologia, DAEE, Dispensa de Licença, Áreas Contaminadas, Plantio, EVA, EIA/RIMA, Taxa Ambiental). Ao salvar, cria automaticamente registros em `ambiental_licenciamentos` e o empreendimento passa a aparecer no módulo Ambiental.

### 5.2 Contratos (`/contratos`)
Contratos administrativos vinculados a múltiplos empreendimentos. Dados financeiros carregados via `_originalId` (campo crítico — ver seção 7).

### 5.3 Lotes (`/lotes`)
Agrupamentos de empreendimentos dentro de um contrato. Hook `useLoteDetalhe(loteId, contratosComOriginalId, assignedEmpIds)` carrega dados financeiros em paralelo.

### 5.4 Módulo Ambiental (`/ambiental`)
**Rota canônica e definitiva: `/ambiental`** — não alterar para `/meio-ambiente` ou qualquer variante.

**Listagem (`/ambiental`):**
- Busca empreendimentos que possuem serviços de tipo ambiental na tabela `servicos`
- Agrupa por empreendimento (um empreendimento com múltiplos serviços ambientais = uma linha)
- Exibe chips de tipo de licença por empreendimento
- Status consolidado = pior status entre os `ambiental_licenciamentos` (Pendente > Em Andamento > Regular)
- Botão "ABRIR COCKPIT" → `/empreendimentos/[id]`
- **Não tem** botão de importar planilha (removido)

**Detalhe (`/ambiental/[id]`):**
- Parâmetro `[id]` = `servico_id` (UUID da tabela `servicos`)
- Seção 1: Identificação (técnico GMA, gestor, fiscal, gerência, SEI, programa, estágio, etc.) — salvo em `ambiental_detalhes`
- Seção 2: Licenciamentos editáveis (status clicável 4 estados: ○ → OK → A → P → ○)
- Seção 3: Comentários com `@menções` — busca usuários em `tb_perfis`, salva em `ambiental_comentarios`

### 5.5 Planejamento (`/planejamento`)
Módulo de planejamento financeiro e físico com indicadores:
1. **Valor Estimado em Serviços** = Σ(valor_estimado de serviços sem contrato) + Σ(valor total de contratos)
2. **Total Contratado** = Σ(valor_original + valor_aditamento + valor_reajuste) dos contratos
3. **A Contratar** = Σ(valor_estimado) dos serviços sem contrato vinculado
4. **Planejamento Financeiro** = valor total planejado desmembrado em: contratos planejados, contratos sem plano, estimados sem plano

### 5.6 Usuários e Controle de Acesso
- **Tabela:** `tb_perfis`
- **Campos:** `funcao`, `nivel_acesso`, `modulos_acesso` (array), `trocar_senha` (boolean)
- Permissão de edição no módulo ambiental: `modulos_acesso` inclui `"ambiental"` ou `nivel_acesso >= admin`

---

## 6. Integração com API Legada

### Endpoints principais
```
GET /api/Empreendimentos
GET /api/Contratos
GET /api/Contratos/{_originalId}/Empenhos
GET /api/Contratos/{_originalId}/Medicoes
GET /api/Contratos/{_originalId}/Aditamentos
```

### Paginação
`fetchAllPages()` em `src/lib/api-client.ts` itera páginas automaticamente com proteção contra duplicatas — ao detectar itens repetidos na página 2+, interrompe a paginação.

### Mapeamento de IDs (REGRA CRÍTICA)

| Contexto | Campo | Tipo | Uso |
|---|---|---|---|
| Supabase (local) | `id` | UUID | Chave primária, vínculos internos |
| API legada | `_originalId` | Numérico | **Todas** as chamadas à API externa |
| Contratos | `id` gerado via `generateUUID('contrato-{num}')` | UUID determinístico | Reconciliação API ↔ Supabase |

> **Toda chamada à API legada usa `_originalId` (numérico), NUNCA o UUID do Supabase.**

---

## 7. Modelo de Dados (Supabase)

### Tabelas principais

| Tabela | Descrição |
|---|---|
| `empreendimentos` | Obras cadastradas (sincronizadas da API) |
| `contratos` | Contratos administrativos |
| `lotes` | Agrupamentos de execução |
| `empreendimentos_contratos` | Vínculos N:N entre empreendimentos e contratos, com `lote_id` |
| `servicos` | Serviços físicos por empreendimento/contrato. Campo `tipo_servico` identifica ambientais. Campo `ambiental_id` (FK opcional para `ambiental_detalhes`) |
| `planejamento_fases` | Fases de planejamento dos serviços |
| `distribuicao_financeira` | Distribuição financeira por período |
| `aditamentos` | Aditamentos importados do sistema legado |
| `tb_perfis` | Perfis de usuário com controle de acesso |
| `programas` | Lookup de programas de obras |
| `distritos` | Lookup de distritos |
| `gerencias` | Lookup de gerências |

### Tabelas do módulo Ambiental

| Tabela | Descrição |
|---|---|
| `ambiental_licenciamentos` | Licenças por serviço. Campos: `servico_id` (FK), `tipo` (LAP/LAI/LAO/TCA etc.), `status` (NULL/OK/A/P), `observacao`, `updated_at` |
| `ambiental_detalhes` | Dados detalhados do serviço ambiental. Campos: `servico_id` UNIQUE FK, `tecnico_gma`, `gestor`, `fiscal`, `gerencia`, `contratada`, `contrato_spobras`, `contrato_siurb`, `sei_processo`, `programa`, `estagio` INTEGER, `status`, `prazo` DATE, `valor_contrato`, `valor_medido`, `percentual_conclusao`, `tem_empenho` BOOLEAN |
| `ambiental_comentarios` | Comentários com menções. Campos: `servico_id` FK, `autor_id` FK auth.users, `texto`, `mencoes` UUID[], `created_at` |

### Funções RPC (PostgreSQL)

| Função | Retorno |
|---|---|
| `get_avanco_fisico(p_empreendimento_id)` | Percentual de avanço físico |
| `get_valor_medido_total(p_empreendimento_id)` | Valor total medido aprovado |
| `get_ultima_medicao_aprovada(p_empreendimento_id)` | Data da última medição aprovada |

---

## 8. Autenticação e Login

**Fluxo de login (decisão técnica importante):**
1. Usuário submete email/senha
2. Server Action `login()` chama `supabase.auth.signInWithPassword()`
3. Verifica `tb_perfis.trocar_senha`
4. Retorna `{ success: true, redirectTo: '/trocar-senha' }` ou `{ redirectTo: '/empreendimentos' }`
5. Cliente executa `router.push(redirectTo)` — **NÃO usar `redirect()` do Next.js na Server Action** (causa erro "unexpected response")

---

## 9. Variáveis de Ambiente

```env
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=
API_EXTERNAL_BASE_URL=   # URL base da API legada SPObras
API_EXTERNAL_TOKEN=      # Token de autenticação da API legada
```

> **Segurança:** O arquivo `.env.local` não é versionado no Git. Nunca commitar chaves ou tokens. O repositório tem GitHub Push Protection ativo — commits com segredos são bloqueados automaticamente.

---

## 10. Problemas Já Resolvidos (não regredir)

### 10.1 Empenhos/medições retornando erro 500
**Causa:** Chamadas à API legada usavam UUID do Supabase em vez de `_originalId`.
**Solução:** `_originalId` resolvido no `page.tsx` servidor e passado como `contratosComOriginalId` ao componente cliente.

### 10.2 Aditamentos sempre vazios
**Causa:** Hook chamava `importLegacyAditamentos()` (função de escrita) em vez de buscar dados já salvos.
**Solução:** Substituído por `getAditamentosDoLote(loteId)` — leitura pura.

### 10.3 Erro "unexpected response" no login
**Causa:** `redirect()` do Next.js dentro de Server Action lança exceção interna que o cliente interpreta como erro de rede.
**Solução:** Server Action retorna objeto com `redirectTo`, cliente faz `router.push()`.

### 10.4 Duplicatas na paginação da API
**Causa:** API legada repete itens da página 1 quando total é múltiplo do pageSize.
**Solução:** `fetchAllPages()` detecta duplicatas por ID e interrompe.

### 10.5 Hydration mismatch no AppSidebar
**Causa:** `href` da rota ambiental definido diferente em servidor e cliente (`/ambiental` vs `/meio-ambiente`).
**Solução:** Padronizado como `/ambiental` em todos os arquivos. Rota canônica é `/ambiental`.

### 10.6 Hydration mismatch nos IDs do Radix Tabs
**Causa:** Radix UI gerava IDs diferentes entre servidor e cliente por ordem de montagem divergente.
**Solução:** Prop `id={empreendimento-tabs-${empreendimento.id}}` fixada no componente `<Tabs>`.

### 10.7 GitHub Push Protection bloqueando push
**Causa:** Arquivos `scratch/test_api.js` e `scratch/test_db.js` continham `SUPABASE_SERVICE_ROLE_KEY` hardcoded no histórico de commits.
**Solução:** Arquivos removidos do histórico via `git filter-branch`. Chave do Supabase rotacionada. Pasta `scratch/` adicionada ao `.gitignore`. Push desbloqueado via link de bypass após rotação da chave.

### 10.8 Módulo Ambiental retornando 0 registros
**Causa:** Query alterada para buscar em `ambiental_empreendimentos` (tabela descartada), mas dados reais estão em `servicos` com join em `empreendimentos`.
**Solução:** Query reescrita para buscar em `servicos` filtrando por `tipo_servico` ambiental, com join em `empreendimentos` e `ambiental_licenciamentos`.

---

## 11. Regras e Convenções do Projeto

- Sempre usar `createServerClient` (de `@/lib/supabase/server`) em Server Components e Server Actions
- Sempre usar `createBrowserClient` (de `@/lib/supabase/client`) em Client Components
- Dados financeiros (empenhos, medições) são sempre lazy — nunca bloquear o SSR com eles
- Toda mutação (insert/update/delete) via Server Action — nunca expor operações de escrita em Route Handlers públicos
- Nomes de rotas em português seguem o padrão do menu lateral definido em `app-sidebar.tsx`
- A rota `/ambiental` é canônica — não renomear para `/meio-ambiente` ou variantes
- Componentes de formulário existentes não devem ser reescritos — apenas estendidos condicionalmente
- Nunca usar `redirect()` do Next.js dentro de Server Actions que retornam para o cliente

---

*Documento gerado em 25/05/2026 — SID SPObras — Branch: feat/modulo-ambiental*
