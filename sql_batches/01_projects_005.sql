INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('242', 'Viaduto do Chá', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto do Chá', 16, NULL, 'SÉ', -23.546748, -46.637723, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546748,
    longitude = -46.637723;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('243', 'Viaduto dos Bandeirantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto dos Bandeirantes', 16, NULL, 'Vila Mariana ', -23.613063, -46.670992, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.613063,
    longitude = -46.670992;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('244', 'Viaduto Santa Efigênia', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Santa Efigênia', 16, NULL, 'SÉ', -23.542767, -46.635463, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542767,
    longitude = -46.635463;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('245', 'Viaduto Santo Amaro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Santo Amaro', 16, NULL, 'Pinheiros ', -23.60855, -46.676617, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.60855,
    longitude = -46.676617;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('246', 'Viaduto Arapuã', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Arapuã', 16, NULL, 'Jabaquara ', -23.630635, -46.645309, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.630635,
    longitude = -46.645309;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('247', 'Viaduto Pacaembu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Pacaembu', 16, NULL, 'SÉ', -23.526181, -46.660649, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.526181,
    longitude = -46.660649;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('248', 'Viaduto Incinerador Vergueiro (Saioá)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Incinerador Vergueiro (Saioá)', 16, NULL, 'Vila Mariana ', -23.595232, -46.621431, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595232,
    longitude = -46.621431;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('249', 'Viaduto Jacarei', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Jacarei', 16, NULL, 'SÉ', -23.551025, -46.640943, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.551025,
    longitude = -46.640943;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('250', 'Viaduto Nove de Julho', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Nove de Julho', 16, NULL, 'SÉ', -23.549675, -46.642321, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.549675,
    longitude = -46.642321;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('251', 'Viaduto Pires do Rio', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Interligação entre a Avenida Alcântara Machado e a Rua Melo Freire, sobre a Avenida Salim Farah Mal', 16, NULL, NULL, -23.542047, -46.580568, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542047,
    longitude = -46.580568;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('257', 'Descomplica Ipiranga', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Breno Ferraz do Amaral, 425', 8, NULL, 'Ipiranga ', -23.5975651, -46.6213179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5975651,
    longitude = -46.6213179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('258', 'Descomplica Lapa', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Guiacurus, 1000', 8, NULL, 'Lapa ', -23.5224163, -46.6957578, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5224163,
    longitude = -46.6957578;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('259', 'Descomplica Freguesia do Ó/Brasilândia', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. João Marcelino Branco, 95', 8, NULL, 'Casa Verde ', -23.4765556, -46.6653286, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4765556,
    longitude = -46.6653286;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('260', 'Calçadão Quadrilátero República', 'Reforma dos pavimentos das calçadas e calçadões, implantação de sinalização turística e ambiental, melhorias no mobiliário urbano e iluminação, drenagem e valas técnicas para Telecom.', 'Rua 7 de abril', 23, NULL, 'SÉ', -23.5461026, -46.6411121, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5461026,
    longitude = -46.6411121;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('261', 'Autódromo de Interlagos - 2021', 'Obras complementares, instalações permanentes e reforma da pista para o GP de Fórmula 1', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7032826, -46.7002859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7032826,
    longitude = -46.7002859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('262', 'Terminal Urbano Itaquera', 'Aproximadamente 55 mil m² de área construída, 55 linhas que transportam 300 mil passageiros por dia.', 'Av. Itaquera entre Terminal Carrão (Av. Rio das Pedras) e R. César Diaz, Av. Líder até R. Manuel Car', 5, NULL, 'Aricanduva ', -23.542126, -46.467326, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.542126,
    longitude = -46.467326;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('263', 'Córrego Água Branca', 'Obras de Drenagem da Bacia do Córrego Água Branca.', 'Rua Venâncio Aires e outras', 1, NULL, 'Lapa ', -23.528082, -46.682114, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528082,
    longitude = -46.682114;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('264', 'Córrego Tanquinho', 'Obra de canalização do córrego com peças pré-moldadas de concreto armado, contemplando posterior revitalização das margens, com plantio e manutenção de mudas (serviços ambientais).', 'Jd. são bernardo', 18, NULL, 'Capela do Socorro ', -23.7584499, -46.7048732, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7584499,
    longitude = -46.7048732;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('265', 'Rua Joaquim Leal e Parque Ecológico Chico Mendes', 'Obra de drenagem, adequação das margens, dragagem e desassoreamento da lagoa e microdrenagem da rua Joaquim Leal e no Parque Ecológico Chico Mendes', 'Prque Ecológico Chico Mendes', 18, NULL, NULL, -23.5068236, -46.429143, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5068236,
    longitude = -46.429143;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('266', 'CTA Prates I  - Complexo Prates', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Prates nº 1101 Lado Direito - Bom Retiro', 19, NULL, 'SÉ', -23.5242207, -46.6345437, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5242207,
    longitude = -46.6345437;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('267', 'CTA Prates II  - Complexo Prates', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Prates nº 1101, Bom Retiro', 19, NULL, 'SÉ', -23.5242207, -46.6345437, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5242207,
    longitude = -46.6345437;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('268', 'CA - Complexo Oficina Boracea', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Dr. Ribeiro de Almeida 14 - Barra Funda', 19, NULL, 'SÉ', -23.524835, -46.6517246, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524835,
    longitude = -46.6517246;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('269', 'Centro Assistencial Butantã', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'butanta', 19, NULL, 'Butantã ', -23.5634872, -46.7210095, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5634872,
    longitude = -46.7210095;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('270', 'CTA Canindé', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'RUA COMENDADOR NESTOR PEREIRA, 77B - MOOCA', 19, NULL, 'SÉ', -23.5250196, -46.6196743, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5250196,
    longitude = -46.6196743;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('271', 'CAE Casa Verde', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Brazelisa Alves de Carvalho 414, Casa Verde', 19, NULL, 'Casa Verde ', -23.512289, -46.6504722, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.512289,
    longitude = -46.6504722;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('272', 'ESPASO - Espaço Público do Aprender Social', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Rua Professor Ascendino Reis 830', 19, NULL, 'Vila Mariana ', -23.5983966, -46.6512318, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5983966,
    longitude = -46.6512318;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('273', 'CTA Santo Amaro', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'Av. Miguel Yunes nº 345 - Santo Amaro', 19, NULL, 'Santo Amaro ', -23.6865899, -46.6892887, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6865899,
    longitude = -46.6892887;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('274', 'CEU / EMEF - Campos Salles, Pres.', 'Readequação em Quadra Poliesportiva', 'Estrada das Lágrimas, 2385 - Cid. Nova Heliópolis', 20, NULL, 'Ipiranga ', -23.6218736, -46.5903965, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6218736,
    longitude = -46.5903965;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('275', 'EMEI - Brenno Ferraz do Amaral', 'Readequação em Quadra Poliesportiva', 'R. Jacitara Tipiti, 217 - Jardim Guairacá', 20, NULL, 'Vila Prudente ', -23.6043079, -46.540628, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6043079,
    longitude = -46.540628;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('276', 'EMEI - Mário Marques e Serra, Pe.', 'Readequação em Quadra Poliesportiva', 'R. Francisco Pestana, 10 - Jardim Maria Estela', 20, NULL, 'Ipiranga ', -23.6372438, -46.6058809, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6372438,
    longitude = -46.6058809;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('277', 'CIEJA - Clóvis Caitano Miquelazzo', 'Readequação em Quadra Poliesportiva', 'R. François Bunel, 250 - Parque Bristol', 20, NULL, 'Ipiranga ', -23.6495812, -46.6102553, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6495812,
    longitude = -46.6102553;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('278', 'EMEF - Marlene Rondelli, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Acácio Caristo, 21 - Bairro - Parque Tomas Saraiva', 20, NULL, 'Vila Prudente ', -23.5813856, -46.5382179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5813856,
    longitude = -46.5382179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('279', 'EMEI - Quinta das Paineiras', 'Readequação em Quadra Poliesportiva', 'Praça Mário Ortiz, S/N - Quinta das Paineiras', 20, NULL, 'Vila Prudente ', -23.5885698, -46.5880437, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5885698,
    longitude = -46.5880437;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('280', 'CEU / EMEF - Meninos', 'Readequação em Quadra Poliesportiva', 'R. Barbinos, 111 - São João Climaco', 20, NULL, 'Ipiranga ', -23.6214207, -46.5843757, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6214207,
    longitude = -46.5843757;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('281', 'EMEF - Maurício Simão', 'Readequação em Quadra Poliesportiva', 'R. Kunito Miyasaka, 54 - Jd. Martinica - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6301649, -46.7687865, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6301649,
    longitude = -46.7687865;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('282', 'EMEF - Maria Rita de Cassia Pinheiros Simões Braga, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Maria Callas, 30 - Parque Ligia - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6591532, -46.7833379, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6591532,
    longitude = -46.7833379;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('283', 'EMEF - 22 de Março', 'Readequação em Quadra Poliesportiva', 'R. Francisco Soares, 51 - Parque Regina-Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6363506, -46.7498706, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6363506,
    longitude = -46.7498706;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('284', 'EMEF - Teresa Margarida da Silva e Orta', 'Readequação em Quadra Poliesportiva', 'R. Eng.º Milton de Alvarenga Peixoto, 20 - Vila Gilda', 20, NULL, 'M´Boi Mirim', -23.7222168, -46.7570686, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7222168,
    longitude = -46.7570686;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('285', 'EMEF - Luiz Tenório de Brito, Cel.', 'Readequação em Quadra Poliesportiva', 'R. Baldomero Carqueja, 278 - Campo Limpo', 20, NULL, 'M´Boi Mirim', -23.6466246, -46.7513845, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6466246,
    longitude = -46.7513845;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('286', 'EMEF - Afrânio de Mello Franco, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Acambaro, 39 - Vila Cliper - Capela do Socorro', 20, NULL, 'Capela do Socorro ', -23.7204504, -46.701714, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7204504,
    longitude = -46.701714;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('287', 'EMEF - Florestan Fernandes, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Margueritte Long, 41 - Jd. Guanabara - C. socorro', 20, NULL, 'Capela do Socorro ', -23.7642081, -46.7125948, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7642081,
    longitude = -46.7125948;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('288', 'EMEF - Aldina Anália Agostinha Taddeo Conde Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Francesco Bartolozzi, 1 - Jd. Icaraí - Cap. do Socorro', 20, NULL, 'Capela do Socorro ', -23.7448618, -46.7045744, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7448618,
    longitude = -46.7045744;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('289', 'EMEF - Habib Carlos Kyrillos, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Rio Grande do Norte, 299 - Americanópolis ', 20, NULL, 'Cidade Ademar ', -23.675088, -46.6460064, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.675088,
    longitude = -46.6460064;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('290', 'EMEF - Chiquinha Rodrigues', 'Readequação em Quadra Poliesportiva', 'R. Pascal, 1028 - Campo Belo', 20, NULL, 'Santo Amaro ', -23.6208934, -46.671842, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6208934,
    longitude = -46.671842;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('291', 'EMEF - Joaquim Candido de Azevedo Marques, Des.', 'Readequação em Quadra Poliesportiva', 'R. da Paz, 1387 - Chácara Santo Antônio', 20, NULL, 'Santo Amaro ', -23.6294132, -46.7020178, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6294132,
    longitude = -46.7020178;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('292', 'EMEF - Manoel Carlos de Figueiredo Ferraz, Desemb.', 'Readequação em Quadra Poliesportiva', 'R. Professor Correa Brito, 355 - Jardim Pedreira', 20, NULL, 'Cidade Ademar ', -23.6914666, -46.6656256, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6914666,
    longitude = -46.6656256;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('293', 'EMEF - João de Souza Ferraz, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Rafael Correia Sampaio, 291 - Jardim Palmares', 20, NULL, 'Santo Amaro ', -23.6894218, -46.6755891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6894218,
    longitude = -46.6755891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('294', 'EMEF  - Carlos Augusto de Queiroz Rocha', 'Readequação em Quadra Poliesportiva', 'Av. Santo Afonso, 775 - Jardim Miriam', 20, NULL, 'Cidade Ademar ', -23.6815414, -46.6449163, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6815414,
    longitude = -46.6449163;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('295', 'EMEF - Amélia Rodrigues de Oliveira, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. dos Borôs, 02 - Vila Guacuri', 20, NULL, 'Cidade Ademar ', -23.6978499, -46.6313751, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6978499,
    longitude = -46.6313751;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('296', 'EMEI - Pedreira I', 'Readequação em Quadra Poliesportiva', 'R. Coronel Antônio Inojosa, 770 - Jardim Pedreira', 20, NULL, 'Cidade Ademar ', -23.6961385, -46.6673089, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6961385,
    longitude = -46.6673089;