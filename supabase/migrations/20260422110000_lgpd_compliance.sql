-- Migration: Conformidade LGPD (Lei Geral de Proteção de Dados)
-- Data: 2026-04-22
-- Objetivo: Garantir transparência, portabilidade e minimização de dados.

-- 1. Extensão e Colunas Necessárias
CREATE EXTENSION IF NOT EXISTS pg_cron;

ALTER TABLE public.tb_perfis 
ADD COLUMN IF NOT EXISTS dados_anonimizados BOOLEAN DEFAULT FALSE,
ADD COLUMN IF NOT EXISTS telefone TEXT; -- Garantindo existência para documentação

-- 2. Documentação de Base Legal (Art. 7 LGPD)
-- Os comentários servem como registro formal da finalidade e base legal.

COMMENT ON COLUMN public.tb_perfis.id IS 'ID do usuário (Dado Pessoal). Base: Execução de contrato/Termos de uso.';
COMMENT ON COLUMN public.tb_perfis.nome_completo IS 'Nome (Dado Pessoal). Base: Execução de contrato. Finalidade: Identificação e Auditoria.';
COMMENT ON COLUMN public.tb_perfis.email IS 'E-mail (Dado Pessoal). Base: Execução de contrato. Finalidade: Login e Comunicação.';
COMMENT ON COLUMN public.tb_perfis.telefone IS 'Telefone (Dado Pessoal). Base: Legítimo Interesse. Finalidade: Contato de emergência/suporte.';
COMMENT ON COLUMN public.tb_perfis.gerencia IS 'Unidade Administrativa. Base: Legítimo Interesse. Finalidade: Gestão de acesso funcional.';
COMMENT ON COLUMN public.tb_perfis.nivel_acesso IS 'Perfil de permissão. Base: Legítimo Interesse. Finalidade: Segurança e controle de acesso.';
COMMENT ON COLUMN public.tb_perfis.modulos_acesso IS 'Módulos permitidos. Base: Legítimo Interesse. Finalidade: Controle granular de acesso.';
COMMENT ON COLUMN public.tb_perfis.dados_anonimizados IS 'Flag de controle LGPD. Indica se o registro foi descaracterizado após inatividade.';

-- 3. Portabilidade de Dados (Art. 18 LGPD)
-- Função para exportar todos os dados vinculados a um usuário.

CREATE OR REPLACE FUNCTION public.get_user_data_export(p_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
DECLARE
    v_profile JSONB;
    v_audit_logs JSONB;
BEGIN
    -- Verificação de Acesso: Apenas o próprio usuário ou Admin
    IF auth.uid() <> p_user_id AND NOT EXISTS (
        SELECT 1 FROM public.tb_perfis 
        WHERE id = auth.uid() AND nivel_acesso = 'Admin'
    ) THEN
        RAISE EXCEPTION 'Acesso negado. Você só pode exportar seus próprios dados ou ser um Administrador.';
    END IF;

    -- Coleta dados do perfil
    SELECT to_jsonb(p) INTO v_profile FROM public.tb_perfis p WHERE id = p_user_id;

    -- Coleta logs de auditoria vinculados
    SELECT jsonb_agg(a) INTO v_audit_logs FROM public.audit_log a WHERE user_id = p_user_id;

    RETURN jsonb_build_object(
        'perfil', v_profile,
        'logs_auditoria', COALESCE(v_audit_logs, '[]'::jsonb),
        'data_exportacao', NOW()
    );
END;
$$;

-- 4. Anonimização Automática (Retenção de Dados)
-- Função que remove dados identificáveis após 2 anos de inatividade.

CREATE OR REPLACE FUNCTION public.anonymize_inactive_users()
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
BEGIN
    -- Atualiza tb_perfis para usuários cujo last_sign_in_at (no auth.users) é > 2 anos
    UPDATE public.tb_perfis p
    SET 
        nome_completo = 'ANONIMIZADO',
        email = 'anonimo@spobras.invalid',
        telefone = 'ANONIMIZADO',
        dados_anonimizados = TRUE
    FROM auth.users u
    WHERE p.id = u.id
      AND p.dados_anonimizados = FALSE
      AND (u.last_sign_in_at < NOW() - INTERVAL '2 years' OR u.last_sign_in_at IS NULL AND u.created_at < NOW() - INTERVAL '2 years');

    -- Nota: O registro em auth.users permanece para integridade, mas o perfil identificável é limpo.
END;
$$;

-- Agendamento diário às 03:00 AM
SELECT cron.schedule('lgpd-anonymization-job', '0 3 * * *', 'SELECT public.anonymize_inactive_users()');

-- 5. Comentário de Auditoria
COMMENT ON FUNCTION public.get_user_data_export IS 'Exportação de dados pessoais para atendimento ao Art. 18 da LGPD (Portabilidade).';
COMMENT ON FUNCTION public.anonymize_inactive_users IS 'Rotina de descarte/anonimização para cumprimento do princípio de minimização e retenção.';
