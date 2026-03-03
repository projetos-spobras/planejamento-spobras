INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1351', 'EMEF Professora Clotilde Rosa Henriques Elias', 'Manutenção em Unidades Educacionais', 'Rua Arroio Campo Bom, 215', 20, NULL, 'Itaquera ', -23.5877072, -46.4214266, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5877072,
    longitude = -46.4214266;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1352', 'EMEF Professora Maria Aparecida Magnanelli Fernandes', 'Manutenção em Unidades Educacionais', 'Travessa Silvio Caldas, s/n', 20, NULL, 'Cidade Tiradentes ', -23.5710418, -46.3977587, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5710418,
    longitude = -46.3977587;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1353', 'CEU EMEF Maria Lisboa da Silva', 'Manutenção em Unidades Educacionais', 'Rua Curumatm, 201', 20, NULL, 'São Mateus ', -23.6025639, -46.4493164, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6025639,
    longitude = -46.4493164;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1354', 'EMEF RAUL POMPEIA', 'Manutenção em Unidades Educacionais', 'Av. Elias Antônio Lopes, 165', 20, NULL, 'Pirituba / Jaraguá', -23.4339527, -46.7137449, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4339527,
    longitude = -46.7137449;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1355', 'EMEBS Professora Vera Lúcia Aparecida Ribeiro', 'Manutenção em Unidades Educacionais', 'Rua Benedito Pereira, 206', 20, NULL, 'Pirituba / Jaraguá', -23.48608, -46.73399, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48608,
    longitude = -46.73399;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1356', 'CEMEI Rua David Perez - Residencial Espanha', 'Construção Unidade Educacional', 'Rua David Perez', 20, NULL, 'Cidade Ademar ', -23.7079405, -46.6555603, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7079405,
    longitude = -46.6555603;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1357', 'CEU Jaçanã', 'Manutenção em Unidades Educacionais', 'R. Francisca Espósito Tonetti, 105 - Guapira', 20, NULL, 'Jaçanã / Tremembé', -23.4573769, -46.5838452, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4573769,
    longitude = -46.5838452;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1358', 'CEI - Rua Pedrinho Roschel', 'Construção Unidade Educacional', 'Rua Pedrinho Roschel', 20, NULL, 'Parelheiros ', -23.8480152, -46.7298802, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8480152,
    longitude = -46.7298802;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1359', 'CEI - Rua MInistro Lins de Barros x Rua Gervásio Leite Rebelo x Rua Serrana Fluminense', 'Construção Unidade Educacional', 'Rua serrana Fluminense', 20, NULL, 'Casa Verde ', -23.4550834, -46.6711867, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4550834,
    longitude = -46.6711867;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1360', 'EMEI - Miguel Franchini Neto - Setor 4205', 'Construção Unidade Educacional', 'Av Miguel Franchini Neto', 20, NULL, 'Pirituba / Jaraguá', -23.4437152, -46.725379, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4437152,
    longitude = -46.725379;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1361', 'EMEF - Miguel Franchini Neto - Setor 4205', 'Construção Unidade Educacional', 'Av Miguel Franchini Neto', 20, NULL, 'Pirituba / Jaraguá', -23.4437152, -46.725379, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4437152,
    longitude = -46.725379;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1362', 'CEMEI Rua Luiz Grassman x Avenida João Dias', 'Construção Unidade Educacional', 'Rua Luiz Grassman', 20, NULL, 'M´Boi Mirim', -23.6471964, -46.7340067, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6471964,
    longitude = -46.7340067;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1363', 'CEU Parque Novo Mundo', 'Manutenção em Unidades Educacionais', 'Av. Ernesto Augusto Lopes, 100', 20, NULL, 'Vila Maria / Vila Guilherme', -23.517922, -46.5752221, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517922,
    longitude = -46.5752221;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1364', 'EMEI Rua Muniz Falcão', 'Construção Unidade Educacional', 'Rua Muniz Falcão', 20, NULL, 'São Miguel Paulista ', -23.488363, -46.429368, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.488363,
    longitude = -46.429368;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1365', 'Mooca 02 - Reservatório de Contenção', 'Reservatório de Contenção de Cheias do Córrego Móoca 02', 'Av Professor Luis Inacio Anhaia Melo x Av Jacinto Menezes Palhares', 18, NULL, 'Vila Prudente ', -23.583405, -46.566024, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583405,
    longitude = -46.566024;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1366', 'CEI Direta - Indianópolis', 'Manutenção em Unidades Educacionais', 'Alameda Iraé, 35', 20, NULL, 'Vila Mariana ', -23.599721, -46.656748, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599721,
    longitude = -46.656748;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1367', 'CEMEI - Domingos  Delgado', 'Manutenção Predial', 'Rua Domingos Delgado, S/N  - Brasilandia', 20, NULL, 'Freguesia / Brasilândia', -23.46706, -46.67605, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.46706,
    longitude = -46.67605;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1368', 'CEU - Esperança Garcia', 'Manutenção Predial', 'Rua Crespo de Carvalho, 71 - Freguesia do Ó', 20, NULL, NULL, -23.48234, -46.69343, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48234,
    longitude = -46.69343;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1369', 'EMEF - Primo Pascoli Melare, Prof.', 'Manutenção Predial', 'Avenida Inajar de Souza, 6975 - Jardim dos Francos', 20, NULL, 'Freguesia / Brasilândia', -23.45158, -46.67503, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.45158,
    longitude = -46.67503;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1370', 'EMEF - Renato Antonio Checchia, Prof.', 'Manutenção Predial', 'Rua Conde Monterone, 101 - Jardim Sydney', 20, NULL, 'Pirituba / Jaraguá', -23.45527, -46.71692, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.45527,
    longitude = -46.71692;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1371', 'EMEI - Jonise Maximo da Fonseca', 'Manutenção Predial', 'Rua Miguel Arrojado Lisboa, 153 - Jardim Modelo', 20, NULL, 'Jaçanã / Tremembé', -23.46724, -46.56624, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.46724,
    longitude = -46.56624;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1372', 'EMEI - Profª Rosa Maria Dogo de Resende', 'Manutenção Predial', 'Rua Zike Tuma, 640 - Jardim Ubirajara', 20, NULL, NULL, -23.68922, -46.67232, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.68922,
    longitude = -46.67232;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1373', 'EMEF  - Sud Menucci', 'Manutenção Predial', 'Rua João Biscione, 200 - Jardim Camargo Novo', 20, NULL, 'Itaim Paulista ', -23.50379, -46.38176, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.50379,
    longitude = -46.38176;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1374', 'CEI - Jardim Fontalis I', 'Manutenção Predial', 'Alameda dos Cardeais, 18 - Jardim Estrela D''alva', 20, NULL, 'Jaçanã / Tremembé', -23.43327, -46.57894, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.43327,
    longitude = -46.57894;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1375', 'CEI - Jova Rural', 'Manutenção Predial', 'Travessa Igarapé Primavera, 340 - Jardim Hebrom', 20, NULL, 'Jaçanã / Tremembé', -23.45043, -46.57964, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.45043,
    longitude = -46.57964;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1376', 'EMEF - Alipio Correa Neto, Prof.', 'Manutenção Predial', 'Avenida João Caiaffa, 140 - Jardim Taboao', 20, NULL, 'Butantã ', -23.61203, -46.74996, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.61203,
    longitude = -46.74996;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1377', 'EMEF - Arthur Whitaker, des.', 'Manutenção Predial', 'Rua André Saraiva, 860 - Vila Sonia', 20, NULL, 'Butantã ', -23.59603, -46.73611, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59603,
    longitude = -46.73611;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1378', 'EMEF - Daisy Amadio Fujiwara, Profª.', 'Manutenção Predial', 'Rua Amaralina, 141 - Jardim Arpoador', 20, NULL, 'Butantã ', -23.59517, -46.78713, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59517,
    longitude = -46.78713;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1379', 'EMEF - Julio Mesquita', 'Manutenção Predial', 'Rua Dr. José Aires Neto, 25 - Jardim Bonfiglioli', 20, NULL, 'Butantã ', -23.58121, -46.73596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58121,
    longitude = -46.73596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1380', 'CEMEI - Leila Gallacci Metzker, Profª', 'Manutenção Predial', 'Rua Edvard Carmilo, 670 - Jardim Celeste', 20, NULL, 'Butantã ', -23.59722, -46.75212, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59722,
    longitude = -46.75212;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1381', 'EMEF - Andre Rodrigues De Alckmin, Prof.', 'Manutenção Predial', 'Rua Marcelino José de Freitas, 619 - Vila Teresinha', 20, NULL, 'Freguesia / Brasilândia', -23.45836, -46.69422, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.45836,
    longitude = -46.69422;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1382', 'EMEF - Angelina Maffei Vita, Da.', 'Manutenção Predial', 'Rua Zilda, 193 - Casa Verde Alta, São Paulo', 20, NULL, 'Casa Verde ', -23.49764, -46.66139, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49764,
    longitude = -46.66139;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1383', 'EMEI - Jardim Monjolo I', 'Manutenção Predial', 'Rua Calixto de Almeida, 442 A - Jardim Monjolo', 20, NULL, 'Freguesia / Brasilândia', -23.48861, -46.70147, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48861,
    longitude = -46.70147;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1384', 'EMEI - Arlindo Veiga Dos Santos, Prof.', 'Manutenção Predial', 'Avenida Félix Alves Pereira, 9 - Jardim Centenario', 20, NULL, 'Casa Verde ', -23.47267, -46.66976, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.47267,
    longitude = -46.66976;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1385', 'EMEF - Elias Siqueira Cavalcante, Dr.', 'Manutenção Predial', 'Rua Santa Ângela, 50 - Vila Palmeiras', 20, NULL, 'Freguesia / Brasilândia', -23.49867, -46.68596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49867,
    longitude = -46.68596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1386', 'EMEI - Jose Robson Costa De Araujo, Bombeiro', 'Manutenção Predial', 'Rua. Monsenhor Paulo Fernandes de Barros, S/N ', 20, NULL, 'Freguesia / Brasilândia', -23.48111, -46.67701, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48111,
    longitude = -46.67701;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1387', 'EMEF - Paulo Nogueira Filho', 'Manutenção Predial', 'Rua Brazelisa Alves de Carvalho, 356 - Vila Baruel', 20, NULL, 'Casa Verde ', -23.51212, -46.65062, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51212,
    longitude = -46.65062;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1388', 'EMEF - Aroldo De Azevedo, Prof.', 'Manutenção Predial', 'Rua Francisco Augusto Lopes, 223 - Vila Barbosa', 20, NULL, 'Casa Verde ', -23.49655, -46.67251, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49655,
    longitude = -46.67251;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1389', 'EMEF - Humberto Dantas', 'Manutenção Predial', 'Rua Manoel Dias do Campo, 464 - Casa Verde Alta', 20, NULL, 'Casa Verde ', -23.4858, -46.6709, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4858,
    longitude = -46.6709;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1390', 'EMEI - Nair Correa Buarque', 'Manutenção Predial', 'Rua Santa Ângela, 51 - Vila Palmeiras', 20, NULL, 'Freguesia / Brasilândia', -23.49825, -46.68588, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49825,
    longitude = -46.68588;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1391', 'EMEF - Achilles De Oliveira Ribeiro, des.', 'Manutenção Predial', 'Rua São João do Paraíso, 57 - Jardim Imperador', 20, NULL, 'São Mateus ', -23.58953, -46.49822, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58953,
    longitude = -46.49822;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1392', 'EMEF - Flores Da Cunha, dep.', 'Manutenção Predial', 'Rua Gen. Porfírio da Paz, 1663 - Jardim Grimaldi', 20, NULL, 'Sapopemba', -23.59548, -46.51492, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59548,
    longitude = -46.51492;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1393', 'EMEF - Giuseppe Tavolaro, Prof.', 'Manutenção Predial', 'Rua Alexandre Groppali - Fazenda da Juta', 20, NULL, 'Sapopemba', -23.61321, -46.48953, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.61321,
    longitude = -46.48953;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1394', 'EMEF - Rodrigues De Carvalho', 'Manutenção Predial', 'Rua Sargento Edgard Lourenço Pinto, 40 ', 20, NULL, 'Sapopemba', -23.61659, -46.49661, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.61659,
    longitude = -46.49661;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1395', 'EMEI - Dinah Fernandes Costa, Profª.', 'Manutenção Predial', 'Rua José Giordano, 784 - Parque Paineiras', 20, NULL, 'Penha ', -23.53614, -46.47946, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53614,
    longitude = -46.47946;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1396', 'EMEI - Evaristo Da Veiga', 'Manutenção Predial', 'Rua Pierre Janssen, 40 - Jardim Nordeste', 20, NULL, 'Penha ', -23.53042, -46.47554, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53042,
    longitude = -46.47554;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1397', 'EMEF - Dona Jenny Gomes ', 'Manutenção Predial', 'Rua John Neper, 109 - Jardim Coimbra', 20, NULL, 'Penha ', -23.53284, -46.47626, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53284,
    longitude = -46.47626;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1398', 'EMEI - Luciano Roberto, Prof.', 'Manutenção Predial', 'Rua Padre Cláudio Gomes, 75 - Conj. Hab. Padre Manoel da Nobrega', 20, NULL, 'Penha ', -23.54438, -46.47937, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54438,
    longitude = -46.47937;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1399', 'CEI Indireta - Espaço Da Comunidade I', 'Manutenção Predial', 'Rua Padre Virgílio Campelo, 171 - Fazenda Itaim', 20, NULL, 'Itaim Paulista ', -23.50441, -46.37234, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.50441,
    longitude = -46.37234;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1400', 'EMEF - José Ermirio De Morais, Sen.', 'Manutenção Predial', 'Rua São Brás do Suaçuí, 159 - Jardim Helena', 20, NULL, 'São Miguel Paulista ', -23.478254, -46.427284, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.478254,
    longitude = -46.427284;