INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('242', 'Viaduto do Chá', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto do Chá', 16, NULL, 'SÉ', -23.546748, -46.637723, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546748, -- Use merged value
    longitude = -46.637723, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('243', 'Viaduto dos Bandeirantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto dos Bandeirantes', 16, NULL, 'Vila Mariana ', -23.613063, -46.670992, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.613063, -- Use merged value
    longitude = -46.670992, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('244', 'Viaduto Santa Efigênia', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Santa Efigênia', 16, NULL, 'SÉ', -23.542767, -46.635463, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542767, -- Use merged value
    longitude = -46.635463, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('245', 'Viaduto Santo Amaro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Santo Amaro', 16, NULL, 'Pinheiros ', -23.60855, -46.676617, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.60855, -- Use merged value
    longitude = -46.676617, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('246', 'Viaduto Arapuã', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Arapuã', 16, NULL, 'Jabaquara ', -23.630635, -46.645309, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.630635, -- Use merged value
    longitude = -46.645309, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('247', 'Viaduto Pacaembu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Pacaembu', 16, NULL, 'SÉ', -23.526181, -46.660649, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.526181, -- Use merged value
    longitude = -46.660649, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('248', 'Viaduto Incinerador Vergueiro (Saioá)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Incinerador Vergueiro (Saioá)', 16, NULL, 'Vila Mariana ', -23.595232, -46.621431, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595232, -- Use merged value
    longitude = -46.621431, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('249', 'Viaduto Jacarei', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Jacarei', 16, NULL, 'SÉ', -23.551025, -46.640943, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.551025, -- Use merged value
    longitude = -46.640943, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('250', 'Viaduto Nove de Julho', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Nove de Julho', 16, NULL, 'SÉ', -23.549675, -46.642321, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.549675, -- Use merged value
    longitude = -46.642321, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('251', 'Viaduto Pires do Rio', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Interligação entre a Avenida Alcântara Machado e a Rua Melo Freire, sobre a Avenida Salim Farah Mal', 16, NULL, NULL, -23.542047, -46.580568, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542047, -- Use merged value
    longitude = -46.580568, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('257', 'Descomplica Ipiranga', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Breno Ferraz do Amaral, 425', 8, NULL, 'Ipiranga ', -23.5975651, -46.6213179, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5975651, -- Use merged value
    longitude = -46.6213179, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('258', 'Descomplica Lapa', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Guiacurus, 1000', 8, NULL, 'Lapa ', -23.5224163, -46.6957578, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5224163, -- Use merged value
    longitude = -46.6957578, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('259', 'Descomplica Freguesia do Ó/Brasilândia', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. João Marcelino Branco, 95', 8, NULL, 'Casa Verde ', -23.4765556, -46.6653286, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4765556, -- Use merged value
    longitude = -46.6653286, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('260', 'Calçadão Quadrilátero República', 'Reforma dos pavimentos das calçadas e calçadões, implantação de sinalização turística e ambiental, melhorias no mobiliário urbano e iluminação, drenagem e valas técnicas para Telecom.', 'Rua 7 de abril', 23, NULL, 'SÉ', -23.5461026, -46.6411121, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5461026, -- Use merged value
    longitude = -46.6411121, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('261', 'Autódromo de Interlagos - 2021', 'Obras complementares, instalações permanentes e reforma da pista para o GP de Fórmula 1', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7032826, -46.7002859, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7032826, -- Use merged value
    longitude = -46.7002859, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('262', 'Terminal Urbano Itaquera', 'Aproximadamente 55 mil m² de área construída, 55 linhas que transportam 300 mil passageiros por dia.', 'Av. Itaquera entre Terminal Carrão (Av. Rio das Pedras) e R. César Diaz, Av. Líder até R. Manuel Car', 5, NULL, 'Aricanduva ', -23.542126, -46.467326, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542126, -- Use merged value
    longitude = -46.467326, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('263', 'Córrego Água Branca', 'Obras de Drenagem da Bacia do Córrego Água Branca.', 'Rua Venâncio Aires e outras', 1, NULL, 'Lapa ', -23.528082, -46.682114, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528082, -- Use merged value
    longitude = -46.682114, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('264', 'Córrego Tanquinho', 'Obra de canalização do córrego com peças pré-moldadas de concreto armado, contemplando posterior revitalização das margens, com plantio e manutenção de mudas (serviços ambientais).', 'Jd. são bernardo', 18, NULL, 'Capela do Socorro ', -23.7584499, -46.7048732, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7584499, -- Use merged value
    longitude = -46.7048732, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('265', 'Rua Joaquim Leal e Parque Ecológico Chico Mendes', 'Obra de drenagem, adequação das margens, dragagem e desassoreamento da lagoa e microdrenagem da rua Joaquim Leal e no Parque Ecológico Chico Mendes', 'Prque Ecológico Chico Mendes', 18, NULL, NULL, -23.5068236, -46.429143, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5068236, -- Use merged value
    longitude = -46.429143, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('266', 'CTA Prates I  - Complexo Prates', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Prates nº 1101 Lado Direito - Bom Retiro', 19, NULL, 'SÉ', -23.5242207, -46.6345437, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5242207, -- Use merged value
    longitude = -46.6345437, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('267', 'CTA Prates II  - Complexo Prates', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Prates nº 1101, Bom Retiro', 19, NULL, 'SÉ', -23.5242207, -46.6345437, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5242207, -- Use merged value
    longitude = -46.6345437, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('268', 'CA - Complexo Oficina Boracea', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Dr. Ribeiro de Almeida 14 - Barra Funda', 19, NULL, 'SÉ', -23.524835, -46.6517246, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524835, -- Use merged value
    longitude = -46.6517246, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('269', 'Centro Assistencial Butantã', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'butanta', 19, NULL, 'Butantã ', -23.5634872, -46.7210095, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5634872, -- Use merged value
    longitude = -46.7210095, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('270', 'CTA Canindé', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'RUA COMENDADOR NESTOR PEREIRA, 77B - MOOCA', 19, NULL, 'SÉ', -23.5250196, -46.6196743, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5250196, -- Use merged value
    longitude = -46.6196743, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('271', 'CAE Casa Verde', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Brazelisa Alves de Carvalho 414, Casa Verde', 19, NULL, 'Casa Verde ', -23.512289, -46.6504722, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.512289, -- Use merged value
    longitude = -46.6504722, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('272', 'ESPASO - Espaço Público do Aprender Social', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Professor Ascendino Reis 830', 19, NULL, 'Vila Mariana ', -23.5983966, -46.6512318, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5983966, -- Use merged value
    longitude = -46.6512318, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('273', 'CTA Santo Amaro', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Av. Miguel Yunes nº 345 - Santo Amaro', 19, NULL, 'Santo Amaro ', -23.6865899, -46.6892887, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6865899, -- Use merged value
    longitude = -46.6892887, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('274', 'CEU / EMEF - Campos Salles, Pres.', 'Readequação em Quadra Poliesportiva', 'Estrada das Lágrimas, 2385 - Cid. Nova Heliópolis', 20, NULL, 'Ipiranga ', -23.6218736, -46.5903965, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6218736, -- Use merged value
    longitude = -46.5903965, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('275', 'EMEI - Brenno Ferraz do Amaral', 'Readequação em Quadra Poliesportiva', 'R. Jacitara Tipiti, 217 - Jardim Guairacá', 20, NULL, 'Vila Prudente ', -23.6043079, -46.540628, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6043079, -- Use merged value
    longitude = -46.540628, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('276', 'EMEI - Mário Marques e Serra, Pe.', 'Readequação em Quadra Poliesportiva', 'R. Francisco Pestana, 10 - Jardim Maria Estela', 20, NULL, 'Ipiranga ', -23.6372438, -46.6058809, FALSE, NULL, NULL)
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
VALUES ('277', 'CIEJA - Clóvis Caitano Miquelazzo', 'Readequação em Quadra Poliesportiva', 'R. François Bunel, 250 - Parque Bristol', 20, NULL, 'Ipiranga ', -23.6495812, -46.6102553, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6495812, -- Use merged value
    longitude = -46.6102553, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('278', 'EMEF - Marlene Rondelli, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Acácio Caristo, 21 - Bairro - Parque Tomas Saraiva', 20, NULL, 'Vila Prudente ', -23.5813856, -46.5382179, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5813856, -- Use merged value
    longitude = -46.5382179, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('279', 'EMEI - Quinta das Paineiras', 'Readequação em Quadra Poliesportiva', 'Praça Mário Ortiz, S/N - Quinta das Paineiras', 20, NULL, 'Vila Prudente ', -23.5885698, -46.5880437, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5885698, -- Use merged value
    longitude = -46.5880437, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('280', 'CEU / EMEF - Meninos', 'Readequação em Quadra Poliesportiva', 'R. Barbinos, 111 - São João Climaco', 20, NULL, 'Ipiranga ', -23.6214207, -46.5843757, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6214207, -- Use merged value
    longitude = -46.5843757, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('281', 'EMEF - Maurício Simão', 'Readequação em Quadra Poliesportiva', 'R. Kunito Miyasaka, 54 - Jd. Martinica - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6301649, -46.7687865, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6301649, -- Use merged value
    longitude = -46.7687865, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('282', 'EMEF - Maria Rita de Cassia Pinheiros Simões Braga, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Maria Callas, 30 - Parque Ligia - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6591532, -46.7833379, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6591532, -- Use merged value
    longitude = -46.7833379, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('283', 'EMEF - 22 de Março', 'Readequação em Quadra Poliesportiva', 'R. Francisco Soares, 51 - Parque Regina-Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6363506, -46.7498706, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6363506, -- Use merged value
    longitude = -46.7498706, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('284', 'EMEF - Teresa Margarida da Silva e Orta', 'Readequação em Quadra Poliesportiva', 'R. Eng.º Milton de Alvarenga Peixoto, 20 - Vila Gilda', 20, NULL, 'M´Boi Mirim', -23.7222168, -46.7570686, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7222168, -- Use merged value
    longitude = -46.7570686, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('285', 'EMEF - Luiz Tenório de Brito, Cel.', 'Readequação em Quadra Poliesportiva', 'R. Baldomero Carqueja, 278 - Campo Limpo', 20, NULL, 'M´Boi Mirim', -23.6466246, -46.7513845, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6466246, -- Use merged value
    longitude = -46.7513845, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('286', 'EMEF - Afrânio de Mello Franco, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Acambaro, 39 - Vila Cliper - Capela do Socorro', 20, NULL, 'Capela do Socorro ', -23.7204504, -46.701714, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7204504, -- Use merged value
    longitude = -46.701714, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('287', 'EMEF - Florestan Fernandes, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Margueritte Long, 41 - Jd. Guanabara - C. socorro', 20, NULL, 'Capela do Socorro ', -23.7642081, -46.7125948, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7642081, -- Use merged value
    longitude = -46.7125948, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('288', 'EMEF - Aldina Anália Agostinha Taddeo Conde Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Francesco Bartolozzi, 1 - Jd. Icaraí - Cap. do Socorro', 20, NULL, 'Capela do Socorro ', -23.7448618, -46.7045744, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7448618, -- Use merged value
    longitude = -46.7045744, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('289', 'EMEF - Habib Carlos Kyrillos, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Rio Grande do Norte, 299 - Americanópolis ', 20, NULL, 'Cidade Ademar ', -23.675088, -46.6460064, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.675088, -- Use merged value
    longitude = -46.6460064, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('290', 'EMEF - Chiquinha Rodrigues', 'Readequação em Quadra Poliesportiva', 'R. Pascal, 1028 - Campo Belo', 20, NULL, 'Santo Amaro ', -23.6208934, -46.671842, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6208934, -- Use merged value
    longitude = -46.671842, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('291', 'EMEF - Joaquim Candido de Azevedo Marques, Des.', 'Readequação em Quadra Poliesportiva', 'R. da Paz, 1387 - Chácara Santo Antônio', 20, NULL, 'Santo Amaro ', -23.6294132, -46.7020178, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6294132, -- Use merged value
    longitude = -46.7020178, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('292', 'EMEF - Manoel Carlos de Figueiredo Ferraz, Desemb.', 'Readequação em Quadra Poliesportiva', 'R. Professor Correa Brito, 355 - Jardim Pedreira', 20, NULL, 'Cidade Ademar ', -23.6914666, -46.6656256, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6914666, -- Use merged value
    longitude = -46.6656256, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('293', 'EMEF - João de Souza Ferraz, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Rafael Correia Sampaio, 291 - Jardim Palmares', 20, NULL, 'Santo Amaro ', -23.6894218, -46.6755891, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6894218, -- Use merged value
    longitude = -46.6755891, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('294', 'EMEF  - Carlos Augusto de Queiroz Rocha', 'Readequação em Quadra Poliesportiva', 'Av. Santo Afonso, 775 - Jardim Miriam', 20, NULL, 'Cidade Ademar ', -23.6815414, -46.6449163, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6815414, -- Use merged value
    longitude = -46.6449163, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('295', 'EMEF - Amélia Rodrigues de Oliveira, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. dos Borôs, 02 - Vila Guacuri', 20, NULL, 'Cidade Ademar ', -23.6978499, -46.6313751, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6978499, -- Use merged value
    longitude = -46.6313751, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('296', 'EMEI - Pedreira I', 'Readequação em Quadra Poliesportiva', 'R. Coronel Antônio Inojosa, 770 - Jardim Pedreira', 20, NULL, 'Cidade Ademar ', -23.6961385, -46.6673089, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6961385, -- Use merged value
    longitude = -46.6673089, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('297', 'EMEI - Borba Gato', 'Readequação em Quadra Poliesportiva', 'R. Paulo Eiró, 567 - Santo amaro', 20, NULL, 'Santo Amaro ', -23.6501987, -46.708178, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6501987, -- Use merged value
    longitude = -46.708178, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('298', 'EMEI - Doraci dos Santos Ramos, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. São Valfredo, S/N - Chácara Santa Etelvina', 20, NULL, 'Cidade Tiradentes ', -23.5867156, -46.4055591, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5867156, -- Use merged value
    longitude = -46.4055591, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('299', 'EMEI - Eduardo Kneese de Mello, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Nascer do Sol, 1605 - Conj. Hab. Santa Etelvina II', 20, NULL, 'Cidade Tiradentes ', -23.5938676, -46.4143616, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5938676, -- Use merged value
    longitude = -46.4143616, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('300', 'EMEF - Maria Aparecida do Nascimento, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Edson Danilo Dotto, 700 - Conj. Hab. S. Etelvina II', 20, NULL, 'Cidade Tiradentes ', -23.5930601, -46.4134362, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5930601, -- Use merged value
    longitude = -46.4134362, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('301', 'EMEI - Fulvia Rosemberg, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Moacir Gomes de Almeida, 26 - Vila Paulista', 20, NULL, 'Cidade Tiradentes ', -23.5785817, -46.4052357, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5785817, -- Use merged value
    longitude = -46.4052357, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('302', 'CEU EMEF - Conceição Aparecida de Jesus, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Ernesto souza Cruz, 2171 - Cid. Ant. Est. Carvalho', 20, NULL, 'Itaquera ', -23.5214415, -46.4568202, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5214415, -- Use merged value
    longitude = -46.4568202, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('303', 'EMEF - Eduardo Prado', 'Readequação em Quadra Poliesportiva', 'R. Bento Teixeira, 100 - Jd. Brasilia', 20, NULL, 'Itaquera ', -23.5636784, -46.4927264, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5636784, -- Use merged value
    longitude = -46.4927264, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('304', 'EMEI - Pedro Chaves, Min.', 'Readequação em Quadra Poliesportiva', 'R. Isabel Urbina, 149 - Jd. Bonifácio', 20, NULL, 'Itaquera ', -23.5466703, -46.4377153, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466703, -- Use merged value
    longitude = -46.4377153, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('305', 'EMEI - Piratininga', 'Readequação em Quadra Poliesportiva', 'R. Galeandra, 149 - Jd. Eliane', 20, NULL, 'Itaquera ', -23.5510349, -46.5035163, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5510349, -- Use merged value
    longitude = -46.5035163, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('306', 'EMEF - Francisco Alves  Mendes Filho', 'Readequação em Quadra Poliesportiva', 'R. Quintino da Cunha, 22 - Jd. Marília', 20, NULL, 'Itaquera ', -23.5619076, -46.4956958, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5619076, -- Use merged value
    longitude = -46.4956958, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('307', 'CEU / EMEF - Paulo Gomes Cardim, Prof. Dr.', 'Readequação em Quadra Poliesportiva', 'Av. Olga Fadel Abarca, S/N - Jd. Santa Teresinha', 20, NULL, 'Itaquera ', -23.573717, -46.5022499, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.573717, -- Use merged value
    longitude = -46.5022499, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('308', 'EMEI - Florinda Roberto Queiroz de Castro', 'Readequação em Quadra Poliesportiva', 'R. Lincon Junqueira, 100 - Jd. São Pedro', 20, NULL, 'Itaquera ', -23.5473238, -46.4303763, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5473238, -- Use merged value
    longitude = -46.4303763, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('309', 'EMEI - Olandya Peres Ribeiro, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Mariano Cursino de Moura, 395 - Pq. Maria Luiza', 20, NULL, 'Aricanduva ', -23.5581312, -46.5162197, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5581312, -- Use merged value
    longitude = -46.5162197, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('310', 'EMEF - José Querino Ribeiro', 'Readequação em Quadra Poliesportiva', 'R. Cel. Albert de Rochas D''aiglum, 50 - V. Aricanduva', 20, NULL, 'Itaquera ', -23.5688792, -46.4817144, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5688792, -- Use merged value
    longitude = -46.4817144, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('311', 'EMEF - Gilmar Taccola, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Lutécia, 1730 - Vila Santa Isabel', 20, NULL, 'Aricanduva ', -23.5582846, -46.5417929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5582846, -- Use merged value
    longitude = -46.5417929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('312', 'CEU / EMEF - Rosangela Rodrigues Vieira, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Luiz Imparato, 564 - Parque Cisper', 20, NULL, 'Penha ', -23.499031, -46.4962695, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.499031, -- Use merged value
    longitude = -46.4962695, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('313', 'CEU / EMEF - Antonio Carlos Rocha, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Condessa Elizabeth de Robiano, S/N - V. Moreira', 20, NULL, 'Penha ', -23.51723, -46.553564, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51723, -- Use merged value
    longitude = -46.553564, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('314', 'EMEI - Leonor Mendes de Barros, Da.', 'Readequação em Quadra Poliesportiva', 'Praça José Luz, 108 - Cidade Vargas', 20, NULL, 'Jabaquara ', -23.646167, -46.6370255, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.646167, -- Use merged value
    longitude = -46.6370255, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('315', 'EMEI - Isa Silveira Leal', 'Readequação em Quadra Poliesportiva', 'R. Joaquim Alves Diniz, 912 - Vila São Francisco', 20, NULL, 'Ermelino Matarazzo ', -23.5216196, -46.4917469, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5216196, -- Use merged value
    longitude = -46.4917469, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('316', 'EMEF - Emilio Ribas', 'Readequação em Quadra Poliesportiva', 'R. José Joaquim, 302 - Jardim  Amaro', 20, NULL, 'Sapopemba', -23.6013985, -46.5170517, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6013985, -- Use merged value
    longitude = -46.5170517, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('317', 'EMEF - Jardim das Laranjeiras', 'Readequação em Quadra Poliesportiva', 'R. Luisa Sarazim, 139 - Jd. Bandeirante', 20, NULL, 'São Mateus ', -23.6050949, -46.4355133, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6050949, -- Use merged value
    longitude = -46.4355133, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('318', 'EMEF - Martin Luther King Jr.', 'Readequação em Quadra Poliesportiva', 'Av. do Progresso, 100 - Marilu', 20, NULL, 'São Mateus ', -23.5951, -46.4192217, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5951, -- Use merged value
    longitude = -46.4192217, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('319', 'EMEF - Henrique Melega, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Chiquinha Gonzaga, 349 - Vila Primavera', 20, NULL, 'Sapopemba', -23.5898136, -46.526078, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5898136, -- Use merged value
    longitude = -46.526078, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('320', 'EMEF - Maria Imilda do Santíssimo Sacramento, Me.', 'Readequação em Quadra Poliesportiva', 'R. Gendiroba, 210 - Jd. Miragaia', 20, NULL, 'Itaim Paulista ', -23.4964394, -46.4194133, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4964394, -- Use merged value
    longitude = -46.4194133, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('321', 'EMEF - Jardim Silva Teles', 'Readequação em Quadra Poliesportiva', 'R. Fred Astaire, 167 - Jd. Silva Teles', 20, NULL, 'Itaim Paulista ', -23.501, -46.4075304, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.501, -- Use merged value
    longitude = -46.4075304, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('322', 'EMEF - Fernando de Azevedo, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Taperá, 415 - Vila Nova Curuçá', 20, NULL, 'Itaim Paulista ', -23.5204716, -46.421849, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5204716, -- Use merged value
    longitude = -46.421849, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('323', 'EMEI - Bernardino Pimentel Mendes, Dr.', 'Readequação em Quadra Poliesportiva', 'Av. Inajar de souza, 6955 - Jd. Dos Francos', 20, NULL, 'Freguesia / Brasilândia', -23.4515461, -46.6749372, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4515461, -- Use merged value
    longitude = -46.6749372, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('324', 'EMEI - Nelson Mandela', 'Readequação em Quadra Poliesportiva', 'Av. Prof. Celestino Bourrol, 358 - Jd. Pereira Leite', 20, NULL, 'Casa Verde ', -23.5105358, -46.6730092, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5105358, -- Use merged value
    longitude = -46.6730092, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('325', 'EMEF - João Amos Comenius', 'Readequação em Quadra Poliesportiva', 'R. Ibiraiaras, 400 - Jd. Vista Alegre', 20, NULL, 'Freguesia / Brasilândia', -23.4505655, -46.6880923, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4505655, -- Use merged value
    longitude = -46.6880923, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('326', 'EMEI - Eduardo Gomes, Brig.', 'Readequação em Quadra Poliesportiva', 'R. Santa Eudóxia, 800 - Parque Peruche', 20, NULL, 'Casa Verde ', -23.4969879, -46.65624, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4969879, -- Use merged value
    longitude = -46.65624, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('327', 'EMEI - Manoel Preto', 'Readequação em Quadra Poliesportiva', 'R. Bonifácio Cubas, 356 - Vila Albertina', 20, NULL, 'Freguesia / Brasilândia', -23.500093, -46.694128, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.500093, -- Use merged value
    longitude = -46.694128, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('328', 'EMEF - Neir Augusto Lopes, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Jorn. Octávio Ribeiro - Pena Branca, 20 - V. Bela Vis.', 20, NULL, 'Casa Verde ', -23.4645264, -46.6597372, FALSE, NULL, NULL)
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
VALUES ('329', 'EMEF - Raul Fernandes, Emb.', 'Readequação em Quadra Poliesportiva', 'R. Nair Ramos Schuring, 158 - Vila Brasilândia', 20, NULL, 'Freguesia / Brasilândia', -23.4691028, -46.6904596, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4691028, -- Use merged value
    longitude = -46.6904596, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('330', 'EMEF - Dilermando Dias dos Santos', 'Readequação em Quadra Poliesportiva', 'R. Paulo Franco, 815 - Vila Hamburguesa', 20, NULL, 'Lapa ', -23.5357856, -46.7239681, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5357856, -- Use merged value
    longitude = -46.7239681, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('331', 'EMEI - Noemia Ippolito', 'Readequação em Quadra Poliesportiva', 'Praça Alfredo Weiszflog, S/N - Vila Romana', 20, NULL, 'Lapa ', -23.5281501, -46.6949367, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5281501, -- Use merged value
    longitude = -46.6949367, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('332', 'EMEI - Recanto dos Humildes I', 'Readequação em Quadra Poliesportiva', 'R. Recanto dos Humildes, S/N - Conj. Hab. Rec. Hum.', 20, NULL, 'Perus ', -23.4117924, -46.7505208, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4117924, -- Use merged value
    longitude = -46.7505208, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('333', 'EMEI - Alice Feitosa, Da.', 'Readequação em Quadra Poliesportiva', 'R. Tarcon, 253 - Jd. Adelfiore', 20, NULL, 'Perus ', -23.4096914, -46.7396814, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4096914, -- Use merged value
    longitude = -46.7396814, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('334', 'EMEF - Estação Jaraguá', 'Readequação em Quadra Poliesportiva', 'R. João Aires, S/N - Jd. Bandeirantes', 20, NULL, 'Pirituba / Jaraguá', -23.4559529, -46.7373331, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4559529, -- Use merged value
    longitude = -46.7373331, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('335', 'EMEF - Edgard Carone', 'Readequação em Quadra Poliesportiva', 'R. Elisa Dina, 293 - Jd. Britânia', 20, NULL, 'Perus ', -23.4338404, -46.7911644, FALSE, NULL, NULL)
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
VALUES ('336', 'EMEI - Eunice dos Santos, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Silvino de Godoy, 185 - Jd. Cidade Pirituba', 20, NULL, 'Pirituba / Jaraguá', -23.4797773, -46.7194776, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4797773, -- Use merged value
    longitude = -46.7194776, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('337', 'EMEF - José Kauffmann, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Samuel Bovy, 23 - Jd. Rincão', 20, NULL, 'Pirituba / Jaraguá', -23.4392136, -46.7318615, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4392136, -- Use merged value
    longitude = -46.7318615, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('338', 'EMEF - Fernando Gracioso', 'Readequação em Quadra Poliesportiva', 'R. Silverânia, S/N - Jardim Russo', 20, NULL, 'Perus ', -23.4091203, -46.7620564, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4091203, -- Use merged value
    longitude = -46.7620564, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('339', 'EMEF - Antônio Rodrigues de Campos, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Principe, 38 - Jd. Shangrila', 20, NULL, 'Pirituba / Jaraguá', -23.4285587, -46.7288492, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4285587, -- Use merged value
    longitude = -46.7288492, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('340', 'EMEI - Oliveira Lima', 'Readequação em Quadra Poliesportiva', 'R. Antonio Maia, 476 - Vila Perus', 20, NULL, 'Perus ', -23.4080244, -46.75346, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4080244, -- Use merged value
    longitude = -46.75346, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('341', 'EMEI - Vila ema', 'Readequação em Quadra Poliesportiva', 'R. Antonio Pires de Campos, 98 - Vila Ema', 20, NULL, 'Vila Prudente ', -23.5925222, -46.5387365, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5925222, -- Use merged value
    longitude = -46.5387365, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('342', 'CEU / EMEI - Jaçanã', 'Readequação em Quadra Poliesportiva', 'R. Francisca Espósito Tonetti, 105 - Guapira', 20, NULL, 'Jaçanã / Tremembé', -23.4573769, -46.5838452, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4573769, -- Use merged value
    longitude = -46.5838452, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('343', 'CEU / EMEF - Jaçanã', 'Readequação em Quadra Poliesportiva', 'R. Francisca Espósito Tonetti, 105 - Guapira', 20, NULL, 'Jaçanã / Tremembé', -23.4573769, -46.5838452, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4573769, -- Use merged value
    longitude = -46.5838452, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('344', 'EMEI - Eduardo Carlos Pereira', 'Readequação em Quadra Poliesportiva', 'R. André Fonseca, 40 - Vila Maria Alta', 20, NULL, 'Vila Maria / Vila Guilherme', -23.500074, -46.5907583, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.500074, -- Use merged value
    longitude = -46.5907583, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('345', 'EMEI - Ana Neri', 'Readequação em Quadra Poliesportiva', 'R. soldado Albino Cesar, 25 - Parque Novo Mundo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5217132, -46.5662608, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5217132, -- Use merged value
    longitude = -46.5662608, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('346', 'EMEI - Pedro Álvares Cabral Moraes, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Leonor Fernandes C. Zacharias, 2150 - V. Guilherme', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5211863, -46.6075865, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5211863, -- Use merged value
    longitude = -46.6075865, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('347', 'EMEI - Italo Bettarello, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Júlio Buono, 2680 - Vila Gustavo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4800762, -46.5845256, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4800762, -- Use merged value
    longitude = -46.5845256, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('348', 'EMEI - Laura Funfas Le Sueur, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Júlio Buono, 915 - Vila Gustavo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4905635, -46.5962384, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4905635, -- Use merged value
    longitude = -46.5962384, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('349', 'EMEF - Othelo Franco, Gen.', 'Readequação em Quadra Poliesportiva', 'R. Jarinu, 730 - Tatuapé', 20, NULL, 'Mooca ', -23.5468424, -46.5752755, FALSE, NULL, NULL)
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
VALUES ('350', 'EMEF - Maria Antonieta D''Alkimin Basto', 'Readequação em Quadra Poliesportiva', 'R. Casa do Ator, 207 - Vila Olímpia', 20, NULL, 'Pinheiros ', -23.6004582, -46.6758302, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6004582, -- Use merged value
    longitude = -46.6758302, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('351', 'EMEF - Faria Lima, Brig.', 'Readequação em Quadra Poliesportiva', 'R. Ametista, 50 - Aclimação', 20, NULL, 'SÉ', -23.5767562, -46.6296596, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5767562, -- Use merged value
    longitude = -46.6296596, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('352', 'EMEF - Celso Leite Ribeiro Filho', 'Readequação em Quadra Poliesportiva', 'R. Humaitá, 480 - Bela Vista', 20, NULL, 'SÉ', -23.5572228, -46.6417359, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5572228, -- Use merged value
    longitude = -46.6417359, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('353', 'EMEI - João Theodoro', 'Readequação em Quadra Poliesportiva', 'R. Ribeiro de Lima, 230 - Bom Retiro', 20, NULL, 'SÉ', -23.5323101, -46.6351558, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5323101, -- Use merged value
    longitude = -46.6351558, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('354', 'EMEI - Feijó, Reg.', 'Readequação em Quadra Poliesportiva', 'Av. Lacerda Franco, 795 - Cambuci', 20, NULL, 'SÉ', -23.5697249, -46.6233844, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5697249, -- Use merged value
    longitude = -46.6233844, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('355', 'EMEI - Anita Costa, Da.', 'Readequação em Quadra Poliesportiva', 'Alameda dos Jurupis, 254 - Indianópolis', 20, NULL, 'Vila Mariana ', -23.6020139, -46.6580306, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6020139, -- Use merged value
    longitude = -46.6580306, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('356', 'EMEI - Celso Ferreira da Silva, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Pietro Mongini, 15 - Vila Missionária', 20, NULL, 'Cidade Ademar ', -23.6892362, -46.6487729, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6892362, -- Use merged value
    longitude = -46.6487729, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('357', 'CEU / EMEF - Cesar Arruda Castanho, Dep.', 'Readequação em Quadra Poliesportiva', 'R. Nazir Miguel, 849 - Jd. Paulo VI', 20, NULL, 'Butantã ', -23.600713, -46.7890422, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.600713, -- Use merged value
    longitude = -46.7890422, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('358', 'EMEI - Olga Calil Menah, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Uratinga, 66 - Vila Palmeiras', 20, NULL, 'Pirituba / Jaraguá', -23.4945351, -46.7136277, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4945351, -- Use merged value
    longitude = -46.7136277, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('359', 'EMEF - Lilian Maso', 'Readequação em Quadra Poliesportiva', 'R. Encruzilhada do Sul, 1005 - Jd. Paulistano', 20, NULL, 'Freguesia / Brasilândia', -23.4619162, -46.709894, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4619162, -- Use merged value
    longitude = -46.709894, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('360', 'CEU - Jaguaré', 'Readequação em Quadra Poliesportiva', 'Av. Kenkiti Simomoto, 80 - Jaguaré', 20, NULL, 'Lapa ', -23.5502967, -46.7417386, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5502967, -- Use merged value
    longitude = -46.7417386, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('361', 'CEU - Três Pontes', 'Readequação em Quadra Poliesportiva', 'R. Capachós, S/N  - Jd. Célia', 20, NULL, 'São Miguel Paulista ', -23.4800823, -46.3810473, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4800823, -- Use merged value
    longitude = -46.3810473, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('362', 'CEU - Formosa', 'Readequação em Quadra Poliesportiva', 'R. Srg. Claudiner Evaristo Dias, 10 - Parque S. Antonio', 20, NULL, 'Aricanduva ', -23.5803519, -46.5237837, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5803519, -- Use merged value
    longitude = -46.5237837, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('363', 'EMEF - Dias Gomes', 'Readequação em Quadra Poliesportiva', 'R. Aléssio Prati, 42 - Vila Iolanda', 20, NULL, 'Guaianazes ', -23.5442554, -46.3908932, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5442554, -- Use merged value
    longitude = -46.3908932, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('364', 'CEU - Tiquatira', 'Readequação em Quadra Poliesportiva', 'Av. Condessa Elizabeth de Robiano, S/N - V. Moreira', 20, NULL, 'Penha ', -23.517633, -46.554552, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517633, -- Use merged value
    longitude = -46.554552, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('365', 'CEU - São Rafael', 'Readequação em Quadra Poliesportiva', 'R. Cinira Polônio, 100 - conj. Promorar Rio Claro', 20, NULL, 'São Mateus ', -23.6203367, -46.4563965, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6203367, -- Use merged value
    longitude = -46.4563965, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('366', 'CEU - Azul da Cor do Mar (Antigo - CEU EMEF - Conceição Aparecida de Jesus, Prof.ª)', 'Readequação em Quadra Poliesportiva', 'Av. Ernesto Souza Cruz, 2171 - Cid. Ant. Est. Carvalho', 20, NULL, 'Itaquera ', -23.5214415, -46.4568202, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5214415, -- Use merged value
    longitude = -46.4568202, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('367', 'CEU - Lajeado', 'Readequação em Quadra Poliesportiva', 'R. Manuel da Mota Coutinho, 293 - Lageado', 20, NULL, 'Guaianazes ', -23.5443856, -46.4004218, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5443856, -- Use merged value
    longitude = -46.4004218, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('368', 'Pontilhão Rua Giovanni Boccati', 'Obra de Manutenção da OAE', 'Pontilhão entre as Rua João de Almada X Rua Giovanni Bocatti entre São Paulo e Taboão da Serra', 16, NULL, 'Campo Limpo ', -23.625717, -46.768509, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.625717, -- Use merged value
    longitude = -46.768509, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('369', 'Pontilhão na Rua Bernardino D''Áuria', 'Obra de Manutenção da OAE', 'Rua Bernardino D''Auria sobre o Córrego Tremembé - Parque Palmas do Tremembé.', 16, NULL, 'Jaçanã / Tremembé', -23.4589642, -46.6054892, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4589642, -- Use merged value
    longitude = -46.6054892, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('370', 'EMEI - Pedro I, D. (não utilizar)', 'Readequação em Quadra Poliesportiva', 'Praça Nami Jafet, 305', 20, NULL, 'Ipiranga ', -23.5807003, -46.6050531, FALSE, NULL, NULL)
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
VALUES ('371', 'CEU AT COM - Parelheiros - Eneida Palma Leite, Profª', 'Readequação em Quadra Poliesportiva', 'Rua José Pedro de Borba, 20 - Jardim Novo Parelheiros', 20, NULL, 'Parelheiros ', -23.8284719, -46.7241212, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8284719, -- Use merged value
    longitude = -46.7241212, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('372', 'Monumento à Independência e Casa do Grito', 'Obra de reforma e conservação do Monumento à Independência e Casa do Grito', 'Parque da Independência, Av. Nazaré, s/n', 24, NULL, 'Ipiranga ', -23.5841629, -46.6098273, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5841629, -- Use merged value
    longitude = -46.6098273, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('374', 'EMEI - José Roschel Christi - Juca Rocha', 'Readequação Predial', 'Rua Gentil Schunck Roschel, 79 - Jardim Novo Parelheiros.', 20, NULL, 'Parelheiros ', -23.8287584, -46.7273008, FALSE, NULL, NULL)
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
VALUES ('375', 'CEI DIRETO - Jardim Três Corações', 'Readequação Predial', 'Avenida Carlos Alberto Bastos Machado, 65 - Jardim Myrna.', 20, NULL, 'Capela do Socorro ', -23.7690665, -46.6955625, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7690665, -- Use merged value
    longitude = -46.6955625, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('376', 'CEI DIRETO - Jardim Somara', 'Readequação Predial', 'Rua Antonio Felipe Filho, 35 - Jardim Somara.', 20, NULL, 'Capela do Socorro ', -23.7487345, -46.6911725, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7487345, -- Use merged value
    longitude = -46.6911725, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('377', 'EMEF - Jardim Sipramar', 'Readequação Predial', 'Rua Júlio Gadda, 157', 20, NULL, 'Capela do Socorro ', -23.7487301, -46.6694872, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7487301, -- Use merged value
    longitude = -46.6694872, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('378', 'EMEI - Aurélio Buarque de H. Ferreira', 'Readequação Predial', 'Rua Doutor Armando Fajardo, 400 - Jardim São Bernardo', 20, NULL, 'Capela do Socorro ', -23.7562069, -46.7023779, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7562069, -- Use merged value
    longitude = -46.7023779, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('379', 'EMEF - Joaquim Bento Alves de Lima Neto', 'Readequação Predial', 'Rua São José Do Rio Preto, 17 Conjunto Habitacional Brigadeiro Faria Lima', 20, NULL, 'Capela do Socorro ', -23.75294, -46.6831272, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.75294, -- Use merged value
    longitude = -46.6831272, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('380', 'CEI DIRETO - José Adriano Marrey Junior, Ver.', 'Readequação Predial', 'Rua Dr. Armando Fajardo, 410.', 20, NULL, 'Capela do Socorro ', -23.7558505, -46.7026461, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7558505, -- Use merged value
    longitude = -46.7026461, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('381', 'EMEI - Parque Brasil', 'Readequação Predial', 'Av. Dona Belmira Marin, 3411.', 20, NULL, 'Capela do Socorro ', -23.7526098, -46.6830175, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7526098, -- Use merged value
    longitude = -46.6830175, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('382', 'EMEF - Plínio Marcos', 'Readequação Predial', 'Rua Belém, S/N - Jardim Papai Noel', 20, NULL, 'Parelheiros ', -23.82626, -46.700574, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.82626, -- Use merged value
    longitude = -46.700574, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('383', 'CEI DIRETO - Vanda Maria Rodrigues Santos', 'Readequação Predial', 'Rua Coronel Arlindo De Oliveira, 136 - Parque Alto Do Rio Bonito', 20, NULL, 'Capela do Socorro ', -23.7251567, -46.6958207, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7251567, -- Use merged value
    longitude = -46.6958207, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('384', 'EMEF  - Jose Olympio Pereira Filho', 'Readequação Predial', 'Travessa Passareira, 200 - Cohab Instituto Adventista', 20, NULL, 'Campo Limpo ', -23.6717442, -46.7846738, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6717442, -- Use merged value
    longitude = -46.7846738, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('385', 'CEI - Jardim São Bento Velho', 'Readequação Predial', 'Rua Batalha Reis, 35 - Jardim São Bento Novo', 20, NULL, 'Campo Limpo ', -23.6823003, -46.7874732, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6823003, -- Use merged value
    longitude = -46.7874732, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('386', 'CEI - Parque Santo Antônio', 'Readequação Predial', 'Rua Rinaldo De Handel, S/N - Chácara Santana.', 20, NULL, 'M´Boi Mirim', -23.6666651, -46.7482181, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6666651, -- Use merged value
    longitude = -46.7482181, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('387', 'EMEI -  Clarice Lispector', 'Readequação Predial', 'Rua Comendador Miguel Maluhy, 159 - Jardim Guaruja.', 20, NULL, 'M´Boi Mirim', -23.6671166, -46.7468859, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6671166, -- Use merged value
    longitude = -46.7468859, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('388', 'EMEF - Jorge Americano, Prof', 'Readequação Predial', 'Avenida Feitico Da Vila, 915 - Chacara Santa Maria.', 20, NULL, 'Campo Limpo ', -23.6869786, -46.7997431, FALSE, NULL, NULL)
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
VALUES ('389', 'EMEF -  Clemente Pastore, Prof', 'Readequação Predial', 'Rua Inacio Parreiras Neves, 17 - Jardim Nakamura.', 20, NULL, 'M´Boi Mirim', -23.698012, -46.7733625, FALSE, NULL, NULL)
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
VALUES ('390', 'CEI -  Irene Irapiranga', 'Readequação Predial', 'Rua Bicci Di Lorenzo, 100.', 20, NULL, 'Campo Limpo ', -23.6597476, -46.7941047, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6597476, -- Use merged value
    longitude = -46.7941047, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('391', 'CEI - Jardim Capela', 'Readequação Predial', 'Rua José Roberto Sales, 100 - Jardim Capela.', 20, NULL, 'M´Boi Mirim', -23.7292908, -46.7871377, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7292908, -- Use merged value
    longitude = -46.7871377, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('392', 'CEMEI - Parque do Lago', 'Readequação Predial', 'Rua Dos Xamborés, 1010 - Parque Do Lago.', 20, NULL, 'M´Boi Mirim', -23.7109882, -46.7746051, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7109882, -- Use merged value
    longitude = -46.7746051, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('393', 'EMEF -  Iracema Marques Da Silveira, Prof', 'Readequação Predial', 'Avenida Dom Rodrigo Sanches, 672 - Parque Do Engenho.', 20, NULL, 'Campo Limpo ', -23.6605128, -46.785871, FALSE, NULL, NULL)
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
VALUES ('394', 'EMEI -  Angenor de Oliveira Cartola', 'Readequação Predial', 'Rua Mario Totta, 100 - Parque Independencia.', 20, NULL, 'M´Boi Mirim', -23.6856656, -46.7904962, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6856656, -- Use merged value
    longitude = -46.7904962, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('395', 'CEI INDIRETO - Jardim Arpoador', 'Readequação Predial', 'Av. Gen. Asdrúbal Da Cunha, 1303.', 20, NULL, 'Butantã ', -23.5966076, -46.7869439, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5966076, -- Use merged value
    longitude = -46.7869439, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('396', 'CEI - Jardim Das Vertentes', 'Readequação Predial', 'Rua João Corrêa Da Silva, 53.', 20, NULL, 'Butantã ', -23.5908813, -46.7443358, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5908813, -- Use merged value
    longitude = -46.7443358, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('397', 'EMEF - Jardim Paulo Vi', 'Readequação Predial', 'Rua João Corrêa Da Silva, 53.', 20, NULL, 'Butantã ', -23.5908813, -46.7443358, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5908813, -- Use merged value
    longitude = -46.7443358, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('398', 'EMEF - José de Alcântara Machado Filho', 'Readequação Predial', 'Rua Rua Mattia Filizzola, 76 - Real Parque.', 20, NULL, 'Butantã ', -23.6076274, -46.7050997, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6076274, -- Use merged value
    longitude = -46.7050997, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('399', 'EMEF - Jardim Mitsutani I', 'Readequação Predial', 'Travessa Waldemar Cordeiro, 101 - Cohab Monet.', 20, NULL, 'Campo Limpo ', -23.6481856, -46.7899095, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6481856, -- Use merged value
    longitude = -46.7899095, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('400', 'CEI - Parque Regina', 'Readequação Predial', 'Rua Inácio Manuel Tourinho, 101 - Parque Regina.', 20, NULL, 'Campo Limpo ', -23.6339025, -46.7532633, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6339025, -- Use merged value
    longitude = -46.7532633, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('401', 'CEI - Aurindo dos Santos Freire', 'Readequação Predial', 'Rua Cauima, S/N - Vila Andrade.', 20, NULL, 'Campo Limpo ', -23.6264579, -46.7475672, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6264579, -- Use merged value
    longitude = -46.7475672, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('402', 'CEI INDIRETO - Campo Limpo Iv', 'Readequação Predial', 'Rua Antônio Antunes, 215.', 20, NULL, 'Campo Limpo ', -23.6373046, -46.7726031, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6373046, -- Use merged value
    longitude = -46.7726031, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('403', 'CEI INDIRETO - Jardim Monte Azul', 'Readequação Predial', ' Av. Tomás De Sousa, 874.', 20, NULL, 'M´Boi Mirim', -23.6456575, -46.7367301, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6456575, -- Use merged value
    longitude = -46.7367301, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('404', 'CEI - Olga Benário Prestes', 'Readequação Predial', 'Rua Aroldo De Azevedo, 60 - Jardim Bom Refúgio.', 20, NULL, 'Campo Limpo ', -23.633154, -46.7760794, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.633154, -- Use merged value
    longitude = -46.7760794, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('405', 'EMEI - Ignácio Henrique Romeiro', 'Readequação Predial', 'Alameda Jauaperi, 1639 - Indianópolis.', 20, NULL, 'Vila Mariana ', -23.6096601, -46.6714348, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6096601, -- Use merged value
    longitude = -46.6714348, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('406', 'EMEI - Lucy Garcia Salgado, Profª', 'Readequação Predial', 'Alameda Dos Guaramomis, 1410 - Planalto Paulista.', 20, NULL, 'Vila Mariana ', -23.6163819, -46.6624643, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6163819, -- Use merged value
    longitude = -46.6624643, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('407', 'EMEF - de Gaulle, Gen.', 'Readequação Predial', 'Rua Mourisca, 16 - Jardim Ibirapuera.', 20, NULL, 'M´Boi Mirim', -23.6578578, -46.7312684, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6578578, -- Use merged value
    longitude = -46.7312684, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('408', 'EMEI - Viriato Correia', 'Readequação Predial', 'Rua Bento Rodrigues Bastos, 25 - Vila Friburgo.', 20, NULL, 'Capela do Socorro ', -23.6908878, -46.7018636, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6908878, -- Use merged value
    longitude = -46.7018636, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('409', 'EMEI - Compositor Silvio Caldas', 'Readequação Predial', 'Rua Andre Pujos, S/N - Jardim Celeste.', 20, NULL, 'Ipiranga ', -23.6584803, -46.6131704, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6584803, -- Use merged value
    longitude = -46.6131704, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('410', 'CEI - Francisco Perez, Ver.', 'Readequação Predial', 'Rua Jacape, 148 - Vila Agua Funda.', 20, NULL, 'Ipiranga ', -23.636141, -46.628632, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.636141, -- Use merged value
    longitude = -46.628632, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('411', 'CEI IND - Frei Sérgio Calixto Val Verde', 'Readequação Predial', 'Rua Cancao De Exilio, 175 - Jd Sao Saverio.', 20, NULL, 'Ipiranga ', -23.6526303, -46.6105349, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6526303, -- Use merged value
    longitude = -46.6105349, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('412', 'EMEI - Fátima Regina Da Cruz Sabino Calaça, Profª', 'Readequação Predial', 'Rua Mario Quintana, 15 - Jardim Sao Saverio.', 20, NULL, 'Ipiranga ', -23.6539933, -46.6098936, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6539933, -- Use merged value
    longitude = -46.6098936, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('413', 'EMEF - Roberto Plínio Colacioppo, Prof', 'Readequação Predial', 'Rua Atílio Selva, 16 - Jardim Celeste.', 20, NULL, 'Ipiranga ', -23.6577235, -46.6136245, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6577235, -- Use merged value
    longitude = -46.6136245, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('414', 'CEI IND - Marta Conovalov Vaelatti, Profª', 'Readequação Predial', 'Rua Líra Dos Verdes Anos, 145.', 20, NULL, 'Ipiranga ', -23.6526695, -46.6129521, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6526695, -- Use merged value
    longitude = -46.6129521, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('415', 'CEI - Vila Missionária', 'Readequação Predial', 'Rua Pietro Mongini, S/N - Vila Missionaria.', 20, NULL, 'Cidade Ademar ', -23.6890746, -46.6488352, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6890746, -- Use merged value
    longitude = -46.6488352, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('416', 'EMEI - Neusa Maria Rossi', 'Readequação Predial', 'Rua Lucrecia Maciel, 40 - Vila Guarani.', 20, NULL, 'Jabaquara ', -23.6342797, -46.6364567, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6342797, -- Use merged value
    longitude = -46.6364567, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('417', 'CEU EMEI - Luciana Azevedo Pompermayer, Profª', 'Readequação Predial', 'Rua Prof. Artur Primavesi.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952, -- Use merged value
    longitude = -46.608619, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('418', 'CEU EMEF - Maria Cristina Tartaglia Sena, Profª', 'Readequação Predial', 'Rua Prof. Artur Primavesi, S/N.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952, -- Use merged value
    longitude = -46.608619, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('419', 'CEI - Jardim Clímax Ii', 'Readequação Predial', 'Rua Celestino Vidal, S/N.', 20, NULL, 'Ipiranga ', -23.6429724, -46.6016931, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6429724, -- Use merged value
    longitude = -46.6016931, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('420', 'CEI - Inês Menezes Maria', 'Readequação Predial', 'Rua Isabel De Góis, 10.', 20, NULL, 'Ipiranga ', -23.6363439, -46.6100451, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6363439, -- Use merged value
    longitude = -46.6100451, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('421', 'CEI - Assistente Social Vicentina Velasco', 'Readequação Predial', 'Tv. Castro Prado, 39', 20, NULL, 'Ipiranga ', -23.649473, -46.605505, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.649473, -- Use merged value
    longitude = -46.605505, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('422', 'EMEF - Cassiano Ricardo', 'Readequação Predial', 'Rua João José Da Silva, 422.', 20, NULL, 'Ipiranga ', -23.6487325, -46.6042432, FALSE, NULL, NULL)
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
VALUES ('423', 'EMEF - Hercília de Campos Costa', 'Readequação Predial', 'Rua José Pereira Cruz, 95.', 20, NULL, 'Ipiranga ', -23.6489098, -46.6051285, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6489098, -- Use merged value
    longitude = -46.6051285, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('424', 'CEI IND - Jardim Clímax I', 'Readequação Predial', 'Rua Francisco Pestana, 164.', 20, NULL, 'Ipiranga ', -23.6385273, -46.6045163, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6385273, -- Use merged value
    longitude = -46.6045163, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('425', 'EMEF - José do Patrocínio', 'Readequação Predial', 'Rua Cantiga Ingênua, 64.', 20, NULL, 'Ipiranga ', -23.6475828, -46.5989515, FALSE, NULL, NULL)
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
VALUES ('427', 'CEU - Parque Bristol', 'Readequação Predial', 'Rua Professor Artur Primavesi, S/N°.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952, -- Use merged value
    longitude = -46.608619, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('428', 'CEI - Santa Teresa', 'Readequação Predial', 'Rua Cláudio Ferreira Manoel, 140. Vila Santa Teresazona Sul.', 20, NULL, 'Ipiranga ', -23.6473049, -46.5946535, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6473049, -- Use merged value
    longitude = -46.5946535, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('429', 'CEI - Jardim Guarani', 'Readequação Predial', 'Rua Santana Do Araçuaí, 168.', 20, NULL, 'Freguesia / Brasilândia', -23.4624218, -46.6907951, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4624218, -- Use merged value
    longitude = -46.6907951, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('430', 'CEI - Vila Brasilândia', 'Readequação Predial', 'Rua Domingos Vega, 500.', 20, NULL, 'Freguesia / Brasilândia', -23.4635219, -46.7010797, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4635219, -- Use merged value
    longitude = -46.7010797, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('431', 'EMEF - Castro Alves', 'Readequação Predial', 'Rua Agenor Alves Meira, 285.', 20, NULL, 'Freguesia / Brasilândia', -23.4594173, -46.677608, FALSE, NULL, NULL)
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
VALUES ('432', 'CEI - Jardim Damasceno II', 'Readequação Predial', 'Rua Eliseu Reinaldo Moraes Vieira.', 20, NULL, 'Freguesia / Brasilândia', -23.4460226, -46.7036023, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4460226, -- Use merged value
    longitude = -46.7036023, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('433', 'EMEI - Rosa E Carolina Agazzi', 'Readequação Predial', 'Rua Dr. Araújo Castro, S/N.', 20, NULL, 'Casa Verde ', -23.4614658, -46.6634046, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4614658, -- Use merged value
    longitude = -46.6634046, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('434', 'CEI - Jardim Guairaca', 'Readequação Predial', 'Rua Jacitara Tipiti, 217.', 20, NULL, 'Vila Prudente ', -23.6043079, -46.540628, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6043079, -- Use merged value
    longitude = -46.540628, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('435', 'EMEF - Leonel Franca, Pe', 'Readequação Predial', 'Rua Xavier Dos Pássaros, 39.', 20, NULL, 'Pirituba / Jaraguá', -23.438786, -46.728329, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.438786, -- Use merged value
    longitude = -46.728329, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('436', 'EMEF - Júlio de Oliveira', 'Readequação Predial', 'Rua Júlio De Oliveira, 160.', 20, NULL, 'Perus ', -23.4028916, -46.7383861, FALSE, NULL, NULL)
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
VALUES ('437', 'EMEF - Remo Rinaldi Naddeo, Prof', 'Readequação Predial', 'Rua Dionísio Bellante, 487.', 20, NULL, 'Perus ', -23.4325224, -46.7943032, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4325224, -- Use merged value
    longitude = -46.7943032, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('438', 'EMEF - Paulo Prado', 'Readequação Predial', 'Rua Pompeu Bertoni, 80.', 20, NULL, 'Perus ', -23.4299311, -46.7928059, FALSE, NULL, NULL)
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
VALUES ('439', 'EMEF - Milena Benedicto, Profª', 'Readequação Predial', 'Av. Felippo Sturba, 25.', 20, NULL, 'Perus ', -23.4386689, -46.789015, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4386689, -- Use merged value
    longitude = -46.789015, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('440', 'EMEI - Oswaldo Cruz', 'Readequação Predial', 'Rua Carlos Gerolomo Mônaco, 171.', 20, NULL, 'Vila Mariana ', -23.5973805, -46.6232109, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5973805, -- Use merged value
    longitude = -46.6232109, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('441', 'CEMEI - Suzana Campos Tauil (antiga EMEI Sena Madureira)', 'Readequação Predial', ' Rua Loefgren, 1963.', 20, NULL, 'Vila Mariana ', -23.5998865, -46.6450463, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5998865, -- Use merged value
    longitude = -46.6450463, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('442', 'CEI - Eduardo Campos', 'Readequação Predial', 'Rua Dom Bernardo Nogueira, 921.', 20, NULL, 'Ipiranga ', -23.6082, -46.6203319, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6082, -- Use merged value
    longitude = -46.6203319, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('443', 'EMEI - Heitor Villa Lobos', 'Readequação Predial', 'Rua Curitiba, 232.', 20, NULL, 'Vila Mariana ', -23.5819437, -46.6542667, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5819437, -- Use merged value
    longitude = -46.6542667, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('444', 'EMEF - José Maria Lisboa', 'Readequação Predial', 'Praça João Rodrigues, 575.', 20, NULL, 'Ipiranga ', -23.6140265, -46.6129839, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6140265, -- Use merged value
    longitude = -46.6129839, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('445', 'EMEI - Manuel Soares Neiva', 'Readequação Predial', 'Praca Cosmopolita, 9.', 20, NULL, 'Ipiranga ', -23.6039743, -46.6130244, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6039743, -- Use merged value
    longitude = -46.6130244, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('446', 'EMEI - Montese', 'Readequação Predial', 'Rua Domingos De Rogatis, 91.', 20, NULL, 'Ipiranga ', -23.6130487, -46.616873, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6130487, -- Use merged value
    longitude = -46.616873, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('447', 'CEI - Padre Gregório Westrupp', 'Readequação Predial', 'Rua Estado De Israel, 565.', 20, NULL, 'Vila Mariana ', -23.59454, -46.6451664, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59454, -- Use merged value
    longitude = -46.6451664, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('448', 'EMEI - São Paulo', 'Readequação Predial', 'Rua Pedro De Toledo, 1231.', 20, NULL, 'Vila Mariana ', -23.5981869, -46.648377, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5981869, -- Use merged value
    longitude = -46.648377, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;