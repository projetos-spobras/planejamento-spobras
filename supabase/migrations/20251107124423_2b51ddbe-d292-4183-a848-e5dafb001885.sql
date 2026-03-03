-- Adicionar coluna prioritario na tabela empreendimentos_mapa
ALTER TABLE empreendimentos_mapa 
ADD COLUMN prioritario BOOLEAN DEFAULT false;

-- Criar índice para melhorar performance de busca
CREATE INDEX idx_empreendimentos_prioritario ON empreendimentos_mapa(prioritario);

-- Comentário para documentação
COMMENT ON COLUMN empreendimentos_mapa.prioritario IS 'Indica se o empreendimento é marcado como prioritário';

-- Permitir que usuários autenticados atualizem o campo prioritario
CREATE POLICY "usuarios_autenticados_podem_marcar_prioritario"
ON empreendimentos_mapa
FOR UPDATE
TO authenticated
USING (true)
WITH CHECK (true);