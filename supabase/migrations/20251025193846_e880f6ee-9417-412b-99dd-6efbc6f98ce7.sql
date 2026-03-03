-- Criar tabela de empreendimentos
CREATE TABLE IF NOT EXISTS public.empreendimentos (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  id_empreendimento INTEGER NOT NULL UNIQUE,
  programas TEXT NOT NULL,
  empreendimentos TEXT NOT NULL,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  subprefeitura TEXT,
  contagem_andamento_concluido INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Índices para performance na tabela empreendimentos
CREATE INDEX idx_empreendimentos_id_empreendimento ON public.empreendimentos(id_empreendimento);
CREATE INDEX idx_empreendimentos_programas ON public.empreendimentos(programas);
CREATE INDEX idx_empreendimentos_subprefeitura ON public.empreendimentos(subprefeitura);
CREATE INDEX idx_empreendimentos_coords ON public.empreendimentos(latitude, longitude);

-- Habilitar RLS na tabela empreendimentos
ALTER TABLE public.empreendimentos ENABLE ROW LEVEL SECURITY;

-- Políticas RLS para empreendimentos (público para leitura)
CREATE POLICY "Empreendimentos são públicos para leitura"
  ON public.empreendimentos
  FOR SELECT
  USING (true);

-- Criar tabela de contratos
CREATE TABLE IF NOT EXISTS public.contratos (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  id_empreendimento INTEGER NOT NULL,
  andamento_concluido TEXT NOT NULL,
  nr_contrato TEXT NOT NULL,
  tipo_contrato_dash TEXT,
  execucao_data_inicio TIMESTAMP WITH TIME ZONE,
  execucao_data_fim TIMESTAMP WITH TIME ZONE,
  valor_atual NUMERIC(15, 2),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Foreign key para empreendimentos
  CONSTRAINT fk_empreendimento
    FOREIGN KEY (id_empreendimento)
    REFERENCES public.empreendimentos(id_empreendimento)
    ON DELETE CASCADE
);

-- Índices para performance na tabela contratos
CREATE INDEX idx_contratos_id_empreendimento ON public.contratos(id_empreendimento);
CREATE INDEX idx_contratos_andamento ON public.contratos(andamento_concluido);
CREATE INDEX idx_contratos_tipo ON public.contratos(tipo_contrato_dash);
CREATE INDEX idx_contratos_nr_contrato ON public.contratos(nr_contrato);

-- Habilitar RLS na tabela contratos
ALTER TABLE public.contratos ENABLE ROW LEVEL SECURITY;

-- Políticas RLS para contratos (público para leitura)
CREATE POLICY "Contratos são públicos para leitura"
  ON public.contratos
  FOR SELECT
  USING (true);

-- Criar função para atualizar updated_at automaticamente
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criar triggers para updated_at em empreendimentos
CREATE TRIGGER update_empreendimentos_updated_at
    BEFORE UPDATE ON public.empreendimentos
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Criar triggers para updated_at em contratos
CREATE TRIGGER update_contratos_updated_at
    BEFORE UPDATE ON public.contratos
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();