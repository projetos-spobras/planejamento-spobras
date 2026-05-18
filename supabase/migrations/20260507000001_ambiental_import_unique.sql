-- Add unique constraint to ambiental_empreendimentos for upsert during import
ALTER TABLE ambiental_empreendimentos 
ADD CONSTRAINT unique_sei_empreendimento UNIQUE (sei_processo, nome_empreendimento);
