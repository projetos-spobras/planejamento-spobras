# Instruções para Importação de Dados - Mapa de Empreendimentos SP Obras

## 📋 Atualização - 16/10/2025

O sistema foi atualizado para suportar o novo CSV de obras com **22 empreendimentos** do projeto de Retrofits.

### Novo Arquivo de Dados
**Arquivo:** `public/data/Se-2.csv` (Sub_Se_Retrofit_Obras.csv)  
**Registros:** 22 empreendimentos  
**Coluna de Status:** `Status Contrato` (reconhecida automaticamente)

## 📋 Resumo do Sistema

O sistema usa **PostgreSQL/Supabase** como fonte de dados. Isso garante:

✅ **Pins coloridos corretamente** por status (Concluído, Andamento, Iniciar)  
✅ **Popups com layout otimizado** (480px/440px) para textos longos sem "vazamento"  
✅ **Dados normalizados** e consistentes no banco de dados  
✅ **Coordenadas no formato brasileiro** (vírgula como separador) convertidas automaticamente  
✅ **Fonte de dados única e confiável** acessível via API  
✅ **Segurança com RLS** (Row Level Security) habilitado

## 📁 Arquivo de Dados Oficial

**Arquivo:** `public/data/Se-2.csv` (Sub_Se_Retrofit_Obras.csv)  
**Registros:** 22 empreendimentos (Retrofits)  
**Formato de coordenadas:** Brasileiro com vírgula (ex: `-23,566595`) - convertido automaticamente para ponto decimal durante importação  
**Coluna de Status:** `Status Contrato` (nova nomenclatura suportada)

---

## 🗄️ Estrutura do Banco de Dados

### Tabela: `empreendimentos_mapa`

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `id` | UUID | Identificador único |
| `empreendimento` | TEXT | Nome do empreendimento |
| `programa` | TEXT | Programa ao qual pertence |
| `status` | TEXT | Status normalizado (Concluído, Andamento, Iniciar) |
| `nr_contrato` | TEXT | Número do contrato |
| `tipo_contrato` | TEXT | Tipo do contrato |
| `latitude` | DOUBLE PRECISION | Latitude (coordenada) |
| `longitude` | DOUBLE PRECISION | Longitude (coordenada) |
| `row_hash` | TEXT | Hash único para evitar duplicatas |
| `created_at` | TIMESTAMPTZ | Data de criação |
| `updated_at` | TIMESTAMPTZ | Data de atualização |

### Sistema de Papéis (Roles)

- **Enum**: `app_role` (superadmin, admin, moderator, user)
- **Tabela**: `user_roles` - armazena papéis dos usuários
- **Função**: `has_role(_user_id, _role)` - verifica permissões

### Políticas RLS

- ✅ **Leitura pública**: Qualquer pessoa pode visualizar os empreendimentos
- 🔒 **Escrita restrita**: Apenas admins e superadmins podem modificar

---

## 📥 Como Importar o CSV

### Passo 1: Obter o Token de Admin

O token de administração já foi configurado como secret no Supabase:
- Nome do secret: `ADMIN_IMPORT_TOKEN`
- **Você precisa saber o valor deste token** para fazer a importação

### Passo 2: Usar o Botão de Importação

1. Abra o mapa no navegador
2. Na sidebar esquerda, logo abaixo dos logos, clique no botão **"📥 Importar CSV (Admin)"**
3. **Importante:** Marque a opção **"Limpar dados existentes antes de importar"** para substituir completamente os dados antigos
4. Digite o token de administração quando solicitado
5. Aguarde o processo de importação (pode levar alguns segundos)

**ATENÇÃO:** Marcar a opção de limpeza removerá TODOS os 69 registros antigos antes de inserir os 22 novos registros.

### Passo 3: Verificar a Importação

Após a importação, você verá:
- ✅ Número de registros processados
- ✅ Distribuição por status (Concluído, Andamento, Iniciar)
- ⚠️ Número de erros (se houver)

Os pins no mapa serão automaticamente atualizados com as cores corretas!

---

## 🔧 Edge Function: `import-empreendimentos`

### Endpoint
```
POST https://ujsrvtuprhgaygagleys.supabase.co/functions/v1/import-empreendimentos
```

### Headers Obrigatórios
```
Content-Type: application/json
x-admin-token: <SEU_TOKEN_ADMIN>
```

### Body (JSON)
```json
{
  "rows": [
    {
      "Empreendimentos": "Nome do empreendimento",
      "Programas": "Nome do programa",
      "Status": "Concluído",
      "Nr_Contrato": "12345/2024",
      "Tipo_Contrato_Dash": "Reforma",
      "Latitude": "-23.5505",
      "Longitude": "-46.6333"
    }
  ]
}
```

### Normalização Automática

A edge function normaliza automaticamente:

**Aliases de Colunas Aceitas:**
- Empreendimento(s) → `empreendimento`
- Programa(s) → `programa`
- **Status Contrato** / Status / Status da Obra / Situação / Andamento → `status` *(novo)*
- Nr_Contrato / Contrato / Nº Contrato → `nr_contrato`
- Tipo_Contrato_Dash / Tipo / Tipo Contrato → `tipo_contrato`
- Latitude / Lat → `latitude`
- Longitude / Lng / Long → `longitude`

**Conversão de Coordenadas:**
- Formato brasileiro com vírgula: `-23,566595` → `-23.566595`
- Conversão automática tanto no frontend quanto na Edge Function

**Canonicalização de Status:**
- "em andamento", "andamento" → **Andamento**
- "concluído", "concluída", "obra concluida" → **Concluído**
- "iniciar", "a iniciar", "não iniciado" → **Iniciar**

---

## 🎨 Cores dos Pins

Os pins no mapa seguem esta paleta:

| Status | Cor | Hex |
|--------|-----|-----|
| 🟢 Concluído | Verde | `#10b981` |
| 🟠 Andamento | Laranja | `#f59e0b` |
| 🔵 Iniciar | Azul | `#3b82f6` |
| ⚪ Não especificado | Cinza | `#94a3b8` |

---

## 🔍 Funcionalidades do Mapa

### Filtros
- **Por Programa**: Filtra por nome do programa
- **Por Status**: Filtra por Concluído, Andamento ou Iniciar
- **Busca Textual**: Busca em nome, programa, contrato e tipo

### Popup de Detalhes
- **Tamanho otimizado**: 480px máximo, 440px interno
- **Nome do empreendimento** (até 4 linhas com ellipsis e line-height 1.3)
- **Status** (badge colorido)
- **Programa**
- **Número do Contrato**
- **Tipo de Contrato**
- **Coordenadas** (Latitude e Longitude com 5 casas decimais)

### Estatísticas
- Total de empreendimentos por status
- Total geral
- Total exibido (após filtros)

---

## 🚀 Próximos Passos

### Para Produção

1. **Remover o botão de importação** da sidebar (após primeira importação)
2. **Criar painel administrativo** para gerenciar empreendimentos
3. **Implementar autenticação** para acesso ao painel admin
4. **Adicionar validações** mais robustas no frontend

### Manutenção dos Dados

Para atualizar os dados:
1. Use a edge function `import-empreendimentos` via API com parâmetro `clearExisting: true` para substituir completamente os dados
2. Configure um processo automatizado (cron job) se necessário
3. Use o painel do Supabase para editar registros manualmente

### Opção de Limpeza de Dados

A interface agora oferece um checkbox **"Limpar dados existentes antes de importar"**:
- ✅ **Marcado**: Remove todos os registros antigos e insere os novos (substituição completa)
- ❌ **Desmarcado**: Faz upsert dos dados (atualiza existentes, adiciona novos)

---

## 📞 Suporte

### Links Úteis
- **Supabase Dashboard**: https://supabase.com/dashboard/project/ujsrvtuprhgaygagleys
- **SQL Editor**: https://supabase.com/dashboard/project/ujsrvtuprhgaygagleys/sql/new
- **Edge Functions**: https://supabase.com/dashboard/project/ujsrvtuprhgaygagleys/functions
- **Logs da Function**: https://supabase.com/dashboard/project/ujsrvtuprhgaygagleys/functions/import-empreendimentos/logs

### Troubleshooting

**Problema**: Pins cinzas após importação
- ✅ Verifique se os valores de Status estão sendo normalizados corretamente
- ✅ Consulte a distribuição de status nos logs da importação
- ✅ Verifique o console do navegador para erros

**Problema**: Popup com texto cortado
- ✅ O popup agora tem `maxWidth: 480px` (440px interno) e quebra de linha automática
- ✅ Títulos longos usam line-clamp com 4 linhas e line-height 1.3
- ✅ Responsivo com max-width 95vw para mobile

**Problema**: Erro 401 na importação
- ✅ Verifique se o token está correto
- ✅ Verifique o secret `ADMIN_IMPORT_TOKEN` no Supabase

---

## 📄 Licença e Créditos

**Desenvolvido para**: Prefeitura de São Paulo - SP Obras  
**Tecnologias**: React, TypeScript, Mapbox GL, Supabase, PostgreSQL  
**Data**: Janeiro 2025
