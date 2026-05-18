-- Migration: 20260507000000_modulo_ambiental.sql

-- Enable RLS on new tables later
-- Create ENUM types using CHECK constraints on TEXT as requested

CREATE TABLE IF NOT EXISTS ambiental_empreendimentos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    empreendimento_id UUID REFERENCES empreendimentos(id) ON DELETE SET NULL,
    nome_empreendimento TEXT,
    sei_processo TEXT,
    contrato_spobras TEXT,
    contrato_siurb TEXT,
    programa TEXT,
    tipo_servico TEXT CHECK (tipo_servico IN ('ARQUEOLOGIA', 'AC', 'SUPERVISÃO', 'DAEE', 'EVA', 'EIA_RIMA', 'OUTRO')),
    gerencia TEXT,
    contratada TEXT,
    gestor TEXT,
    fiscal TEXT,
    tecnico_gma TEXT,
    status TEXT CHECK (status IN (
        'Em andamento', 'Em licitação', 'À licitar', 'Suspenso', 
        'Concluído', 'Finalizado', 'Encerrado', 'Sob gestão SIURB', 
        'Em trâmite - Aditivo', 'Licitação concluída', 'Vigente'
    )),
    estagio_contratacao TEXT CHECK (estagio_contratacao IN ('0', '1', '2', '3', '4', '5', '6')),
    prazo DATE,
    valor_contrato NUMERIC,
    valor_medido NUMERIC,
    percentual_conclusao NUMERIC,
    tem_empenho BOOLEAN DEFAULT false,
    observacoes TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS ambiental_licenciamentos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ambiental_empreendimento_id UUID NOT NULL REFERENCES ambiental_empreendimentos(id) ON DELETE CASCADE,
    tipo TEXT CHECK (tipo IN ('ARQUEOLOGIA', 'DAEE', 'DISPENSA_LICENCA', 'AREAS_CONTAMINADAS', 'TCA', 'PLANTIO', 'EVA', 'EIA_RIMA', 'LAP', 'LAI', 'LAO')),
    status TEXT CHECK (status IN ('OK', 'A', 'P', '')),
    observacao TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS ambiental_estagio_comercial (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ambiental_empreendimento_id UUID NOT NULL REFERENCES ambiental_empreendimentos(id) ON DELETE CASCADE,
    estagio INTEGER CHECK (estagio >= 0 AND estagio <= 6),
    pendencia TEXT CHECK (pendencia IN ('SEI', 'OFICIO', 'HORAS', 'PROPOSTA', 'CONTRATO', 'OS', 'NOTA_RESERVA', 'EMPENHO', 'DESPACHO', 'MINUTA')),
    status TEXT CHECK (status IN ('OK', 'PENDENTE', 'CANCELADO')),
    sei_comercial TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_amb_emp_empreendimento_id ON ambiental_empreendimentos(empreendimento_id);
CREATE INDEX IF NOT EXISTS idx_amb_emp_tecnico_gma ON ambiental_empreendimentos(tecnico_gma);
CREATE INDEX IF NOT EXISTS idx_amb_emp_status ON ambiental_empreendimentos(status);
CREATE INDEX IF NOT EXISTS idx_amb_emp_tipo_servico ON ambiental_empreendimentos(tipo_servico);

-- Unique index required for upsert
CREATE UNIQUE INDEX IF NOT EXISTS uq_ambiental_sei_nome
ON ambiental_empreendimentos (sei_processo, nome_empreendimento)
WHERE sei_processo IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_amb_lic_empreendimento_id ON ambiental_licenciamentos(ambiental_empreendimento_id);
CREATE INDEX IF NOT EXISTS idx_amb_estagio_empreendimento_id ON ambiental_estagio_comercial(ambiental_empreendimento_id);

-- RLS
ALTER TABLE ambiental_empreendimentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE ambiental_licenciamentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE ambiental_estagio_comercial ENABLE ROW LEVEL SECURITY;

-- Create policies for read access (authenticated)
CREATE POLICY "Allow authenticated users to read ambiental_empreendimentos"
    ON ambiental_empreendimentos
    FOR SELECT
    TO authenticated
    USING (true);

CREATE POLICY "Allow authenticated users to read ambiental_licenciamentos"
    ON ambiental_licenciamentos
    FOR SELECT
    TO authenticated
    USING (true);

CREATE POLICY "Allow authenticated users to read ambiental_estagio_comercial"
    ON ambiental_estagio_comercial
    FOR SELECT
    TO authenticated
    USING (true);

-- Functions to update updated_at
CREATE OR REPLACE FUNCTION update_ambiental_empreendimentos_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_ambiental_empreendimentos_updated_at
BEFORE UPDATE ON ambiental_empreendimentos
FOR EACH ROW EXECUTE FUNCTION update_ambiental_empreendimentos_updated_at();

CREATE OR REPLACE FUNCTION update_ambiental_licenciamentos_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_ambiental_licenciamentos_updated_at
BEFORE UPDATE ON ambiental_licenciamentos
FOR EACH ROW EXECUTE FUNCTION update_ambiental_licenciamentos_updated_at();

CREATE OR REPLACE FUNCTION update_ambiental_estagio_comercial_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_ambiental_estagio_comercial_updated_at
BEFORE UPDATE ON ambiental_estagio_comercial
FOR EACH ROW EXECUTE FUNCTION update_ambiental_estagio_comercial_updated_at();

-- Vínculos com a Tabela de Serviços (SPObras)
ALTER TABLE servicos
ADD COLUMN IF NOT EXISTS ambiental_id UUID REFERENCES ambiental_empreendimentos(id) ON DELETE SET NULL;

ALTER TABLE ambiental_empreendimentos
ADD COLUMN IF NOT EXISTS servico_id UUID REFERENCES servicos(id) ON DELETE SET NULL;

-- Empreendimento_id já existe, garantindo:
-- ADD COLUMN IF NOT EXISTS empreendimento_id UUID REFERENCES empreendimentos(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_ambiental_empreendimento ON ambiental_empreendimentos(empreendimento_id);
CREATE INDEX IF NOT EXISTS idx_ambiental_servico ON ambiental_empreendimentos(servico_id);
CREATE INDEX IF NOT EXISTS idx_servicos_ambiental ON servicos(ambiental_id);
