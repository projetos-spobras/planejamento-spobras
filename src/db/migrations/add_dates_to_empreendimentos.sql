-- Add date columns to empreendimentos table
ALTER TABLE empreendimentos
ADD COLUMN data_inicio DATE DEFAULT NULL,
ADD COLUMN data_fim DATE DEFAULT NULL;
