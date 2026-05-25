-- Migration: 20260507000004_create_ambiental_detalhes_and_comentarios.sql

-- 1. Create table ambiental_detalhes
CREATE TABLE IF NOT EXISTS ambiental_detalhes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  servico_id UUID UNIQUE REFERENCES servicos(id) ON DELETE CASCADE,
  tecnico_gma TEXT,
  gestor TEXT,
  fiscal TEXT,
  gerencia TEXT,
  contratada TEXT,
  contrato_spobras TEXT,
  contrato_siurb TEXT,
  sei_processo TEXT,
  programa TEXT,
  estagio INTEGER,
  status TEXT,
  prazo DATE,
  valor_contrato NUMERIC,
  valor_medido NUMERIC,
  percentual_conclusao NUMERIC,
  tem_empenho BOOLEAN,
  updated_at TIMESTAMPTZ DEFAULT now()
);

-- 2. Create table ambiental_comentarios
CREATE TABLE IF NOT EXISTS ambiental_comentarios (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  servico_id UUID REFERENCES servicos(id) ON DELETE CASCADE,
  autor_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  texto TEXT NOT NULL,
  mencoes UUID[],
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_amb_det_servico_id ON ambiental_detalhes(servico_id);
CREATE INDEX IF NOT EXISTS idx_amb_com_servico_id ON ambiental_comentarios(servico_id);

-- Enable RLS
ALTER TABLE ambiental_detalhes ENABLE ROW LEVEL SECURITY;
ALTER TABLE ambiental_comentarios ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if any
DROP POLICY IF EXISTS "Allow authenticated read ambiental_detalhes" ON ambiental_detalhes;
DROP POLICY IF EXISTS "Allow authenticated write ambiental_detalhes" ON ambiental_detalhes;
DROP POLICY IF EXISTS "Allow authenticated read ambiental_comentarios" ON ambiental_comentarios;
DROP POLICY IF EXISTS "Allow authenticated write ambiental_comentarios" ON ambiental_comentarios;

-- Policies for read access (authenticated)
CREATE POLICY "Allow authenticated read ambiental_detalhes"
    ON ambiental_detalhes
    FOR SELECT
    TO authenticated
    USING (true);

-- Policies for write access (authenticated)
CREATE POLICY "Allow authenticated write ambiental_detalhes"
    ON ambiental_detalhes
    FOR ALL
    TO authenticated
    USING (true);

-- Policies for read access on comments (authenticated)
CREATE POLICY "Allow authenticated read ambiental_comentarios"
    ON ambiental_comentarios
    FOR SELECT
    TO authenticated
    USING (true);

-- Policies for write access on comments (authenticated)
CREATE POLICY "Allow authenticated write ambiental_comentarios"
    ON ambiental_comentarios
    FOR ALL
    TO authenticated
    USING (true);

-- Trigger function to update updated_at for ambiental_detalhes
CREATE OR REPLACE FUNCTION update_ambiental_detalhes_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS update_ambiental_detalhes_updated_at ON ambiental_detalhes;
CREATE TRIGGER update_ambiental_detalhes_updated_at
BEFORE UPDATE ON ambiental_detalhes
FOR EACH ROW EXECUTE FUNCTION update_ambiental_detalhes_updated_at();
