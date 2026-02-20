This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

---

## ⚠️ Configurações de Segurança Obrigatórias (Supabase)

As configurações abaixo foram habilitadas intencionalmente por razões de segurança e **não devem ser revertidas** sem aprovação explícita do time de arquitetura.

### [I5] Proteção contra senhas vazadas (HaveIBeenPwned)
- **Status:** ✅ Habilitada em `Authentication → Settings → Password protection`
- **Data de ativação:** 2026-02-20
- **Motivo:** Impede que usuários cadastrem senhas que já foram expostas em vazamentos públicos de dados, conforme checado via [haveibeenpwned.com](https://haveibeenpwned.com).
- **Como verificar:** Supabase Dashboard → Authentication → Settings → confirmar que "Leaked Password Protection" está ativado.
- **⛔ Não desabilitar:** Reverter esta configuração expõe contas de usuários a ataques de credential stuffing.

### [I4] `search_path` fixo nas funções do banco
- **Status:** ✅ Aplicado via migration `fix_function_search_path_i4`
- **Funções corrigidas:** `is_admin()`, `handle_new_user()`, `get_regional_stats()`, `update_project_location()`
- **Motivo:** Funções sem `SET search_path` fixo são suscetíveis a ataques de substituição de schema (schema injection), onde um objeto malicioso em outro schema pode ser executado no lugar do esperado.
- **⛔ Não remover o `SET search_path`** ao atualizar qualquer uma dessas funções.

### RLS (Row Level Security)
- **Status:** ✅ Habilitado em todas as tabelas críticas via migration `enable_rls_critical_tables`
- **Tabelas protegidas:** `contratos`, `lotes`, `empenhos`, `planejamento_fases`, `empreendimentos_contratos`, `programas`, `distritos`, `gerencias`, `empreendimento_fases`
- **Regra:** Todas as operações exigem `auth.role() = 'authenticated'`.
- **⛔ Não desabilitar RLS** sem criar políticas equivalentes — deixa os dados de contratos públicos expostos sem autenticação.
