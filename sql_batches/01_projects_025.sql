INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1551', 'EMEF  - Professor Ricardo Vitiello', 'Manutenção em Unidades Educacionais', 'R. da Solidariedade, 200 - COHAB INSTITUTO ADVENTISTA, São Paulo - SP, 05868-250', 20, NULL, 'Campo Limpo ', -23.6679062, -46.7763808, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6679062,
    longitude = -46.7763808;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1552', 'EMEI  - Rubens Nascimento Da Silva - Mexicano ', 'Manutenção em Unidades Educacionais', 'Tv. Setembro de 1983, 198 - Parque Fernanda, São Paulo - SP, 05887-510', 20, NULL, 'Campo Limpo ', -23.6736989, -46.7965202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6736989,
    longitude = -46.7965202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1553', 'EMEI  - Deputado Salomão Jorge', 'Manutenção em Unidades Educacionais', 'R. Bacabinha, 200 - Jardim Sao Joaquim, São Paulo - SP, 04917-030', 20, NULL, 'M´Boi Mirim', -23.6867178, -46.7493983, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6867178,
    longitude = -46.7493983;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1555', 'EMEF  - Professora Vera Lucia Fusco Borba', 'Manutenção em Unidades Educacionais', 'R. Martinho Lutero, 375 - Jardim Campo Limpo, São Paulo - SP, 05785-180', 20, NULL, NULL, -23.6248333, -46.7675167, FALSE)
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
VALUES ('1556', 'EMEF - Zulmira Cavalheiro Faustino', 'Manutenção em Unidades Educacionais', 'R. Melo Coutinho, 69', 20, NULL, NULL, -23.6350512, -46.7539323, FALSE)
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
VALUES ('1557', 'EMEI  - Clara Nunes', 'Manutenção em Unidades Educacionais', 'Rua Deputado Adib Chammas, 104 - Veleiros, São Paulo - SP, 04773-170', 20, NULL, NULL, -23.6832611, -46.7108924, FALSE)
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
VALUES ('1558', 'EMEF - Constelação Do Indio', 'Manutenção em Unidades Educacionais', 'R. Constelação do Índio, 41 - Jardim Campinas, São Paulo - SP, 04858-140', 20, NULL, NULL, -23.7716011, -46.7098279, FALSE)
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
VALUES ('1559', 'EMEF  - Frei Damião', 'Manutenção em Unidades Educacionais', 'R. Daniel Alomia, 325 - Jardim Sipramar, São Paulo - SP, 04851-340', 20, NULL, NULL, -23.7477326, -46.668353, FALSE)
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
VALUES ('1560', 'ADM  - Diretoria Regional De Educação Capela Do Socorro', 'Manutenção em Unidades Educacionais', 'Rua Monte Carlo, 25 Veleiros', 20, NULL, 'Capela do Socorro ', -23.6850221, -46.7101426, FALSE)
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
VALUES ('1561', 'EMEF  - Professora Eliza Rachel Macedo De Souza', 'Manutenção em Unidades Educacionais', 'R. Constelação do Eridano, 24 - Jardim Campinas, São Paulo - SP, 04858-580', 20, NULL, NULL, -23.771773, -46.705364, FALSE)
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
VALUES ('1562', 'EMEF  - Doutor Afrânio De Mello Franco', 'Manutenção em Unidades Educacionais', 'R. Acámbaro, 39 - Rio Bonito, São Paulo - SP, 04827-250', 20, NULL, NULL, -23.7224326, -46.7021177, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7224326,
    longitude = -46.7021177;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1563', 'EMEI - Doutor Aristides Nogueira', 'Manutenção em Unidades Educacionais', 'R. Campo do Aravil, 290 - Parque Cocaia, São Paulo - SP, 04850-240', 20, NULL, 'Capela do Socorro ', -23.7488531, -46.6747686, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7488531,
    longitude = -46.6747686;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1564', 'EMEF - Professor Ayrton Oliveira Sampaio', 'Manutenção em Unidades Educacionais', 'R. Júlia Maméia, 200 - Jardim Santa Fe (Zona Sul), São Paulo - SP, 04859-100', 20, NULL, 'Capela do Socorro ', -23.7652301, -46.7034766, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7652301,
    longitude = -46.7034766;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1565', 'EMEI - Carlos Drummond De Andrade', 'Manutenção em Unidades Educacionais', 'R. Jaime Schunk Branco, 89', 20, NULL, 'Capela do Socorro ', -23.6666904, -46.7111965, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6666904,
    longitude = -46.7111965;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1566', 'EMEI  - Castro Alves', 'Manutenção em Unidades Educacionais', 'R. Agenor Alves Meira, 285 - Jardim dos Francos, São Paulo - SP, 02874-140', 20, NULL, 'Freguesia / Brasilândia', -23.4594173, -46.677608, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4594173,
    longitude = -46.677608;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1567', 'EMEF  - Professora Geny Maria Muniz Almeida Klein Pussinelli', 'Manutenção em Unidades Educacionais', 'R. Antônio Calixto da Silva, 85 - Vila Santa Maria, São Paulo - SP, 04809-240', 20, NULL, 'Capela do Socorro ', -23.7147592, -46.6963404, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7147592,
    longitude = -46.6963404;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1568', 'EMEI  - Jardim Myrna', 'Manutenção em Unidades Educacionais', 'Av. Carlos Alberto Bastos Machado - Jardim Myrna, São Paulo - SP, 04856-080', 20, NULL, 'Capela do Socorro ', -23.7678769, -46.6957218, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7678769,
    longitude = -46.6957218;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1569', 'EMEI  - João Cândido', 'Manutenção em Unidades Educacionais', 'R. Conquista Popular, S/N - Vila Nascente, São Paulo - SP, 04846-550', 20, NULL, 'Capela do Socorro ', -23.7593422, -46.6795945, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7593422,
    longitude = -46.6795945;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1570', 'EMEI  - Professor José La Torre', 'Manutenção em Unidades Educacionais', ' ANTONIO MARCONDES BOETA, 161JARDIM ALADIM - Cep: 04883-210', 20, NULL, 'Parelheiros ', -23.806356, -46.7342733, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.806356,
    longitude = -46.7342733;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1571', 'EMEF  - Padre José Pegoraro', 'Manutenção em Unidades Educacionais', 'R. Portunhos, S/N - Parque Cocaia, São Paulo - SP, 04850-190', 20, NULL, 'Capela do Socorro ', -23.7543459, -46.6778332, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7543459,
    longitude = -46.6778332;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1572', 'EMEI  - Luiz Gonzaga Nascimento – Gonzagão', 'Manutenção em Unidades Educacionais', 'R. João Roschel Christe, S/N - Jardim Novo Parelheiros, São Paulo - SP, 04890-210', 20, NULL, 'Parelheiros ', -23.8305367, -46.7209955, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8305367,
    longitude = -46.7209955;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1573', 'EMEI  - Maria Eugênia Fakhoury', 'Manutenção em Unidades Educacionais', 'CONSTELACAO DO ERIDANO, 200, JARDIM CAMPINAS - Cep: 04858-580', 20, NULL, 'Capela do Socorro ', -23.7723741, -46.7058064, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7723741,
    longitude = -46.7058064;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1574', 'EMEI  - Professora Maria Luiza Valentim Da Cruz', 'Manutenção em Unidades Educacionais', 'Rua José Nicolau de Lima, 13 - Jardim Casa Grande, São Paulo - SP, 04865-010', 20, NULL, 'Parelheiros ', -23.7771322, -46.7226968, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7771322,
    longitude = -46.7226968;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1575', 'EMEI  - Marialice Mencarini Foracchi', 'Manutenção em Unidades Educacionais', 'R. Prof. Francisco Marquês de Oliveira Júnior, 318 - Jardim Três Corações, São Paulo - SP, 04855-340', 20, NULL, 'Capela do Socorro ', -23.7701934, -46.6845337, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7701934,
    longitude = -46.6845337;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1576', 'EMEF - Professora Marina Melander Coutinho', 'Manutenção em Unidades Educacionais', 'Av. Rubens Montanaro de Borba, 862 - Jardim Regis, São Paulo - SP, 04811-120', 20, NULL, 'Capela do Socorro ', -23.7137504, -46.6917008, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7137504,
    longitude = -46.6917008;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1577', 'EMEI - Professor Alberto Mesquita De Camargo', 'Manutenção em Unidades Educacionais', ' Praça Barão Homem de Melo, S/N - Vila Carrao, São Paulo - SP, 03423-010', 20, NULL, NULL, -23.5578481, -46.5413778, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5578481,
    longitude = -46.5413778;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1578', 'EMEF - Ayres Martins Torres', 'Manutenção em Unidades Educacionais', 'R. Catarina Lopes, 428 - Itaquera, São Paulo - SP, 08225-000', 20, NULL, NULL, -23.5302914, -46.4589975, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5302914,
    longitude = -46.4589975;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1579', 'EMEF - Danylo Jose Fernandes ', 'Manutenção em Unidades Educacionais', 'Av. Dr. Francisco Munhoz Filho, 431 - Cidade Líder, São Paulo - SP, 08280-000', 20, NULL, NULL, -23.5545351, -46.4653423, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5545351,
    longitude = -46.4653423;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1580', 'EMEF - Brigadeiro Haroldo Veloso', 'Manutenção em Unidades Educacionais', 'R. Marcelino da Silva, 50 - Itaquera, São Paulo - SP, 08210-530', 20, NULL, NULL, -23.5321004, -46.4443341, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5321004,
    longitude = -46.4443341;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1581', 'EMEF - Professora Iracema Marques Da Silveira', 'Manutenção em Unidades Educacionais', 'Av. Dom Rodrigo Sanches, 672 - Jardim Amalia, São Paulo - SP, 05892-360', 20, NULL, NULL, -23.6605128, -46.785871, FALSE)
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
VALUES ('1582', 'EMEF - Professor Jorge Americano', 'Manutenção em Unidades Educacionais', 'R. Feitiço da Vila, 915 - Chacara Santa Maria, São Paulo - SP, 05879-000', 20, NULL, NULL, -23.6869786, -46.7997431, FALSE)
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
VALUES ('1583', 'EMEF - José Olympio Pereira Filho', 'Manutenção em Unidades Educacionais', 'Tv. Passareira, 200 - Cohab Instituto Adventista, São Paulo - SP, 05868-120', 20, NULL, NULL, -23.6717754, -46.7846039, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6717754,
    longitude = -46.7846039;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1584', 'EMEI - José Roschel Christi - Juca Rocha', 'Manutenção em Unidades Educacionais', 'R. Gentil Schunck Roschel, 79 - Jd N Parelheiros, São Paulo - SP, 04890-410', 20, NULL, NULL, -23.8287584, -46.7273008, FALSE)
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
VALUES ('1585', 'EMEF - Vladimir Herzog', 'Manutenção em Unidades Educacionais', 'R. Francisco José Viana, 894 - Cidade Tiradentes, São Paulo - SP, 08471-530', 20, NULL, NULL, -23.6110445, -46.3967378, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6110445,
    longitude = -46.3967378;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1586', 'EMEI - Marechal Odilo Denys', 'Manutenção em Unidades Educacionais', 'R. Porteira do Pinhal, 206 - Vila Roque, São Paulo - SP, 02473-040', 20, NULL, 'Casa Verde ', -23.477448, -46.6525814, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.477448,
    longitude = -46.6525814;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1587', 'EMEF - Comandante Garcia Davila', 'Manutenção em Unidades Educacionais', 'R. Armando Coelho Silva, 859 - Parque Peruche, São Paulo - SP, 02539-000', 20, NULL, NULL, -23.4915957, -46.6546929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4915957,
    longitude = -46.6546929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1588', 'EMEF - Professor Clemente Pastore', 'Manutenção em Unidades Educacionais', 'R. Inácio Parreiras Neves, 17 - Jardim Nakamura, São Paulo - SP, 04942-080', 20, NULL, NULL, -23.698012, -46.7733625, FALSE)
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
VALUES ('1589', 'EMEF  - Professor Abrão de Moraes', 'Manutenção em Unidades Educacionais', 'R. Isaura Vergueiro Naufel, 238 - Vila Nhocuné, São Paulo - SP, 03560-020', 20, NULL, NULL, -23.5474468, -46.4996055, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5474468,
    longitude = -46.4996055;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1590', 'EMEF - Guilherme de Almeida', 'Manutenção em Unidades Educacionais', 'R. Faustino Paganini, 647 - Chácara Cruzeiro do Sul, São Paulo - SP, 03732-010', 20, NULL, NULL, -23.5109607, -46.5306287, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5109607,
    longitude = -46.5306287;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1591', 'EMEI - Dona Leopoldina', 'Manutenção em Unidades Educacionais', 'R. Peribebuí, s/n - Alto da Lapa, São Paulo - SP, 05084-050', 20, NULL, NULL, -23.5266279, -46.7221739, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5266279,
    longitude = -46.7221739;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1592', 'EMEI - Jaguaré', 'Manutenção em Unidades Educacionais', 'Av. Pres. Altino, 1270 - Jaguaré, São Paulo - SP, 05323-000', 20, NULL, NULL, -23.5447881, -46.7511372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5447881,
    longitude = -46.7511372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1593', 'EMEF - Júlio de Oliveira', 'Manutenção em Unidades Educacionais', 'R. Júlio de Oliveira, 160 - Vila Fanton, São Paulo - SP, 05201-070', 20, NULL, NULL, -23.4028916, -46.7383861, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4028916,
    longitude = -46.7383861;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1594', 'EMEF - Paulo Prado', 'Manutenção em Unidades Educacionais', 'Rua Pompeu Bertoni, 80 - Jardim Santa Fé, São Paulo - SP, 05271-110', 20, NULL, NULL, -23.4299311, -46.7928059, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4299311,
    longitude = -46.7928059;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1595', 'EMEF - Cassiano Ricardo', 'Manutenção em Unidades Educacionais', 'R. João José da Silva, 422 - Vila Caraguata, São Paulo - SP, 04191-140', 20, NULL, NULL, -23.6487325, -46.6042432, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6487325,
    longitude = -46.6042432;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1596', 'EMEF - Hercília de Campos Costa', 'Manutenção em Unidades Educacionais', ' R. José Pereira Cruz, 95 - Parque Bristol, São Paulo - SP, 04193-050', 20, NULL, NULL, -23.648889, -46.605265, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.648889,
    longitude = -46.605265;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1597', 'EMEI - Otávio José da Silva Júnior', 'Manutenção em Unidades Educacionais', 'R. da Fantasia, 27 - Vila Heliopolis, São Paulo - SP, 04236-190', 20, NULL, NULL, -23.6104764, -46.5939482, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6104764,
    longitude = -46.5939482;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1598', 'EMEF - Doutor Abrão Huck', 'Manutenção em Unidades Educacionais', 'R. Alencar Araripe, 261 - Sacomã, São Paulo - SP, 04253-000', 20, NULL, NULL, -23.609791, -46.5975816, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.609791,
    longitude = -46.5975816;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1599', 'EMEF - Luiz Gonzaga do Nascimento Junior', 'Manutenção em Unidades Educacionais', 'Estr. das Lágrimas, 1029 - Ipiranga, São Paulo - SP, 04232-000', 20, NULL, NULL, -23.610404, -46.5954663, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.610404,
    longitude = -46.5954663;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1600', 'EMEI - Professora Isolina Leonel Ferreira', 'Manutenção em Unidades Educacionais', ' Estr. das Lágrimas, 603 - Ipiranga, São Paulo - SP, 04232-000', 20, NULL, NULL, -23.6067308, -46.5981789, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6067308,
    longitude = -46.5981789;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1601', 'EMEF - Sylvia Martin Pires', 'Manutenção em Unidades Educacionais', 'R. Italva, 266 - Vila da Saúde, São Paulo - SP, 04294-030', 20, NULL, NULL, -23.6250661, -46.6051662, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6250661,
    longitude = -46.6051662;