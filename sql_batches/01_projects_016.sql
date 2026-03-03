INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1100', 'CEI Indireta Nossa Senhora De Lourdes', 'Readequação Predial', 'R. Guedes de Brito, 45 - Jardim Lourdes, São Paulo - SP, 08452-480', 20, NULL, 'Guaianazes ', -23.5295016, -46.3947969, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5295016,
    longitude = -46.3947969;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1101', 'CEI Indireta Nossa Senhora Sagrado Coração', 'Readequação Predial', 'Praça Leão X, 51 - Vila Formosa, São Paulo - SP, 03359-020', 20, NULL, 'Aricanduva ', -23.5691975, -46.5495354, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5691975,
    longitude = -46.5495354;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1102', 'CEI Indireta Parque América', 'Readequação Predial', 'R. Estela Naves Junqueira, 78 - Parque America, São Paulo - SP, 04841-000', 20, NULL, 'Capela do Socorro ', -23.7352414, -46.6907762, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7352414,
    longitude = -46.6907762;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1103', 'CEI Indireta Parque São Domingos', 'Readequação Predial', 'R. José de Morais, 141 - Parque Sao Domingos, São Paulo - SP, 05121-060', 20, NULL, 'Pirituba / Jaraguá', -23.5069297, -46.7315377, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5069297,
    longitude = -46.7315377;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1104', 'CEI Indireta Rio Claro', 'Readequação Predial', ' R. Dom Benito Feijó, 42 - Conj. Promorar Rio Claro, São Paulo - SP, 08395-090', 20, NULL, 'São Mateus ', -23.6223145, -46.4572865, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6223145,
    longitude = -46.4572865;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1105', 'CEI Indireta São Jorge', 'Readequação Predial', 'Rua Major José Marioto Ferreira, 101 - Paraisópolis', 20, NULL, 'Campo Limpo ', -23.6130872, -46.723024, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6130872,
    longitude = -46.723024;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1106', 'CEI Indireta Vila Clarice', 'Readequação Predial', 'Rua Desembargador Joaquim Bandeira de Mello, 642 - Conj. Res. Vista Verde, São Paulo - SP, 05171-500', 20, NULL, 'Pirituba / Jaraguá', -23.4767618, -46.7502981, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4767618,
    longitude = -46.7502981;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1107', 'CEI Indireta Vila Gustavo', 'Readequação Predial', ' R. Gertrudes, 33 - Vila Medeiros, São Paulo - SP, 02208-010', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4800817, -46.5848645, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4800817,
    longitude = -46.5848645;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1108', 'CEI Indireto  Jose Bonifácio (Bom Pastor II)', 'Readequação Predial', 'Av. Nagib Farah Maluf, 1410 - Conj. Res. José Bonifácio, São Paulo - SP, 08255-000', 20, NULL, 'Itaquera ', -23.5411657, -46.4334857, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5411657,
    longitude = -46.4334857;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1109', 'CEI Indireto  Milton Almeida Dos Santos, Prof.', 'Readequação Predial', 'Rua Samuel Bovy, 21 - Jardim Rincão, São Paulo - SP, 02998-120', 20, NULL, 'Pirituba / Jaraguá', -23.4396204, -46.7324748, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4396204,
    longitude = -46.7324748;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1110', 'CEI Indireto  Pingo De Gente', 'Readequação Predial', 'Rua Daniel Pereira, 238 - Pq. Tietê', 20, NULL, 'Freguesia / Brasilândia', -23.4654061, -46.6776924, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4654061,
    longitude = -46.6776924;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1111', 'CEI Indireto Águia De Haia', 'Readequação Predial', 'R. Lembranças do Futuro, 35 - Conj. Hab. Aguia de Haia, São Paulo - SP, 08223-470', 20, NULL, 'Itaquera ', -23.5222742, -46.472095, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5222742,
    longitude = -46.472095;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1112', 'CEI Indireto Antônio Assunção Ferreira', 'Readequação Predial', 'Rua Sebatião Moreira, 736 - Parque Boa Esperança, São Paulo - SP, 08341-020', 20, NULL, 'São Mateus ', -23.6019975, -46.454247, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6019975,
    longitude = -46.454247;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1113', 'CEI Indireto Arco Iris', 'Readequação Predial', ' Rua Mohamad Ibrahin Saleh, 905 - Cidade Nova São Miguel, São Paulo - SP, 08042-130', 20, NULL, 'São Miguel Paulista ', -23.5037087, -46.4314211, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5037087,
    longitude = -46.4314211;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1114', 'CEI Indireto Auta De Souza', 'Readequação Predial', 'R. Primo Baudini, 441 - Jardim Augusto, São Paulo - SP, 08371-120', 20, NULL, 'São Mateus ', -23.599428, -46.447435, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599428,
    longitude = -46.447435;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1115', 'CEI Indireto Baltazar Santana', 'Readequação Predial', 'R. José Carlos Mastromonico, S/N - Jardim Planalto, São Paulo - SP, 08040-440', 20, NULL, 'São Miguel Paulista ', -23.5083806, -46.4475824, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5083806,
    longitude = -46.4475824;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1116', 'CEI Indireto Conjunto José Bonifácio', 'Readequação Predial', 'R. Isabel Urbina, 149 - Jardim Bonifacio, São Paulo - SP, 08253-210', 20, NULL, 'Itaquera ', -23.5466703, -46.4377153, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466703,
    longitude = -46.4377153;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1117', 'CEI Indireto Cria', 'Readequação Predial', 'Av. Gal. Penha Brasil, 2651', 20, NULL, 'Freguesia / Brasilândia', -23.4518367, -46.6761384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4518367,
    longitude = -46.6761384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1118', 'CEI Indireto Elite', 'Readequação Predial', 'R. Cristiano Lobe, 200 - Cidade Tiradentes, São Paulo - SP, 08475-340', 20, NULL, 'Cidade Tiradentes ', -23.591428, -46.3995589, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.591428,
    longitude = -46.3995589;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1119', 'CEI Indireto Espaço Da Comunidade IV', 'Readequação Predial', 'Rua Orlando Fratucelli, 150 - Itaquera, São Paulo - SP, 08230-520', 20, NULL, 'Itaquera ', -23.5216612, -46.447457, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5216612,
    longitude = -46.447457;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1120', 'CEI Indireto Espaço Vida Criativa II', 'Readequação Predial', 'Rua Anguereta, 99', 20, NULL, 'Itaim Paulista ', -23.5221535, -46.4051301, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5221535,
    longitude = -46.4051301;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1121', 'CEI Indireto Fazenda Do Carmo', 'Readequação Predial', ' R. Floresta Amazônica, 8 - Conj. Hab. Fazenda do Carmo, São Paulo - SP, 08421-340', 20, NULL, 'Cidade Tiradentes ', -23.5661963, -46.4187713, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5661963,
    longitude = -46.4187713;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1122', 'CEI Indireto Inácio De Lima Oliveira', 'Readequação Predial', 'Rua Caetano Nogueira da Costa, 571', 20, NULL, 'Casa Verde ', -23.4541163, -46.6624621, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4541163,
    longitude = -46.6624621;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1123', 'CEI Indireto Itajuibe', 'Readequação Predial', ' Rua Pedro Bloch, S/N - Jardim Nelia IV, São Paulo - SP, 08142-334', 20, NULL, 'Itaim Paulista ', -23.5139668, -46.3769149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5139668,
    longitude = -46.3769149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1124', 'CEI Indireto Itaquera I ', 'Readequação Predial', ' R. do Contorno, s/n - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08220-380', 20, NULL, 'Itaquera ', -23.5418819, -46.4712122, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5418819,
    longitude = -46.4712122;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1125', 'CEI Indireto Jardim Castelo', 'Readequação Predial', 'R. do Borgado, 111 - Eng. Goulart, São Paulo - SP, 03727-090', 20, NULL, 'Penha ', -23.5035664, -46.512587, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5035664,
    longitude = -46.512587;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1126', 'CEI Indireto Jardim Das Camélias', 'Readequação Predial', 'R. Lírio da Serra, 276 - Parque Guarani, São Paulo - SP, 08050-460', 20, NULL, 'São Miguel Paulista ', -23.5139978, -46.4636795, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5139978,
    longitude = -46.4636795;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1127', 'CEI Indireto Jardim Das Imbuias II', 'Readequação Predial', 'R. José Luís Monteiro, 513 - Jardim das Camelias', 20, NULL, 'Capela do Socorro ', -23.72894, -46.7095878, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.72894,
    longitude = -46.7095878;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1128', 'CEI Indireto Jardim Dos Reis', 'Readequação Predial', 'Estr. do Jararau, 89 - Chácara Nani, São Paulo - SP, 04943-120', 20, NULL, 'M´Boi Mirim', -23.7076571, -46.7920343, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7076571,
    longitude = -46.7920343;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1129', 'CEI Indireto Jardim Eliane', 'Readequação Predial', 'Travessa Maria do Carmo de Freitas, S/N - Jardim Eliane, São Paulo - SP, 03578-225', 20, NULL, 'Itaquera ', -23.5582287, -46.5024644, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5582287,
    longitude = -46.5024644;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1130', 'CEI Indireto Jardim Guanabara', 'Readequação Predial', 'R. Arnold Bennett, 270 - Granja Nossa Sra. Aparecida', 20, NULL, 'Capela do Socorro ', -23.7617194, -46.7124612, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7617194,
    longitude = -46.7124612;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1131', 'CEI Indireto Jardim Imperador', 'Readequação Predial', 'R. José Roberto Pereira, 171 - Jardim Imperador (Zona Leste), São Paulo - SP, 03934-010', 20, NULL, 'São Mateus ', -23.5886863, -46.5029594, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5886863,
    longitude = -46.5029594;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1132', 'CEI Indireto Jardim Lapenna I', 'Readequação Predial', 'R. Serra da Juruoca, 150 - Jardim Lapena, São Paulo - SP, 08071-180', 20, NULL, 'São Miguel Paulista ', -23.4881638, -46.4498573, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4881638,
    longitude = -46.4498573;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1133', 'CEI Indireto Jardim Leblon', 'Readequação Predial', 'Rua Padre José Garzotti, 494 - Cidade Dutra', 20, NULL, 'Capela do Socorro ', -23.7110699, -46.7028726, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7110699,
    longitude = -46.7028726;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1134', 'CEI Indireto Jardim Luzitânia', 'Readequação Predial', 'R. Frei Xisto Teuber, 189 - Pirajussara, São Paulo - SP, 05791-080', 20, NULL, 'Campo Limpo ', -23.6433228, -46.7806914, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6433228,
    longitude = -46.7806914;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1135', 'CEI Indireto Jardim Manacas', 'Readequação Predial', 'Rua São Roque do Paraguaçu, 335 - Vila Quintana, São Paulo - SP, 04837-150', 20, NULL, 'Capela do Socorro ', -23.7443114, -46.704609, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7443114,
    longitude = -46.704609;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1136', 'CEI Indireto Jardim Mutinga', 'Readequação Predial', 'R. Francisco Beltrão, 2 - Jardim Vista Linda, São Paulo - SP, 05159-230', 20, NULL, 'Pirituba / Jaraguá', -23.487566, -46.7531072, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.487566,
    longitude = -46.7531072;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1137', 'CEI Indireto Jardim Novo Horizonte', 'Readequação Predial', 'R. da Sereia, 40 - Jardim Novo Horizonte', 20, NULL, 'Capela do Socorro ', -23.7774814, -46.6966431, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7774814,
    longitude = -46.6966431;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1138', 'CEI Indireto Jardim Santo Eduardo', 'Readequação Predial', 'Rua Lourenço da Silva Araújo e Amazonas, 275 - Parque Santo Eduardo, São Paulo - SP, 03384-010', 20, NULL, 'Aricanduva ', -23.5782069, -46.5223733, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5782069,
    longitude = -46.5223733;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1139', 'CEI Indireto Jardim São Francisco', 'Readequação Predial', 'Tv. da Idade Madura, 58 - Jardim Rodolfo Pirani, São Paulo - SP, 08311-480', 20, NULL, 'São Mateus ', -23.6313859, -46.4567679, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6313859,
    longitude = -46.4567679;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1140', 'CEI Indireto Jardim São Nicolau', 'Readequação Predial', 'R. Brook Taylor, 386 - Jardim Nordeste, São Paulo - SP, 03690-000', 20, NULL, 'Penha ', -23.5269771, -46.4772822, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5269771,
    longitude = -46.4772822;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1141', 'CEI Indireto Jardim Sapopemba I', 'Readequação Predial', 'R. Lírio do Valê, 25 - Conj. Promorar Sapopemba, São Paulo - SP, 03927-350', 20, NULL, 'Sapopemba', -23.6011404, -46.4982215, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6011404,
    longitude = -46.4982215;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1142', 'CEI Indireto Jardim Sapopemba III', 'Readequação Predial', 'R. Ana Popovici, 57 - Jardim Sapopemba, São Paulo - SP, 03976-060', 20, NULL, 'Sapopemba', -23.6122799, -46.4970492, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6122799,
    longitude = -46.4970492;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1143', 'CEI Indireto Jardim Tereza', 'Readequação Predial', 'Rua Pedro Pomar, 120', 20, NULL, 'Freguesia / Brasilândia', -23.4609894, -46.6800422, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4609894,
    longitude = -46.6800422;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1144', 'CEI Indireto Joaquim Alencar Seixas', 'Readequação Predial', 'Rua Alexandre Cheid, 602 - Parque Savoi City, São Paulo - SP, 03570-100', 20, NULL, 'Itaquera ', -23.5644882, -46.4838134, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5644882,
    longitude = -46.4838134;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1145', 'CEI Indireto Jocelyne Louise Chamusea', 'Readequação Predial', ' R. São José de Caiana, 221 - Parque Cisper, São Paulo - SP, 03819-020', 20, NULL, 'Penha ', -23.5012895, -46.4988912, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5012895,
    longitude = -46.4988912;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1146', 'CEI Indireto Josis', 'Readequação Predial', 'R. São José do Rio Preto, 400 - Grajaú', 20, NULL, 'Capela do Socorro ', -23.7557838, -46.6822482, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7557838,
    longitude = -46.6822482;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1147', 'CEI Indireto Manga Rosa', 'Readequação Predial', 'R. José Manoel Camisa Nova, 550 - Parque Santo Antônio, São Paulo - SP, 05822-015', 20, NULL, 'M´Boi Mirim', -23.6649778, -46.7467914, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6649778,
    longitude = -46.7467914;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1148', 'CEI Indireto Maria Natividade Machado', 'Readequação Predial', 'R. Ernesta Fracarolli, 50 - Jardim Sao Rafael', 20, NULL, 'Capela do Socorro ', -23.760065, -46.7184267, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.760065,
    longitude = -46.7184267;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1149', 'CEI Indireto Maria Tereza De Macedo Costa', 'Readequação Predial', 'R. Nobre Viêira, 100 - Jardim Rizzo, São Paulo - SP, 05587-180', 20, NULL, 'Butantã ', -23.5725956, -46.730662, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5725956,
    longitude = -46.730662;