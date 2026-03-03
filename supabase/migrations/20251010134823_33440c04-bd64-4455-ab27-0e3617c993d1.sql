-- ============================================
-- 1. CREATE ENUM AND USER ROLES SYSTEM
-- ============================================

-- Create enum for roles
CREATE TYPE public.app_role AS ENUM ('superadmin', 'admin', 'moderator', 'user');

-- Create user_roles table
CREATE TABLE public.user_roles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  role public.app_role NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (user_id, role)
);

-- Enable RLS on user_roles
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

-- Policy: Users can view their own roles
CREATE POLICY "Users can view own roles"
ON public.user_roles
FOR SELECT
USING (auth.uid() = user_id);

-- Policy: Only superadmins can manage roles
CREATE POLICY "Superadmins can manage all roles"
ON public.user_roles
FOR ALL
USING (
  EXISTS (
    SELECT 1 FROM public.user_roles ur
    WHERE ur.user_id = auth.uid() AND ur.role = 'superadmin'
  )
);

-- Create security definer function to check roles
CREATE OR REPLACE FUNCTION public.has_role(_user_id uuid, _role public.app_role)
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles
    WHERE user_id = _user_id
      AND role = _role
  )
$$;

-- ============================================
-- 2. CREATE EMPREENDIMENTOS_MAPA TABLE
-- ============================================

CREATE TABLE public.empreendimentos_mapa (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  empreendimento TEXT NOT NULL,
  programa TEXT NOT NULL,
  status TEXT NOT NULL,
  nr_contrato TEXT,
  tipo_contrato TEXT,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  row_hash TEXT GENERATED ALWAYS AS (
    md5(
      trim(both from lower(coalesce(empreendimento, ''))) || '|' ||
      trim(both from lower(coalesce(nr_contrato, ''))) || '|' ||
      latitude::text || '|' || longitude::text
    )
  ) STORED,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Create unique index on row_hash for upsert
CREATE UNIQUE INDEX empreendimentos_mapa_row_hash_idx ON public.empreendimentos_mapa (row_hash);

-- Create index on status for filtering
CREATE INDEX empreendimentos_mapa_status_idx ON public.empreendimentos_mapa (status);

-- Create index on programa for filtering
CREATE INDEX empreendimentos_mapa_programa_idx ON public.empreendimentos_mapa (programa);

-- Enable RLS
ALTER TABLE public.empreendimentos_mapa ENABLE ROW LEVEL SECURITY;

-- Policy: Public read access (map is public)
CREATE POLICY "empreendimentos public read"
ON public.empreendimentos_mapa
FOR SELECT
USING (true);

-- Policy: Only admins/superadmins can modify
CREATE POLICY "empreendimentos admin manage"
ON public.empreendimentos_mapa
FOR ALL
TO authenticated
USING (
  public.has_role(auth.uid(), 'admin') OR 
  public.has_role(auth.uid(), 'superadmin')
)
WITH CHECK (
  public.has_role(auth.uid(), 'admin') OR 
  public.has_role(auth.uid(), 'superadmin')
);

-- ============================================
-- 3. CREATE TRIGGER FOR UPDATED_AT
-- ============================================

-- Function already exists (update_updated_at_column), just create trigger
CREATE TRIGGER trg_empreendimentos_updated_at
BEFORE UPDATE ON public.empreendimentos_mapa
FOR EACH ROW
EXECUTE FUNCTION public.update_updated_at_column();