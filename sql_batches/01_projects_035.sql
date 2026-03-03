INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2060', 'Ligação Viária em Túnel - Centro - Morumbi', 'LIGAÇÃO EM TÚNEIS DA AV. 23 DE MAIO – FARIA LIMA – MORUMBI AV LINEU DE PAULA', 'Faria Lima', 5, NULL, 'Vila Mariana ', -23.58706, -46.66581, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58706,
    longitude = -46.66581;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2061', 'Requalificação - Santana - Zona Norte', 'Requalificação - Santana - Zona Norte', 'Santana', 5, NULL, 'Santana / Tucuruvi', -23.514228, -46.636662, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.514228,
    longitude = -46.636662;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2062', 'Eixo de Ligação - Hélio Pelegrino - Av. dos Bandeirantes', 'Eixo de Ligação - Hélio Pelegrino - Av. dos Bandeirantes', 'Av. Hélio Pelegrino', 5, NULL, 'Pinheiros ', -23.596743, -46.67959, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.596743,
    longitude = -46.67959;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2063', 'ATA Recuperação Funcional OAE', 'Manutenções Em Lotes', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2064', 'Obras de Reforço Estrutural Fase 4 OAE', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2065', 'Inspeções Especiais Fase 5 (212 UE)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2066', 'Obra Estrutural - 9 OAES - Nota 1', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2067', 'ATA Galerias de Grande Porte', 'ATA Galerias de Grande Porte', 'Rua XV de Novembro, 165', 18, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2068', 'Obras de Recuperação Estrutural 9 Túneis', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2069', 'Pontes que Conectam 12 OAES', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2070', 'OAE - Rotineira / Funcionais - 1272', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2071', '206 OAEs Funcional', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2072', 'Túnel de Ligação - Pirituba / Villa-Lobos', 'Melhorias Viárias', 'Pirituba', 5, NULL, 'Pirituba / Jaraguá', -23.4791158, -46.7418047, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4791158,
    longitude = -46.7418047;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2073', 'Casa Mulher Paulistana', '??', 'Praça da sé - SP', 24, NULL, 'SÉ', -23.5503099, -46.6342009, FALSE)
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
VALUES ('2074', 'Ligação Jabaquara - Zoológico - Vila Santa Luiza', 'Melhorias Viárias', 'Vila Santa Luzia - SP', 5, NULL, 'Jabaquara ', -23.6612844, -46.6102146, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6612844,
    longitude = -46.6102146;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2075', 'Duplicação e Melhorias na Estrada do M''Boi Mirim', 'Melhorias Viárias', 'Estrada M Boi Mirim', 5, NULL, 'M´Boi Mirim', -23.6985032, -46.779409, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6985032,
    longitude = -46.779409;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2076', 'Boulevard Marquês de São Vicente', 'Melhorias Viárias', 'Marques de São Vicente', 5, NULL, 'Lapa ', -23.5191501, -46.6751177, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5191501,
    longitude = -46.6751177;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2077', 'Túnel João Paulo II (Sob o Vale do Anhangabaú)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.547071, -46.637853, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547071,
    longitude = -46.637853;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2079', 'Gestão Ambiental - Empresarial', 'Gestão Ambiental - Empresarial', 'Rua XV de Novembro, 165', 24, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709,
    longitude = -52.3395742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2080', 'Praça Raízes da Pompéia', 'Investigação Ambiental', 'Praça Raízes da Pompéia', 24, NULL, 'Lapa ', -23.525799, -46.682196, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.525799,
    longitude = -46.682196;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2081', 'Av. Tiradentes - Dois Túneis a partir da estação da Luz até a Marginal Tietê', 'Melhorias Viárias', 'av. Tiradentes', 5, NULL, 'SÉ', -23.529598, -46.6315546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.529598,
    longitude = -46.6315546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2082', 'Ligação - João Goulart x Lourenço Cabreira', 'Melhorias Viárias', 'av lourenço cabreira', 5, NULL, 'Capela do Socorro ', -23.7177586, -46.6906402, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7177586,
    longitude = -46.6906402;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2083', 'Ligação - Rua Mathias Beck x Av. Gregório Bezerra', 'Melhorias Viárias', 'Av. Gregório Bezerra', 5, NULL, 'Capela do Socorro ', -23.7117211, -46.68674, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7117211,
    longitude = -46.68674;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2084', 'Ligação - Vergueiro x Rua Professor Oswaldo Lacerda', 'Melhorias Viárias', 'Rua Professor Oswaldo Lacerda', 5, NULL, 'Vila Mariana ', -23.595059, -46.6218399, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595059,
    longitude = -46.6218399;