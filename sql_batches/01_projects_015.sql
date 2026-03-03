INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1050', 'CEI Direta Alice Aparecida De Souza, profa.', 'Readequação Predial', 'R. Edmundo Orioli, 430 - Cidade Tiradentes, São Paulo - SP, 08470-600', 20, NULL, 'Cidade Tiradentes ', -23.599767, -46.3930314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599767,
    longitude = -46.3930314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1051', 'CEI Direta Celia Regina Kuhl, profa.', 'Readequação Predial', 'R. Caetano Teixeira, 291 - Jardim Virginia Bianca, São Paulo - SP, 02355-270', 20, NULL, 'Jaçanã / Tremembé', -23.4531612, -46.6100189, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4531612,
    longitude = -46.6100189;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1052', 'CEI Direta Maria Conceição Monteiro Ayres, profa.', 'Readequação Predial', 'Av. Dr. Guilherme de Abreu Sodré, 323 - Conj. Res. Prestes Maia, São Paulo - SP, 08490-010', 20, NULL, 'Cidade Tiradentes ', -23.567227, -46.4095924, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.567227,
    longitude = -46.4095924;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1053', 'CEI Direta Maria José Vasconcelos Mankel, profa.', 'Readequação Predial', 'Av. Inácia de Toledo, 262 - Vila Clarice, São Paulo - SP, 05177-000', 20, NULL, 'Pirituba / Jaraguá', -23.4714101, -46.7522975, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4714101,
    longitude = -46.7522975;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1054', 'CEI Direta Selma Regina Lima Messias, profa.', 'Readequação Predial', 'Rua São Pedro do Jequitinhonha, 80 - Jardim Sao Carlos (Zona Leste), São Paulo - SP, 08062-300', 20, NULL, 'São Miguel Paulista ', -23.5150748, -46.4730942, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5150748,
    longitude = -46.4730942;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1055', 'CEI Direta Raquel Zumbano Altman', 'Readequação Predial', 'R. Benedito Gama Ricardo, 82 - Jardim Libano, São Paulo - SP, 05138-160', 20, NULL, 'Pirituba / Jaraguá', -23.4855822, -46.735572, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4855822,
    longitude = -46.735572;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1056', 'CEI Direta Recanto Dos Humildes', 'Readequação Predial', 'Rua Recanto dos Humildes, s/n - Vila Nova Perus São Paulo – SP, 05209-000', 20, NULL, 'Perus ', -23.4117375, -46.750559, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4117375,
    longitude = -46.750559;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1057', 'CEI Direta São Luiz', 'Readequação Predial', 'Rua Irmão Nicolau da Fonseca, 121 - Conj. Hab. Padre Manoel da Nobrega, São Paulo - SP, 03590-170', 20, NULL, 'Penha ', -23.5488538, -46.4854739, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5488538,
    longitude = -46.4854739;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1058', 'CEI Direta Silvia Covas', 'Readequação Predial', 'Praça José Vicente Nóbrega, 21 - Cambuci, São Paulo - SP, 01541-040', 20, NULL, 'SÉ', -23.5732114, -46.6182966, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5732114,
    longitude = -46.6182966;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1059', 'CEI Direta Ermano Marchetti, ver.', 'Readequação Predial', 'R. Nova Londrina, 151 - Vila Paulistana, São Paulo - SP, 02318-230', 20, NULL, 'Jaçanã / Tremembé', -23.4530659, -46.5924531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4530659,
    longitude = -46.5924531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1060', 'CEI Direta Francisco Marcondes Oliveira, ver.', 'Readequação Predial', 'R. Carlos dos Santos, 815 - Jardim Brasil (Zona Norte), São Paulo - SP, 02234-000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4794426, -46.5727057, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4794426,
    longitude = -46.5727057;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1061', 'CEI Direta Gumercindo De Pádua Fleury, ver.', 'Readequação Predial', 'R. Raimunda Franklin de Melo, 300 - Parque Santo Antônio, São Paulo - SP, 05850-270', 20, NULL, 'M´Boi Mirim', -23.6597687, -46.7561995, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6597687,
    longitude = -46.7561995;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1062', 'CEI Direta Homero Domingues Da Silva, ver.', 'Readequação Predial', 'R. Domenico Aspari, 80 - Jardim Britânia, São Paulo - SP, 05269-010', 20, NULL, 'Perus ', -23.4352496, -46.7867918, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4352496,
    longitude = -46.7867918;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1063', 'CEI Direta Joao Toniolo, ver.', 'Readequação Predial', 'R. Padre Feliciano Domingues, 180 - Jardim Mariliza, São Paulo - SP, 02965-140', 20, NULL, 'Freguesia / Brasilândia', -23.4836994, -46.703601, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4836994,
    longitude = -46.703601;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1064', 'CEI Direta Joaquim Gouveia Franco Júnior, ver.', 'Readequação Predial', 'R. Ardósia, 8 - V - Vila Chabilandia, São Paulo - SP, 08440-440', 20, NULL, 'Guaianazes ', -23.5347196, -46.4062302, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5347196,
    longitude = -46.4062302;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1065', 'CEI Direta José Ferreira Keffer, ver.', 'Readequação Predial', 'Vila Sao Jose (Cidade Dutra), São Paulo - SP, 04837-010', 20, NULL, 'Capela do Socorro ', -23.7391941, -46.7004946, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7391941,
    longitude = -46.7004946;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1066', 'CEI Direta José Oliveira Almeida Diniz, ver.', 'Readequação Predial', 'R. Antônio Ribeiro Pina, 1000 - Jardim Lidia, São Paulo - SP, 05862-130', 20, NULL, 'Campo Limpo ', -23.6658911, -46.7625859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6658911,
    longitude = -46.7625859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1067', 'CEI Direta Líbero Ancona Lopes, ver.', 'Readequação Predial', ' R. Benedito Raposo, 13 - Vila Nova Curuca, São Paulo - SP, 08031-070', 20, NULL, 'Itaim Paulista ', -23.5199868, -46.4163506, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5199868,
    longitude = -46.4163506;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1068', 'CEI Direta Vila Calu', 'Readequação Predial', 'Rua Humberto Marçal, S/N - Vila Calu, São Paulo - SP, 04961-240', 20, NULL, 'M´Boi Mirim', -23.7380638, -46.7938903, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7380638,
    longitude = -46.7938903;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1069', 'CEI Direta Vila Constância', 'Readequação Predial', 'R. Dr. Saul de Camargo Neves, 248 - Vila Constanca, São Paulo - SP, 03755-100', 20, NULL, NULL, -23.5083577, -46.4991735, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5083577,
    longitude = -46.4991735;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1070', 'CEI Direta Vila Curuca II', 'Readequação Predial', 'R. Georgina Diniz Braghiroli, 350 - Vila Curuçá Velha, São Paulo - SP, 08031-560', 20, NULL, 'Itaim Paulista ', -23.5087127, -46.4267474, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5087127,
    longitude = -46.4267474;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1071', 'CEI Direta Vila Império', 'Readequação Predial', 'Rua Caraxués, 27 - Cidade Ademar, São Paulo - SP, 04405-170', 20, NULL, 'Cidade Ademar ', -23.6726308, -46.6561596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6726308,
    longitude = -46.6561596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1072', 'CEI Direta Vila Praia', 'Readequação Predial', 'Rua Antônio Garcia Moya, 179 - Jardim das Palmas, São Paulo - SP, 05749-250', 20, NULL, 'Campo Limpo ', -23.6183157, -46.7458307, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6183157,
    longitude = -46.7458307;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1073', 'CEI Direta Vila Salete', 'Readequação Predial', 'Tv. Coatimirim, S/N - Vila Marieta, São Paulo - SP, 03617-190', 20, NULL, 'Penha ', -23.5170056, -46.526843, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5170056,
    longitude = -46.526843;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1074', 'CEI Direta Vila Santa Inês', 'Readequação Predial', 'R. Rainha-do-Bosque, 210 - Vila Santa Ines, São Paulo - SP, 03812-030', 20, NULL, 'São Miguel Paulista ', -23.4940743, -46.4668164, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4940743,
    longitude = -46.4668164;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1075', 'CEI Direta Vila Santa Teresinha', 'Readequação Predial', 'R. Maj. Vitorino de Sousa Rocha, 148 - Vila Santa Teresinha, São Paulo - SP, 08247-080', 20, NULL, 'Itaquera ', -23.5374171, -46.4318149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5374171,
    longitude = -46.4318149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1076', 'CEI Direta Vila São João', 'Readequação Predial', 'R. Alto Jurupari, 300 - Parque Nações Unidas, São Paulo - SP, 02995-040', 20, NULL, 'Pirituba / Jaraguá', -23.4498539, -46.7374606, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4498539,
    longitude = -46.7374606;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1077', 'CEI Direto Adelaide Lopes Rodrigues', 'Readequação Predial', 'Rua Alferes Magalhães,211 - Santana', 20, NULL, 'Santana / Tucuruvi', -23.505068, -46.624418, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505068,
    longitude = -46.624418;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1078', 'CEI Direto Airton Pereira Da Silva, Frei', 'Readequação Predial', 'Rua da Safra s/n - Bairro Conj. Hab. Instituto Adventista - São Paulo - SP ', 20, NULL, 'Campo Limpo ', -23.6707324, -46.7838256, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6707324,
    longitude = -46.7838256;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1079', 'CEI Direto Aloysio De Menezes Greenhalgh, ver.', 'Readequação Predial', 'Rua Dr. Francisco patim 375 - Vila São Francisco - São Paulo - SP', 20, NULL, 'Butantã ', -23.5576084, -46.7594682, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576084,
    longitude = -46.7594682;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1080', 'CEI Direto Anita Castaldi Zampirollo, Profa.', 'Readequação Predial', 'Rua Dr Cesar, 485 - Santana', 20, NULL, 'Santana / Tucuruvi', -23.5028645, -46.6309734, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5028645,
    longitude = -46.6309734;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1081', 'CEI Direto Benedicto Rocha, ver.', 'Readequação Predial', 'Rua Debis Chaudet, 150 - Jd Dracena - São Paulo - SP ', 20, NULL, 'Butantã ', -23.5915974, -46.754998, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5915974,
    longitude = -46.754998;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1082', 'CEI Direto Cantidio Nogueira Sampaio, ver.', 'Readequação Predial', 'Rua Vicente Qureol, 150 - Jardim São João', 20, NULL, 'Jaçanã / Tremembé', -23.4372256, -46.5846198, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4372256,
    longitude = -46.5846198;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1083', 'CEI Direto Cohab Raposo Tavares', 'Readequação Predial', 'Rua Cachoeira Poraque , 560 - Cj Raposo Tavares - São Paulo - SP ', 20, NULL, 'Butantã ', -23.5864401, -46.8006293, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5864401,
    longitude = -46.8006293;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1084', 'CEI Direto Fernão Dias', 'Readequação Predial', 'Rua Merino, 30 - Jd Julieta', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4863322, -46.5660957, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4863322,
    longitude = -46.5660957;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1085', 'CEI Direto Joaquim Thomé Filho, ver.', 'Readequação Predial', 'Rua Prof. Luis Amaral Wagner, 243 - Vila Pedra Branca', 20, NULL, 'Santana / Tucuruvi', -23.455437, -46.6444217, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.455437,
    longitude = -46.6444217;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1086', 'CEI Direto Nicolai Nicolaevich Kochergin', 'Readequação Predial', ' R. José Francisco de Morais, 377 - Jardim Colonial', 20, NULL, 'Capela do Socorro ', -23.727921, -46.6870214, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.727921,
    longitude = -46.6870214;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1087', 'CEI Direto Parque América', 'Readequação Predial', 'R. Niasi Jorge Abdo, 202 - Parque America', 20, NULL, 'Capela do Socorro ', -23.7328771, -46.6899754, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7328771,
    longitude = -46.6899754;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1088', 'CEI Direto Parque Grajaú', 'Readequação Predial', 'Rua Jônatas Serrano, 621 - Parque Grajau', 20, NULL, 'Capela do Socorro ', -23.7452064, -46.6816634, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7452064,
    longitude = -46.6816634;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1089', 'CEI Direto Pedro Henrique Siqueira Lima', 'Readequação Predial', 'R. Constelação do Dourado, S/N - Jardim Campinas', 20, NULL, 'Capela do Socorro ', -23.7703782, -46.7065623, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7703782,
    longitude = -46.7065623;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1090', 'CEI Direto José Molina Júnior, ver.', 'Readequação Predial', ' R. Gáspar José Raposo, S/N - Jardim Orion', 20, NULL, 'Capela do Socorro ', -23.7199885, -46.6800386, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7199885,
    longitude = -46.6800386;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1091', 'CEI Direto Yojiro Takaoka', 'Readequação Predial', 'Av. Lourenço Cabreira, 1023 - Jardim Primavera', 20, NULL, 'Capela do Socorro ', -23.712596, -46.689663, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.712596,
    longitude = -46.689663;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1092', 'CEI Indireta Ana Maria Nacinovic Correa', 'Readequação Predial', 'R. Rufino Fernandes Inivarri, 400 - Conj. Hab. Barreira Grande, São Paulo - SP, 03907-020', 20, NULL, 'Aricanduva ', -23.5864387, -46.505736, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5864387,
    longitude = -46.505736;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1093', 'CEI Indireta Aricanduva', 'Readequação Predial', 'Avenida Aricanduva, 11555 - Aricanduva, São Paulo - SP, 03527-000', 20, NULL, 'Itaquera ', -23.5843514, -46.4887746, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5843514,
    longitude = -46.4887746;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1094', 'CEI Indireta Casa Do Cristo II', 'Readequação Predial', 'Tv. Miguel Ignácio Curi, 100 - Vila Carmosina, São Paulo - SP, 08295-005', 20, NULL, 'Itaquera ', -23.5485559, -46.4638565, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5485559,
    longitude = -46.4638565;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1095', 'CEI Indireta Espaço Da Comunidade VI', 'Readequação Predial', 'R. Joaquim Ferreira de Oliveira, 150 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08270-480', 20, NULL, 'Itaquera ', -23.5657099, -46.4601585, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5657099,
    longitude = -46.4601585;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1096', 'CEI Indireta Estrada Turística', 'Readequação Predial', 'Rua Agnes Fontoura, 85 - Conjunto Habitacional Turística, São Paulo - SP, 05164-015', 20, NULL, 'Pirituba / Jaraguá', -23.471952, -46.7557921, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.471952,
    longitude = -46.7557921;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1097', 'CEI Indireta Jardim Primavera', 'Readequação Predial', 'R. Chiquinha Gonzaga, 340 - Vila Primavera, São Paulo - SP, 03389-050', 20, NULL, 'Sapopemba', -23.5907927, -46.5267551, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5907927,
    longitude = -46.5267551;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1098', 'CEI Indireta Maria Luiza Americano', 'Readequação Predial', 'R. Onófre Jorge Velho, 101 - Cidade Líder, São Paulo - SP, 08280-330', 20, NULL, 'Itaquera ', -23.5609193, -46.4718977, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5609193,
    longitude = -46.4718977;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1099', 'CEI Indireta Maria Penha Nascimento', 'Readequação Predial', 'Av. do Oratório, 6355 - Jardim Angela (Zona Leste), São Paulo - SP, 03221-300', 20, NULL, 'Sapopemba', -23.6114251, -46.5244419, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6114251,
    longitude = -46.5244419;