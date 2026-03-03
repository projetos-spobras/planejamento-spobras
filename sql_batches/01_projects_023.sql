INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1451', 'Ponte Rasa - Parque Linear PPR-01', 'PARQUE LINEAR COM RETENÇÃO DE ÁGUA', 'Ponte Rasa', 18, NULL, 'Ermelino Matarazzo ', -23.509548, -46.495124, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.509548,
    longitude = -46.495124;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1452', 'Reservatório Tiquatira - Reservatório RTQ-02', 'RESERVATÓRIO DE RETARDO DE PICO DE CHEIAS, OFF-LINE, LOCALIZADO EM ÁREA PÚBLICA', 'Av tiquatira', 18, NULL, 'Penha ', -23.514631, -46.535111, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.514631,
    longitude = -46.535111;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1453', 'Tapera - Parque Linear PTP -1', 'PARQUE LINEAR COM RESERVAÇÃO', 'Corrego Tapera', 18, NULL, 'Aricanduva ', -23.587277, -46.516848, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.587277,
    longitude = -46.516848;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1454', 'EMEI Setor Educacional 2206 - Rua Padre Antônio de Gouveia', 'Construção Unidade Educacional', 'Rua Padre Antônio de Gouveia', 20, NULL, 'Cidade Ademar ', -23.6785864, -46.6383348, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6785864,
    longitude = -46.6383348;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1455', 'CEMEI Setor Educacional 3001 – Av. Joaquim Napoleão Machado, 200', 'Construção Unidade Educacional', 'Av. Joaquim Napoleão Machado, 200', 20, NULL, 'Capela do Socorro ', -23.7342872, -46.679994, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7342872,
    longitude = -46.679994;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1456', 'EMEI Setor Educacional 0307 - Rua Osorio Alves de Castro 5', 'Construção Unidade Educacional', 'Rua Osorio Alves de Castro 5', 20, NULL, 'Perus ', -23.4410961, -46.8001934, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4410961,
    longitude = -46.8001934;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1457', 'EMEI Setor Educacional 3305 - Rua Gonçalves de Mendonça, 1000 — Plano C', 'Construção Unidade Educacional', 'Rua Gonçalves de Mendonça, 1000', 20, NULL, 'São Mateus ', -23.5998487, -46.4379106, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5998487,
    longitude = -46.4379106;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1458', 'EMEI Setor Educacional 9105 - Rua Antonio Taborda 1000', 'Construção Unidade Educacional', 'Rua Antonio Taborda 1000', 20, NULL, 'Penha ', -23.539406, -46.5069559, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539406,
    longitude = -46.5069559;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1459', 'EMEI Setor Educacional 8407/8411 - Estrada Dom João Neri, SN', 'Construção Unidade Educacional', 'Estrada Dom João Neri, SN', 20, NULL, 'Itaim Paulista ', -23.5143614, -46.402677, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5143614,
    longitude = -46.402677;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1460', 'EMEI Setor Educacional 3705 – Av. Pires do Rio x Tv. Califa de Bagda', 'Construção Unidade Educacional', ' Av. Pires do Rio x Tv. Califa de Bagda', 20, NULL, 'Itaquera ', -23.5286877, -46.4479508, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5286877,
    longitude = -46.4479508;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1461', 'CEMEI e EMEF Setor Educacional 9604 - Rua Doutor Jose Gravonski', 'Construção Unidade Educacional', 'Rua Doutor Jose Gravonski', 20, NULL, 'Guaianazes ', -23.5306828, -46.4042745, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5306828,
    longitude = -46.4042745;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1462', 'EMEI Setor Educacional 1505 - Rua Dom Mateus', 'Construção Unidade Educacional', 'Rua Dom Mateus', 20, NULL, 'Ipiranga ', -23.5754516, -46.6137828, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5754516,
    longitude = -46.6137828;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1463', 'CIEJA Santana / Tucuruvi', 'Manutenção em Unidades Educacionais', 'R. Cel. João da Silva Feijó, 34 - Parque Mandaqui, São Paulo - SP, 02422-200', 20, NULL, 'Santana / Tucuruvi', -23.468443, -46.6390435, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.468443,
    longitude = -46.6390435;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1464', 'CIEJA - Vila Maria /Vila Guilherme', 'Manutenção em Unidades Educacionais', 'R. Francisco Franco Machado, 68 - Vila Sabrina, São Paulo - SP, 02139-020', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4923218, -46.573558, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923218,
    longitude = -46.573558;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1465', 'EMEF - Comandante Gastão Moutinho', 'Manutenção em Unidades Educacionais', 'R. Cel. João da Silva Feijó, 40 - Parque Mandaqui, São Paulo - SP, 02422-200', 20, NULL, 'Santana / Tucuruvi', -23.4687107, -46.6394222, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4687107,
    longitude = -46.6394222;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1466', 'EMEF - Olivia Irene Bayerlein Silva', 'Manutenção em Unidades Educacionais', 'R. Amazonas da Silva, 893 - Vila Guilherme, São Paulo - SP, 02051-001', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5121353, -46.6089524, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5121353,
    longitude = -46.6089524;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1467', 'EMEF - Procópio Ferreira', 'Manutenção em Unidades Educacionais', 'Av. Fim de Semana, 527 - Jardim Casablanca, São Paulo - SP, 05846-270', 20, NULL, 'M´Boi Mirim', -23.6574098, -46.7468316, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6574098,
    longitude = -46.7468316;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1468', 'EMEF - Professora Vera Lucia Fusco Borba', '??', 'R. Martinho Lutero, 375 - Jardim Campo Limpo, São Paulo - SP, 05785-180', 20, NULL, 'Campo Limpo ', -23.6248333, -46.7675167, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6248333,
    longitude = -46.7675167;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1469', 'EMEF - Zulmira Cavalheiro Faustino', 'Manutenção em Unidades Educacionais', 'R. Melo Coutinho, 69 - Parque Regina, São Paulo - SP, 05775-230', 20, NULL, 'Campo Limpo ', -23.6350512, -46.7539323, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6350512,
    longitude = -46.7539323;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1470', 'EMEI - Clara Nunes', 'Manutenção em Unidades Educacionais', 'Rua Deputado Adib Chammas, 104 - Veleiros, São Paulo - SP, 04773-170', 20, NULL, 'Capela do Socorro ', -23.6832611, -46.7108924, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6832611,
    longitude = -46.7108924;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1471', 'EMEF - Constelação Do Indio', 'Manutenção em Unidades Educacionais', 'R. Constelação do Índio, 41 - Jardim Campinas, São Paulo - SP, 04858-140', 20, NULL, 'Capela do Socorro ', -23.7716011, -46.7098279, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7716011,
    longitude = -46.7098279;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1472', 'EMEF - Frei Damião', 'Manutenção em Unidades Educacionais', 'R. Daniel Alomia, 325 - Jardim Sipramar, São Paulo - SP, 04851-340', 20, NULL, 'Capela do Socorro ', -23.7477326, -46.668353, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7477326,
    longitude = -46.668353;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1473', 'ADM - Diretoria Regional De Educação Capela Do Socorro', 'Manutenção em Unidades Educacionais', 'Rua Monte Carlo, 25 Veleiros – CEP: 04773-140', 20, NULL, NULL, -23.6850221, -46.7101426, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6850221,
    longitude = -46.7101426;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1474', 'EMEF - Professora Eliza Rachel Macedo De Souza', 'Manutenção em Unidades Educacionais', 'R. Constelação do Eridano, 24', 20, NULL, 'Capela do Socorro ', -23.771773, -46.705364, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.771773,
    longitude = -46.705364;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1475', 'CEU - Capão Redondo', 'Manutenção em Unidades Educacionais', 'Rua Daniel Gran, s/n - Jardim Modelo, São Paulo - SP, 05867-380', 20, NULL, 'Campo Limpo ', -23.6744203, -46.7686889, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6744203,
    longitude = -46.7686889;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1476', 'CEU - Paraisópolis', 'Manutenção em Unidades Educacionais', 'Rua Doutor Jose Augusto de Souza e Silva, S/N - Jardim Parque Morumbi - CEP: 05712040', 20, NULL, 'Campo Limpo ', -23.6203622, -46.7298979, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6203622,
    longitude = -46.7298979;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1477', 'CEU  Jambeiro - José Guilherme Gianeti', 'Manutenção em Unidades Educacionais', 'Av. José Pinheiro Borges, 60 - Guaianases', 20, NULL, 'Guaianazes ', -23.5390975, -46.4228459, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5390975,
    longitude = -46.4228459;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1478', 'CEU - Parque Bristol', 'Manutenção em Unidades Educacionais', 'Jardim Imperador (Zona Sul), São Paulo - SP, 04177-070', 20, NULL, NULL, -23.6432264, -46.6087382, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432264,
    longitude = -46.6087382;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1479', 'CEU Aricanduva - Professora Irene Galvão de Souza', 'Manutenção em Unidades Educacionais', 'Av. Olga Fadel Abarca, S/N - Jardim Santa Terezinha - CEP: 03572020', 20, NULL, 'Itaquera ', -23.573717, -46.5022499, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.573717,
    longitude = -46.5022499;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1480', 'CEU Barro Branco', 'Manutenção em Unidades Educacionais', 'Enedina Alves Marques Rua Numa Pompilio, S/N - Conj. Hab. Barro Branco II', 20, NULL, 'Cidade Tiradentes ', -23.5854932, -46.3917137, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5854932,
    longitude = -46.3917137;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1481', 'Programa Reencontro Pari', 'definir', 'pari', 21, NULL, 'Mooca ', -23.5271138, -46.6114203, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5271138,
    longitude = -46.6114203;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1482', 'Programa Reencontro CMTC', '??', 'bom retiro', 21, NULL, 'SÉ', -23.52571, -46.638186, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.52571,
    longitude = -46.638186;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1483', 'Programa Reencontro Santo Amaro', '??', 'santo amaro', 21, NULL, 'Santo Amaro ', -23.6463717, -46.7054221, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6463717,
    longitude = -46.7054221;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1484', 'CEU Guacuri - Construção CEU Padrão - (corrigir Endereço)', 'Construção Unidade Educacional', 'Rua Olga amatto', 20, NULL, 'Cidade Ademar ', -23.701655, -46.633656, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.701655,
    longitude = -46.633656;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1485', 'CEU Itaim Paulista - Construção CEU Padrão - (corrigir Endereço)', 'Construção Unidade Educacional', 'RUA VISCONDE DE GUEDES TEIXEIRA – ITAIM PAULISTA - 3810', 20, NULL, 'Itaim Paulista ', -23.5055279, -46.3746769, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5055279,
    longitude = -46.3746769;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1486', 'CEU Cocaia - Grajaú - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'Rua Dr. Nuno Guerner de Almeida', 20, NULL, 'Capela do Socorro ', -23.752451, -46.67767, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.752451,
    longitude = -46.67767;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1487', 'CEU Perus - Construção Novas Unidades CEU - Setor 6102', 'Construção Unidade Educacional', 'RUA rio TARCON – PERUS -', 20, NULL, 'Perus ', -23.4070915, -46.7584771, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4070915,
    longitude = -46.7584771;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1488', 'CEU Vila Yolanda - Cidade Tiradentes - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'RUA RIO BAIA – CIDADE TIRADENTES - 2502', 20, NULL, 'Cidade Tiradentes ', -23.5777429, -46.3850782, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5777429,
    longitude = -46.3850782;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1489', 'CEU Pedreira - Construção CEU Padrão - (corrigir Endereço) - 5801', 'Construção Unidade Educacional', 'RUA PONTES DE MORIS – CIDADE DUTRA – PEDREIRA', 20, NULL, 'Cidade Ademar ', -23.6898197, -46.6654312, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6898197,
    longitude = -46.6654312;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1490', 'CEU Morro das Pedras - São Rafael - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'RUA MORRO DAS PEDRAS X RUA NOSSA SENHORA APARECIDA – SÃO MATEUS', 20, NULL, 'São Mateus ', -23.6027814, -46.4853057, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6027814,
    longitude = -46.4853057;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1491', 'Arquivo Geral - Reforma', 'Reforma do arquivo geral', 'praça da sé', 24, NULL, 'SÉ', -23.5503099, -46.6342009, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5503099,
    longitude = -46.6342009;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1492', 'Arquivo Geral - Novo', 'Construção de novo prédio - Arquivo Geral', 'praça da sé', 24, NULL, 'SÉ', -23.5503099, -46.6342009, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5503099,
    longitude = -46.6342009;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1493', 'Arena Esportiva Ibirapuera (Perto do Parque das Bicicletas)', 'Construção Arena Poliesportiva', 'Alameda Iraé, 35 - Moema, São Paulo - SP, 04075-000', 24, NULL, 'Vila Mariana ', -23.6003332, -46.6572352, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6003332,
    longitude = -46.6572352;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1494', 'Ligação Faria Lima - Bandeirantes', 'Viário', 'av. faria Lima', 4, NULL, 'Pinheiros ', -23.5775252, -46.6868419, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5775252,
    longitude = -46.6868419;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1495', 'Programa Reencontro Armênia', '??', 'av do estado', 21, NULL, 'SÉ', -23.5573938, -46.6183215, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5573938,
    longitude = -46.6183215;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1496', 'Túnel Sena Madureira', '??', 'Av Sena Madureira', 5, NULL, 'Vila Mariana ', -23.5940132, -46.6441956, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5940132,
    longitude = -46.6441956;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1497', 'Viaduto Sabará - Interlagos', 'Melhorias Viárias', 'Av. Sabará', 5, NULL, 'Santo Amaro ', -23.679293, -46.6847117, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.679293,
    longitude = -46.6847117;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1498', 'Prolongamento Marginal Pinheiros', 'Melhorias Viárias', 'Marginal Pinheiros', 5, NULL, 'Santo Amaro ', -23.6238982, -46.7099605, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6238982,
    longitude = -46.7099605;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1499', 'Av. Presidente Wilson', 'Melhorias Viárias', 'Av Presidente Wilson', 5, NULL, 'Ipiranga ', -23.5820086, -46.5979658, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5820086,
    longitude = -46.5979658;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1500', 'Microdrenagem Aricanduva', 'Drenagem', 'Av Aricanduva', 18, NULL, 'Aricanduva ', -23.5664229, -46.5073014, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5664229,
    longitude = -46.5073014;