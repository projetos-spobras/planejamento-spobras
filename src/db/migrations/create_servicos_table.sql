
-- Create servicos table
CREATE TABLE IF NOT EXISTS servicos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contrato_id UUID NOT NULL REFERENCES contratos(id) ON DELETE CASCADE,
    codigo TEXT, -- e.g. "1.1", "2.0"
    descricao TEXT NOT NULL,
    unidade TEXT,
    quantidade NUMERIC(15, 2),
    preco_unitario NUMERIC(15, 2),
    valor_total NUMERIC(15, 2),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Add index for performance
CREATE INDEX IF NOT EXISTS idx_servicos_contrato_id ON servicos(contrato_id);

-- Enable RLS
ALTER TABLE servicos ENABLE ROW LEVEL SECURITY;

-- Create policy for full access (authenticated users)
CREATE POLICY "Enable read access for all users" ON servicos
    FOR SELECT USING (true);

CREATE POLICY "Enable insert for authenticated users" ON servicos
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Enable update for authenticated users" ON servicos
    FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Enable delete for authenticated users" ON servicos
    FOR DELETE USING (auth.role() = 'authenticated');
