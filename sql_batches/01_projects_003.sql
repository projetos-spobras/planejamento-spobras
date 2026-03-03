INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('142', 'Viaduto Jabaquara', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Jabaquara', 16, NULL, 'Vila Mariana ', -23.6302388, -46.6467057, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6302388,
    longitude = -46.6467057;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('143', 'Viaduto João Julião C. Aguiar', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto João Julião C. Aguiar', 16, NULL, 'Vila Mariana ', -23.6175205, -46.6617383, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6175205,
    longitude = -46.6617383;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('144', 'Viaduto Pedro de Toledo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Pedro de Toledo', 16, NULL, 'Vila Mariana ', -23.598078, -46.646677, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.598078,
    longitude = -46.646677;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('145', 'Ponte do Guarapiranga', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte do Guarapiranga', 16, NULL, 'M´Boi Mirim', -23.667109, -46.724858, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.667109,
    longitude = -46.724858;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('146', 'Ponte do Limão', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte do Limão', 16, NULL, 'Casa Verde ', -23.5152223, -46.6667075, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5152223,
    longitude = -46.6667075;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('147', 'Viaduto Antônio Sanches de Larragoiti Júnior', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Antônio Sanches de Larragoiti Júnior', 16, NULL, 'São Miguel Paulista ', -23.5148784, -46.4558687, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5148784,
    longitude = -46.4558687;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('148', 'Viaduto General Milton Tavares de Souza', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto General Milton Tavares de Souza', 16, NULL, 'Penha ', -23.5157908, -46.5544015, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5157908,
    longitude = -46.5544015;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('149', 'Viaduto Major Quedinho', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Major Quedinho', 16, NULL, 'SÉ', -23.5497655, -46.6430772, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5497655,
    longitude = -46.6430772;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('150', 'Viaduto Naor Guelfi', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Major Quedinho', 16, NULL, 'SÉ', -23.5497655, -46.6430772, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5497655,
    longitude = -46.6430772;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('151', 'Viaduto General Marcondes Salgado', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto General Marcondes Salgado', 16, NULL, 'Vila Mariana ', -23.5851064, -46.6531873, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5851064,
    longitude = -46.6531873;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('152', 'Ponte Aricanduva', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Aricanduva', 16, NULL, 'Vila Maria / Vila Guilherme', -23.5230976, -46.5582997, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5230976,
    longitude = -46.5582997;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('153', 'Viaduto Elias Nagib Brein', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Elias Nagib Brein', 16, NULL, 'Lapa ', -23.5188809, -46.7001271, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5188809,
    longitude = -46.7001271;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('154', 'Viaduto Pacheco Chaves', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Pacheco Chaves', 16, NULL, 'Vila Prudente ', -23.5815734, -46.596183, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5815734,
    longitude = -46.596183;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('155', 'Viaduto Paraíso', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Paraíso', 16, NULL, 'Vila Mariana ', -23.5733845, -46.6410439, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5733845,
    longitude = -46.6410439;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('156', 'Viaduto Washington Luiz', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto Washington Luiz', 16, NULL, 'Santo Amaro ', -23.6435162, -46.6724991, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6435162,
    longitude = -46.6724991;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('157', 'Ponte do Piqueri (Joelmir Beting)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE DO PIQUERI (JOELMIR BETING)', 16, NULL, 'Lapa ', -23.5087896, -46.7056216, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5087896,
    longitude = -46.7056216;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('158', 'Ponte João Dias', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE JOÃO DIAS', 16, NULL, 'Santo Amaro ', -23.6445221, -46.7261735, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6445221,
    longitude = -46.7261735;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('159', 'Viaduto Ladeira do Xisto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Liga a Rua Américo Salvador Novelli à Rua Augusto Carlos Bauman', 16, NULL, 'Itaquera ', -23.536837, -46.453364, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.536837,
    longitude = -46.453364;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('160', 'Viaduto Deputado Luis Eduardo Magalhães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DEPUTADO LUIS EDUARDO MAGALHÃES', 16, NULL, 'Santo Amaro ', -23.6334872, -46.669068, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6334872,
    longitude = -46.669068;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('161', 'Viaduto Raimundo Pereira de Magalhães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO RAIMUNDO PEREIRA DE MAGALHÃES', 16, NULL, 'Pirituba / Jaraguá', -23.4875337, -46.7268607, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4875337,
    longitude = -46.7268607;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('162', 'Ponte Domingos Franciulli Netto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Domingos Desembargador Franciulli Netto (Tiquatira)', 16, NULL, 'Penha ', -23.5157908, -46.5544015, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5157908,
    longitude = -46.5544015;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('163', 'Ponte dos Remédios', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'PONTE DOS REMÉDIOS', 16, NULL, 'Lapa ', -23.5203236, -46.7471395, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5203236,
    longitude = -46.7471395;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('164', 'Viaduto do Café', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DO CAFÉ', 16, NULL, 'SÉ', -23.551356, -46.64618, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.551356,
    longitude = -46.64618;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('165', 'Viaduto São Carlos', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO SÃO CARLOS', 16, NULL, 'SÉ', -23.5671311, -46.6038856, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5671311,
    longitude = -46.6038856;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('166', 'Viaduto José Colassuonno', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida das Juntas Provisórias e a Avenida do Estado sobre o Canal do Rio Taman', 16, NULL, 'Ipiranga ', -23.58782, -46.59741, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58782,
    longitude = -46.59741;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('167', 'Viaduto Doutor Plínio de Queiroz', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida 9 de Julho sobre a Praça 14 BIS - Cerqueira César', 16, NULL, 'SÉ', -23.555663, -46.649717, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555663,
    longitude = -46.649717;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('168', 'Ponte Transamérica', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Saída para a Avenida das Nações Unidas - Santo Amaro', 16, NULL, 'Santo Amaro ', -23.652625, -46.723743, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.652625,
    longitude = -46.723743;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('169', 'Viaduto Engenheiro Antônio de Carvalho Aguiar', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua Cubatão, sobre a Avenida 23 de Maio - Paraíso', 16, NULL, 'Vila Mariana ', -23.576586, -46.643371, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.576586,
    longitude = -46.643371;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('170', 'Viaduto Engenheiro Orlando Murgel', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Entre Avenida Rio Branco com Avenida Rudge', 16, NULL, 'SÉ', -23.528245, -46.648244, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528245,
    longitude = -46.648244;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('171', 'Viaduto na Avenida Olavo Fontoura sobre a Avenida Assis Chateaubriand', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Olavo Fontoura sobre a Avenida Assis Chateaubriand - Casa Verde Baixa', 16, NULL, 'Casa Verde ', -23.516034, -46.651164, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.516034,
    longitude = -46.651164;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('172', 'Viaduto João Beiçola', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Pedro Roschel Gottzfritz', 16, NULL, 'Capela do Socorro ', -23.714683, -46.690927, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.714683,
    longitude = -46.690927;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('173', 'Viaduto Domingos de Moraes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Ponte Attilio Fontana e a Rua Monte Pascoal sobre a CPTM - Alto da Lapa.', 16, NULL, 'Lapa ', -23.516464, -46.726009, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.516464,
    longitude = -46.726009;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('174', 'Ponte Júlio de Mesquita Neto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre Bairro Limão e o Parque Industrial Tomás Edson, próximo à saída da Avenida Presid', 16, NULL, 'Casa Verde ', -23.51359, -46.679034, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51359,
    longitude = -46.679034;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('175', 'Viaduto Doutor Eduardo Saiegh (Santa Cruz)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Loefgreen e a Rua Santa Cruz sobre a Rua Ricardo Jafet - Saúde.', 16, NULL, 'Vila Mariana ', -23.599648, -46.623964, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599648,
    longitude = -46.623964;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('176', 'Viaduto Rodovia Imigrantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Avenida Professor Abrahão de Moraes sobre a Lagoa Aliperti-Bosque da Saúde.', 16, NULL, 'Ipiranga ', -23.636578, -46.630262, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.636578,
    longitude = -46.630262;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('177', 'Passarela Professor Doutor Emílio Athie (INCOR)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Transposição da Avenida Rebouças junto ao Hospital das Clínicas - Jardim Paulista.', 16, NULL, 'Pinheiros ', -23.55794, -46.667333, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55794,
    longitude = -46.667333;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('178', 'Viaduto Ministro Aliomar Baleeiro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Affonso D’Escragnolle Taunay sobre a Avenida Professor Abraão de Morais – Água Funda.', 16, NULL, 'Ipiranga ', -23.629294, -46.62977, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.629294,
    longitude = -46.62977;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('179', 'Viaduto Borges Lagoa', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Borges Lagoa sobre a Avenida Rubem Berta – Vila Clementino.', 16, NULL, 'Vila Mariana ', -23.596446, -46.65075, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.596446,
    longitude = -46.65075;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('180', 'Viaduto Antonio Abdo (Conselheiro Carrão)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Interligação entre a Rua Antonio de Barros e a Avenida Conselheiro Carrão sobre Rua Melo Peixoto, a', 16, NULL, 'Mooca ', -23.53651, -46.557612, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53651,
    longitude = -46.557612;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('181', 'Complexo Viário Escola de Engenharia Mackenzie', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Complexo Viário Escola de Engenharia Mackenzie', 16, NULL, 'Ipiranga ', -23.603385, -46.603469, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.603385,
    longitude = -46.603469;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('182', 'Viaduto Cidade de Osaka', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua Galvão Bueno, sobre a Avenida Radial Leste/Oeste - Liberdade', 16, NULL, 'SÉ', -23.556515, -46.635173, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556515,
    longitude = -46.635173;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('183', 'Viaduto Engenheiro Luiz Alfredo Falcão Bauer (Ayrton Senna)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Avenida Jacu Pêssego/Nova Trabalhadores sobre a Avenida São Miguel - Vila Jacuí', 16, NULL, 'São Miguel Paulista ', -23.498597, -46.456289, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.498597,
    longitude = -46.456289;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('184', 'Viaduto Deputado Antônio Sylvio Cunha Bueno', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Saturnino Pereira e a Rua Capitão Pucci sobre a CPTM - Guaianazes', 16, NULL, 'Guaianazes ', -23.543544, -46.410525, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543544,
    longitude = -46.410525;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('185', 'Viaduto Condessa de São Joaquim', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Prolongamento da Rua Condessa de São Joaquim até a Avenida da Liberdade sobre a Avenida 23 de Maio -', 16, NULL, 'SÉ', -23.55865, -46.638599, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55865,
    longitude = -46.638599;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('186', 'Viaduto Dona Matilde', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Prolongamento da Rua Maria Carlota até a Rua Joaquim Marra sobre a Rua Alvinópolis, a CPTM e a Aveni', 16, NULL, 'Penha ', -23.531779, -46.527544, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.531779,
    longitude = -46.527544;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('187', 'Complexo Viário Maria Maluf', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'COMPLEXO VIÁRIO MARIA MALUF', 16, NULL, 'Ipiranga ', -23.628006, -46.628449, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.628006,
    longitude = -46.628449;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('188', 'Complexo Viário Senador Antônio Emygdio de Barros Filho', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'COMPLEXO VIÁRIO SENADOR ANTÔNIO EMYGDIO DE BARROS FILHO', 16, NULL, 'Vila Prudente ', -23.582763, -46.572802, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582763,
    longitude = -46.572802;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('189', 'Viaduto Guadalajara', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO GUADALAJARA', 16, NULL, 'Mooca ', -23.544083, -46.59353, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.544083,
    longitude = -46.59353;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('190', 'Viaduto Doutor Eusébio Stevaux', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'VIADUTO DOUTOR EUSÉBIO STEVAUX', 16, NULL, 'SÉ', -23.548917, -46.639083, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.548917,
    longitude = -46.639083;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('191', 'Complexo Viário Padre Adelino', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'COMPLEXO VIÁRIO PADRE ADELINO', 16, NULL, 'Mooca ', -23.543101, -46.6127, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543101,
    longitude = -46.6127;