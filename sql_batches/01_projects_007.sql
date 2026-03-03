INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('347', 'EMEI - Italo Bettarello, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Júlio Buono, 2680 - Vila Gustavo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4800762, -46.5845256, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4800762,
    longitude = -46.5845256;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('348', 'EMEI - Laura Funfas Le Sueur, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Júlio Buono, 915 - Vila Gustavo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4905635, -46.5962384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4905635,
    longitude = -46.5962384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('349', 'EMEF - Othelo Franco, Gen.', 'Readequação em Quadra Poliesportiva', 'R. Jarinu, 730 - Tatuapé', 20, NULL, 'Mooca ', -23.5468424, -46.5752755, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5468424,
    longitude = -46.5752755;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('350', 'EMEF - Maria Antonieta D''Alkimin Basto', 'Readequação em Quadra Poliesportiva', 'R. Casa do Ator, 207 - Vila Olímpia', 20, NULL, 'Pinheiros ', -23.6004582, -46.6758302, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6004582,
    longitude = -46.6758302;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('351', 'EMEF - Faria Lima, Brig.', 'Readequação em Quadra Poliesportiva', 'R. Ametista, 50 - Aclimação', 20, NULL, 'SÉ', -23.5767562, -46.6296596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5767562,
    longitude = -46.6296596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('352', 'EMEF - Celso Leite Ribeiro Filho', 'Readequação em Quadra Poliesportiva', 'R. Humaitá, 480 - Bela Vista', 20, NULL, 'SÉ', -23.5572228, -46.6417359, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5572228,
    longitude = -46.6417359;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('353', 'EMEI - João Theodoro', 'Readequação em Quadra Poliesportiva', 'R. Ribeiro de Lima, 230 - Bom Retiro', 20, NULL, 'SÉ', -23.5323101, -46.6351558, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5323101,
    longitude = -46.6351558;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('354', 'EMEI - Feijó, Reg.', 'Readequação em Quadra Poliesportiva', 'Av. Lacerda Franco, 795 - Cambuci', 20, NULL, 'SÉ', -23.5697249, -46.6233844, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5697249,
    longitude = -46.6233844;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('355', 'EMEI - Anita Costa, Da.', 'Readequação em Quadra Poliesportiva', 'Alameda dos Jurupis, 254 - Indianópolis', 20, NULL, 'Vila Mariana ', -23.6020139, -46.6580306, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6020139,
    longitude = -46.6580306;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('356', 'EMEI - Celso Ferreira da Silva, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Pietro Mongini, 15 - Vila Missionária', 20, NULL, 'Cidade Ademar ', -23.6892362, -46.6487729, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6892362,
    longitude = -46.6487729;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('357', 'CEU / EMEF - Cesar Arruda Castanho, Dep.', 'Readequação em Quadra Poliesportiva', 'R. Nazir Miguel, 849 - Jd. Paulo VI', 20, NULL, 'Butantã ', -23.600713, -46.7890422, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.600713,
    longitude = -46.7890422;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('358', 'EMEI - Olga Calil Menah, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Uratinga, 66 - Vila Palmeiras', 20, NULL, 'Pirituba / Jaraguá', -23.4945351, -46.7136277, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4945351,
    longitude = -46.7136277;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('359', 'EMEF - Lilian Maso', 'Readequação em Quadra Poliesportiva', 'R. Encruzilhada do Sul, 1005 - Jd. Paulistano', 20, NULL, 'Freguesia / Brasilândia', -23.4619162, -46.709894, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4619162,
    longitude = -46.709894;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('360', 'CEU - Jaguaré', 'Readequação em Quadra Poliesportiva', 'Av. Kenkiti Simomoto, 80 - Jaguaré', 20, NULL, 'Lapa ', -23.5502967, -46.7417386, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5502967,
    longitude = -46.7417386;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('361', 'CEU - Três Pontes', 'Readequação em Quadra Poliesportiva', 'R. Capachós, S/N  - Jd. Célia', 20, NULL, 'São Miguel Paulista ', -23.4800823, -46.3810473, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4800823,
    longitude = -46.3810473;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('362', 'CEU - Formosa', 'Readequação em Quadra Poliesportiva', 'R. Srg. Claudiner Evaristo Dias, 10 - Parque S. Antonio', 20, NULL, 'Aricanduva ', -23.5803519, -46.5237837, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5803519,
    longitude = -46.5237837;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('363', 'EMEF - Dias Gomes', 'Readequação em Quadra Poliesportiva', 'R. Aléssio Prati, 42 - Vila Iolanda', 20, NULL, 'Guaianazes ', -23.5442554, -46.3908932, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5442554,
    longitude = -46.3908932;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('364', 'CEU - Tiquatira', 'Readequação em Quadra Poliesportiva', 'Av. Condessa Elizabeth de Robiano, S/N - V. Moreira', 20, NULL, 'Penha ', -23.517633, -46.554552, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517633,
    longitude = -46.554552;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('365', 'CEU - São Rafael', 'Readequação em Quadra Poliesportiva', 'R. Cinira Polônio, 100 - conj. Promorar Rio Claro', 20, NULL, 'São Mateus ', -23.6203367, -46.4563965, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6203367,
    longitude = -46.4563965;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('366', 'CEU - Azul da Cor do Mar (Antigo - CEU EMEF - Conceição Aparecida de Jesus, Prof.ª)', 'Readequação em Quadra Poliesportiva', 'Av. Ernesto Souza Cruz, 2171 - Cid. Ant. Est. Carvalho', 20, NULL, 'Itaquera ', -23.5214415, -46.4568202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5214415,
    longitude = -46.4568202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('367', 'CEU - Lajeado', 'Readequação em Quadra Poliesportiva', 'R. Manuel da Mota Coutinho, 293 - Lageado', 20, NULL, 'Guaianazes ', -23.5443856, -46.4004218, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5443856,
    longitude = -46.4004218;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('368', 'Pontilhão Rua Giovanni Boccati', 'Obra de Manutenção da OAE', 'Pontilhão entre as Rua João de Almada X Rua Giovanni Bocatti entre São Paulo e Taboão da Serra', 16, NULL, 'Campo Limpo ', -23.625717, -46.768509, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.625717,
    longitude = -46.768509;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('369', 'Pontilhão na Rua Bernardino D''Áuria', 'Obra de Manutenção da OAE', 'Rua Bernardino D''Auria sobre o Córrego Tremembé - Parque Palmas do Tremembé.', 16, NULL, 'Jaçanã / Tremembé', -23.4589642, -46.6054892, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4589642,
    longitude = -46.6054892;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('370', 'EMEI - Pedro I, D. (não utilizar)', 'Readequação em Quadra Poliesportiva', 'Praça Nami Jafet, 305', 20, NULL, 'Ipiranga ', -23.5807003, -46.6050531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5807003,
    longitude = -46.6050531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('371', 'CEU AT COM - Parelheiros - Eneida Palma Leite, Profª', 'Readequação em Quadra Poliesportiva', 'Rua José Pedro de Borba, 20 - Jardim Novo Parelheiros', 20, NULL, 'Parelheiros ', -23.8284719, -46.7241212, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8284719,
    longitude = -46.7241212;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('372', 'Monumento à Independência e Casa do Grito', 'Obra de reforma e conservação do Monumento à Independência e Casa do Grito', 'Parque da Independência, Av. Nazaré, s/n', 24, NULL, 'Ipiranga ', -23.5841629, -46.6098273, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5841629,
    longitude = -46.6098273;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('374', 'EMEI - José Roschel Christi - Juca Rocha', 'Readequação Predial', 'Rua Gentil Schunck Roschel, 79 - Jardim Novo Parelheiros.', 20, NULL, 'Parelheiros ', -23.8287584, -46.7273008, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8287584,
    longitude = -46.7273008;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('375', 'CEI DIRETO - Jardim Três Corações', 'Readequação Predial', 'Avenida Carlos Alberto Bastos Machado, 65 - Jardim Myrna.', 20, NULL, 'Capela do Socorro ', -23.7690665, -46.6955625, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7690665,
    longitude = -46.6955625;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('376', 'CEI DIRETO - Jardim Somara', 'Readequação Predial', 'Rua Antonio Felipe Filho, 35 - Jardim Somara.', 20, NULL, 'Capela do Socorro ', -23.7487345, -46.6911725, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7487345,
    longitude = -46.6911725;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('377', 'EMEF - Jardim Sipramar', 'Readequação Predial', 'Rua Júlio Gadda, 157', 20, NULL, 'Capela do Socorro ', -23.7487301, -46.6694872, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7487301,
    longitude = -46.6694872;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('378', 'EMEI - Aurélio Buarque de H. Ferreira', 'Readequação Predial', 'Rua Doutor Armando Fajardo, 400 - Jardim São Bernardo', 20, NULL, 'Capela do Socorro ', -23.7562069, -46.7023779, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7562069,
    longitude = -46.7023779;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('379', 'EMEF - Joaquim Bento Alves de Lima Neto', 'Readequação Predial', 'Rua São José Do Rio Preto, 17 Conjunto Habitacional Brigadeiro Faria Lima', 20, NULL, 'Capela do Socorro ', -23.75294, -46.6831272, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.75294,
    longitude = -46.6831272;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('380', 'CEI DIRETO - José Adriano Marrey Junior, Ver.', 'Readequação Predial', 'Rua Dr. Armando Fajardo, 410.', 20, NULL, 'Capela do Socorro ', -23.7558505, -46.7026461, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7558505,
    longitude = -46.7026461;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('381', 'EMEI - Parque Brasil', 'Readequação Predial', 'Av. Dona Belmira Marin, 3411.', 20, NULL, 'Capela do Socorro ', -23.7526098, -46.6830175, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7526098,
    longitude = -46.6830175;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('382', 'EMEF - Plínio Marcos', 'Readequação Predial', 'Rua Belém, S/N - Jardim Papai Noel', 20, NULL, 'Parelheiros ', -23.82626, -46.700574, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.82626,
    longitude = -46.700574;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('383', 'CEI DIRETO - Vanda Maria Rodrigues Santos', 'Readequação Predial', 'Rua Coronel Arlindo De Oliveira, 136 - Parque Alto Do Rio Bonito', 20, NULL, 'Capela do Socorro ', -23.7251567, -46.6958207, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7251567,
    longitude = -46.6958207;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('384', 'EMEF  - Jose Olympio Pereira Filho', 'Readequação Predial', 'Travessa Passareira, 200 - Cohab Instituto Adventista', 20, NULL, 'Campo Limpo ', -23.6717442, -46.7846738, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6717442,
    longitude = -46.7846738;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('385', 'CEI - Jardim São Bento Velho', 'Readequação Predial', 'Rua Batalha Reis, 35 - Jardim São Bento Novo', 20, NULL, 'Campo Limpo ', -23.6823003, -46.7874732, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6823003,
    longitude = -46.7874732;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('386', 'CEI - Parque Santo Antônio', 'Readequação Predial', 'Rua Rinaldo De Handel, S/N - Chácara Santana.', 20, NULL, 'M´Boi Mirim', -23.6666651, -46.7482181, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6666651,
    longitude = -46.7482181;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('387', 'EMEI -  Clarice Lispector', 'Readequação Predial', 'Rua Comendador Miguel Maluhy, 159 - Jardim Guaruja.', 20, NULL, 'M´Boi Mirim', -23.6671166, -46.7468859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6671166,
    longitude = -46.7468859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('388', 'EMEF - Jorge Americano, Prof', 'Readequação Predial', 'Avenida Feitico Da Vila, 915 - Chacara Santa Maria.', 20, NULL, 'Campo Limpo ', -23.6869786, -46.7997431, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6869786,
    longitude = -46.7997431;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('389', 'EMEF -  Clemente Pastore, Prof', 'Readequação Predial', 'Rua Inacio Parreiras Neves, 17 - Jardim Nakamura.', 20, NULL, 'M´Boi Mirim', -23.698012, -46.7733625, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.698012,
    longitude = -46.7733625;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('390', 'CEI -  Irene Irapiranga', 'Readequação Predial', 'Rua Bicci Di Lorenzo, 100.', 20, NULL, 'Campo Limpo ', -23.6597476, -46.7941047, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6597476,
    longitude = -46.7941047;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('391', 'CEI - Jardim Capela', 'Readequação Predial', 'Rua José Roberto Sales, 100 - Jardim Capela.', 20, NULL, 'M´Boi Mirim', -23.7292908, -46.7871377, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7292908,
    longitude = -46.7871377;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('392', 'CEMEI - Parque do Lago', 'Readequação Predial', 'Rua Dos Xamborés, 1010 - Parque Do Lago.', 20, NULL, 'M´Boi Mirim', -23.7109882, -46.7746051, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7109882,
    longitude = -46.7746051;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('393', 'EMEF -  Iracema Marques Da Silveira, Prof', 'Readequação Predial', 'Avenida Dom Rodrigo Sanches, 672 - Parque Do Engenho.', 20, NULL, 'Campo Limpo ', -23.6605128, -46.785871, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6605128,
    longitude = -46.785871;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('394', 'EMEI -  Angenor de Oliveira Cartola', 'Readequação Predial', 'Rua Mario Totta, 100 - Parque Independencia.', 20, NULL, 'M´Boi Mirim', -23.6856656, -46.7904962, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6856656,
    longitude = -46.7904962;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('395', 'CEI INDIRETO - Jardim Arpoador', 'Readequação Predial', 'Av. Gen. Asdrúbal Da Cunha, 1303.', 20, NULL, 'Butantã ', -23.5966076, -46.7869439, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5966076,
    longitude = -46.7869439;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('396', 'CEI - Jardim Das Vertentes', 'Readequação Predial', 'Rua João Corrêa Da Silva, 53.', 20, NULL, 'Butantã ', -23.5908813, -46.7443358, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5908813,
    longitude = -46.7443358;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('397', 'EMEF - Jardim Paulo Vi', 'Readequação Predial', 'Rua João Corrêa Da Silva, 53.', 20, NULL, 'Butantã ', -23.5908813, -46.7443358, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5908813,
    longitude = -46.7443358;