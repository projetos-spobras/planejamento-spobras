-- Migration: Criação da tabela de controle de aditamentos
-- Data: 2026-04-14

CREATE TABLE IF NOT EXISTS aditamentos (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  -- Contexto de origem (onde o aditamento foi registrado)
  tipo_vinculo TEXT NOT NULL CHECK (tipo_vinculo IN ('lote', 'empreendimento')),

  -- Vínculos
  lote_id UUID REFERENCES lotes(id) ON DELETE SET NULL,
  empreendimento_id TEXT NOT NULL,    -- ID do empreendimento alvo (UUID gerado via api-client)
  contrato_id TEXT,                   -- UUID interno do contrato vinculado

  -- Tipos do aditamento (multiseleção: 'valor', 'prazo')
  tipos TEXT[] NOT NULL DEFAULT '{}',

  -- Campos condicionais por tipo
  valor_estimado NUMERIC(15, 2),      -- obrigatório se 'valor' em tipos
  prazo_meses INT,                    -- obrigatório se 'prazo' em tipos

  -- Campos comuns
  justificativa TEXT NOT NULL,
  formalizado BOOLEAN NOT NULL DEFAULT false,

  -- Auditoria
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

-- Índices para consultas por contexto
CREATE INDEX IF NOT EXISTS idx_aditamentos_lote_id ON aditamentos(lote_id);
CREATE INDEX IF NOT EXISTS idx_aditamentos_empreendimento_id ON aditamentos(empreendimento_id);
CREATE INDEX IF NOT EXISTS idx_aditamentos_contrato_id ON aditamentos(contrato_id);

-- RLS: mesmas políticas padrão do sistema (autenticado = leitura/escrita)
ALTER TABLE aditamentos ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Leitura autenticada de aditamentos"
  ON aditamentos FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Inserção autenticada de aditamentos"
  ON aditamentos FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Deleção autenticada de aditamentos"
  ON aditamentos FOR DELETE
  TO authenticated
  USING (true);
