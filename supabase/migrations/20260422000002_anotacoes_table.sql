-- Migration: Empreendimento Annotations
-- Created: 2026-04-22
-- Description: Tabela para armazenar anotações e observações registradas pelo Agente de IA ou usuários.

CREATE TABLE IF NOT EXISTS public.tb_anotacoes_empreendimento (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    empreendimento_id UUID NOT NULL REFERENCES public.empreendimentos(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    texto TEXT NOT NULL,
    tipo TEXT DEFAULT 'Observação' CHECK (tipo IN ('Alerta', 'Observação', 'Pendência')),
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Segurança: RLS
ALTER TABLE public.tb_anotacoes_empreendimento ENABLE ROW LEVEL SECURITY;

-- Analistas podem ver notas
CREATE POLICY "Qualquer usuário autenticado pode ver anotações"
ON public.tb_anotacoes_empreendimento
FOR SELECT
TO authenticated
USING (true);

-- Apenas Gestores e Admins podem inserir (validação via tb_perfis)
CREATE POLICY "Gestores e Admins podem inserir anotações"
ON public.tb_anotacoes_empreendimento
FOR INSERT
TO authenticated
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.tb_perfis
        WHERE id = auth.uid()
          AND nivel_acesso IN ('Gestor', 'Admin')
    )
);

-- Índices
CREATE INDEX IF NOT EXISTS idx_anotacoes_empreendimento_id ON public.tb_anotacoes_empreendimento(empreendimento_id);

-- Comentários
COMMENT ON TABLE public.tb_anotacoes_empreendimento IS 'Observações e alertas técnicos registrados sobre os empreendimentos.';
