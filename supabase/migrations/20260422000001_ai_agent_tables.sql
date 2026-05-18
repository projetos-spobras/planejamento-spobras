-- Migration: AI Agent Chat History
-- Created: 2026-04-22
-- Description: Criação das tabelas para histórico de conversas e mensagens do Agente de IA.

-- 1. Função genérica para updated_at (se não existir)
CREATE OR REPLACE FUNCTION public.handle_updated_at()
RETURNS TRIGGER 
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$;

-- 2. Tabela de Conversas
CREATE TABLE IF NOT EXISTS public.tb_chat_conversas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    titulo TEXT DEFAULT 'Nova conversa',
    id_empreendimento UUID REFERENCES public.empreendimentos(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- 3. Tabela de Mensagens
CREATE TABLE IF NOT EXISTS public.tb_chat_mensagens (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    conversa_id UUID NOT NULL REFERENCES public.tb_chat_conversas(id) ON DELETE CASCADE,
    role TEXT NOT NULL CHECK (role IN ('user', 'assistant', 'tool')),
    content TEXT NOT NULL,
    metadata JSONB DEFAULT '{}',
    created_at TIMESTAMPTZ DEFAULT now()
);

-- 4. Segurança: Row Level Security (RLS)
ALTER TABLE public.tb_chat_conversas ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.tb_chat_mensagens ENABLE ROW LEVEL SECURITY;

-- Políticas para tb_chat_conversas
CREATE POLICY "Usuários podem ver suas próprias conversas"
ON public.tb_chat_conversas
FOR SELECT
TO authenticated
USING (user_id = auth.uid());

CREATE POLICY "Usuários podem inserir suas próprias conversas"
ON public.tb_chat_conversas
FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "Usuários podem deletar suas próprias conversas"
ON public.tb_chat_conversas
FOR DELETE
TO authenticated
USING (user_id = auth.uid());

CREATE POLICY "Usuários podem atualizar o título de suas próprias conversas"
ON public.tb_chat_conversas
FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- Políticas para tb_chat_mensagens
CREATE POLICY "Usuários podem ver mensagens de suas próprias conversas"
ON public.tb_chat_mensagens
FOR SELECT
TO authenticated
USING (
    conversa_id IN (
        SELECT id FROM public.tb_chat_conversas WHERE user_id = auth.uid()
    )
);

CREATE POLICY "Usuários podem inserir mensagens em suas próprias conversas"
ON public.tb_chat_mensagens
FOR INSERT
TO authenticated
WITH CHECK (
    conversa_id IN (
        SELECT id FROM public.tb_chat_conversas WHERE user_id = auth.uid()
    )
);

-- 5. Índices de Performance
CREATE INDEX IF NOT EXISTS idx_chat_conversas_user_id ON public.tb_chat_conversas(user_id);
CREATE INDEX IF NOT EXISTS idx_chat_conversas_empreendimento ON public.tb_chat_conversas(id_empreendimento);
CREATE INDEX IF NOT EXISTS idx_chat_mensagens_conversa_id ON public.tb_chat_mensagens(conversa_id);

-- 6. Trigger para updated_at
DROP TRIGGER IF EXISTS tr_handle_updated_at_conversas ON public.tb_chat_conversas;
CREATE TRIGGER tr_handle_updated_at_conversas
BEFORE UPDATE ON public.tb_chat_conversas
FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

-- 7. Documentação e LGPD
COMMENT ON TABLE public.tb_chat_conversas IS 'Armazena as sessões de chat do usuário com o copiloto de IA.';
COMMENT ON TABLE public.tb_chat_mensagens IS 'Armazena o histórico de mensagens e chamadas de ferramentas de cada conversa.';

COMMENT ON COLUMN public.tb_chat_conversas.user_id IS 'Dado pessoal — base legal: execução de contrato (Art. 7, V LGPD)';
COMMENT ON COLUMN public.tb_chat_mensagens.content IS 'Pode conter dados operacionais — retenção: 2 anos';
