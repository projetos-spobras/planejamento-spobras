-- Add unique constraint to ambiental_licenciamentos for upsert during import
ALTER TABLE ambiental_licenciamentos 
ADD CONSTRAINT unique_amb_emp_tipo UNIQUE (ambiental_empreendimento_id, tipo);
