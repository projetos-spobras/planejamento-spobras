
-- Create lookup tables for Empreendimentos
create table if not exists programas (
    id integer primary key,
    nome text,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

create table if not exists distritos (
    id integer primary key,
    nome text,
    subprefeitura_nome text,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

create table if not exists gerencias (
    id integer primary key,
    nome text,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

create table if not exists empreendimento_fases (
    id integer primary key,
    nome text,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- Enable RLS (optional but good practice, though we are open for now)
alter table programas enable row level security;
alter table distritos enable row level security;
alter table gerencias enable row level security;
alter table empreendimento_fases enable row level security;

create policy "Enable read access for all users" on programas for select using (true);
create policy "Enable read access for all users" on distritos for select using (true);
create policy "Enable read access for all users" on gerencias for select using (true);
create policy "Enable read access for all users" on empreendimento_fases for select using (true);

-- Allow insert/update for service role (implicit, but explicit policy maybe needed if we want client-side editing later)
create policy "Enable all access for authenticated users" on programas using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');
create policy "Enable all access for authenticated users" on distritos using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');
create policy "Enable all access for authenticated users" on gerencias using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');
create policy "Enable all access for authenticated users" on empreendimento_fases using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');
