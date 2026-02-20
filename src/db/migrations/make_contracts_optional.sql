-- Remove NOT NULL constraint from contrato_id in lotes
ALTER TABLE lotes ALTER COLUMN contrato_id DROP NOT NULL;

-- Remove NOT NULL constraint from contrato_id in servicos
ALTER TABLE servicos ALTER COLUMN contrato_id DROP NOT NULL;

-- Add empreendimento_id to lotes if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'lotes' AND column_name = 'empreendimento_id') THEN
        ALTER TABLE lotes ADD COLUMN empreendimento_id UUID REFERENCES empreendimentos(id) ON DELETE CASCADE;
        CREATE INDEX idx_lotes_empreendimento_id ON lotes(empreendimento_id);
    END IF;
END $$;

-- Add empreendimento_id to servicos if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'servicos' AND column_name = 'empreendimento_id') THEN
        ALTER TABLE servicos ADD COLUMN empreendimento_id UUID REFERENCES empreendimentos(id) ON DELETE CASCADE;
        CREATE INDEX idx_servicos_empreendimento_id ON servicos(empreendimento_id);
    END IF;
END $$;
