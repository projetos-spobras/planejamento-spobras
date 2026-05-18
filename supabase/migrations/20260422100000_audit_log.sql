-- Migration: Audit Log System
-- Created: 2026-04-22
-- Description: Implementa rastreabilidade de alterações em tabelas sensíveis.

-- 1. Criação da Tabela de Auditoria
CREATE TABLE IF NOT EXISTS public.audit_log (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
    action TEXT NOT NULL CHECK (action IN ('INSERT', 'UPDATE', 'DELETE')),
    table_name TEXT NOT NULL,
    record_id TEXT,
    old_values JSONB,
    new_values JSONB,
    ip_address TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Segurança: Row Level Security (RLS)
ALTER TABLE public.audit_log ENABLE ROW LEVEL SECURITY;

-- Somente usuários com nivel_acesso = 'Admin' podem visualizar logs
-- Nota: A política assume que tb_perfis contém o campo nivel_acesso
CREATE POLICY "Apenas administradores podem visualizar logs de auditoria"
ON public.audit_log
FOR SELECT
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.tb_perfis
        WHERE tb_perfis.id = auth.uid()
          AND tb_perfis.sistema = 'planejamento'
          AND tb_perfis.nivel_acesso = 'Admin'
    )
);

-- Usuários não podem inserir, atualizar ou deletar logs manualmente (o trigger roda como SECURITY DEFINER)
-- RLS padrão (deny all) cuida disso caso não existam outras políticas.

-- 3. Função de Trigger Genérica
CREATE OR REPLACE FUNCTION public.log_sensitive_change()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, pg_temp
AS $$
DECLARE
    v_user_id UUID;
    v_ip_address TEXT;
    v_record_id TEXT;
    v_old_values JSONB := NULL;
    v_new_values JSONB := NULL;
    v_headers TEXT;
BEGIN
    -- Captura o ID do usuário da sessão Supabase
    v_user_id := auth.uid();
    
    -- Captura o IP através dos headers injetados pelo Supabase
    v_headers := current_setting('request.headers', true);
    IF v_headers IS NOT NULL AND v_headers <> '' THEN
        BEGIN
            v_ip_address := v_headers::json->>'x-forwarded-for';
        EXCEPTION WHEN OTHERS THEN
            v_ip_address := NULL;
        END;
    END IF;

    -- Define IDs e valores conforme a operação
    IF (TG_OP = 'DELETE') THEN
        v_record_id := OLD.id::TEXT;
        v_old_values := to_jsonb(OLD);
    ELSIF (TG_OP = 'UPDATE') THEN
        v_record_id := NEW.id::TEXT;
        v_old_values := to_jsonb(OLD);
        v_new_values := to_jsonb(NEW);
    ELSIF (TG_OP = 'INSERT') THEN
        v_record_id := NEW.id::TEXT;
        v_new_values := to_jsonb(NEW);
    END IF;

    -- Insere o registro de auditoria
    INSERT INTO public.audit_log (
        user_id,
        action,
        table_name,
        record_id,
        old_values,
        new_values,
        ip_address
    ) VALUES (
        v_user_id,
        TG_OP,
        TG_TABLE_NAME,
        v_record_id,
        v_old_values,
        v_new_values,
        v_ip_address
    );

    -- Retorno obrigatório para triggers AFTER
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$;

-- 4. Aplicação do Trigger em Tabelas Sensíveis
-- Nota: Supõe-se que todas estas tabelas possuam uma coluna 'id' como PK.

-- Tabela: contratos
DROP TRIGGER IF EXISTS tr_audit_contratos ON public.contratos;
CREATE TRIGGER tr_audit_contratos
AFTER INSERT OR UPDATE OR DELETE ON public.contratos
FOR EACH ROW EXECUTE FUNCTION public.log_sensitive_change();

-- Tabela: empenhos
DROP TRIGGER IF EXISTS tr_audit_empenhos ON public.empenhos;
CREATE TRIGGER tr_audit_empenhos
AFTER INSERT OR UPDATE OR DELETE ON public.empenhos
FOR EACH ROW EXECUTE FUNCTION public.log_sensitive_change();

-- Tabela: servicos
DROP TRIGGER IF EXISTS tr_audit_servicos ON public.servicos;
CREATE TRIGGER tr_audit_servicos
AFTER INSERT OR UPDATE OR DELETE ON public.servicos
FOR EACH ROW EXECUTE FUNCTION public.log_sensitive_change();

-- Tabela: lotes
DROP TRIGGER IF EXISTS tr_audit_lotes ON public.lotes;
CREATE TRIGGER tr_audit_lotes
AFTER INSERT OR UPDATE OR DELETE ON public.lotes
FOR EACH ROW EXECUTE FUNCTION public.log_sensitive_change();

-- Tabela: tb_perfis
DROP TRIGGER IF EXISTS tr_audit_tb_perfis ON public.tb_perfis;
CREATE TRIGGER tr_audit_tb_perfis
AFTER INSERT OR UPDATE OR DELETE ON public.tb_perfis
FOR EACH ROW EXECUTE FUNCTION public.log_sensitive_change();

COMMENT ON TABLE public.audit_log IS 'Rastreador de alterações em tabelas críticas para auditoria e conformidade LGPD.';
