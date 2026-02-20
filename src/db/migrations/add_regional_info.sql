
alter table empreendimentos
add column if not exists programa text,
add column if not exists subprefeitura text,
add column if not exists gerencia text,
add column if not exists id_programa integer,
add column if not exists id_distrito integer;
