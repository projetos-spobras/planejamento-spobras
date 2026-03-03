INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1401', 'EMEF - José Pedro Leite Cordeiro, Dr.', 'Manutenção Predial', 'Rua Des. Fernando de Albuquerque Prado, 250 - Cidade Kemel', 20, NULL, 'Itaim Paulista ', -23.50791, -46.37016, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.50791,
    longitude = -46.37016;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1402', 'EMEI - Laura Da Conceição Pereira Quintães, Profª.', 'Manutenção Predial', 'Rua Lourenço Franco do Prado, 131 - Jardim Nélia', 20, NULL, 'Itaim Paulista ', -23.50992, -46.37892, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.50992,
    longitude = -46.37892;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1403', 'EMEI  - Maria Da Luz Silva De Oliveira, Profª.', 'Manutenção Predial', 'Rua Erva do Sereno, 103 - Jardim Maia', 20, NULL, 'São Miguel Paulista ', -23.48381, -46.41371, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48381,
    longitude = -46.41371;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1404', 'EMEI - Maria Quitéria', 'Manutenção Predial', 'Rua Marfim Vegetal, 126 - Parque Paulistano', 20, NULL, 'São Miguel Paulista ', -23.49162, -46.41522, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49162,
    longitude = -46.41522;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1405', 'EMEF - Raimundo Correia', 'Manutenção Predial', 'Rua Sabiá-Laranjeira, 99 - Jardim Helena', 20, NULL, 'São Miguel Paulista ', -23.48261, -46.41978, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48261,
    longitude = -46.41978;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1406', 'EMEF - Raul Pilla', 'Manutenção Predial', 'Rua Padre Orlando Nogueira, 139 - Vila Jacuí', 20, NULL, 'São Miguel Paulista ', -23.51135, -46.46596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51135,
    longitude = -46.46596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1407', 'EMEI - Valentina Antonini da Silva, Profª.', 'Manutenção Predial', 'Rua Conceição do Almeida, 120 - Vila Mara', 20, NULL, 'São Miguel Paulista ', -23.49166, -46.4215, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49166,
    longitude = -46.4215;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1408', 'CEI - Vila Progresso', 'Manutenção Predial', 'Rua Suzana de Melo, 881 - Vila Progresso', 20, NULL, 'São Miguel Paulista ', -23.51966, -46.4327, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51966,
    longitude = -46.4327;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1409', 'CEI Direto - Reynaldo de Maria Freitas e Silva, Prof.', 'Manutenção Predial', 'Rua Oscar de Moura Lacerda, 200 - Jardim Rossin', 20, NULL, 'Casa Verde ', -23.48694, -46.65451, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48694,
    longitude = -46.65451;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1410', 'EMEF - Milton Campos, Sem.', 'Manutenção Predial', 'Rua Pérsio de Souza Queiroz Filho, 155 - Vila Isabel', 20, NULL, 'Freguesia / Brasilândia', -23.4622, -46.69699, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4622,
    longitude = -46.69699;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1411', 'EMEF - Adolpho Otto de Laet, Prof.', 'Manutenção Predial', 'Rua Isidoro de Laet, 165 - Mandaqui', 20, NULL, 'Santana / Tucuruvi', -23.48149, -46.62625, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48149,
    longitude = -46.62625;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1412', 'EMEF - Julio Marcondes Salgado, Gal.', 'Manutenção Predial', 'Avenida Edu Chaves, 1289 - Parque Edu Chaves', 20, NULL, 'Jaçanã / Tremembé', -23.47811, -46.56719, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.47811,
    longitude = -46.56719;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1413', 'EMEI - Ottilia de Jesus Pires, Profª.', 'Manutenção Predial', 'Rua São Luíz Gonzaga, 62 - Vila Nelson', 20, NULL, 'Jaçanã / Tremembé', -23.46457, -46.58414, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.46457,
    longitude = -46.58414;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1414', 'EMEI - José Bonifácio de Andrade e Silva', 'Manutenção Predial', 'Rua Dr. César, 581 - Santana', 20, NULL, 'Santana / Tucuruvi', -23.50313, -46.63162, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.50313,
    longitude = -46.63162;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1415', 'EMEI - Vicente Matheus', 'Manutenção Predial', 'Rua Alexandre Cheid, 636 - Parque Savoy City', 20, NULL, 'Itaquera ', -23.56465, -46.48316, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56465,
    longitude = -46.48316;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1416', 'EMEI - Francisco Roquetti', 'Manutenção Predial', 'Praça Leão X, S/N - Vila Formosa', 20, NULL, 'Aricanduva ', -23.56869, -46.54908, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56869,
    longitude = -46.54908;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1417', 'EMEI - Parque Savoy City', 'Manutenção Predial', 'Travessa Jacinto Ferreira, 250 - Parque Savoy City', 20, NULL, 'Itaquera ', -23.56365, -46.48043, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56365,
    longitude = -46.48043;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1418', 'EMEI - Padre Manoel da Nóbrega', 'Manutenção Predial', 'R. Adelino, 100 - Itaquera', 20, NULL, 'Itaquera ', -23.52928, -46.45819, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.52928,
    longitude = -46.45819;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1419', 'EMEF - Arthur Neiva', 'Manutenção Predial', 'Av. Nossa Sra. de Guadalupe, 212 - Jardim Helena', 20, NULL, 'Itaquera ', -23.53889, -46.42616, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53889,
    longitude = -46.42616;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1420', 'EMEF - Padre Aldo da Tofori', 'Manutenção Predial', 'R. Miguel Fleta, 167 - Parque Doroteia', 20, NULL, 'Cidade Ademar ', -23.70165, -46.63977, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.70165,
    longitude = -46.63977;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1421', 'EMEF - Antenor Nascentes', 'Manutenção Predial', 'R. Antônio Fernandes de Oliveira, 112 - Jardim Ubirajara', 20, NULL, 'Santo Amaro ', -23.68716, -46.67237, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.68716,
    longitude = -46.67237;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1422', 'EMEF - Sylvio Heck, Alm.', 'Manutenção Predial', 'R. Pedro Nogueira de Pazes, 199 - Jardim Itapura', 20, NULL, 'Cidade Ademar ', -23.68888, -46.65897, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.68888,
    longitude = -46.65897;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1423', 'EMEF - Deodoro da Fonseca, Mal.', 'Manutenção Predial', 'Praca Imprensa Paulista, 30 - Caxingui', 20, NULL, NULL, -23.58249, -46.72386, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58249,
    longitude = -46.72386;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1424', 'EMEF - Olavo Pezzotti , Prof.', 'Manutenção Predial', 'R. Fradique Coutinho, 2200 - Vila Madalena', 20, NULL, 'Pinheiros ', -23.55012, -46.69327, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55012,
    longitude = -46.69327;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1425', 'EMEI - Dalmo do Valle Nogueira, Desemb.', 'Manutenção Predial', 'R. André Saraiva, 1140 - Jardim Monte Kemel ', 20, NULL, 'Butantã ', -23.59723, -46.73358, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59723,
    longitude = -46.73358;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1426', 'EMEF - Fabio da Silva Prado, Dr.', 'Manutenção Predial', 'Rua Taquari, 459 - Mooca', 20, NULL, 'Mooca ', -23.55154, -46.5984, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55154,
    longitude = -46.5984;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1427', 'EMEF - Fazenda da Juta', 'Manutenção Predial', 'Rua Lucas Lossius, 95 - Jardim Santa Adelia', 20, NULL, 'Sapopemba', -23.622186, -46.485476, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.622186,
    longitude = -46.485476;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1428', 'EMEI - Carlos Eduardo de Camargo Aranha, Dr.', 'Manutenção Predial', 'R. do Boqueirão, 107 - Vila da Saúde', 20, NULL, 'Ipiranga ', -23.62068, -46.61784, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.62068,
    longitude = -46.61784;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1429', 'CEU Brasilândia (Setor Educacional 1107)', 'Construção Unidade Educacional', 'Av Joã Paulo I, 2100', 20, NULL, 'Freguesia / Brasilândia', -23.4737565, -46.6833613, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4737565,
    longitude = -46.6833613;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1430', 'CEU Parque das Flores (Setor Educacional 8408)', 'Construção Unidade Educacional', 'Rua Capitão Enéas dos Santos Pinto, s/n', 20, NULL, 'Itaim Paulista ', -23.525247, -46.4007763, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.525247,
    longitude = -46.4007763;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1431', 'CEU Pirajuçara - Setor Educacional 1702', 'Construção Unidade Educacional', 'Estrada do Campo Limpo, 5525', 20, NULL, 'Campo Limpo ', -23.6281094, -46.7674178, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6281094,
    longitude = -46.7674178;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1432', 'CEI - Rua dr. Armando Fajardo - Setor Educacional 3003', 'Construção Unidade Educacional', 'Rua dr Armando Fajardo, 550', 20, NULL, 'Capela do Socorro ', -23.755299, -46.7023725, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.755299,
    longitude = -46.7023725;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1433', 'EMEI - jd. Myrna - Setor Educacional 3005', 'Construção Unidade Educacional', 'Rua Alberto Carlos Bastos Machado, 1120', 20, NULL, 'Capela do Socorro ', -23.755299, -46.702372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.755299,
    longitude = -46.702372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1434', 'EMEI - Rua Cidade do Cabo - Setor Educacional 3008', 'Construção Unidade Educacional', 'Rua Cidade do Cabo', 20, NULL, 'Capela do Socorro ', -23.764083, -46.673623, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.764083,
    longitude = -46.673623;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1435', 'EMEI - R. Glicério - Setor Educacional 4901', 'Construção Unidade Educacional', 'Rua do Glicerio, 640', 20, NULL, 'SÉ', -23.5577697, -46.6303852, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5577697,
    longitude = -46.6303852;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1436', 'EMEI - r. João Pereira Santos - Setor Educacional 1903', 'Construção Unidade Educacional', 'Rua João Pereira dos Santos', 20, NULL, 'Campo Limpo ', -23.656286, -46.757839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.656286,
    longitude = -46.757839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1437', 'CEI - R. Violante do Céu x Rua Antônio Helio Azevedo Marques - Setor Educacional 2201', 'Construção Unidade Educacional', 'R. Violante do Céu x Rua Antônio Helio Azevedo Marques', 20, NULL, 'Cidade Ademar ', -23.662807, -46.675573, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.662807,
    longitude = -46.675573;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1438', 'CEI - r. Nova Arcadia x Rua Cabral do Nascimento - Setor Educacional 4305', 'Construção Unidade Educacional', 'r. Nova Arcadia x Rua Cabral do Nascimentor r. Nova Arcadia x Rua Cabral do Nascimento - Setor Educa', 20, NULL, 'M´Boi Mirim', -23.697766, -46.759767, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.697766,
    longitude = -46.759767;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1439', 'CEI - r. João Honório Caixeta - Setor Educacional 3015', 'Construção Unidade Educacional', 'r. João Honório Caixeta', 20, NULL, 'Capela do Socorro ', -23.782489, -46.679514, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.782489,
    longitude = -46.679514;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1440', 'CEI João Fernandes IV', 'Manutenção em Unidades Educacionais', 'Rua Flor da Noite, nº 50', 20, NULL, 'Itaquera ', -23.5805609, -46.4190734, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5805609,
    longitude = -46.4190734;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1441', 'EMEF Setor Educacional 1505 - KM 28, Avenida Sapopemba - Estrada Rio Claro', 'Construção Unidade Educacional', 'KM 28, Avenida Sapopemba - Estrada Rio Claro', 20, NULL, 'São Mateus ', -23.623108, -46.430256, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.623108,
    longitude = -46.430256;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1442', 'Praça de Retenção e Infiltração na Av. Nove de Julho - Bacia do Córrego Anhangabaú', 'Drenagem', 'Av. Nove de Julho', 18, NULL, 'SÉ', -23.5665948, -46.6587092, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5665948,
    longitude = -46.6587092;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1443', 'Riacho do Ipiranga - Fase 03 - Renaturalização', 'Renaturalização', 'Riacho do Ipiranga', 18, NULL, 'Ipiranga ', -23.5979338, -46.6186567, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5979338,
    longitude = -46.6186567;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1444', 'Microdrenagem - Rua Giuliani', 'Drenagem', 'Rua Giuliani, sp', 18, NULL, 'Mooca ', -23.563392, -46.56251, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.563392,
    longitude = -46.56251;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1445', 'Microdrenagem - Rua Guaiaúna', 'Drenagem', 'Rua Guaiaúna', 18, NULL, 'Penha ', -23.532024, -46.549332, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.532024,
    longitude = -46.549332;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1446', 'Córrego Jaboticabal', 'Drenagem', 'Rua Jaboticabal', 18, NULL, 'Mooca ', -23.563348, -46.576927, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.563348,
    longitude = -46.576927;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1447', 'Microdrenagem - Rua Antenor Batista', 'Drenagem', 'Rua Antenor Batista', 18, NULL, 'Itaim Paulista ', -23.493727, -46.424554, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.493727,
    longitude = -46.424554;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1448', 'Microdrenagem - Rua Alessandro Allori', 'Drenagem', 'Rua Alessandro Allori', 18, NULL, 'Casa Verde ', -23.48883, -46.677747, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48883,
    longitude = -46.677747;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1449', 'Microdrenagem - Rua Guareí - Mooca e Rua Natal', 'Drenagem', 'Rua Guareí', 18, NULL, 'Mooca ', -23.56024, -46.581864, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56024,
    longitude = -46.581864;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1450', 'Reservatório Machados', 'Drenagem', 'Av Aricanduva x Av. Rio das Pedras', 18, NULL, 'São Mateus ', -23.582803, -46.491413, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582803,
    longitude = -46.491413;