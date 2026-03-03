INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1803', 'CEI - Diret Goiti', 'Manutenção Unidades Educacionais', 'R. dos Lírios, 1 - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08220-152', 20, NULL, 'Itaquera ', -23.539194, -46.468252, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539194,
    longitude = -46.468252;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1804', 'CEI - Diret Helena Iracy Junqueira', 'Manutenção Unidades Educacionais', 'R. Eudora, 56 - Vila do Encontro, São Paulo - SP, 04324-240', 20, NULL, 'Jabaquara ', -23.6569078, -46.6381474, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6569078,
    longitude = -46.6381474;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1805', 'CEI - Diret Inocoop Ipiranga', 'Manutenção Unidades Educacionais', 'R. Barbinos, S/N - São João Climaco, São Paulo - SP, 04240-110', 20, NULL, 'Ipiranga ', -23.6216161, -46.5837957, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6216161,
    longitude = -46.5837957;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1806', 'CEI - Diret Jacarandá', 'Manutenção Unidades Educacionais', 'Rua Augusto Cavalcanti, 198 - Conj. Res. José Bonifácio, São Paulo - SP, 08253-110', 20, NULL, 'Itaquera ', -23.5441808, -46.4364618, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441808,
    longitude = -46.4364618;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1807', 'CEI - Diret Jardim Das Pedras', 'Manutenção Unidades Educacionais', 'R. Eng. Antônio de Tolêdo, 338 - Jardim das Pedras, São Paulo - SP, 02367-010', 20, NULL, 'Jaçanã / Tremembé', -23.4192796, -46.590997, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4192796,
    longitude = -46.590997;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1808', 'CEI - Diret Jardim Helena', 'Manutenção Unidades Educacionais', 'R. Almeida Falcão, 95 - Jardim Helena, São Paulo - SP, 08371-190', 20, NULL, 'São Mateus ', -23.5963995, -46.4510559, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5963995,
    longitude = -46.4510559;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1809', 'CEI - Diret Jardim Primavera I', 'Manutenção Unidades Educacionais', 'R. Crisólia, 526 - Jardim Primavera, São Paulo - SP, 02756-000', 20, NULL, 'Casa Verde ', -23.4859322, -46.6804055, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4859322,
    longitude = -46.6804055;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1810', 'CEI - Diret Jardim São Luiz I', 'Manutenção Unidades Educacionais', 'Rua Arquiteto Roberto Patrão Assis, 36 - Conj. Promorar Sao Luis, São Paulo - SP, 05846-100', 20, NULL, 'M´Boi Mirim', -23.6579819, -46.7434154, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6579819,
    longitude = -46.7434154;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1811', 'CEI - Diret Jardim São Martinho', 'Manutenção Unidades Educacionais', 'R. Erva do Sereno, 31 - Jardim Maia, São Paulo - SP, 08180-010', 20, NULL, 'São Miguel Paulista ', -23.4839038, -46.41846, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4839038,
    longitude = -46.41846;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1812', 'CEI - Diret Madre Paulina', 'Manutenção Unidades Educacionais', 'R. Alexandre Davidenko, 801 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-592', 20, NULL, 'Cidade Tiradentes ', -23.5887471, -46.3899862, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5887471,
    longitude = -46.3899862;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1813', 'CEI - Diret Maria Aparecida Dos Santos', 'Manutenção Unidades Educacionais', 'R. Estevão Pinheiro, 217 - Jardim Elza, São Paulo - SP, 08121-360', 20, NULL, 'Itaim Paulista ', -23.5056782, -46.3836562, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5056782,
    longitude = -46.3836562;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1814', 'CEI - Diret Neide Ketelhut', 'Manutenção Unidades Educacionais', 'Av. Cláudio da Costa, 312 - Jardim Aurora, São Paulo - SP, 08431-160', 20, NULL, 'Guaianazes ', -23.5372402, -46.4195409, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5372402,
    longitude = -46.4195409;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1815', 'CEI - Diret O Pequeno Seareiro', 'Manutenção Unidades Educacionais', 'R. Dr. Vitor Eugênio do Sacramento, 328 - Jardim Oriental, São Paulo - SP, 04348-020', 20, NULL, 'Jabaquara ', -23.6463385, -46.6506477, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6463385,
    longitude = -46.6506477;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1816', 'CEI - Diret Parada Xv De Novembro', 'Manutenção Unidades Educacionais', 'R. Ibiajara, 111 - Parada XV de Novembro, São Paulo - SP, 08246-100', 20, NULL, 'Itaquera ', -23.5271033, -46.4357578, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5271033,
    longitude = -46.4357578;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1817', 'CEI - Diret Parque Cocaia', 'Manutenção Unidades Educacionais', 'R. Tavarede, 84 - Parque Cocaia, São Paulo - SP, 04850-080', 20, NULL, 'Capela do Socorro ', -23.7476307, -46.6775759, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7476307,
    longitude = -46.6775759;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1818', 'CEI - Diret Piqueri - Sao Francisco', 'Manutenção Unidades Educacionais', 'R. Olímpio Tomás Fernandes, 1 - Piqueri, São Paulo - SP, 02912-080', 20, NULL, 'Pirituba / Jaraguá', -23.5068966, -46.7100039, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5068966,
    longitude = -46.7100039;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1819', 'CEI - Diret Shangri - La - Maria Pedroza De Oliveira Profa', 'Manutenção Unidades Educacionais', 'R. Salvador de Albuquerque, 124 - Jardim Shangrila (Zona Norte), São Paulo - SP, 02990-050', 20, NULL, 'Pirituba / Jaraguá', -23.4258191, -46.7254829, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4258191,
    longitude = -46.7254829;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1820', 'CEI - Diret Tancredo De Almeida Neves Pres.', 'Manutenção Unidades Educacionais', 'Rua Jacques Le Mercier, S/N - Jardim Mariane, São Paulo - SP, 05866-050', 20, NULL, 'M´Boi Mirim', -23.6795604, -46.7673999, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6795604,
    longitude = -46.7673999;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1821', 'CEI - Diret Laercio Corte Ver.', 'Manutenção Unidades Educacionais', 'Rua Belarmino Prestes, 44 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-340', 20, NULL, 'Pirituba / Jaraguá', -23.4888506, -46.7588815, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4888506,
    longitude = -46.7588815;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1822', 'CEI - Diret Raul Tabajara Vidigal Leitão Ver.', 'Manutenção Unidades Educacionais', 'Av. José Estevão de Magalhães, 356 - Vila Campestre, São Paulo - SP, 04332-050', 20, NULL, 'Jabaquara ', -23.6587349, -46.6502891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6587349,
    longitude = -46.6502891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1823', 'CEI - Diret Roberto Gomes Pedrosa Ver. ', 'Manutenção Unidades Educacionais', 'R. Borges de Medeiros, 79 - Vila Fatima, São Paulo - SP, 03920-010', 20, NULL, 'Sapopemba', -23.5960425, -46.5186567, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5960425,
    longitude = -46.5186567;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1824', 'CEI - Indiret Aparecida Das Gracas Silva Roseira', 'Manutenção Unidades Educacionais', 'Rua Luigi Alamanni, 96 - São João Climaco, São Paulo - SP, 04240-020', 20, NULL, 'Ipiranga ', -23.621247, -46.5909511, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.621247,
    longitude = -46.5909511;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1825', 'CEI - Indiret Camelias', 'Manutenção Unidades Educacionais', 'Rua Cangica, 70 - Jardim das Camelias, São Paulo - SP, 08050-390', 20, NULL, 'São Miguel Paulista ', -23.5110967, -46.458455, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5110967,
    longitude = -46.458455;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1826', 'CEI - Indiret Cardeal Motta', 'Manutenção Unidades Educacionais', 'R. Eng. José Bueno Bicalho, 387 - Jardim Vergueiro, São Paulo - SP, 04176-260', 20, NULL, 'Ipiranga ', -23.6324235, -46.6035894, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6324235,
    longitude = -46.6035894;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1827', 'CEI - Indiret Carrão II', 'Manutenção Unidades Educacionais', 'Av. Conselheiro Carrão, 143 - Vila Carrao, São Paulo - SP, 03403-000', 20, NULL, 'Aricanduva ', -23.5369274, -46.5562971, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5369274,
    longitude = -46.5562971;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1828', 'CEI - Indiret Conjunto Habitacional Baltazar Cisneros', 'Manutenção Unidades Educacionais', 'Rua Balandia, 33 - Jardim Moreno, São Paulo - SP, 08430-860', 20, NULL, 'Guaianazes ', -23.5331829, -46.4226969, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5331829,
    longitude = -46.4226969;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1829', 'CEI - Indiret Erik Gunnar Eriksson', 'Manutenção Unidades Educacionais', 'R. Saquarema, 59 - Vila Prudente, São Paulo - SP, 03125-090', 20, NULL, 'Vila Prudente ', -23.5824392, -46.5899368, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5824392,
    longitude = -46.5899368;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1830', 'CEI - Indiret Esperança', 'Manutenção Unidades Educacionais', 'Av. do Progresso, 490 - Jardim Marilu, São Paulo - SP, 08371-410', 20, NULL, 'São Mateus ', -23.5960931, -46.4207726, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5960931,
    longitude = -46.4207726;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1831', 'CEI - Indiret Frank Duff', 'Manutenção Unidades Educacionais', 'R. Freguesia de São Romão, 565  - Jardim HelenaSão Paulo - SP, 08180-150', 20, NULL, 'São Miguel Paulista ', -23.4855608, -46.40861, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4855608,
    longitude = -46.40861;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1832', 'CEI - Indiret Gleba São Francisco', 'Manutenção Unidades Educacionais', 'R. Elsa Morante, 62 - Jardim Sao Francisco, São Paulo - SP, 08390-324', 20, NULL, 'São Mateus ', -23.6321935, -46.4480354, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6321935,
    longitude = -46.4480354;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1833', 'CEI - Indiret Ilha Da Juventude', 'Manutenção Unidades Educacionais', 'R. Ilha da Juventude, 88 - Brasilândia, São Paulo - SP', 20, NULL, 'Pirituba / Jaraguá', -23.449252, -46.716495, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.449252,
    longitude = -46.716495;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1834', 'CEI - Indiret Italo Brasil Portieri', 'Manutenção Unidades Educacionais', 'Rua Pedro de Toledo, 1809 - Vila Clementino, São Paulo - SP, 04039-000', 20, NULL, 'Vila Mariana ', -23.5974684, -46.6551549, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5974684,
    longitude = -46.6551549;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1835', 'CEI - Indiret Itaquera B', 'Manutenção Unidades Educacionais', 'R. Augustin Luberti, 602 - Fazenda da Juta, São Paulo - SP, 03977-409', 20, NULL, 'Sapopemba', -23.6182372, -46.48766, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6182372,
    longitude = -46.48766;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1836', 'CEI - Indiret Jaguare', 'Manutenção Unidades Educacionais', 'Av. Gen. Mac Arthur, 50 - Vila Lageado, São Paulo - SP, 05338-000', 20, NULL, 'Lapa ', -23.556693, -46.749747, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556693,
    longitude = -46.749747;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1837', 'CEI - Indiret Jaraguá I', 'Manutenção Unidades Educacionais', 'Rua Angelo da Silva, 1790 - Parque Nações Unidas, São Paulo - SP, 02675-031', 20, NULL, 'Pirituba / Jaraguá', -23.444119, -46.732933, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.444119,
    longitude = -46.732933;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1838', 'CEI - Indiret Jardim São Carlos II', 'Manutenção Unidades Educacionais', 'Rua São Pedro do Jequitinhonha, 27 - Jardim Sao Carlos (Zona Leste), São Paulo - SP, 08062-300', 20, NULL, 'São Miguel Paulista ', -23.5134087, -46.47597, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5134087,
    longitude = -46.47597;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1839', 'CEI - Indiret Paola', 'Manutenção Unidades Educacionais', 'R. Paola, 185 - Recanto Marisa, São Paulo - SP, 04851-103', 20, NULL, 'Capela do Socorro ', -23.7521007, -46.6704132, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7521007,
    longitude = -46.6704132;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1840', 'CEI - Indiret São Luis Gonzaga', 'Manutenção Unidades Educacionais', 'R. Gertrudes Cunha, 30 - Jardim Ester Yolanda, São Paulo - SP, 05374-050', 20, NULL, 'Butantã ', -23.5711828, -46.7574277, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711828,
    longitude = -46.7574277;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1841', 'CEI - Indiret Sitio Conceição CEI', 'Manutenção Unidades Educacionais', 'R. Wilson Fernando São Carvalho, 215 - Conj. Hab. Sitio Conceicao, São Paulo - SP, 08473-000', 20, NULL, 'Cidade Tiradentes ', -23.578218, -46.3924915, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.578218,
    longitude = -46.3924915;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1842', 'CEI - Indiret Teotonio Vilela II', 'Manutenção Unidades Educacionais', 'R. Francesco Usper, 650 - Conj. Hab. Teotonio Vilela, São Paulo - SP, 03928-235', 20, NULL, 'Sapopemba', -23.6061996, -46.4970383, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6061996,
    longitude = -46.4970383;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1843', 'CEI - Indiret Vila Nova Cachoeirinha', 'Manutenção Unidades Educacionais', 'Av. General Penha Brasil, 61 - Vila Nova Cachoeirinha, São Paulo - SP, 02673-000', 20, NULL, 'Casa Verde ', -23.4702213, -46.6661419, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4702213,
    longitude = -46.6661419;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1844', 'EMEBS - Lucie Bray Me', 'Manutenção Unidades Educacionais', 'R. São Geraldino, 236 - Vila Constança, São Paulo - SP, 02258-220', 20, NULL, 'Jaçanã / Tremembé', -23.475146, -46.5813819, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.475146,
    longitude = -46.5813819;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1845', 'EMEF - Almirante Ary Parreiras', 'Manutenção Unidades Educacionais', 'R. Ipaobi, 142 - Vila Babilonia, São Paulo - SP, 04351-050', 20, NULL, 'Jabaquara ', -23.6439067, -46.6559591, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6439067,
    longitude = -46.6559591;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1846', 'EMEF - Antônio Carlos De Andrada E Silva', 'Manutenção Unidades Educacionais', 'Av. Baltazar Santana, 365 - Jardim Planalto, São Paulo - SP, 08040-420', 20, NULL, 'São Miguel Paulista ', -23.508541, -46.4474109, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.508541,
    longitude = -46.4474109;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1847', 'EMEF - Desembargador Francisco Meirelles', 'Manutenção Unidades Educacionais', 'R. Campante, 357 - Vila Independencia, São Paulo - SP, 04224-010', 20, NULL, 'Ipiranga ', -23.5970383, -46.5929288, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5970383,
    longitude = -46.5929288;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1848', 'EMEF - Edgard Cavaleiro', 'Manutenção Unidades Educacionais', 'R. Porto da Glória, 342 - Vila Mesquita, São Paulo - SP, 03714-050', 20, NULL, 'Penha ', -23.5073627, -46.5416645, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5073627,
    longitude = -46.5416645;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1849', 'EMEF - Frei Francisco Mont''Alverne', 'Manutenção Unidades Educacionais', 'R. São Celso, 365 - Vila Domitila, São Paulo - SP, 03626-000', 20, NULL, 'Ermelino Matarazzo ', -23.5136957, -46.5076053, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5136957,
    longitude = -46.5076053;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1850', 'EMEF - Jardim Montebelo', 'Manutenção Unidades Educacionais', 'R. Palmeirópolis, S/N - Jardim Monte Belo, São Paulo - SP, 05272-005', 20, NULL, 'Perus ', -23.4431776, -46.8015868, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4431776,
    longitude = -46.8015868;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1851', 'EMEF - João Domingues Sampaio', 'Manutenção Unidades Educacionais', 'R. Gastão Madeira, 386 - Vila Maria Alta, São Paulo - SP, 02131-080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.505986, -46.5848752, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505986,
    longitude = -46.5848752;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1852', 'EMEF - João Gualberto Do Amaral Carvalho', 'Manutenção Unidades Educacionais', 'R. João Franco Oliveira, 150 - Campininha, São Paulo - SP, 04678-100', 20, NULL, 'Santo Amaro ', -23.6712532, -46.6815862, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6712532,
    longitude = -46.6815862;