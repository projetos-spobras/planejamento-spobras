-- Add tipo column to servicos table
ALTER TABLE servicos
ADD COLUMN tipo TEXT DEFAULT NULL;
