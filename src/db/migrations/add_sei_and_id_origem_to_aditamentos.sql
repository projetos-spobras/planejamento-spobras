-- Migration: Add processo_sei and id_origem to aditamentos
ALTER TABLE aditamentos 
ADD COLUMN IF NOT EXISTS processo_sei TEXT,
ADD COLUMN IF NOT EXISTS id_origem TEXT;

-- Create a unique index for id_origem to prevent duplicates when syncing from API
CREATE UNIQUE INDEX IF NOT EXISTS idx_aditamentos_id_origem ON aditamentos(id_origem) WHERE id_origem IS NOT NULL;
