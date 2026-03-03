INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('601', 'Descomplica Mooca', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Taquari nº 549', 8, NULL, 'Mooca ', -23.5499694, -46.5992585, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5499694,
    longitude = -46.5992585;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('602', 'Descomplica Pinheiros', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Dra. Ruth Cardoso, 7123', 8, NULL, 'Pinheiros ', -23.5661031, -46.702514, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5661031,
    longitude = -46.702514;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('603', 'Descomplica Parelheiros', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', '- Estrada Ecoturística de Parelheiros nº 5252', 8, NULL, 'Parelheiros ', -23.8159122, -46.7355002, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8159122,
    longitude = -46.7355002;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('604', 'Descomplica Pirituba', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Dr. Carlos Afranio da Cunha Matos, 67 ', 8, NULL, 'Pirituba / Jaraguá', -23.4887209, -46.7271853, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4887209,
    longitude = -46.7271853;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('605', 'Descomplica Itaim Paulista', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Marechal Tito, 3012', 8, NULL, 'Itaim Paulista ', -23.4946203, -46.4171384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4946203,
    longitude = -46.4171384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('606', 'Descomplica Santo Amaro', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Praça Floriano Peixoto nº 54', 8, NULL, 'Santo Amaro ', -23.6514849, -46.7069966, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6514849,
    longitude = -46.7069966;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('607', 'Boulevard JK', 'Reurbanização da avenida JK, com 1.300m de extensão, compreendendo a reformulação viária de superfície e via rebaixada sob a avenida Presidente Juscelino Kubitschek.', 'Avenida Presidente Juscelino Kubitschek', 4, NULL, 'Pinheiros ', -23.59045, -46.681391, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59045,
    longitude = -46.681391;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('608', 'Ciclopassarela Panorama', 'Execução dos levantamentos de campo, serviços geotécnicos, consolidação do projeto funcional, elaboração de projetos básicos, projetos executivos e dos estudos ambientais ', 'Sobre o canal do Rio Pinheiros, vias marginais e Linha 9 – Esmeralda CPTM, junto à Estação Berrini', 5, NULL, 'Pinheiros ', -23.604734, -46.69615, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604734,
    longitude = -46.69615;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('609', 'Av. Teotônio Vilela / Av. Sadamu Inoue - Duplicação', 'Elaboração dos Projetos Básicos, Projetos executivos e Serviços Ambientais para duplicação viária da Avenida Senador Teotônio Vilela', 'Av Teotônio Vilela x Av. Sadamu Inoue', 5, NULL, 'Parelheiros ', -23.773657, -46.720829, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.773657,
    longitude = -46.720829;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('610', 'Implantação viadutos na Av. Santos Dumont sobre a Av. do Estado', 'Projeto Viadutos', 'Início próximo a Rua dos Bandeirantes até proximidades da Rua Porto Seguro', 5, NULL, 'SÉ', -23.528708, -46.6319, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528708,
    longitude = -46.6319;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('611', 'Nova Ponte Jurubatuba – Av. Interlagos - Sentido Bairro – Centro', 'Execução dos levantamentos de campo, serviços geotécnicos, elaboração de projetos básicos, projetos executivos e dos estudos ambientais ', 'Avenida Interlagos sobre o Rio Jurubatuba, com localização próxima a Vila da Paz', 5, NULL, 'Capela do Socorro ', -23.751, -46.69564, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.751,
    longitude = -46.69564;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('612', 'Nova Sede do Conselho Municipal da Pessoa com Deficiência - SMPED', 'Elaboração de projeto básico e executivo para a reforma parcial da Secretaria Municipal da Pessoa com Deficiência e das novas instalações da sede do Conselho Municipal da Pessoa com projeto Executivo', 'Rua Líbero Badaró, 425 - 4º andar e 32º andares', 24, NULL, 'SÉ', -23.5455, -46.63609, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455,
    longitude = -46.63609;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('613', 'Sede da SMDET', 'Elaboração de projeto básico/executivo para a reforma da Secretaria Municipal de Desenvolvimento Econômico, Trabalho e Turismo', 'Rua Líbero Badaró, 425 - 8º e 12º andares', 24, NULL, 'SÉ', -23.5455, -46.63609, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455,
    longitude = -46.63609;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('615', 'Viaduto Marcelo Figueiredo Portugal Gouvêa', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na avenida Juscelino Kubistchek sentido marginal Pinheiros - Castelo Branco', 16, NULL, 'Pinheiros ', -23.589805, -46.690992, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.589805,
    longitude = -46.690992;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('616', 'Viaduto Rua Hely Lopes Meirelles', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação Marginal Tiete e Rua Hely Lopes Meirelles, sobre a R. Condessa Elizabeth Robiano', 16, NULL, 'Mooca ', -23.524138, -46.560195, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524138,
    longitude = -46.560195;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('617', 'Viaduto Mateus Grou', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Teodoro Sampaio, sobre a Rua Mateus Grou - Pinheiros.', 16, NULL, 'Pinheiros ', -23.562422, -46.685627, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.562422,
    longitude = -46.685627;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('618', 'Viaduto Joaquim Antunes (Teodoro Sampaio)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Teodoro Sampaio, sobre a Rua Joaquim Antunes - Pinheiros.', 16, NULL, 'Pinheiros ', -23.561288, -46.683736, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561288,
    longitude = -46.683736;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('619', 'Viaduto Miguel Colello', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Loefgreen, entre a Rua Joel Jorge de Melo e a Rua Jaime Viana sobre a Rua Sabino – Saúde', 16, NULL, 'Vila Mariana ', -23.599714, -46.632879, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599714,
    longitude = -46.632879;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('620', 'Viaduto Professor Bernardino Tranchesi (Viaduto São Carlos do Pinhal)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Na Rua São Carlos do Pinhal sobre a Avenida 9 de Julho e a Rua Peixoto Gomide - Cerqueira César.', 16, NULL, 'SÉ', -23.560604, -46.655234, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.560604,
    longitude = -46.655234;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('621', 'Viaduto República Árabe-Síria', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Indianópolis, sobre a Avenida Rubem Berta - Moema.', 16, NULL, 'Vila Mariana ', -23.607785, -46.652693, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.607785,
    longitude = -46.652693;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('622', 'Ponte Laguna (Vice-Presidente José Alencar)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Laguna sobre a Marginal Pinheiros', 16, NULL, 'Santo Amaro ', -23.633429, -46.718533, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.633429,
    longitude = -46.718533;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('623', 'Pontilhão na Rua Igaraçu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Iguaçu sobre Córrego Lageado – Vila Simone', 16, NULL, 'Itaim Paulista ', -23.502753, -46.406448, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.502753,
    longitude = -46.406448;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('624', 'Pontilhão na Rua do Ipê Roxo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Ipê Roxo sobre Córrego Lageado – Jardim Jaraguá', 16, NULL, 'Itaim Paulista ', -23.506221, -46.404839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.506221,
    longitude = -46.404839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('625', 'Pontilhão na Rua Castelo do Piauí', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Castelo do Piauí sobre o Rio Verde - Itaquera', 16, NULL, 'Itaquera ', -23.54347, -46.462181, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54347,
    longitude = -46.462181;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('626', 'Viaduto Único Galláfrio', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Henry Ford e a Avenida Presidente Altino sobre a CPTM e a Praça Alaor da Silva - Jaguaré.', 16, NULL, 'Lapa ', -23.530457, -46.760273, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.530457,
    longitude = -46.760273;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('627', 'Viaduto Okuhara Koei', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Doutor Arnaldo e a Rua da Consolação sobre a Avenida Rebouças – Consolação.', 16, NULL, 'Pinheiros ', -23.556493, -46.665315, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556493,
    longitude = -46.665315;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('628', 'Viaduto Avenida Cangaiba', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Cangaíba, sobre a Avenida Governador Carvalho Pinto e o Córrego Tiquatira – Cangaíba.', 16, NULL, 'Penha ', -23.513923, -46.545894, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.513923,
    longitude = -46.545894;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('629', 'Viaduto Santa Generosa', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Bernardino de Campos e a Rua Vergueiro sobre a Avenida 23 de Maio – Paraíso.', 16, NULL, 'Vila Mariana ', -23.575289, -46.641566, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575289,
    longitude = -46.641566;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('630', 'Viaduto Tutóia', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Tutóia e a Rua Doutor Amâncio de Carvalho sobre a Avenida 23 de Maio - Paraíso.', 16, NULL, 'Vila Mariana ', -23.58114, -46.649767, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58114,
    longitude = -46.649767;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('631', 'Viaduto Onze de Junho (Avenida Rubem Berta)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rubem Berta sobre a Interligação entre a Avenida José Maria Whitaker e a Rua Haberbeck Brandão - Vila Clementino.', 16, NULL, 'Vila Mariana ', -23.601428, -46.651276, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.601428,
    longitude = -46.651276;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('632', 'Viaduto sobre a Rua João Moura', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Paulo VI sobre a Rua João Moura - Jardim América.', 16, NULL, 'Pinheiros ', -23.555154, -46.681326, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555154,
    longitude = -46.681326;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('633', 'Viaduto na Rua Arthur de Azevedo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Arthur de Azevedo sobre a Rua Paulo Gontijo de Carvalho - Jardim Paulista.', 16, NULL, 'Pinheiros ', -23.561316, -46.679499, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561316,
    longitude = -46.679499;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('634', 'Viaduto Vereador José Diniz (Avenida Rodrigues Alves)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Acesso vindo da Avenida Professor Vicente Rao pista sentido Santo Amaro/Brooklin - Vila Carmem.', 16, NULL, 'Santo Amaro ', -23.62806, -46.684816, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.62806,
    longitude = -46.684816;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('635', 'Viaduto Prefeito José Carlos de Figueiredo Ferraz', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de saída da Av. Jacu Pêssego/Nova Trabalhadores para Av. José Pinheiro Borges (Radial Leste) - sentido Centro', 16, NULL, 'Itaquera ', -23.534427, -46.454253, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534427,
    longitude = -46.454253;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('636', 'Viaduto na Avenida José Pinheiro Borges', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Saída para a Avenida David Domingues Ferreira – Jardim Liderança.', 16, NULL, 'Itaquera ', -23.535279, -46.453993, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.535279,
    longitude = -46.453993;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('637', 'Viaduto na Avenida Prof. Francisco Morato', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Francisco Morato sobre a Avenida Monsenhor Manfredo Leite - Butantã', 16, NULL, 'Butantã ', -23.602396, -46.744013, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.602396,
    longitude = -46.744013;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('638', 'Viaduto Sonia Maria de Moraes Angel Jones (ligação Guido Caloi)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida João Dias, sentido Ponte João Dias, sobre a Avenida Maria Coelho de Aguiar– Jardim Santo Antônio', 16, NULL, 'M´Boi Mirim', -23.644438, -46.729689, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644438,
    longitude = -46.729689;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('639', 'Viaduto na Rua Augusta', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Augusta sobre a Avenida Radial Leste- Oeste - Consolação.', 16, NULL, 'SÉ', -23.550072, -46.646455, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.550072,
    longitude = -46.646455;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('640', 'Viaduto na Rua da Consolação', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua da Consolação sobre a Avenida Radial Leste-Oeste - Consolação', 16, NULL, 'SÉ', -23.547343, -46.647524, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547343,
    longitude = -46.647524;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('641', 'Viaduto na Avenida Rangel Pestana sobre a Rua Frederico Alvarenga', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rangel Pestana sobre a Rua Frederico Alvarenga - Parque Dom Pedro II.', 16, NULL, 'SÉ', -23.549559, -46.629967, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.549559,
    longitude = -46.629967;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('642', 'Viaduto Boa Vista', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Boa Vista sobre a Rua General Carneiro', 16, NULL, 'SÉ', -23.547411, -46.63331, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547411,
    longitude = -46.63331;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('643', 'Viaduto na Rua Peixoto Gomide sobre a Rua São Carlos do Pinhal', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Peixoto Gomide sobre a Rua São Carlos do Pinhal - Cerqueira César.', 16, NULL, 'SÉ', -23.559865, -46.656062, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.559865,
    longitude = -46.656062;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('644', 'Viaduto Matheus Torloni', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Getúlio Vargas Filho e a Secretária de Agricultura e Abastecimento sobre a Rodovia dos imigrantes – Cidade Vargas', 16, NULL, 'Jabaquara ', -23.646953, -46.631848, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.646953,
    longitude = -46.631848;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('645', 'Viaduto Professor Alberto Mesquita de Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua da Mooca sobre a Avenida Presidente Wilson, a CPTM e a Rua Doutor Almeida de Lima - Mooca.', 16, NULL, 'Mooca ', -23.55461, -46.610341, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55461,
    longitude = -46.610341;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('646', 'Viaduto na Rua Montesina', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Montesina sobre a Avenida Salim Farah Maluf – Vila Paulina.', 16, NULL, 'Mooca ', -23.575264, -46.570957, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575264,
    longitude = -46.570957;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('647', 'Viaduto Milton Leão', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Durande e a Rua Boipeva sobre a Avenida Águia de Haia - Artur Alvim.', 16, NULL, 'Penha ', -23.539543, -46.483367, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539543,
    longitude = -46.483367;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('648', 'Viaduto Maria Montanaro Colella', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Na Rua do Orfanato sobre a Avenida Salim Farah Maluf – Vila Paulina.', 16, NULL, 'Mooca ', -23.574443, -46.570766, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.574443,
    longitude = -46.570766;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('649', 'Viaduto Maestro Alberto Marino (Rangel Pestana)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rangel Pestana sobre a CPTM (próximo à Estação Brás) - Brás.', 16, NULL, 'Mooca ', -23.543523, -46.617584, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543523,
    longitude = -46.617584;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('650', 'Viaduto Itinguçu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Paraguassu e a Rua Itinguçu/Rua Júlio Sayago sobre a Rua Doutor Luiz Ayres e a CPTM - Vila Ré.', 16, NULL, 'Penha ', -23.535649, -46.493839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.535649,
    longitude = -46.493839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('651', 'Viaduto Julio de Mesquita Filho 2', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Radial Leste-Oeste, sobre a Rua Major Diogo – Bela Vista.', 16, NULL, 'SÉ', -23.555315, -46.642303, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555315,
    longitude = -46.642303;