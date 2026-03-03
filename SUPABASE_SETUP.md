# Configuração do Supabase para Power BI Embedded

Este guia descreve como configurar as variáveis de ambiente (Secrets) no seu projeto Supabase para que a integração com o Power BI funcione corretamente e de forma segura.

## 1. Pré-requisitos

Certifique-se de ter o [Supabase CLI](https://supabase.com/docs/guides/cli) instalado e logado em sua máquina, ou acesso ao Painel do Supabase.

## 2. Definindo as Variáveis de Ambiente (Secrets)

As credenciais do Power BI (Service Principal) não devem ficar expostas no código fonte (hardcoded). Elas devem ser configuradas como "Secrets" no Supabase.

### Opção A: Via Terminal (Recomendado)

Abra o terminal na pasta do projeto e execute os seguintes comandos, substituindo os valores pelos seus (se forem diferentes dos fornecidos):

```bash
supabase secrets set POWERBI_CLIENT_ID="your_client_id_here"
supabase secrets set POWERBI_CLIENT_SECRET="your_client_secret_here"
supabase secrets set POWERBI_TENANT_ID="your_tenant_id_here"
```

### Opção B: Via Painel do Supabase (Dashboard)

1.  Acesse seu projeto no [Supabase Dashboard](https://supabase.com/dashboard).
2.  Vá para **Project Settings** (Ícone de engrenagem) > **Edge Functions**.
3.  Encontre a seção **Secrets** (ou Environment Variables).
4.  Adicione as seguintes chaves e valores:
    *   Name: `POWERBI_CLIENT_ID`
        *   Value: `your_client_id_here`
    *   Name: `POWERBI_CLIENT_SECRET`
        *   Value: `your_client_secret_here`
    *   Name: `POWERBI_TENANT_ID`
        *   Value: `your_tenant_id_here`

## 3. Verificando a Implantação

Após definir os segredos, a função Edge (`embed-powerbi`) irá utilizá-los automaticamente na próxima execução.

> **Nota**: O código atual da função possui valores de "fallback" (padrão) caso os segredos não sejam encontrados, para facilitar o teste imediato. No entanto, para produção, recomenda-se remover esses fallbacks do código `index.ts` e confiar apenas nos Secrets.
