INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1551', 'EMEF  - Professor Ricardo Vitiello', 'Manutenção em Unidades Educacionais', 'R. da Solidariedade, 200 - COHAB INSTITUTO ADVENTISTA, São Paulo - SP, 05868-250', 20, NULL, 'Campo Limpo ', -23.6679062, -46.7763808, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6679062, -- Use merged value
    longitude = -46.7763808, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1552', 'EMEI  - Rubens Nascimento Da Silva - Mexicano ', 'Manutenção em Unidades Educacionais', 'Tv. Setembro de 1983, 198 - Parque Fernanda, São Paulo - SP, 05887-510', 20, NULL, 'Campo Limpo ', -23.6736989, -46.7965202, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6736989, -- Use merged value
    longitude = -46.7965202, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1553', 'EMEI  - Deputado Salomão Jorge', 'Manutenção em Unidades Educacionais', 'R. Bacabinha, 200 - Jardim Sao Joaquim, São Paulo - SP, 04917-030', 20, NULL, 'M´Boi Mirim', -23.6867178, -46.7493983, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6867178, -- Use merged value
    longitude = -46.7493983, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1555', 'EMEF  - Professora Vera Lucia Fusco Borba', 'Manutenção em Unidades Educacionais', 'R. Martinho Lutero, 375 - Jardim Campo Limpo, São Paulo - SP, 05785-180', 20, NULL, NULL, -23.6248333, -46.7675167, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6248333, -- Use merged value
    longitude = -46.7675167, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1556', 'EMEF - Zulmira Cavalheiro Faustino', 'Manutenção em Unidades Educacionais', 'R. Melo Coutinho, 69', 20, NULL, NULL, -23.6350512, -46.7539323, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6350512, -- Use merged value
    longitude = -46.7539323, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1557', 'EMEI  - Clara Nunes', 'Manutenção em Unidades Educacionais', 'Rua Deputado Adib Chammas, 104 - Veleiros, São Paulo - SP, 04773-170', 20, NULL, NULL, -23.6832611, -46.7108924, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6832611, -- Use merged value
    longitude = -46.7108924, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1558', 'EMEF - Constelação Do Indio', 'Manutenção em Unidades Educacionais', 'R. Constelação do Índio, 41 - Jardim Campinas, São Paulo - SP, 04858-140', 20, NULL, NULL, -23.7716011, -46.7098279, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7716011, -- Use merged value
    longitude = -46.7098279, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1559', 'EMEF  - Frei Damião', 'Manutenção em Unidades Educacionais', 'R. Daniel Alomia, 325 - Jardim Sipramar, São Paulo - SP, 04851-340', 20, NULL, NULL, -23.7477326, -46.668353, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7477326, -- Use merged value
    longitude = -46.668353, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1560', 'ADM  - Diretoria Regional De Educação Capela Do Socorro', 'Manutenção em Unidades Educacionais', 'Rua Monte Carlo, 25 Veleiros', 20, NULL, 'Capela do Socorro ', -23.6850221, -46.7101426, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6850221, -- Use merged value
    longitude = -46.7101426, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1561', 'EMEF  - Professora Eliza Rachel Macedo De Souza', 'Manutenção em Unidades Educacionais', 'R. Constelação do Eridano, 24 - Jardim Campinas, São Paulo - SP, 04858-580', 20, NULL, NULL, -23.771773, -46.705364, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.771773, -- Use merged value
    longitude = -46.705364, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1562', 'EMEF  - Doutor Afrânio De Mello Franco', 'Manutenção em Unidades Educacionais', 'R. Acámbaro, 39 - Rio Bonito, São Paulo - SP, 04827-250', 20, NULL, NULL, -23.7224326, -46.7021177, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7224326, -- Use merged value
    longitude = -46.7021177, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1563', 'EMEI - Doutor Aristides Nogueira', 'Manutenção em Unidades Educacionais', 'R. Campo do Aravil, 290 - Parque Cocaia, São Paulo - SP, 04850-240', 20, NULL, 'Capela do Socorro ', -23.7488531, -46.6747686, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7488531, -- Use merged value
    longitude = -46.6747686, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1564', 'EMEF - Professor Ayrton Oliveira Sampaio', 'Manutenção em Unidades Educacionais', 'R. Júlia Maméia, 200 - Jardim Santa Fe (Zona Sul), São Paulo - SP, 04859-100', 20, NULL, 'Capela do Socorro ', -23.7652301, -46.7034766, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7652301, -- Use merged value
    longitude = -46.7034766, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1565', 'EMEI - Carlos Drummond De Andrade', 'Manutenção em Unidades Educacionais', 'R. Jaime Schunk Branco, 89', 20, NULL, 'Capela do Socorro ', -23.6666904, -46.7111965, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6666904, -- Use merged value
    longitude = -46.7111965, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1566', 'EMEI  - Castro Alves', 'Manutenção em Unidades Educacionais', 'R. Agenor Alves Meira, 285 - Jardim dos Francos, São Paulo - SP, 02874-140', 20, NULL, 'Freguesia / Brasilândia', -23.4594173, -46.677608, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4594173, -- Use merged value
    longitude = -46.677608, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1567', 'EMEF  - Professora Geny Maria Muniz Almeida Klein Pussinelli', 'Manutenção em Unidades Educacionais', 'R. Antônio Calixto da Silva, 85 - Vila Santa Maria, São Paulo - SP, 04809-240', 20, NULL, 'Capela do Socorro ', -23.7147592, -46.6963404, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7147592, -- Use merged value
    longitude = -46.6963404, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1568', 'EMEI  - Jardim Myrna', 'Manutenção em Unidades Educacionais', 'Av. Carlos Alberto Bastos Machado - Jardim Myrna, São Paulo - SP, 04856-080', 20, NULL, 'Capela do Socorro ', -23.7678769, -46.6957218, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7678769, -- Use merged value
    longitude = -46.6957218, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1569', 'EMEI  - João Cândido', 'Manutenção em Unidades Educacionais', 'R. Conquista Popular, S/N - Vila Nascente, São Paulo - SP, 04846-550', 20, NULL, 'Capela do Socorro ', -23.7593422, -46.6795945, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7593422, -- Use merged value
    longitude = -46.6795945, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1570', 'EMEI  - Professor José La Torre', 'Manutenção em Unidades Educacionais', ' ANTONIO MARCONDES BOETA, 161JARDIM ALADIM - Cep: 04883-210', 20, NULL, 'Parelheiros ', -23.806356, -46.7342733, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.806356, -- Use merged value
    longitude = -46.7342733, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1571', 'EMEF  - Padre José Pegoraro', 'Manutenção em Unidades Educacionais', 'R. Portunhos, S/N - Parque Cocaia, São Paulo - SP, 04850-190', 20, NULL, 'Capela do Socorro ', -23.7543459, -46.6778332, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7543459, -- Use merged value
    longitude = -46.6778332, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1572', 'EMEI  - Luiz Gonzaga Nascimento – Gonzagão', 'Manutenção em Unidades Educacionais', 'R. João Roschel Christe, S/N - Jardim Novo Parelheiros, São Paulo - SP, 04890-210', 20, NULL, 'Parelheiros ', -23.8305367, -46.7209955, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8305367, -- Use merged value
    longitude = -46.7209955, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1573', 'EMEI  - Maria Eugênia Fakhoury', 'Manutenção em Unidades Educacionais', 'CONSTELACAO DO ERIDANO, 200, JARDIM CAMPINAS - Cep: 04858-580', 20, NULL, 'Capela do Socorro ', -23.7723741, -46.7058064, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7723741, -- Use merged value
    longitude = -46.7058064, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1574', 'EMEI  - Professora Maria Luiza Valentim Da Cruz', 'Manutenção em Unidades Educacionais', 'Rua José Nicolau de Lima, 13 - Jardim Casa Grande, São Paulo - SP, 04865-010', 20, NULL, 'Parelheiros ', -23.7771322, -46.7226968, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7771322, -- Use merged value
    longitude = -46.7226968, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1575', 'EMEI  - Marialice Mencarini Foracchi', 'Manutenção em Unidades Educacionais', 'R. Prof. Francisco Marquês de Oliveira Júnior, 318 - Jardim Três Corações, São Paulo - SP, 04855-340', 20, NULL, 'Capela do Socorro ', -23.7701934, -46.6845337, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7701934, -- Use merged value
    longitude = -46.6845337, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1576', 'EMEF - Professora Marina Melander Coutinho', 'Manutenção em Unidades Educacionais', 'Av. Rubens Montanaro de Borba, 862 - Jardim Regis, São Paulo - SP, 04811-120', 20, NULL, 'Capela do Socorro ', -23.7137504, -46.6917008, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7137504, -- Use merged value
    longitude = -46.6917008, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1577', 'EMEI - Professor Alberto Mesquita De Camargo', 'Manutenção em Unidades Educacionais', ' Praça Barão Homem de Melo, S/N - Vila Carrao, São Paulo - SP, 03423-010', 20, NULL, NULL, -23.5578481, -46.5413778, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5578481, -- Use merged value
    longitude = -46.5413778, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1578', 'EMEF - Ayres Martins Torres', 'Manutenção em Unidades Educacionais', 'R. Catarina Lopes, 428 - Itaquera, São Paulo - SP, 08225-000', 20, NULL, NULL, -23.5302914, -46.4589975, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5302914, -- Use merged value
    longitude = -46.4589975, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1579', 'EMEF - Danylo Jose Fernandes ', 'Manutenção em Unidades Educacionais', 'Av. Dr. Francisco Munhoz Filho, 431 - Cidade Líder, São Paulo - SP, 08280-000', 20, NULL, NULL, -23.5545351, -46.4653423, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5545351, -- Use merged value
    longitude = -46.4653423, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1580', 'EMEF - Brigadeiro Haroldo Veloso', 'Manutenção em Unidades Educacionais', 'R. Marcelino da Silva, 50 - Itaquera, São Paulo - SP, 08210-530', 20, NULL, NULL, -23.5321004, -46.4443341, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5321004, -- Use merged value
    longitude = -46.4443341, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1581', 'EMEF - Professora Iracema Marques Da Silveira', 'Manutenção em Unidades Educacionais', 'Av. Dom Rodrigo Sanches, 672 - Jardim Amalia, São Paulo - SP, 05892-360', 20, NULL, NULL, -23.6605128, -46.785871, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6605128, -- Use merged value
    longitude = -46.785871, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1582', 'EMEF - Professor Jorge Americano', 'Manutenção em Unidades Educacionais', 'R. Feitiço da Vila, 915 - Chacara Santa Maria, São Paulo - SP, 05879-000', 20, NULL, NULL, -23.6869786, -46.7997431, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6869786, -- Use merged value
    longitude = -46.7997431, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1583', 'EMEF - José Olympio Pereira Filho', 'Manutenção em Unidades Educacionais', 'Tv. Passareira, 200 - Cohab Instituto Adventista, São Paulo - SP, 05868-120', 20, NULL, NULL, -23.6717754, -46.7846039, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6717754, -- Use merged value
    longitude = -46.7846039, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1584', 'EMEI - José Roschel Christi - Juca Rocha', 'Manutenção em Unidades Educacionais', 'R. Gentil Schunck Roschel, 79 - Jd N Parelheiros, São Paulo - SP, 04890-410', 20, NULL, NULL, -23.8287584, -46.7273008, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8287584, -- Use merged value
    longitude = -46.7273008, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1585', 'EMEF - Vladimir Herzog', 'Manutenção em Unidades Educacionais', 'R. Francisco José Viana, 894 - Cidade Tiradentes, São Paulo - SP, 08471-530', 20, NULL, NULL, -23.6110445, -46.3967378, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6110445, -- Use merged value
    longitude = -46.3967378, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1586', 'EMEI - Marechal Odilo Denys', 'Manutenção em Unidades Educacionais', 'R. Porteira do Pinhal, 206 - Vila Roque, São Paulo - SP, 02473-040', 20, NULL, 'Casa Verde ', -23.477448, -46.6525814, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.477448, -- Use merged value
    longitude = -46.6525814, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1587', 'EMEF - Comandante Garcia Davila', 'Manutenção em Unidades Educacionais', 'R. Armando Coelho Silva, 859 - Parque Peruche, São Paulo - SP, 02539-000', 20, NULL, NULL, -23.4915957, -46.6546929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4915957, -- Use merged value
    longitude = -46.6546929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1588', 'EMEF - Professor Clemente Pastore', 'Manutenção em Unidades Educacionais', 'R. Inácio Parreiras Neves, 17 - Jardim Nakamura, São Paulo - SP, 04942-080', 20, NULL, NULL, -23.698012, -46.7733625, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.698012, -- Use merged value
    longitude = -46.7733625, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1589', 'EMEF  - Professor Abrão de Moraes', 'Manutenção em Unidades Educacionais', 'R. Isaura Vergueiro Naufel, 238 - Vila Nhocuné, São Paulo - SP, 03560-020', 20, NULL, NULL, -23.5474468, -46.4996055, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5474468, -- Use merged value
    longitude = -46.4996055, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1590', 'EMEF - Guilherme de Almeida', 'Manutenção em Unidades Educacionais', 'R. Faustino Paganini, 647 - Chácara Cruzeiro do Sul, São Paulo - SP, 03732-010', 20, NULL, NULL, -23.5109607, -46.5306287, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5109607, -- Use merged value
    longitude = -46.5306287, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1591', 'EMEI - Dona Leopoldina', 'Manutenção em Unidades Educacionais', 'R. Peribebuí, s/n - Alto da Lapa, São Paulo - SP, 05084-050', 20, NULL, NULL, -23.5266279, -46.7221739, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5266279, -- Use merged value
    longitude = -46.7221739, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1592', 'EMEI - Jaguaré', 'Manutenção em Unidades Educacionais', 'Av. Pres. Altino, 1270 - Jaguaré, São Paulo - SP, 05323-000', 20, NULL, NULL, -23.5447881, -46.7511372, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5447881, -- Use merged value
    longitude = -46.7511372, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1593', 'EMEF - Júlio de Oliveira', 'Manutenção em Unidades Educacionais', 'R. Júlio de Oliveira, 160 - Vila Fanton, São Paulo - SP, 05201-070', 20, NULL, NULL, -23.4028916, -46.7383861, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4028916, -- Use merged value
    longitude = -46.7383861, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1594', 'EMEF - Paulo Prado', 'Manutenção em Unidades Educacionais', 'Rua Pompeu Bertoni, 80 - Jardim Santa Fé, São Paulo - SP, 05271-110', 20, NULL, NULL, -23.4299311, -46.7928059, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4299311, -- Use merged value
    longitude = -46.7928059, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1595', 'EMEF - Cassiano Ricardo', 'Manutenção em Unidades Educacionais', 'R. João José da Silva, 422 - Vila Caraguata, São Paulo - SP, 04191-140', 20, NULL, NULL, -23.6487325, -46.6042432, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6487325, -- Use merged value
    longitude = -46.6042432, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1596', 'EMEF - Hercília de Campos Costa', 'Manutenção em Unidades Educacionais', ' R. José Pereira Cruz, 95 - Parque Bristol, São Paulo - SP, 04193-050', 20, NULL, NULL, -23.648889, -46.605265, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.648889, -- Use merged value
    longitude = -46.605265, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1597', 'EMEI - Otávio José da Silva Júnior', 'Manutenção em Unidades Educacionais', 'R. da Fantasia, 27 - Vila Heliopolis, São Paulo - SP, 04236-190', 20, NULL, NULL, -23.6104764, -46.5939482, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6104764, -- Use merged value
    longitude = -46.5939482, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1598', 'EMEF - Doutor Abrão Huck', 'Manutenção em Unidades Educacionais', 'R. Alencar Araripe, 261 - Sacomã, São Paulo - SP, 04253-000', 20, NULL, NULL, -23.609791, -46.5975816, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.609791, -- Use merged value
    longitude = -46.5975816, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1599', 'EMEF - Luiz Gonzaga do Nascimento Junior', 'Manutenção em Unidades Educacionais', 'Estr. das Lágrimas, 1029 - Ipiranga, São Paulo - SP, 04232-000', 20, NULL, NULL, -23.610404, -46.5954663, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.610404, -- Use merged value
    longitude = -46.5954663, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1600', 'EMEI - Professora Isolina Leonel Ferreira', 'Manutenção em Unidades Educacionais', ' Estr. das Lágrimas, 603 - Ipiranga, São Paulo - SP, 04232-000', 20, NULL, NULL, -23.6067308, -46.5981789, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6067308, -- Use merged value
    longitude = -46.5981789, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1601', 'EMEF - Sylvia Martin Pires', 'Manutenção em Unidades Educacionais', 'R. Italva, 266 - Vila da Saúde, São Paulo - SP, 04294-030', 20, NULL, NULL, -23.6250661, -46.6051662, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6250661, -- Use merged value
    longitude = -46.6051662, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1602', 'EMEF - Jose do Patrocinio', 'Manutenção em Unidades Educacionais', 'R. Cantiga Ingênua, 64 - Jardim Santa Emilia, São Paulo - SP, 04184-065', 20, NULL, NULL, -23.6475828, -46.5989515, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6475828, -- Use merged value
    longitude = -46.5989515, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1603', 'EMEI - Padre Mario Marques e Serra', 'Manutenção em Unidades Educacionais', 'R. Francisco Pestana, 10 - Jardim Maria Estela, São Paulo - SP, 04176-130', 20, NULL, NULL, -23.6372438, -46.6058809, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6372438, -- Use merged value
    longitude = -46.6058809, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1604', 'CEU - São Rafael', 'Manutenção em Unidades Educacionais', 'Rua Cinira Polonio, 100 - Promorar Rio Claro - CEP: 08395320', 20, NULL, NULL, -23.620626, -46.456258, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.620626, -- Use merged value
    longitude = -46.456258, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1605', 'EMEF - Alceu Amoroso Lima', 'Manutenção em Unidades Educacionais', 'R. Carmem Tortola, 48 - Conj. Promorar Rio Claro, São Paulo - SP, 08395-330', 20, NULL, NULL, -23.6210448, -46.4575556, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6210448, -- Use merged value
    longitude = -46.4575556, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1606', 'EMEF - Professor José Carlos Nicoleto – Zito', 'Manutenção em Unidades Educacionais', 'R. Bandeira de Aracambi, 707 - Jardim Rodolfo Pirani, São Paulo - SP, 08310-010', 20, NULL, NULL, -23.6310951, -46.457106, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6310951, -- Use merged value
    longitude = -46.457106, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1607', 'EMEI - Elis Regina', 'Manutenção em Unidades Educacionais', 'R. Ernesto Manograsso, 340 - Cidade São Mateus, São Paulo - SP, 03963-100', 20, NULL, NULL, -23.6109678, -46.4794611, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6109678, -- Use merged value
    longitude = -46.4794611, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1608', 'EMEF - Henrique Souza Filho – HENFIL', 'Manutenção em Unidades Educacionais', 'R. Érico Semer, S/N - Jardim Marilu, São Paulo - SP, 08371-400', 20, NULL, NULL, -23.5966278, -46.4229637, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5966278, -- Use merged value
    longitude = -46.4229637, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1609', 'EMEF - Arquiteto Vilanova Artigas', 'Manutenção em Unidades Educacionais', 'R. Guarantã, S/N - Parque dos Bancarios, São Paulo - SP, 03924-120', 20, NULL, NULL, -23.6002335, -46.5095133, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6002335, -- Use merged value
    longitude = -46.5095133, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1610', 'EMEF - Marcos Melega', 'Manutenção em Unidades Educacionais', 'Rua Monteblanc, 98', 20, NULL, NULL, -29.4625007, -50.5753603, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -29.4625007, -- Use merged value
    longitude = -50.5753603, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1611', 'EMEF - Coronel Ary Gomes', 'Manutenção em Unidades Educacionais', ' Rua Benedito Alessio, 184 - Jardim Andarai, São Paulo - SP, 02166-100', 20, NULL, NULL, -23.5260245, -46.582152, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5260245, -- Use merged value
    longitude = -46.582152, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1612', 'EMEF - Dezoito do Forte', 'Manutenção em Unidades Educacionais', 'Rua Hafiz Abi Chedid, 110 - Vila Bom Jardim, São Paulo - SP, 04937-210', 20, NULL, NULL, -23.6871486, -46.7582117, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6871486, -- Use merged value
    longitude = -46.7582117, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1613', 'CEI  - Nair Tadiello Gracioso', 'Manutenção em Unidades Educacionais', 'Av. Pio XI, 120 - Vila Missionaria, São Paulo - SP, 04430-150', 20, NULL, 'Cidade Ademar ', -23.691541, -46.6492443, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.691541, -- Use merged value
    longitude = -46.6492443, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1614', 'CEI  - Prof Maria Margarida Rodrigues De Oliveira', 'Manutenção em Unidades Educacionais', 'Rua Domênico Palma, 401 - Cupecê, São Paulo - SP, 04652-234', 20, NULL, 'Cidade Ademar ', -23.6641023, -46.6660785, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6641023, -- Use merged value
    longitude = -46.6660785, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1615', 'CEI  - Vereador Rubens Granja', 'Manutenção em Unidades Educacionais', 'R. Santa Cruz do Rio Pardo, 252 - Americanópolis, São Paulo - SP, 04411-120', 20, NULL, 'Cidade Ademar ', -23.6790879, -46.6438277, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6790879, -- Use merged value
    longitude = -46.6438277, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1616', 'CEI - Parque Fernanda', 'Manutenção em Unidades Educacionais', 'Rua Antônio Forlenza, 127 - Parque Fernanda, São Paulo - SP, 05888-010', 20, NULL, 'Campo Limpo ', -23.6757286, -46.79332, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6757286, -- Use merged value
    longitude = -46.79332, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1617', 'CEI - Jardim Maria Sampaio', 'Manutenção em Unidades Educacionais', 'Av. Augusto Barbosa Tavares, 700 - Jardim Iracema, São Paulo - SP, 05790-140', 20, NULL, 'Campo Limpo ', -23.6429884, -46.7868869, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6429884, -- Use merged value
    longitude = -46.7868869, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1618', 'EMEF - Jardim Mitsutani I', 'Manutenção em Unidades Educacionais', 'Travessa Waldemar Cordeiro, R. Monet, 101 - Cohab, SP, 05856-590', 20, NULL, NULL, -23.6477704, -46.7903314, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6477704, -- Use merged value
    longitude = -46.7903314, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1619', 'Autódromo de Interlagos - 2023', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7033489, -46.7002579, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7033489, -- Use merged value
    longitude = -46.7002579, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1620', 'EMEI - Sargento Max Wolf Filho', 'Readequação Predial', 'Rua Dona Maria Jovita da Conceição, 258 - Jardim Belem', 20, NULL, 'Ermelino Matarazzo ', -23.4878805, -46.4773929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4878805, -- Use merged value
    longitude = -46.4773929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1621', 'EMEF - Octávio Mangabeira', 'Readequação Predial', 'R. Jarinu, 730 - Tatuape, São Paulo - SP, 03306-000', 20, NULL, 'Mooca ', -23.5468424, -46.5752755, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5468424, -- Use merged value
    longitude = -46.5752755, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1622', 'EMEF - Doutor Miguel Vieira Ferreira', 'Readequação Predial', 'Praça Escolar, S/N - Cidade Dutra, São Paulo - SP, 04810-140', 20, NULL, 'Capela do Socorro ', -23.7094714, -46.6988621, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7094714, -- Use merged value
    longitude = -46.6988621, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1623', 'EMEF - Professor Milton Ferreira De Albuquerque', 'Readequação Predial', 'Rua Georgina Bocchiglieri, 55 - Jardim Beatriz, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7378556, -46.7074779, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7378556, -- Use merged value
    longitude = -46.7074779, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1624', 'EMEI - Marechal Osvaldo Cordeiro De Farias', 'Readequação Predial', 'Rua Henry Arthur Jones, 10 - Jardim Edi, São Paulo ', 20, NULL, 'Capela do Socorro ', -23.754031, -46.6707296, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.754031, -- Use merged value
    longitude = -46.6707296, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1625', 'EMEF - Paulo Setubal', 'Readequação Predial', 'R. Francisco de Caldas, 50 - Jardim Ana Lucia, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7167027, -46.690111, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7167027, -- Use merged value
    longitude = -46.690111, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1626', 'EMEF - Pedro Geraldo Schunck', 'Readequação Predial', 'R. Antônio Bernal, 40 - Jardim Silveira, São Paulo - SP, 04892-100', 20, NULL, 'Parelheiros ', -23.851381, -46.7154816, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.851381, -- Use merged value
    longitude = -46.7154816, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1627', 'EMEF - Placido de Castro', 'Readequação Predial', ' R. Antônio Mesquita Pereira, 78 - Capela do Socorro', 20, NULL, 'Capela do Socorro ', -23.6922472, -46.7031746, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6922472, -- Use merged value
    longitude = -46.7031746, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1628', 'EMEI - Barão do Rio Branco', 'Readequação Predial', 'Rua Rafard, Av. Brg. Faria Lima, S/N - Conjunto Habitacional', 20, NULL, 'Capela do Socorro ', -23.7555093, -46.6865816, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7555093, -- Use merged value
    longitude = -46.6865816, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1629', 'EMEF - Desembargador Teodomiro Toledo Piza', 'Readequação Predial', 'R. Pelagia Starbulov, 324 - Parque Grajau, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7451548, -46.6912522, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7451548, -- Use merged value
    longitude = -46.6912522, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1630', 'EMEF - Ulysses da Sylveira Guimarães ', 'Readequação Predial', 'R. Condé de Lancastre, 209 - Jardim Santa Fe (Zona Sul)', 20, NULL, 'Parelheiros ', -23.8322473, -46.7118186, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8322473, -- Use merged value
    longitude = -46.7118186, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1631', 'EMEI - Zumbi Dos Palmares', 'Readequação Predial', ' Rua Armando Spósito, 225 - Parque America', 20, NULL, 'Capela do Socorro ', -23.7325461, -46.6907385, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7325461, -- Use merged value
    longitude = -46.6907385, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1632', 'EMEF - Professora Caira Alayde Alvarenga Medea', 'Readequação Predial', 'R. Xavier da Silva Ferrão, 317 - Sítio Morro Grande', 20, NULL, 'Freguesia / Brasilândia', -23.4693245, -46.7004569, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4693245, -- Use merged value
    longitude = -46.7004569, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1633', 'EMEF - Professora Cecilia Moraes de Vasconcelos', 'Readequação Predial', 'R. Rômulo Naldi, 147 - Jardim Elisa Maria', 20, NULL, 'Freguesia / Brasilândia', -23.4554558, -46.6846326, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4554558, -- Use merged value
    longitude = -46.6846326, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1634', 'EMEI - Felipe Mestre Jou ', 'Readequação Predial', 'Av. João Paulo I, 1347 - Jardim Maracana', 20, NULL, 'Freguesia / Brasilândia', -23.4819859, -46.6873719, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4819859, -- Use merged value
    longitude = -46.6873719, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1635', 'EMEF - Professor Gilberto Dupas', 'Readequação Predial', 'Av. Dep. Emílio Carlos, 3871 - Limão, São Paulo - SP, 02720-200', 20, NULL, 'Casa Verde ', -23.4750814, -46.6688929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4750814, -- Use merged value
    longitude = -46.6688929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1636', 'EMEF - Professora Joaninha Grassi Fagundes', 'Readequação Predial', 'R. Alberto Andaló, 36 - Parque Sao Luis', 20, NULL, 'Freguesia / Brasilândia', -23.482466, -46.688558, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.482466, -- Use merged value
    longitude = -46.688558, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1637', 'EMEI - Coronel José Canavo Filho', 'Readequação Predial', 'R. Euvaldo Augusto Freire, 2 - Jardim Carombe', 20, NULL, 'Freguesia / Brasilândia', -23.4550094, -46.6994849, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4550094, -- Use merged value
    longitude = -46.6994849, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1638', 'EMEF - José Herminio Rodrigues, Cel. PM', 'Readequação Predial', 'R. Pedro Pomar, S/N - Jardim Elisa Maria', 20, NULL, 'Freguesia / Brasilândia', -23.4613212, -46.6805575, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4613212, -- Use merged value
    longitude = -46.6805575, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1639', 'EMEI - Manuel Bandeira', 'Readequação Predial', 'Rua Antônio Genele, 151 - Jardim Monte Alegre', 20, NULL, 'Freguesia / Brasilândia', -23.4758818, -46.7028915, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4758818, -- Use merged value
    longitude = -46.7028915, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1640', 'EMEI - Martins Fontes', 'Readequação Predial', 'R. Bartolomeo Laurenti, 205 - Brasilandia', 20, NULL, 'Freguesia / Brasilândia', -23.4626069, -46.6770061, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4626069, -- Use merged value
    longitude = -46.6770061, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1641', 'EMEF - Professor Neir Augusto Lopes ', 'Readequação Predial', 'R. Jorn. Octávio Ribeiro - Pena Branca, 20 - Vila Bela Vista', 20, NULL, NULL, -23.4645264, -46.6597372, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4645264, -- Use merged value
    longitude = -46.6597372, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1642', 'EMEF - Professor Roberto Patricio', 'Readequação Predial', ' R. Antônio Domingues Freitas, 147 - Vila Amélia', 20, NULL, 'Casa Verde ', -23.4717992, -46.6548817, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4717992, -- Use merged value
    longitude = -46.6548817, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1643', 'EMEF - Desembargador Sebastião Nogueira de Lima', 'Readequação Predial', 'R. Joaquina Maria dos Santos, 177 - Vila Rica', 20, NULL, 'Freguesia / Brasilândia', -23.4709501, -46.673705, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4709501, -- Use merged value
    longitude = -46.673705, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1644', 'EMEI - Professor Alexandre Correia ', 'Readequação Predial', 'Praça Tito Pachêco, 9 - Jardim Miriam, São Paulo - SP, 04419-140', 20, NULL, 'Cidade Ademar ', -23.6816694, -46.6427552, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6816694, -- Use merged value
    longitude = -46.6427552, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1645', 'EMEF - Alferes Tiradentes ', 'Readequação Predial', 'R. Salvador Rodrigues Negrão, 602 - Vila Marari', 20, NULL, 'Cidade Ademar ', -23.6713521, -46.6620472, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6713521, -- Use merged value
    longitude = -46.6620472, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1646', 'EMEF - Professora Ana Maria Alves Benetti', 'Readequação Predial', 'Rua Cruz das Almas, 74 - Vila Campestre - São Paulo - SP, 04330060', 20, NULL, 'Jabaquara ', -23.6525983, -46.6460654, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6525983, -- Use merged value
    longitude = -46.6460654, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1647', 'EMEI - Anhanguera', 'Readequação Predial', 'Rua Sargento José Martins Dias, s/n - Jardim Anhanguera - São Paulo - SP, 04675040', 20, NULL, 'Santo Amaro ', -23.6623183, -46.6860652, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6623183, -- Use merged value
    longitude = -46.6860652, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1648', 'EMEF - Doutor Antônio Carlos De Abreu Sodré', 'Readequação Predial', 'Rua Juari, 835 - Jardim Sabara - São Paulo - SP, 04446160', 20, NULL, 'Santo Amaro ', -23.686014, -46.6822199, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686014, -- Use merged value
    longitude = -46.6822199, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1649', 'EMEF - Deputado João Sussumu Hirata', 'Readequação Predial', 'Estrada do Alvarenga, 2113 - Jardim Ofelia - São Paulo - SP, 04467000', 20, NULL, 'Cidade Ademar ', -23.6949086, -46.6553296, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6949086, -- Use merged value
    longitude = -46.6553296, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1650', 'EMEF - Professor Laerte Ramos De Carvalho', 'Readequação Predial', 'Rua Beijui, 296 - Vila Isa - São Paulo - SP, 04689000', 20, NULL, 'Santo Amaro ', -23.6683223, -46.6929462, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6683223, -- Use merged value
    longitude = -46.6929462, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1651', 'EMEI - Professora Lourdes Heredia Mello', 'Readequação Predial', 'Praça Whitaker Penteado, 264 - Vila Guarani - São Paulo - Sp, 04307050', 20, NULL, 'Jabaquara ', -23.6306998, -46.6434658, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6306998, -- Use merged value
    longitude = -46.6434658, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1652', 'EMEF - Olavo Fontoura', 'Readequação Predial', 'Rua Doutor Lafaiette de Sousa Camargo, 72 - Jardim Climax - São Paulo - SP, 04177380', 20, NULL, 'Ipiranga ', -23.6385603, -46.6068035, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6385603, -- Use merged value
    longitude = -46.6068035, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1653', 'EMEI - Tenente Paulo Alves', 'Readequação Predial', 'Rua José de camargo, 259 - Vila mariana - São Paulo - SP, 04139010', 20, NULL, 'Vila Mariana ', -23.605914, -46.6335611, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.605914, -- Use merged value
    longitude = -46.6335611, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1654', 'CIEJA - Paulo Emilio Vanzolini - Cambuci', 'Readequação Predial', 'Rua Cesário Ramalho, 111 - Cambuci - São Paulo - SP, 01521000', 20, NULL, 'SÉ', -23.5600389, -46.6244114, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5600389, -- Use merged value
    longitude = -46.6244114, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1655', 'EMEI - Dom Pedro I', 'Readequação Predial', 'Praça Nami Jafet, 305 - Ipiranda - São Paulo - SP, 04205020', 20, NULL, 'Ipiranga ', -23.5807003, -46.6050531, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5807003, -- Use merged value
    longitude = -46.6050531, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1656', 'CEI - Zézinho', 'Readequação Predial', 'Rua do Pacificador, 31 - Cidade Nova Heliópolis - São Paulo - SP, 04235025', 20, NULL, 'Ipiranga ', -23.6147473, -46.5892989, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6147473, -- Use merged value
    longitude = -46.5892989, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1657', 'EMEF - Professor Mário Schenberg', 'Readequação Predial', 'Rua Papa Gregorio Magno, 133 - Vila Missionaria - São Paulo - SP, 04430130', 20, NULL, 'Cidade Ademar ', -23.6929938, -46.6533733, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6929938, -- Use merged value
    longitude = -46.6533733, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1658', 'EMEF - Professor Nelson Pimentel Queiroz', 'Readequação Predial', 'Avenida Leonardo da Vinci, 1371 - Vila Guarani - São Paulo - SP, 04313001', 20, NULL, 'Jabaquara ', -23.6408468, -46.6392156, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6408468, -- Use merged value
    longitude = -46.6392156, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1659', 'EMEF - Comandante Pereira Carneiro', 'Readequação Predial', 'Avenida João Peixoto Viegas, 441 - Jardim Consorcio - São Paulo - SP, 04437000', 20, NULL, 'Santo Amaro ', -23.6716034, -46.6761927, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6716034, -- Use merged value
    longitude = -46.6761927, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1660', 'EMEF - Professor Antonio Duarte De Almeida', 'Readequação Predial', 'Rua Trevo de Santa Maria, 1 - Parque Guarani - São Paulo - SP, 08235560', 20, NULL, 'Itaquera ', -23.5209608, -46.4616323, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5209608, -- Use merged value
    longitude = -46.4616323, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1661', 'EMEI - Antonio Gonçalves Dias ', 'Readequação Predial', 'Rua Antonio Moura Andrade, 395 - Jardim Redil - São Paulo -SP, 08210660', 20, NULL, 'Itaquera ', -23.5311659, -46.4432855, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5311659, -- Use merged value
    longitude = -46.4432855, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1662', 'EMEI - Doutor Bueno De Azevedo', 'Readequação Predial', 'Rua Augusto Cavalcanti, 232 - Conj.Resid.Jose Bonifacio - São Paulo - SP, 08253110', 20, NULL, 'Itaquera ', -23.5441861, -46.4361891, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441861, -- Use merged value
    longitude = -46.4361891, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1663', 'CIEJA - Itaquera', 'Readequação Predial', 'Avenida Itaquera, 221 - Cidade Lider - São Paulo - SP, 08285060', 20, NULL, 'Penha ', -23.5530709, -46.4796205, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5530709, -- Use merged value
    longitude = -46.4796205, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1664', 'EMEI - Professora Denise Mercier Rodrigues Aguiar', 'Readequação Predial', 'Rua Geovanni Quadri, 354 - Conj.Resid.Jose Bonifacio - São Paulo - SP, 08255500', 20, NULL, 'Itaquera ', -23.5485398, -46.4339176, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5485398, -- Use merged value
    longitude = -46.4339176, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1665', 'EMEF - Sergio Milliet', 'Readequação Predial', 'Rua Doutor Paulo de Andrade Arantes, 125 - Parque Maria Luiza - São Paulo - SP, 03451090', 20, NULL, 'Aricanduva ', -23.5576231, -46.5170141, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576231, -- Use merged value
    longitude = -46.5170141, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1666', 'EMEI - Professora Suzana Evangelina Felipe', 'Readequação Predial', 'Praça Haroldo Dalton, s/n - Vila Nova Manchester - Sâo Paulo - SP, 03444090', 20, NULL, 'Aricanduva ', -23.5477427, -46.5340192, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5477427, -- Use merged value
    longitude = -46.5340192, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1667', 'EMEI - Professora Sylvia Varoni De Castro', 'Readequação Predial', 'Rua Antonio Gandini, 857 - Itaquera - São Paulo - SP, 08215460', 20, NULL, 'Itaquera ', -23.5372417, -46.4397689, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5372417, -- Use merged value
    longitude = -46.4397689, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1668', 'EMEI - Professora Thereza The De Carvalho', 'Readequação Predial', 'Rua Barra do Camarajibe, 200 - Parque Cruzeiro do Sul - São Paylo - SP, 03383120', 20, NULL, 'Aricanduva ', -23.5822754, -46.5306899, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5822754, -- Use merged value
    longitude = -46.5306899, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1669', 'EMEF - Vicentina Ribeiro Da Luz', 'Readequação Predial', 'Rua Ailton Nagrão Fazzio, 59 - Parque Santo Eduardo - São Paulo - SP, 03384020', 20, NULL, 'Aricanduva ', -23.5779538, -46.5227682, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5779538, -- Use merged value
    longitude = -46.5227682, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1670', 'EMEI - Ataulfo Alves', 'Readequação Predial', 'Rua Cachoeira de Minas, 172 - Jardim Santa Adélia - São Paulo - SP, 03973050', 20, NULL, 'São Mateus ', -23.6169251, -46.4805119, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6169251, -- Use merged value
    longitude = -46.4805119, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1671', 'EMEF - Professor Carlos Correa Mascaro', 'Readequação Predial', 'Travessa Salve a Mocidade, 932 - Jardim da Conquista - São Paulo - SP, 08343320', 20, NULL, 'São Mateus ', -23.604569, -46.4449423, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604569, -- Use merged value
    longitude = -46.4449423, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1672', 'EMEF - Claudio Manoel Da Costa', 'Readequação Predial', 'Avenida Rodolfo Pirani, 224 - jardim Rodolfo Pirani - São Paulo - SP, 08310000', 20, NULL, 'São Mateus ', -23.6267675, -46.4626465, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6267675, -- Use merged value
    longitude = -46.4626465, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1673', 'EMEI - Clovis Bevilacqua', 'Readequação Predial', 'Rua Jose de Queiroz Matos, 190 - Jardim Grimaldi - São Paulo - SP, 03922040', 20, NULL, 'Sapopemba', -23.5981981, -46.5155475, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5981981, -- Use merged value
    longitude = -46.5155475, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1674', 'EMEF - Professor Enzo Antonio Silvestrin', 'Readequação Predial', 'Estrada do Congo, 204 - Jardim Pirituba - São Paulo - SP, 02984090', 20, NULL, 'Pirituba / Jaraguá', -23.4436903, -46.7204468, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4436903, -- Use merged value
    longitude = -46.7204468, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1675', 'EMEF - Professor Ernesto De Moraes Leme', 'Readequação Predial', 'Rua Vale das Flores, 120 - Jardim Santa Lucrecia - São Paulo -SP, 05185400', 20, NULL, 'Pirituba / Jaraguá', -23.4442418, -46.7467648, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4442418, -- Use merged value
    longitude = -46.7467648, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1676', 'EMEI - Euripedes Simões De Paula', 'Readequação Predial', 'Rua Barra do Jacaré, 73 - Vila Herminia - São Paulo - Sp, 02977090', 20, NULL, 'Freguesia / Brasilândia', -23.4737288, -46.7099506, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4737288, -- Use merged value
    longitude = -46.7099506, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1677', 'EMEI - Morro Doce', 'Readequação Predial', 'Rua Elisa Dina, 293 - Jardim Britania - São Paulo - Sp, 05269080', 20, NULL, 'Perus ', -23.4338404, -46.7911644, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4338404, -- Use merged value
    longitude = -46.7911644, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1678', 'CEI - Parque Anhanguera', 'Readequação Predial', 'Rua Pedro José de Lima, 1020 - Jardim Anhanguera - São Paulo - SP, 05267174', 20, NULL, 'Perus ', -23.4400536, -46.7879453, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4400536, -- Use merged value
    longitude = -46.7879453, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1679', 'EMEI - Paulo VI', 'Readequação Predial', 'Rua Carlos Perinello, s/n - Vila Mangalot - São Paulo - SP, 05132210', 20, NULL, 'Pirituba / Jaraguá', -23.5032249, -46.7441345, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5032249, -- Use merged value
    longitude = -46.7441345, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1680', 'EMEF - Professora Philó Gonçalves Santos', 'Readequação Predial', 'Rua Alagoa nova, s/n - perus - São Paulo - Sp, 05202280', 20, NULL, 'Perus ', -23.4016513, -46.7430117, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4016513, -- Use merged value
    longitude = -46.7430117, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1681', 'CEI - Indireta Espaço Da Comunidade II', 'Readequação Predial', 'Rua Diego Sande, 150 - Jardim Camargo - Sãp Paulo - SP, 08121100', 20, NULL, 'Itaim Paulista ', -23.498822, -46.3847982, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.498822, -- Use merged value
    longitude = -46.3847982, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1682', 'EMEI - Doutor Fausto Ribeiro Da Silva Filho', 'Readequação Predial', 'Rua Alexandre Dias Nogueira, 365 - Vila Nova Curuca - São Paulo - SP, 08031240', 20, NULL, 'Itaim Paulista ', -23.5135003, -46.4211493, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5135003, -- Use merged value
    longitude = -46.4211493, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1683', 'EMEI - Globo Do Sol', 'Readequação Predial', 'Rua Globo do Sol, 85 - Jardim Pedro Jose Nunes - São Paulo - SP, 08061290', 20, NULL, 'São Miguel Paulista ', -23.5042843, -46.4633477, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5042843, -- Use merged value
    longitude = -46.4633477, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1684', 'EMEF - Professora Maria Helena Faria Lima', 'Readequação Predial', 'Avenida Roland Garros, 573 - Jardim Brasil - São Paulo - SP, 02235000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4806041, -46.5820587, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4806041, -- Use merged value
    longitude = -46.5820587, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1685', 'EMEI - Dona Maria Yolanda De Souza Pinto Hahne', 'Readequação Predial', 'Rua Gastão Madeira, 340 - Vila Maria Alta - São paulo - SP, 02131080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5057841, -46.5853201, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5057841, -- Use merged value
    longitude = -46.5853201, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1686', 'EMEF - Octavio Pereira Lopes', 'Readequação Predial', 'Rua Alcy Borges dos Santos - 242 - São Paulo, SP, 02276020', 20, NULL, 'Jaçanã / Tremembé', -23.4614314, -46.5851135, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4614314, -- Use merged value
    longitude = -46.5851135, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1687', 'EMEF - Dom Pedro I', 'Readequação Predial', 'Praça Presidente Janio da Silva Quadros, 420 - Jardim Japão - São Paulo - SP, 02132000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5000263, -46.5790112, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5000263, -- Use merged value
    longitude = -46.5790112, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1688', 'EMEF - Rodrigues Alves', 'Readequação Predial', 'Rua Borges. 242 - Parada Inglesa - São Paulo - SP, 02247000', 20, NULL, 'Santana / Tucuruvi', -23.4896575, -46.6000589, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4896575, -- Use merged value
    longitude = -46.6000589, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1689', 'EMEF - Professora Shirley Guio', 'Readequação Predial', 'Rua Cristovão Lins, 611 - Vila Isolina Mazzei - São Paulo - SP, 02083000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4950342, -46.5968131, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4950342, -- Use merged value
    longitude = -46.5968131, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1690', 'EMEF  - Professor Antônio De Sampaio Doria', 'Readequação Predial', 'Praça Tito Pacheco, 7 - jardim Miriam - São Paulo - SP, 04419140', 20, NULL, 'Cidade Ademar ', -23.6815903, -46.6426927, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6815903, -- Use merged value
    longitude = -46.6426927, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1691', 'EMEF - Armando Arruda Pereira', 'Readequação Predial', 'Rua Coronel Luis de faria e Sousa, 12 - Vila do Encontro - São Paulo - SP, 04323010', 20, NULL, 'Jabaquara ', -23.6522075, -46.640893, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6522075, -- Use merged value
    longitude = -46.640893, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1692', 'EMEI - Arthur Baptista Da Luz', 'Readequação Predial', 'Rua Cunha Mendes, 90 - Jardim Itapura - São Paulo - SP, 04467110', 20, NULL, 'Cidade Ademar ', -23.693703, -46.6554179, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.693703, -- Use merged value
    longitude = -46.6554179, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1693', 'EMEI - Ayrton Senna Da Silva', 'Readequação Predial', 'Rua Sebastião Afonso, 271 - Jardim Mirim - São Paulo - SP, 04417100', 20, NULL, 'Cidade Ademar ', -23.6789404, -46.6356574, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6789404, -- Use merged value
    longitude = -46.6356574, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1694', 'EMEF - Cacilda Becker', 'Readequação Predial', 'Avenida Engenheiro Armando Arruda Pereira, 2013 - Jabaquara - São Paulo - SP, 04309011', 20, NULL, 'Jabaquara ', -23.6454492, -46.640516, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6454492, -- Use merged value
    longitude = -46.640516, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1695', 'EMEI - Geloira De Campos', 'Readequação Predial', 'Rua Laplace, 421 - Brooklin Novo - São Paulo - SP, 04622000', 20, NULL, 'Santo Amaro ', -23.6270471, -46.6818944, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6270471, -- Use merged value
    longitude = -46.6818944, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1696', 'EMEF - Professora Liliane Verzini Silva', 'Readequação Predial', 'Avenida Francesco Maria Melani, S/N - Jardim Luso - São Paulo - SP, 04421180', 20, NULL, 'Cidade Ademar ', -23.6923543, -46.6398236, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6923543, -- Use merged value
    longitude = -46.6398236, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1697', 'EMEF - Professora Maria Lucia Dos Santos', 'Readequação Predial', 'Rua Estampa Esportiva, 55 - Americanópolis - São Paulo - SP, 04429060', 20, NULL, 'Cidade Ademar ', -23.6763295, -46.6637539, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6763295, -- Use merged value
    longitude = -46.6637539, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1698', 'CEI - Celso Daniel', 'Readequação Predial', 'Rua Jose Doria de Andrade, 535 - Cidade Lider - São Paulo - SP, 08285340', 20, NULL, 'Itaquera ', -23.5554837, -46.4759127, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5554837, -- Use merged value
    longitude = -46.4759127, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1699', 'CEI - Danielle Monteiro, GCMF', 'Readequação Predial', 'Rua Senador Henrique Novaes, 310 - jardim Caguassu - São Paulo - SP, 03906000', 20, NULL, 'Aricanduva ', -23.5822236, -46.5124081, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5822236, -- Use merged value
    longitude = -46.5124081, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1700', 'CEI  - Vila Chuca', 'Readequação Predial', 'Rua Andre Basili, 245 - Vial Chuca - São Paulo - SP, 08270370', 20, NULL, 'Itaquera ', -23.561789, -46.4532342, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561789, -- Use merged value
    longitude = -46.4532342, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1701', 'EMEF - Prestes Maia', 'Readequação Predial', 'Rua Selma Kurtz, 166 - Jardim Maria Luiza - São Paulo - SP, 04434010', 20, NULL, 'Cidade Ademar ', -23.6785492, -46.6651583, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6785492, -- Use merged value
    longitude = -46.6651583, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1702', 'EMEI - Raul Joviano do Amaral', 'Readequação Predial', 'Rua Valentino Fioranvanti, 128 - Jardim Rubilene - São Paulo - SP, 04475380', 20, NULL, 'Cidade Ademar ', -23.7030064, -46.6362184, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7030064, -- Use merged value
    longitude = -46.6362184, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1703', 'EMEI - Virgílio Tavora', 'Readequação Predial', 'Rua Jose Mauro de Mendonça, 93 - Parque Doroteia - São Paulo - SP, 04475492', 20, NULL, 'Cidade Ademar ', -23.6989298, -46.6385611, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6989298, -- Use merged value
    longitude = -46.6385611, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1704', 'EMEF - Antonio De Alcântara Machado', 'Readequação Predial', 'Rua Belgrado, 74 - Moinho Velho - São paulo - SP, 04285040', 20, NULL, 'Ipiranga ', -23.6125461, -46.6015308, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6125461, -- Use merged value
    longitude = -46.6015308, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1705', 'EMEI - Cidade Do Sol', 'Readequação Predial', 'Rua artistas de Heliópolis, 35 - Cidade Nova Heliópolis - São Paulo - SP, 04236100', 20, NULL, 'Ipiranga ', -23.6140864, -46.5936414, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6140864, -- Use merged value
    longitude = -46.5936414, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1706', 'EMEF - Jean Mermoz', 'Readequação Predial', 'Rua Correria de Lemos, 30 - Chacara Inglesa - São Paulo - SP, 04140000', 20, NULL, 'Vila Mariana ', -23.6082389, -46.6367627, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6082389, -- Use merged value
    longitude = -46.6367627, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1707', 'EMEI - Gleba do Pêssego', 'Readequação Predial', 'Rua Demeter, 200 - Gleba do Pessego - São Paulo - SP, 08265300', 20, NULL, 'Itaquera ', -23.5842841, -46.4518772, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5842841, -- Use merged value
    longitude = -46.4518772, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1708', 'EMEI - João Rubens Marcelo ', 'Readequação Predial', 'Rua Azevedo e Brito, 395 - Vila Formosa - São Paulo - SP, 03366040', 20, NULL, 'Aricanduva ', -23.5680719, -46.5338955, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5680719, -- Use merged value
    longitude = -46.5338955, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1709', 'EMEI - José Duarte', 'Readequação Predial', 'Rua Dias Coelho, 97 - Cidade Lider - São Paulo - SP, 08280360', 20, NULL, 'Itaquera ', -23.5576079, -46.4746671, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576079, -- Use merged value
    longitude = -46.4746671, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1710', 'EMEI - Najla Curi Izar', 'Readequação Predial', 'Avenida Paulo Gracindo, 53 - Conj.Habit.Fazenda do Carmo - São Paulo - SP, 08421520', 20, NULL, 'Itaquera ', -23.5677499, -46.4259003, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5677499, -- Use merged value
    longitude = -46.4259003, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1711', 'EMEI - Professora Neyl Gomes Martin', 'Readequação Predial', 'Rua Miguel Bastos Soares, 275 - Jardim Catarina - São Paulo - SP, 03910000', 20, NULL, 'Aricanduva ', -23.583773, -46.5169671, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583773, -- Use merged value
    longitude = -46.5169671, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1712', 'EMEI - Ronald De Carvalho', 'Readequação Predial', 'Rua Lincoln Junqueira, 590 - jardim São Pedro - São Paulo - SP, 08420660', 20, NULL, 'Itaquera ', -23.5461033, -46.4327351, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5461033, -- Use merged value
    longitude = -46.4327351, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1713', 'EMEF - Roquette Pinto', 'Readequação Predial', 'Rua Professora Alzira de Oliveira Gilioli, 32 - Jardim Nice - São Paulo - SP, 03905090', 20, NULL, 'Aricanduva ', -23.5838087, -46.5168825, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5838087, -- Use merged value
    longitude = -46.5168825, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1714', 'EMEI - Cidade Fernão Dias', 'Readequação Predial', 'Rua do Bandolim, 27 - Jardim Julieta - São Paulo - SP, 02161080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4897171, -46.5690508, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4897171, -- Use merged value
    longitude = -46.5690508, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1715', 'EMEI - Aviador Edu Chaves', 'Readequação Predial', 'Avenida Edu Chaves, 1561 - Parque Edu - São Paulo - SP, 02229001', 20, NULL, 'Jaçanã / Tremembé', -23.4805979, -46.5669004, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4805979, -- Use merged value
    longitude = -46.5669004, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1716', 'EMEI - Professor Enio Correa', 'Readequação Predial', 'Avenida Basileia, 80 - Lauzane Paulista - São Paulo - SP, 02440060', 20, NULL, 'Santana / Tucuruvi', -23.4771575, -46.6468719, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4771575, -- Use merged value
    longitude = -46.6468719, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1717', 'EMEF - Professora Esmeralda Salles Pereira Ramos', 'Readequação Predial', 'Rua Maria Amalia Lopes Azevedo, 2167 - Jardim Yara - São Paulo - SP, 02350002', 20, NULL, 'Jaçanã / Tremembé', -23.4578928, -46.6046974, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4578928, -- Use merged value
    longitude = -46.6046974, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1718', 'EMEF - Firmino Tibúrcio da Costa', 'Readequação Predial', 'Rua Pedro Morcilla Filho, 578 - Cidade Patriarca - São Paulo - SP, 03546010', 20, NULL, 'Penha ', -23.5381168, -46.5097266, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5381168, -- Use merged value
    longitude = -46.5097266, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1719', 'EMEI - Professora Irene Favret Lopes', 'Readequação Predial', 'Rua Jarinu, 640 - Cidade Mãe do Ceu - São Paulo - SP, 03306000', 20, NULL, 'Mooca ', -23.5460132, -46.5753946, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5460132, -- Use merged value
    longitude = -46.5753946, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1720', 'EMEI - João Mendonça Falcão', 'Readequação Predial', 'Rau Coronel Mursa, 167 - Brás - São Paulo - SP, 03043050', 20, NULL, 'Mooca ', -23.5486581, -46.616667, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5486581, -- Use merged value
    longitude = -46.616667, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1721', 'EMEF - Professora Alice Meireles Reis, Profª', 'Readequação Predial', 'Avenida Elísio Teixeira Leite, s/n - Sítio Morro Grande - São Paulo - SP - 02810000', 20, NULL, 'Freguesia / Brasilândia', -23.4675694, -46.7098527, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4675694, -- Use merged value
    longitude = -46.7098527, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1722', 'EMEI - Antonio Munhoz Bonilha', 'Readequação Predial', 'Rua Vicente Antonio de Oliveira, 668 - Vila Mirante - São Paulo - SP, 02955080', 20, NULL, 'Pirituba / Jaraguá', -23.4680521, -46.7214475, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4680521, -- Use merged value
    longitude = -46.7214475, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1723', 'EMEI - Padre Charbonneau', 'Readequação Predial', 'Rua Fábio de Almeida Magalhães, 95 - Jardim Santo Elias - São Paulo - SP, 05135370', 20, NULL, 'Pirituba / Jaraguá', -23.4964934, -46.7500224, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4964934, -- Use merged value
    longitude = -46.7500224, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1724', 'EMEI  - Professor Clemente Segundo Pinho', 'Readequação Predial', 'Rua Virginia Galile, 100 - Jardim Ipanema - São paulo - SP, 05187060', 20, NULL, 'Pirituba / Jaraguá', -23.44348, -46.7506064, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.44348, -- Use merged value
    longitude = -46.7506064, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1725', 'EMEF - Professora Eliane Benute Lessa Ayres Gonçalves', 'Readequação Predial', 'Avenida Raimundo Pereira de Magalhães, 12298 - Jardim Maril - São Paulo - SP< 02989095', 20, NULL, 'Pirituba / Jaraguá', -23.4719627, -46.72491, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4719627, -- Use merged value
    longitude = -46.72491, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1726', 'EMEF - Professor Gabriel Prestes', 'Readequação Predial', 'Rua Carlos da Cunha Mattos, 134 - Chacará Inglesa = São Paulo - SP, 05140040', 20, NULL, 'Pirituba / Jaraguá', -23.4890331, -46.7265224, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4890331, -- Use merged value
    longitude = -46.7265224, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1727', 'EMEF - Brigadeiro Henrique Raymundo Dyott Fontenelle', 'Readequação Predial', 'Rua Nossa Senhora da Conceição, 384 - Jaragua - São Paulo - SP, 05181280', 20, NULL, 'Pirituba / Jaraguá', -23.4556844, -46.7432717, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4556844, -- Use merged value
    longitude = -46.7432717, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1728', 'EMEF - Professor Jairo De Almeida', 'Readequação Predial', 'Rua Recanto dos Humildes, s/n - Conj.Habit.Recanto dos Humildes - São Paulo - SP, 05209000', 20, NULL, 'Perus ', -23.414019, -46.750806, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.414019, -- Use merged value
    longitude = -46.750806, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1729', 'CEI Anglicana Morumbi', 'Ampliação Unidade Educacional', 'R. Dr. José Pedro de Carvalho Lima - Jardim Parque Morumbi', 20, NULL, 'Campo Limpo ', -23.6223402, -46.7290238, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6223402, -- Use merged value
    longitude = -46.7290238, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1730', 'EMEF - João da Silva', 'Manutenção em Unidades Educacionais', 'R. Conquista Popular, S/N ', 20, NULL, 'Capela do Socorro ', -23.760244, -46.679545, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.760244, -- Use merged value
    longitude = -46.679545, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1731', 'CEMEI Setor 4201 - Rua Antonio Cardoso Nogueira', 'Construção Unidade Educacional', 'Rua Antonio Cardoso Nogueira', 20, NULL, 'Pirituba / Jaraguá', -23.457628, -46.755429, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.457628, -- Use merged value
    longitude = -46.755429, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1732', 'EMEF Setor 8104 - Rua Simão de Abreu x Rua Ushikichi Kamiya x Estrada da Cachoeira', 'Construção Unidade Educacional', 'Rua Simão de Abreu x Rua Ushikichi Kamiya x Estrada da Cachoeira', 20, NULL, 'Jaçanã / Tremembé', -23.438276, -46.585624, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.438276, -- Use merged value
    longitude = -46.585624, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1733', 'EMEI Setor 6803 - Rua Manoel Salgado', 'Construção Unidade Educacional', 'Rua Manoel Salgado', 20, NULL, 'Ipiranga ', -23.644566, -46.602315, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644566, -- Use merged value
    longitude = -46.602315, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1734', 'CEMEI - Rua Júlio Colaço com a Rua Moisés Marx', 'Construção Unidade Educacional', 'Rua Júlio Colaço com a Rua Moisés Marx', 20, NULL, 'Penha ', -23.537996, -46.542628, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.537996, -- Use merged value
    longitude = -46.542628, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1735', 'EMEF Setor 5804 - Rua Dr. José Silvio de Camargo - Cidade Ademar São Paulo', 'Construção Unidade Educacional', 'Rua Dr. José Silvio de Camargo - Cidade Ademar São Paulo', 20, NULL, 'Cidade Ademar ', -23.708701, -46.630899, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.708701, -- Use merged value
    longitude = -46.630899, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1736', 'EMEI - Rua Kurt Engelhart', 'Construção Unidade Educacional', 'Rua Kurt Engelhart', 20, NULL, 'Ipiranga ', -23.634276, -46.601392, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634276, -- Use merged value
    longitude = -46.601392, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1737', 'EMEI - Rua Francisco de Paula Bonilha x Rua Pedro de Velasco', 'Construção Unidade Educacional', 'Rua Francisco de Paula Bonilha x Rua Pedro de Velasco', 20, NULL, 'Freguesia / Brasilândia', -23.468101, -46.70524, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.468101, -- Use merged value
    longitude = -46.70524, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1738', 'EMEI - Lote 1802 - Rua Mutuipe x Rua Canutama x Rua Riacho da Cruz', 'Construção Unidade Educacional', 'Rua Mutuipe x Rua Canutama x Rua Riacho da Cruz', 20, NULL, 'Penha ', -23.498167, -46.498289, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.498167, -- Use merged value
    longitude = -46.498289, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1739', 'EMEI Lote 4403 - Rua José Nunes dos Santos', 'Construção Unidade Educacional', 'Rua José Nunes dos Santos', 20, NULL, 'São Miguel Paulista ', -23.486644, -46.427632, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.486644, -- Use merged value
    longitude = -46.427632, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1740', 'CEI - Canindé ', 'Manutenção Unidades Educacionais', ' R. Carnot, 950 - Canindé, São Paulo - SP, 03032-030', 20, NULL, 'Mooca ', -23.5263171, -46.6214105, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5263171, -- Use merged value
    longitude = -46.6214105, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1741', 'CEU - Água Azul - Professor Paulo Renato Costa Souza', 'Manutenção Unidades Educacionais', 'Av. dos Metalúrgicos, 1262 - Cidade Tiradentes, São Paulo - SP, 08471-000', 20, NULL, 'Cidade Tiradentes ', -23.5942754, -46.4064907, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5942754, -- Use merged value
    longitude = -46.4064907, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1742', 'CEU - Coreto de Taipas', 'Manutenção Unidades Educacionais', 'Rua Joao Amado Coutinho, 240 - Conjunto Residencial Elisio Teixeira Lei, 02815-000', 20, NULL, 'Pirituba / Jaraguá', -23.4479684, -46.7150316, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4479684, -- Use merged value
    longitude = -46.7150316, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1743', 'CEU - Freguesia - Esperança Garcia', 'Manutenção Unidades Educacionais', 'Rua Jacutiba, 167 - Parque São Luis - CEP: 02832240', 20, NULL, 'Freguesia / Brasilândia', -23.483422, -46.693486, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.483422, -- Use merged value
    longitude = -46.693486, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1744', 'CEU - Horizonte Azul - Artur Alvim', 'Manutenção Unidades Educacionais', 'Av. Sylvio Torres, 295 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-010', 20, NULL, 'Penha ', -23.5526253, -46.4877258, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5526253, -- Use merged value
    longitude = -46.4877258, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1745', 'CEU - Inácio Monteiro', 'Manutenção Unidades Educacionais', 'R. Barão Barroso do Amazonas, s/n - Conj. Hab. Inacio Monteiro, São Paulo - SP, 08472-721', 20, NULL, 'Cidade Tiradentes ', -23.5685606, -46.4109153, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5685606, -- Use merged value
    longitude = -46.4109153, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1746', 'CEU - José Bonifácio - Jardim São Pedro', 'Manutenção Unidades Educacionais', 'Rua Professora Lucila Cerqueira, 194 - Jardim Sao Pedro, São Paulo - SP, 08420-690', 20, NULL, 'Itaquera ', -23.54706, -46.4278376, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54706, -- Use merged value
    longitude = -46.4278376, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1747', 'CEU - Monte Serrat - Carrão', 'Manutenção Unidades Educacionais', 'Rua Monte Serrat, 380 - Tatuapé, São Paulo - SP, 03312-000', 20, NULL, 'Mooca ', -23.540882, -46.5625637, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.540882, -- Use merged value
    longitude = -46.5625637, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1748', 'CEU - Parque do Carmo - João Cândido - Almirante Negrão', 'Manutenção Unidades Educacionais', 'R. Guerra de Aguiar, 63-237 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08270-000', 20, NULL, 'Itaquera ', -23.57359, -46.47991, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57359, -- Use merged value
    longitude = -46.47991, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1749', 'CEU - Pinheirinho D´Água', 'Manutenção Unidades Educacionais', 'Rua Camillo Zanotti - Jaragua, São Paulo - SP, 02998-080', 20, NULL, 'Pirituba / Jaraguá', -23.4380499, -46.7322029, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4380499, -- Use merged value
    longitude = -46.7322029, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1750', 'CEU - São Miguel - Luiz Melodia', 'Manutenção Unidades Educacionais', 'R. José Ferreira Crespo, 471 - Jardim Sao Vicente, São Paulo - SP, 08021-480', 20, NULL, 'São Miguel Paulista ', -23.49929, -46.42972, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49929, -- Use merged value
    longitude = -46.42972, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1751', 'CEU - Sapopemba', 'Manutenção Unidades Educacionais', 'Rua Manuel Quirino De Mattos , S/N - Jardim Sapopemba - CEP: 05273140', 20, NULL, 'Sapopemba', -23.6088372, -46.49362, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6088372, -- Use merged value
    longitude = -46.49362, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;