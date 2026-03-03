-- Tabela para armazenar as obras marcadas como prioritárias (favoritas)
CREATE TABLE IF NOT EXISTS public.obras_prioritarias (
    id_empreendimento integer PRIMARY KEY,
    prioritario boolean NOT NULL DEFAULT false,
    updated_at timestamp with time zone DEFAULT now()
);

-- Ativar segurança em nível de linha (RLS)
ALTER TABLE public.obras_prioritarias ENABLE ROW LEVEL SECURITY;

-- Excluir políticas existentes caso queira rodar o script novamente sem erros
DROP POLICY IF EXISTS "Permitir leitura para todos obras_prioritarias" ON public.obras_prioritarias;
DROP POLICY IF EXISTS "Permitir inserção e atualização para todos obras_prioritarias" ON public.obras_prioritarias;

-- Políticas de acesso público (para leitura e escrita)
CREATE POLICY "Permitir leitura para todos obras_prioritarias" ON public.obras_prioritarias
FOR SELECT USING (true);

-- Permite INSERT/UPDATE de qualquer usuário anon/autenticado
CREATE POLICY "Permitir inserção e atualização para todos obras_prioritarias" ON public.obras_prioritarias
FOR ALL USING (true) WITH CHECK (true);
