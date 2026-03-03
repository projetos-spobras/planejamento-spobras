INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('192', 'Viaduto Gasômetro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO GASÔMETRO', 16, NULL, 'Mooca ', -23.543931, -46.621694, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543931,
    longitude = -46.621694;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('193', 'Ponte Jurubatuba', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE JURUBATUBA', 16, NULL, 'Capela do Socorro ', -23.68741, -46.695622, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.68741,
    longitude = -46.695622;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('194', 'Viaduto Austregésilo de Athayde', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO AUSTREGÉSILO DE ATHAYDE', 16, NULL, 'Santo Amaro ', -23.621905, -46.6794, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.621905,
    longitude = -46.6794;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('195', 'Ponte Vitorino Goulart da Silva', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE VITORINO GOULART DA SILVA', 16, NULL, 'Capela do Socorro ', -23.700532, -46.684753, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.700532,
    longitude = -46.684753;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('196', 'Ponte Santo Dias da Silva', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE SANTO DIAS DA SILVA', 16, NULL, 'Capela do Socorro ', -23.665043, -46.710639, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.665043,
    longitude = -46.710639;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('197', 'Viaduto Frederico Eduardo Mayr', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO FREDERICO EDUARDO MAYR', 16, NULL, 'Campo Limpo ', -23.644961, -46.728982, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644961,
    longitude = -46.728982;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('198', 'Viaduto Honestino Monteiro Guimarães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO HONESTINO MONTEIRO GUIMARÃES', 16, NULL, 'Campo Limpo ', -23.644276, -46.729739, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644276,
    longitude = -46.729739;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('199', 'Ponte Morumbi', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE MORUMBI', 16, NULL, 'Butantã ', -23.618179, -46.700859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.618179,
    longitude = -46.700859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('200', 'Viaduto Doutor João Tranchesi', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DOUTOR JOÃO TRANCHESI', 16, NULL, 'Butantã ', -23.618179, -46.700859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.618179,
    longitude = -46.700859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('201', 'Ponte Bernardo Goldfarb', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE BERNARDO GOLDFARB', 16, NULL, 'Pinheiros ', -23.57158, -46.701128, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57158,
    longitude = -46.701128;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('202', 'Ponte Engenheiro Ary Torres', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE ENGENHEIRO ARY TORRES', 16, NULL, 'Butantã ', -23.59387, -46.694093, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59387,
    longitude = -46.694093;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('203', 'Viaduto Cadeião', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO CADEIÃO', 16, NULL, 'Lapa ', -23.536289, -46.743497, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.536289,
    longitude = -46.743497;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('204', 'Viaduto Sumaré', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO SUMARÉ', 16, NULL, 'Lapa ', -23.550841, -46.677569, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.550841,
    longitude = -46.677569;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('205', 'Viaduto Antártica', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO ANTÁRTICA', 16, NULL, 'Lapa ', -23.526264, -46.672081, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.526264,
    longitude = -46.672081;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('206', 'Viaduto Deputado Ulysses Guimarães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DEPUTADO ULYSSES GUIMARÃES', 16, NULL, 'Perus ', -23.404989, -46.753874, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.404989,
    longitude = -46.753874;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('207', 'Viaduto Dona Mora Guimarães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DONA MORA GUIMARÃES', 16, NULL, 'Perus ', -23.405596, -46.753185, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.405596,
    longitude = -46.753185;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('208', 'Viaduto Doutor Arnaldo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DR. ARNALDO', 16, NULL, 'Lapa ', -23.549686, -46.680013, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.549686,
    longitude = -46.680013;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('209', 'Ponte Estaiada (Ponte Octávio Frias de Oliveira)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE ESTAIADA (PONTE OCTÁVIO FRIAS DE OLIVEIRA)', 16, NULL, 'Butantã ', -23.612227, -46.699542, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.612227,
    longitude = -46.699542;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('210', 'Ponte Anhembi', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE ANHEMBI', 16, NULL, 'SÉ', -23.519158, -46.640778, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.519158,
    longitude = -46.640778;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('211', 'Ponte Estaiada (Ponte Governador Orestes Quércia)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE ESTAIADA (PONTE GOVERNADOR ORESTES QUÉRCIA)', 16, NULL, 'SÉ', -23.519981, -46.636635, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.519981,
    longitude = -46.636635;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('212', 'Viaduto Trinta e Um de Março (Viaduto Therezinha Zerbini)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Trinta e Um de Março (Viaduto Therezinha Zerbini)', 16, NULL, 'SÉ', -23.553962, -46.62637, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.553962,
    longitude = -46.62637;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('213', 'Ponte da Vila Guilherme (Engenheiro Curt Otto Baumgart)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte da Vila Guilherme (Eng. Curt Otto Baumgart)', 16, NULL, 'Vila Maria / Vila Guilherme', -23.522901, -46.611188, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.522901,
    longitude = -46.611188;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('214', 'Ponte da Avenida Santos Dumont', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE DA AVENIDA SANTOS DUMONT', 16, NULL, 'SÉ', -23.524358, -46.631044, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524358,
    longitude = -46.631044;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('215', 'Viaduto 25 de Março', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO 25 DE MARÇO', 16, NULL, 'SÉ', -23.548607, -46.626683, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.548607,
    longitude = -46.626683;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('216', 'Viaduto Antônio Nakashima', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO ANTÔNIO NAKASHIMA', 16, NULL, 'SÉ', -23.548089, -46.628061, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.548089,
    longitude = -46.628061;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('217', 'Viaduto Armando Puglisi (Armandinho do Bexiga)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Armando Puglisi (Armandinho do Bexiga)', 16, NULL, 'SÉ', -23.562432, -46.645854, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.562432,
    longitude = -46.645854;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('218', 'Viaduto Engenheiro Romero Zander', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO ENGENHEIRO ROMERO ZANDER', 16, NULL, 'SÉ', -23.535617, -46.63346, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.535617,
    longitude = -46.63346;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('219', 'Viaduto Governador Roberto Abreu Sodré', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Governador Roberto Abreu Sodré', 16, NULL, 'SÉ', -23.553733, -46.625204, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.553733,
    longitude = -46.625204;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('220', 'Viaduto Doutor Manuel José Chaves', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DOUTOR MANUEL JOSÉ CHAVES', 16, NULL, 'SÉ', -23.552689, -46.63657, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.552689,
    longitude = -46.63657;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('221', 'Viaduto General Couto de Magalhães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO GENERAL COUTO DE MAGALHÃES', 16, NULL, 'SÉ', -23.534653, -46.637056, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534653,
    longitude = -46.637056;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('222', 'Viaduto Guilherme de Almeida (Liberdade)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Guilherme de Almeida (Liberdade)', 16, NULL, 'SÉ', -23.556447, -46.636221, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556447,
    longitude = -46.636221;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('223', 'Viaduto dos Imigrantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DOS IMIGRANTES', 16, NULL, 'Vila Mariana ', -23.591371, -46.650977, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.591371,
    longitude = -46.650977;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('224', 'Complexo Viário João Jorge Saad', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'COMPLEXO VIÁRIO JOÃO JORGE SAAD', 16, NULL, 'Vila Mariana ', -23.590849, -46.649993, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.590849,
    longitude = -46.649993;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('225', 'Viaduto Carlos de Campos', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO CARLOS DE CAMPOS', 16, NULL, 'Penha ', -23.532924, -46.540366, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.532924,
    longitude = -46.540366;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('226', 'Ponte de Arujá', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE DE ARUJÁ', 16, NULL, 'São Miguel Paulista ', -23.472863, -46.423237, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.472863,
    longitude = -46.423237;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('227', 'Ponte Senador José Ermírio de Moraes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE SENADOR JOSÉ ERMÍRIO DE MORAES', 16, NULL, 'São Miguel Paulista ', -23.476194, -46.434413, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.476194,
    longitude = -46.434413;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('228', 'Viaduto Carlito Maia', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO CARLITO MAIA', 16, NULL, 'São Miguel Paulista ', -23.490338, -46.393202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.490338,
    longitude = -46.393202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('229', 'Viaduto da China (Viaduto Rosita Macedo de Andrade)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto da China (Viaduto Rosita Macedo de Andrade)', 16, NULL, 'São Miguel Paulista ', -23.493106, -46.415364, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.493106,
    longitude = -46.415364;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('230', 'Complexo Viário Jacú-Pêssego', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Complexo Viário Jacú-Pêssego - Viaduto sobre a CPTM - Ayrton Senna', 16, NULL, 'São Miguel Paulista ', -23.49149, -46.452549, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49149,
    longitude = -46.452549;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('231', 'Pontilhão Marginal Tiete Sobre a Avenida José Maria de Faria (Pontilhão Desemboque da Galeria José M', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Pontilhão Marginal Tiete Sobre a Avenida José Maria de Faria (Pontilhão Desemboque da Galeria José M', 16, NULL, 'Lapa ', -23.508973, -46.700864, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.508973,
    longitude = -46.700864;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('232', 'Túnel Jânio Quadros (Avenida Tajuras)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Jânio Quadros (Av. Tajuras)', 16, NULL, 'Butantã ', -23.5877258, -46.6934116, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5877258,
    longitude = -46.6934116;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('233', 'Viaduto Presidente João Goulart (Minhocão)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Presidente João Goulart (Minhocão)', 16, NULL, 'SÉ', -23.548133, -46.647481, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.548133,
    longitude = -46.647481;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('234', 'Viaduto Beneficência Portuguesa (Antonio Ermirio de Moraes)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Beneficência Portuguesa (Antonio Ermirio de Moraes)', 16, NULL, 'SÉ', -23.568594, -46.640939, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.568594,
    longitude = -46.640939;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('235', 'Passarela Ciccilo Matarazzo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passarela Ciccilo Matarazzo', 16, NULL, 'Vila Mariana ', -23.589282, -46.651687, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.589282,
    longitude = -46.651687;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('236', 'Viaduto Diário Popular', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Diário Popular', 16, NULL, 'SÉ', -23.544837, -46.626407, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.544837,
    longitude = -46.626407;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('237', 'Viaduto Dona Paulina', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Dona Paulina', 16, NULL, 'SÉ', -23.552238, -46.636791, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.552238,
    longitude = -46.636791;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('238', 'Viaduto Florêncio de Abreu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Florêncio de Abreu', 16, NULL, 'SÉ', -23.540671, -46.632824, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.540671,
    longitude = -46.632824;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('239', 'Viaduto Martinho Prado', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Martinho Prado', 16, NULL, 'SÉ', -23.55122, -46.645774, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55122,
    longitude = -46.645774;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('240', 'Ponte Anhanguera (Attilio Fontana)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Anhanguera (Attilio Fontana)', 16, NULL, 'Lapa ', -23.514458, -46.726584, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.514458,
    longitude = -46.726584;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('241', 'Pontilhão Na Avenida Raimundo Pereira de Magalhães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Pontilhão Na Avenida Raimundo Pereira de Magalhães', 16, NULL, 'Pirituba / Jaraguá', -23.438621, -46.721467, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.438621,
    longitude = -46.721467;