INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1853', 'EMEF - José Bonifácio', 'Manutenção Unidades Educacionais', 'R. Dr. Frederico Brotero, 134 - Cidade Patriarca, São Paulo - SP, 03552-080', 20, NULL, 'Penha ', -23.5365057, -46.5044605, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5365057,
    longitude = -46.5044605;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1854', 'EMEF - Mauricio Goulart', 'Manutenção Unidades Educacionais', 'R. René de Toledo, 700 - Cidade Tiradentes, São Paulo - SP, 08471-740', 20, NULL, 'Cidade Tiradentes ', -23.6028135, -46.4048317, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6028135,
    longitude = -46.4048317;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1855', 'EMEF - José Carlos De Figueiredo Ferraz Pref. ', 'Manutenção Unidades Educacionais', 'R. Alexander Bain, 89 - Jardim Nordeste, São Paulo - SP, 03690-060', 20, NULL, 'Penha ', -23.5281131, -46.4795028, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5281131,
    longitude = -46.4795028;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1856', 'EMEF - Tenente Alipio Andrada Serpa', 'Manutenção Unidades Educacionais', 'R. Nicolau Copérnico, 165 - Jardim Bataglia, São Paulo - SP, 05546-000', 20, NULL, 'Butantã ', -23.5882405, -46.7728438, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5882405,
    longitude = -46.7728438;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1857', 'EMEF - Aclamado', 'Manutenção Unidades Educacionais', 'R. Curumatim, 390 - Parque Boa Esperança, São Paulo - SP, 08341-240', 20, NULL, 'São Mateus ', -23.6031293, -46.4479257, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6031293,
    longitude = -46.4479257;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1858', 'EMEF - Amadeu Amaral', 'Manutenção Unidades Educacionais', 'Praça Dr. Toloza de Oliveira, 37 - Jardim Três Marias, São Paulo - SP, 03676-090', 20, NULL, 'Ermelino Matarazzo ', -23.5193064, -46.4940531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5193064,
    longitude = -46.4940531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1859', 'EMEF - Arquiteto Luis Saia ', 'Manutenção Unidades Educacionais', 'R. Américo Gomes da Costa, 93 - Vila Americana, São Paulo - SP, 08010-120', 20, NULL, 'São Miguel Paulista ', -23.4945769, -46.4406072, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4945769,
    longitude = -46.4406072;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1860', 'EMEF - Barão De Mauá', 'Manutenção Unidades Educacionais', 'R. Madrid, 550 - Parque Sevilha, São Paulo - SP, 03157-010', 20, NULL, 'Mooca ', -23.5756078, -46.5701936, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5756078,
    longitude = -46.5701936;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1861', 'EMEF - Capistrano De Abreu', 'Manutenção Unidades Educacionais', 'Rua Cachoeira Mangaval - 120 - Vila Itaim, São Paulo - SP, 08190-350', 20, NULL, 'São Miguel Paulista ', -23.4901004, -46.3944085, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4901004,
    longitude = -46.3944085;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1862', 'EMEF - Coelho Neto', 'Manutenção Unidades Educacionais', 'R. Diogo Garcia, 128 - Parque Boa Esperança, São Paulo - SP, 08370-030', 20, NULL, 'São Mateus ', -23.5984124, -46.4538062, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5984124,
    longitude = -46.4538062;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1863', 'EMEF - Dom Henrique Infante', 'Manutenção Unidades Educacionais', 'R. Teodoro Mascarenhas, 133 - Vila Matilde, São Paulo - SP, 03515-010', 20, NULL, 'Penha ', -23.5419618, -46.5318171, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5419618,
    longitude = -46.5318171;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1864', 'EMEF - Emiliano Di Cavalcanti', 'Manutenção Unidades Educacionais', 'R. Alm. Alexandrino, 541 - Vila Invernada, São Paulo - SP, 03350-010', 20, NULL, 'Mooca ', -23.5700586, -46.5682361, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5700586,
    longitude = -46.5682361;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1865', 'EMEF - Juarez Távora Mal. ', 'Manutenção Unidades Educacionais', 'R. Japaraiquara, 679 - Vila Rio Branco, São Paulo - SP, 03744-060', 20, NULL, 'Ermelino Matarazzo ', -23.5072325, -46.4927898, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5072325,
    longitude = -46.4927898;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1866', 'EMEF - Mururés', 'Manutenção Unidades Educacionais', 'R. dos Mururés, 434 - Jardim Helena, São Paulo - SP, 08090-580', 20, NULL, 'São Miguel Paulista ', -23.4765535, -46.4186484, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4765535,
    longitude = -46.4186484;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1867', 'EMEF - Oliveira Viana', 'Manutenção Unidades Educacionais', 'R. Prof. Barroso do Amaral, 694 - Vila Santa Lucia, São Paulo - SP, 04937-010', 20, NULL, 'M´Boi Mirim', -23.686767, -46.7634642, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686767,
    longitude = -46.7634642;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1868', 'EMEF - Padre Chico Falconi ', 'Manutenção Unidades Educacionais', 'R. Brilho do Sol, 96 - Jardim Bartira, São Paulo - SP, 08152-110', 20, NULL, 'Itaim Paulista ', -23.5136298, -46.4030569, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5136298,
    longitude = -46.4030569;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1869', 'EMEF - Padre José De Anchieta ', 'Manutenção Unidades Educacionais', 'Av. Inajá-Guaçu, 13 - Vila Progresso (Zona Leste), São Paulo - SP, 08041-410', 20, NULL, 'São Miguel Paulista ', -23.5187987, -46.4396413, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5187987,
    longitude = -46.4396413;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1870', 'EMEF - Padre Serafin Martinez Gutierre', 'Manutenção Unidades Educacionais', 'Av. Waldemar Tietz, 1521 - Artur Alvim, São Paulo - SP, 03589-001', 20, NULL, 'Penha ', -23.5512665, -46.4822405, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5512665,
    longitude = -46.4822405;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1871', 'EMEF - Plinio De Queiroz', 'Manutenção Unidades Educacionais', 'R. Manuel Henriques de Paiva, S/N - Parque Boa Esperança, São Paulo - SP, 08341-080', 20, NULL, 'São Mateus ', -23.601813, -46.4529096, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.601813,
    longitude = -46.4529096;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1872', 'EMEF - Wladimir De Toledo Piza Pref. ', 'Manutenção Unidades Educacionais', 'Rua Giovanni Mosel, 73 - Recanto Verde do Sol, São Paulo - SP, 08381-855', 20, NULL, 'São Mateus ', -23.6141872, -46.416951, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6141872,
    longitude = -46.416951;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1873', 'EMEF - Epitácio Pessoa Pres. ', 'Manutenção Unidades Educacionais', 'R. Líbero Ancona Lopez, 169 - Parque Cruzeiro do Sul, São Paulo - SP, 08070-280', 20, NULL, 'São Miguel Paulista ', -23.4967021, -46.4611025, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4967021,
    longitude = -46.4611025;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1874', 'EMEF - Proessor Felicio Pagliuso', 'Manutenção Unidades Educacionais', 'R. Abner Ribeiro Borges, 224 - Jardim Roseli, São Paulo - SP, 08380-045', 20, NULL, 'São Mateus ', -23.5962611, -46.4415843, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5962611,
    longitude = -46.4415843;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1875', 'EMEF - Rivadavia Marques Junior Profº', 'Manutenção Unidades Educacionais', 'Rua Dr. Paulo Queiroz - Jardim Nove de Julho, São Paulo - SP, 03951-090', 20, NULL, 'São Mateus ', -23.5892918, -46.4867012, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5892918,
    longitude = -46.4867012;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1876', 'EMEF - Dirce Genesio Dos Santos Profª', 'Manutenção Unidades Educacionais', 'R. Oscar Muller, 135 - Jardim Iguatemi, São Paulo - SP, 08380-200', 20, NULL, 'São Mateus ', -23.5985493, -46.4426103, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5985493,
    longitude = -46.4426103;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1877', 'EMEF - Maria Aparecida Vilasboas Profª', 'Manutenção Unidades Educacionais', 'Parque das Flores, São Paulo - SP, 65918-625', 20, NULL, 'São Mateus ', -23.640078, -46.446009, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.640078,
    longitude = -46.446009;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1878', 'EMEF - Rodrigo Mello Franco De Andrade', 'Manutenção Unidades Educacionais', 'Av. José Velho Barreto, 371 - Parque Colonial, São Paulo - SP, 03968-080', 20, NULL, 'São Mateus ', -23.6051681, -46.4716408, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6051681,
    longitude = -46.4716408;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1879', 'EMEF - Moisés Elias De Souza Ten. ', 'Manutenção Unidades Educacionais', 'Av. Dep. Cantídio Sampaio, 6590 - Vila Souza, São Paulo - SP, 02860-001', 20, NULL, 'Pirituba / Jaraguá', -23.4345956, -46.7167604, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4345956,
    longitude = -46.7167604;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1880', 'EMEF - Vinicius De Moraes', 'Manutenção Unidades Educacionais', 'R. Brás Pires, 345 - Jardim Tiete, São Paulo - SP, 03943-090', 20, NULL, 'Sapopemba', -23.598716, -46.498385, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.598716,
    longitude = -46.498385;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1881', 'EMEF - Vinte E Cinco De Janeiro', 'Manutenção Unidades Educacionais', 'R. Carnaíba, 58 - Vila Diva, São Paulo - SP, 03351-037', 20, NULL, 'Guaianazes ', -23.544533, -46.409681, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.544533,
    longitude = -46.409681;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1882', 'EMEF - Visconde De Cairu', 'Manutenção Unidades Educacionais', 'Praça Araruva, 199 - Cidade Patriarca, São Paulo - SP, 03552-010', 20, NULL, 'Penha ', -23.5350315, -46.5004864, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5350315,
    longitude = -46.5004864;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1883', 'EMEI - Arthur Etzel', 'Manutenção Unidades Educacionais', 'Parque Domingos Luís, 20 - Jardim São Paulo, São Paulo - SP, 02043-080', 20, NULL, 'Santana / Tucuruvi', -23.4901185, -46.617691, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4901185,
    longitude = -46.617691;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1884', 'EMEI - Carlos Gomes', 'Manutenção Unidades Educacionais', 'Pr. Pres. Jânio da Silva Quadros, 316 - Jardim Japao, São Paulo - SP, 02132-000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5000037, -46.5830922, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5000037,
    longitude = -46.5830922;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1885', 'EMEI - Mário Alves De Carvalho Dr.', 'Manutenção Unidades Educacionais', 'Parque Dom Pedro I - Vila Invernada, São Paulo - SP, 03351-125', 20, NULL, 'Mooca ', -23.5704027, -46.564749, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5704027,
    longitude = -46.564749;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1886', 'EMEI - Felipe Doliveira', 'Manutenção Unidades Educacionais', 'R. Antônio Pavão, 65 - Parque Boa Esperança, São Paulo - SP, 08341-070', 20, NULL, 'São Mateus ', -23.6018242, -46.4536616, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6018242,
    longitude = -46.4536616;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1887', 'EMEI - Fernando Sabino', 'Manutenção Unidades Educacionais', 'R. Olho D''Água do Borges, 290 - Vila Silvia, São Paulo - SP, 03820-000', 20, NULL, 'Penha ', -23.4969211, -46.5061605, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4969211,
    longitude = -46.5061605;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1888', 'EMEI - Tito Mal.', 'Manutenção Unidades Educacionais', 'Avenida Marechal Tito, 6620 - Jardim Miragaia, São Paulo - SP, 08115-000', 20, NULL, 'Itaim Paulista ', -23.4894034, -46.385302, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4894034,
    longitude = -46.385302;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1889', 'EMEI - Maria José Dupré', 'Manutenção Unidades Educacionais', 'R. Pastor João Grecchi, 84 - Jardim Santa Fe (Zona Oeste), São Paulo - SP, 05271-290', 20, NULL, 'Perus ', -23.428775, -46.7960202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.428775,
    longitude = -46.7960202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1890', 'EMEI - Pedro Brasil Bandecchi', 'Manutenção Unidades Educacionais', 'Av. Waldemar Tietz, 950 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-000', 20, NULL, 'Penha ', -23.5489858, -46.4857898, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5489858,
    longitude = -46.4857898;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1891', 'EMEI - Pedro De Toledo', 'Manutenção Unidades Educacionais', 'Rua Paúva, 677 - Vila Jaguara, São Paulo - SP, 05116-001', 20, NULL, 'Lapa ', -23.5134682, -46.7465179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5134682,
    longitude = -46.7465179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1892', 'EMEI - Raul Nemenz Profº', 'Manutenção Unidades Educacionais', 'R. Alfonso Asturaro, 451 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-591', 20, NULL, 'Cidade Tiradentes ', -23.5848448, -46.3921083, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5848448,
    longitude = -46.3921083;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1893', 'EMEI - Dinah Galvão Profª', 'Manutenção Unidades Educacionais', 'R. Jan Land, 47 - Vila Nova Teresa, São Paulo - SP, 03823-100', 20, NULL, 'Ermelino Matarazzo ', -23.4850684, -46.4928177, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4850684,
    longitude = -46.4928177;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1894', 'EMEI - Neusa ConCEIção Stinchi Profª', 'Manutenção Unidades Educacionais', 'Praça Cel. Ezequiel, 10 - Jardim Danfer, São Paulo - SP, 03728-100', 20, NULL, 'Penha ', -23.5021245, -46.5109466, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5021245,
    longitude = -46.5109466;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1895', 'EMEI - Vicente De Carvalho', 'Manutenção Unidades Educacionais', 'Rua Victória Marconato Zonta, 60 - Vila Sapopemba, São Paulo - SP, 03975-090', 20, NULL, 'Sapopemba', -23.6100108, -46.4931936, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6100108,
    longitude = -46.4931936;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1896', 'EMEI - 9 De Julho', 'Manutenção Unidades Educacionais', 'Rua dos Mártires Armênios, 934 - Barro Branco (Zona Norte), São Paulo - SP, 02345-000', 20, NULL, 'Santana / Tucuruvi', -23.4677494, -46.6106912, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4677494,
    longitude = -46.6106912;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1897', 'EMEI - Afrânio Peixoto', 'Manutenção Unidades Educacionais', 'Av. Maria Santana, 230 - Vila Jacuí, São Paulo - SP, 08050-130', 20, NULL, 'São Miguel Paulista ', -23.510163, -46.445973, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.510163,
    longitude = -46.445973;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1898', 'EMEI - Alfredo Volpi', 'Manutenção Unidades Educacionais', 'Rua George Bekesy, 16 - Fazenda da Juta, São Paulo - SP, 03977-015', 20, NULL, 'Sapopemba', -23.6175105, -46.4857987, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6175105,
    longitude = -46.4857987;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1899', 'EMEI - Aluísio De Azevedo', 'Manutenção Unidades Educacionais', 'R. Farol Paulistano, 250 - Jardim Italia, São Paulo - SP, 03192-060', 20, NULL, 'Mooca ', -23.5717258, -46.5759262, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5717258,
    longitude = -46.5759262;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1900', 'EMEI - Antonio Carlos Brasileiro De Almeida Jobim - Tom Jobim', 'Manutenção Unidades Educacionais', 'Rua Giovanni Alberoni, 132 - Vila Cardoso Franco, São Paulo - SP, 03978-060', 20, NULL, 'Sapopemba', -23.6187415, -46.5044508, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6187415,
    longitude = -46.5044508;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1901', 'EMEI - Augusto Froebel', 'Manutenção Unidades Educacionais', 'R. Fábio José Bezerra, 643 - Parque Boturussu, São Paulo - SP, 03805-000', 20, NULL, 'Ermelino Matarazzo ', -23.5059464, -46.4819815, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5059464,
    longitude = -46.4819815;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1902', 'EMEI - Cornélio Pires', 'Manutenção Unidades Educacionais', 'Praça Manoel de Mesquita, 15 - Vila Invernada, São Paulo - SP, 03350-040', 20, NULL, 'Mooca ', -23.5702845, -46.5682005, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5702845,
    longitude = -46.5682005;