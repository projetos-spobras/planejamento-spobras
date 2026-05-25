-- Migration: 20260522000000_ambiental_tecnicos.sql

CREATE TABLE IF NOT EXISTS ambiental_tecnicos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL UNIQUE,
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Enable RLS
ALTER TABLE ambiental_tecnicos ENABLE ROW LEVEL SECURITY;

-- Select policy
CREATE POLICY "Allow authenticated users to read ambiental_tecnicos"
    ON ambiental_tecnicos
    FOR SELECT
    TO authenticated
    USING (true);

-- Modify policy (Security checks done at Server Action layer)
CREATE POLICY "Allow authenticated users to modify ambiental_tecnicos"
    ON ambiental_tecnicos
    FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

-- Seed data
INSERT INTO ambiental_tecnicos (nome) VALUES
('Audrey'),
('Sonia'),
('Mel'),
('Juliana'),
('Romualdo'),
('Leonan'),
('Mateus')
ON CONFLICT (nome) DO NOTHING;
