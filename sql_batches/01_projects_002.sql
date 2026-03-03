INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('90', 'Descomplica Capela do Socorro', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'R. Cassiano dos Santos, 499', 8, NULL, 'Capela do Socorro ', -23.7205338, -46.701722, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7205338,
    longitude = -46.701722;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('91', 'Descomplica Jabaquara', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Engº Armando de Arruda Pereira, 2314', 8, NULL, 'Jabaquara ', -23.6479336, -46.6404037, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6479336,
    longitude = -46.6404037;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('92', '(TESTE) Corredor Radial', 'Implantação de Corredor de Ônibus', 'av Radial Leste', 5, NULL, NULL, -23.532303, -46.5289009, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.532303,
    longitude = -46.5289009;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('93', 'Corredor Radial III', 'Implantação de Corredor de Ônibus', 'Av. David Domingues Ferreira, 1000', 5, NULL, 'Itaquera ', -23.5296627, -46.4471188, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5296627,
    longitude = -46.4471188;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('94', 'Corredor Radial II', 'Implantação de Corredor de Ônibus', 'Av. Radial Leste 2100', 5, NULL, 'Penha ', -23.5329784, -46.5367665, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5329784,
    longitude = -46.5367665;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('95', 'BRT Radial I', 'Implantação de Corredor de Ônibus', 'av radial Leste', 5, NULL, 'Mooca ', -23.54518, -46.596229, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54518,
    longitude = -46.596229;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('96', 'Corredor BRT - Aricanduva', 'Implantação de Corredor de Ônibus', 'av Aricanduva', 5, NULL, 'Aricanduva ', -23.5666589, -46.5072054, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5666589,
    longitude = -46.5072054;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('97', 'Corredor Itaim Paulista - São Mateus', 'Implantação de Corredor de Ônibus', 'Av Ragueb Choffi', 5, NULL, 'São Mateus ', -23.5947711, -46.4450806, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5947711,
    longitude = -46.4450806;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('98', 'Corredor Bandeirantes', 'Implantação de Corredor de Ônibus', 'Av. Bandeirantes', 5, NULL, 'Santo Amaro ', -23.6123869, -46.6719384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6123869,
    longitude = -46.6719384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('99', 'Morro do S - Corredor Carlos Caldeira', 'Implantação de Corredor de Ônibus', 'Av. Carlos Caldeira', 5, NULL, 'Campo Limpo ', -23.6460794, -46.7533527, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6460794,
    longitude = -46.7533527;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('100', 'Ligação Viária Graúna - Gaivotas', 'Implantação de viário, com ponte permitindo ligação entre bairros', 'Rua Rubens de Oliveira', 5, NULL, 'Capela do Socorro ', -23.740626, -46.6662588, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.740626,
    longitude = -46.6662588;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('101', 'Requalificação de Calçadas', 'Requalificação de calçadas', 'Sé', 7, NULL, NULL, 37.09024, -95.712891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = 37.09024,
    longitude = -95.712891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('102', 'Descomplica São Mateus', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Ragueb Chohfi, 1.400', 8, NULL, 'São Mateus ', -23.5998007, -46.4690028, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5998007,
    longitude = -46.4690028;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('103', 'Descomplica Penha', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'R. Candapuí, 492', 8, NULL, 'Penha ', -23.5186794, -46.521148, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5186794,
    longitude = -46.521148;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('104', 'Viaduto Marginal Pinheiros', 'Viaduto T5 da Marginal Pinheiros ', 'Av. das Nações Unidas, 4889 - Vila Hamburguesa, São Paulo - SP, 05425-070', 16, NULL, 'Pinheiros ', -23.5486412, -46.7283373, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5486412,
    longitude = -46.7283373;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('105', 'Parque Minhocão', 'Implantação de Parque Público', 'Elevado Presidente João Goulart', 7, NULL, 'SÉ', -23.5360278, -46.6516218, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5360278,
    longitude = -46.6516218;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('106', 'Ponte Jânio Quadros (Vila Maria)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Jânio Quadros', 16, NULL, 'Mooca ', -23.5273493, -46.5967646, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5273493,
    longitude = -46.5967646;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('107', 'Ponte da Casa Verde', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Pte. da Casa Verde, São Paulo ', 16, NULL, 'Lapa ', -23.5165363, -46.6539715, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5165363,
    longitude = -46.6539715;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('108', 'Ponte Cruzeiro do Sul', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Cruzeiro do Sul', 16, NULL, 'Santana / Tucuruvi', -23.5193621, -46.6251826, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5193621,
    longitude = -46.6251826;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('109', 'Ponte Freguesia do Ó', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Freguesia do Ó', 16, NULL, 'Lapa ', -23.5089559, -46.6895931, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5089559,
    longitude = -46.6895931;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('110', 'Ponte do Tatuapé', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte do Tatuapé', 16, NULL, 'Mooca ', -23.528898, -46.584839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528898,
    longitude = -46.584839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('111', 'Ponte das Bandeiras', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte das Bandeiras', 16, NULL, 'SÉ', -23.5187464, -46.6300234, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5187464,
    longitude = -46.6300234;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('112', 'Viaduto Grande São Paulo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Grande São Paulo', 16, NULL, 'Ipiranga ', -23.5875076, -46.5931149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5875076,
    longitude = -46.5931149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('113', 'Ponte Cidade Jardim / Ponte Engenheiro Roberto Rossi Zuccolo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Cidade Jardim', 16, NULL, 'Pinheiros ', -23.5830472, -46.6863545, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5830472,
    longitude = -46.6863545;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('114', 'Ponte Eusébio Matoso', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Eusébio Matoso', 16, NULL, 'Pinheiros ', -23.572184, -46.7010993, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.572184,
    longitude = -46.7010993;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('115', 'Viaduto Gazeta do Ipiranga', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Gazeta do Ipiranga', 16, NULL, 'Ipiranga ', -23.5902548, -46.6070468, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5902548,
    longitude = -46.6070468;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('116', 'Viaduto General Olímpio da Silveira', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto General Olímpio da Silveira', 16, NULL, 'SÉ', -23.5319626, -46.6598735, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5319626,
    longitude = -46.6598735;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('117', 'Ponte Cidade Universitária', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Cidade Universitária', 16, NULL, 'Butantã ', -23.5582886, -46.7115218, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5582886,
    longitude = -46.7115218;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('118', 'Viaduto Miguel Mofarrej', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Miguel Mofarrej', 16, NULL, 'Lapa ', -23.524923, -46.7411299, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524923,
    longitude = -46.7411299;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('119', 'Viaduto Carlos Ferraci', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Carlos Ferraci', 16, NULL, 'Mooca ', -23.53889, -46.5714584, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53889,
    longitude = -46.5714584;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('120', 'Viaduto Bresser', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Bresser', 16, NULL, 'Mooca ', -23.5426713, -46.6067054, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5426713,
    longitude = -46.6067054;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('121', 'Viaduto Glicério', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Glicério', 16, NULL, 'SÉ', -23.5564714, -46.6308708, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5564714,
    longitude = -46.6308708;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('122', 'Requalificação e Reurbanização do Vale do Anhangabaú e Entorno', 'Obras de Requalificação e Reurbanização do Vale do Anhangabaú e Entorno', 'Vale do Anhangabaú', 23, NULL, 'SÉ', -23.54529, -46.636667, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54529,
    longitude = -46.636667;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('123', 'Ponte Dutra', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Presidente Dutra, 101 - parque novo mundo', 16, NULL, 'Vila Maria / Vila Guilherme', -23.5304476, -46.592812, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5304476,
    longitude = -46.592812;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('124', 'Pontilhão Itaim', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'R. Domingos de Martins Pachêco - 51', 16, NULL, 'Itaim Paulista ', -23.5101142, -46.3833128, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5101142,
    longitude = -46.3833128;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('125', 'Ponte Jaguaré', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Jaguaré', 16, NULL, 'Lapa ', -23.5458575, -46.7345284, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5458575,
    longitude = -46.7345284;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('126', 'Viaduto Alcântara Machado', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Alcântara Machado', 16, NULL, 'Mooca ', -23.5525457, -46.6106798, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5525457,
    longitude = -46.6106798;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('127', 'Pontilhão Córrego Três Pontes', 'Manutenção de Obra de Arte', 'R. Benígno Nogueira Franco, 27 ', 16, NULL, 'Itaim Paulista ', -23.490369, -46.3737179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.490369,
    longitude = -46.3737179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('128', 'Descomplica Galeria Prestes Maia', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Galeria Prestes Maia', 8, NULL, NULL, -23.547535, -46.636502, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547535,
    longitude = -46.636502;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('129', 'Descomplica Cidade Tiradentes', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av Ragueb Chohfi 7001', 8, NULL, 'Cidade Tiradentes ', -23.583146, -46.415115, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583146,
    longitude = -46.415115;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('130', 'INSPEÇÕES ESPECIAIS FASE 01', 'RELATÓRIO FINANCEIRO DE INSPEÇÕES ESPECIAIS FASE 1', 'GALERIA OLIDO', 16, NULL, NULL, -23.5433582, -46.6387973, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5433582,
    longitude = -46.6387973;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('131', 'Calçadão Triângulo Histórico', 'Reforma dos pavimentos das calçadas e calçadões, implantação de sinalização turística e ambiental, melhorias no mobiliário urbano e iluminação, drenagem e valas técnicas para Telecom.', 'Rua São Bento ', 23, NULL, 'SÉ', -23.5466949, -46.6354718, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466949,
    longitude = -46.6354718;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('134', 'Chucri Zaidan - FASE 2', 'Implantação de túnel, adequações viárias (especialmente em frente ao Shopping Morumbi) e paisagismo e urbanismo ao longo da via.', 'Av. Dr. Chucri Zaidan, 902', 2, NULL, 'Santo Amaro ', -23.62157, -46.699859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.62157,
    longitude = -46.699859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('135', 'Passarela Pacaembú', 'Obra de Manutenção da OAE', 'Viaduto Pacaembu', 16, NULL, 'Lapa ', -23.5260438, -46.6604594, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5260438,
    longitude = -46.6604594;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('136', 'Ligação Leste - Oeste - Passagem Sob a Praça Roosevelt)', 'Reparo de Viga no Acesso a  Radial Leste', 'praça franklin roosevelt', 16, NULL, 'SÉ', -23.5485155, -46.646334, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5485155,
    longitude = -46.646334;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('137', 'Complexo Viário Aurélio Batista Félix - Jacu Pêssego', 'Serviços de substituição das atuais juntas de dilatação danificadas por novas juntas de dilatação elastoméricas nas estruturas de concreto dos viadutos', 'Avenida dos Trabalhadores', 16, NULL, 'São Miguel Paulista ', -23.482121, -46.452378, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.482121,
    longitude = -46.452378;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('138', 'Viaduto República da Armênia', 'Serviços de substituição das atuais juntas de dilatação danificadas por novas juntas de dilatação elastoméricas nas estruturas de concreto dos viadutos', 'Avenida dos Bandeirantes', 16, NULL, 'Pinheiros ', -23.596435, -46.691323, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.596435,
    longitude = -46.691323;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('139', 'Viaduto Engenheiro Alberto Badra', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Engenheiro Alberto Badra', 16, NULL, 'Aricanduva ', -23.5325651, -46.5506595, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5325651,
    longitude = -46.5506595;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('140', 'Viaduto Brigadeiro Luiz Antônio', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Brigadeiro Luiz Antônio', 16, NULL, 'SÉ', -23.551559, -46.6372442, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.551559,
    longitude = -46.6372442;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('141', 'Viaduto General Euclides Figueiredo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto General Euclides Figueiredo', 16, NULL, 'Vila Mariana ', -23.5842968, -46.6536584, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5842968,
    longitude = -46.6536584;