-- Migration: 20260507000003_add_servico_id_to_licenciamentos.sql

-- Adiciona a coluna servico_id se não existir
ALTER TABLE ambiental_licenciamentos
ADD COLUMN IF NOT EXISTS servico_id UUID REFERENCES servicos(id) ON DELETE CASCADE;

-- Permite que ambiental_empreendimento_id seja nulo, pois novos licenciamentos serão vinculados a serviços
ALTER TABLE ambiental_licenciamentos
ALTER COLUMN ambiental_empreendimento_id DROP NOT NULL;

-- Adiciona índice para performance
CREATE INDEX IF NOT EXISTS idx_amb_lic_servico_id ON ambiental_licenciamentos(servico_id);
