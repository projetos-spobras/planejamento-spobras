INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2010', 'CEU Cachoeirinha - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'Rua Santa Lucrécia de Aguiar nº 443', 20, NULL, 'Casa Verde ', -23.4648623, -46.6603371, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4648623,
    longitude = -46.6603371;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2011', 'Reservatório Freitas', 'Implantação de obras de drenagem - reservatório córrego Freitas', 'Rua Manuel Bordalo Pinheiro, 288', 18, NULL, 'M´Boi Mirim', -23.6593396, -46.7571208, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6593396,
    longitude = -46.7571208;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2012', 'Túneis de Ligação av. do Estado x av. Cruzeiro do Sul x Rodoviária Tietê', 'Implantação de Passagem Av. Cruzeiro do Sul', 'Av. Tiradentes, 277', 5, NULL, 'SÉ', -23.534847, -46.63331, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534847,
    longitude = -46.63331;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2013', 'Construção 6 Novos CEU''s', 'Construção 06 novos CEUS', '?', 20, NULL, 'SÉ', -23.570849, -46.563149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570849,
    longitude = -46.563149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2014', 'Expansão do Circuito SPCINE nos CEU''s.', 'Implantação da Expansão do Circuito SPCINE nos CEU''s', '?', 24, NULL, 'SÉ', -23.570849, -46.563149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570849,
    longitude = -46.563149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2015', 'Eixo Histórico Ipiranga', 'Requalificação urbana do eixo histórico do Ipiranga', 'Praça do Monumento, 200', 23, NULL, 'Ipiranga ', -23.580142, -46.610704, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.580142,
    longitude = -46.610704;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2016', 'Requalificação Av. Bandeirantes - Luís Carlos Berrini', 'requalificação da Av. dos Bandeirantes e da Av. Eng. Luis Carlos Berrini até a saída da Av. Dr. Ricardo Jafet', 'Av. Bandeirantes,319', 5, NULL, 'Pinheiros ', -23.6003904, -46.6842116, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6003904,
    longitude = -46.6842116;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2017', 'Requalificação Largo da Matriz', 'Requalificação Urbana do polo cultural, gastronômico e turístico do Largo da Matriz de Nossa Senhora do Ó.', 'Largo da Matriz de Nossa Senhora do Ó, 101', 23, NULL, 'Freguesia / Brasilândia', -23.5012109, -46.6979886, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5012109,
    longitude = -46.6979886;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2018', 'Passarela Washington Luis x Rua Pirandello', 'Implantação de passarela - Avenida Washington Luis x Rua Pirandello', 'Rua Pirandello, 918', 5, NULL, 'Santo Amaro ', -23.634951, -46.674801, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634951,
    longitude = -46.674801;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2019', 'Ligação Norte - Sul (Braz Leme x Estação da Luz)', 'Implantação de requalificação urbana Ligação Norte - Sul (Braz Leme x Estação da Luz)', 'R. Darzan, 1', 5, NULL, 'Santana / Tucuruvi', -23.5041636, -46.6263423, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5041636,
    longitude = -46.6263423;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2020', 'Passagem em Desnível na Av do Estado', 'Requalificação urbana da região do Brás e da Zona Norte de/para Parque Dom Pedro II (centro) e Av. Cruzeiro do Sul (zona norte).', 'Av. do Estado, 48', 5, NULL, 'SÉ', -23.5430689, -46.6293929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5430689,
    longitude = -46.6293929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2021', 'Gerenciamento do Programa de Mobilidade e de Requalificação', 'Gerenciamento do Programa de Mobilidade e de Requalificação', 'Rua XV de Novembro, 165', 5, NULL, 'SÉ', -23.54753, -46.634217, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54753,
    longitude = -46.634217;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2022', 'Túnel Dr. Euryclides de Jesus Zerbini', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Dr. Euryclides de Jesus Zerbini', 16, NULL, 'Butantã ', -23.572692, -46.70468, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.572692,
    longitude = -46.70468;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2023', 'Túnel Sebastião Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Sebastião Camargo', 16, NULL, 'Pinheiros ', -23.59042, -46.6902, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59042,
    longitude = -46.6902;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2024', 'Túnel Tribunal de Justiça - Ibirapuera Marginal', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça - Ibirapuera Marginal', 16, NULL, 'Pinheiros ', -23.585449, -46.671083, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585449,
    longitude = -46.671083;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2025', 'Túnel Tribunal de Justiça (EMURB) Marginal - Ibirapuera', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça (EMURB) Marginal - Ibirapuera', 16, NULL, 'Pinheiros ', -23.585157, -46.670687, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585157,
    longitude = -46.670687;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2026', 'Túnel Takeharu Agagawa (av. São Gabriel)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Takeharu Agagawa (asv. São Gabriel)', 16, NULL, 'Pinheiros ', -23.582521, -46.670423, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582521,
    longitude = -46.670423;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2027', 'Tunel Jornalista Fernando Vieira de Melo - Centro-Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Tunel Jornalista Fernando Vieira de Melo - Centro-Bairro', 16, NULL, 'Pinheiros ', -23.5711, -46.690925, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711,
    longitude = -46.690925;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2028', 'Túnel Jornalista Fernando Vieira de Mello - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Fernando Vieira de Mello - Bairro - Centro', 16, NULL, 'Pinheiros ', -23.570876, -46.690682, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570876,
    longitude = -46.690682;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2029', 'Túnel Max Feffer - Centro - Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Max Feffer', 16, NULL, 'Pinheiros ', -23.583037, -46.686279, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583037,
    longitude = -46.686279;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2030', 'Túnel Max Feffer - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Max Feffer', 16, NULL, 'Pinheiros ', -23.583018, -46.686279, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583018,
    longitude = -46.686279;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2031', 'Passagem Dirce Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Dirce Camargo', 16, NULL, 'Pinheiros ', -23.586491, -46.689778, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586491,
    longitude = -46.689778;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2032', 'Túnel Maria Maluf Anchieta-Imigrantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Maria Maluf', 16, NULL, 'Ipiranga ', -23.6249, -46.614547, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6249,
    longitude = -46.614547;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2033', 'Túnel Maria Maluf - Imigrantes-Anchieta', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Maria Maluf', 16, NULL, 'Ipiranga ', -23.6249, -46.614547, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6249,
    longitude = -46.614547;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2034', 'Túnel Jornalista Odon Pereira - Itaquera', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Jornalista Odon Pereira - Itaquera', 16, NULL, 'Itaquera ', -23.541126, -46.46556, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.541126,
    longitude = -46.46556;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2035', 'Túnel Paulo Autran', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Paulo Autran', 16, NULL, 'Santo Amaro ', -23.626744, -46.661314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.626744,
    longitude = -46.661314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2036', 'Túnel Arieta Calfat Khoury Farah', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Arieta Calfat Khoury Farah', 16, NULL, 'Itaquera ', -23.543014, -46.469321, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543014,
    longitude = -46.469321;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2037', 'Túnel Ayrton Senna (Bairro-Centro)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678,
    longitude = -46.658433;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2038', 'Túnel Ayrton Senna (Centro-Bairro)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678,
    longitude = -46.658433;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2039', 'Passagem Tom Jobim - Santana-Aeroporto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Tom Jobim - Santana-Aeroporto', 16, NULL, 'SÉ', -23.539336, -46.63377, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539336,
    longitude = -46.63377;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2040', 'Passagem Tom Jobim - Aeroporto-Santana', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tom Jobim', 16, NULL, 'SÉ', -23.53934, -46.633735, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53934,
    longitude = -46.633735;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2041', 'Túnel José Roberto Fanganiello Melhem (Av. Paulista x Dr. Arnaldo)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel José Roberto Fanganiello Melhem', 16, NULL, 'SÉ', -23.556268, -46.662297, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556268,
    longitude = -46.662297;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2042', 'Autódromo de Interlagos - 2025', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.703348, -46.700257, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.703348,
    longitude = -46.700257;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2043', 'Passagem Subterrânea - Paulista - Rebouças', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação Av. Paulista x Av. Rebouças', 16, NULL, 'SÉ', -23.556, -46.665733, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556,
    longitude = -46.665733;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2044', 'Túnel Nove de Julho - Daher Cutait - Centro - Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'SÉ', -23.560638, -46.655219, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.560638,
    longitude = -46.655219;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2045', 'Túnel  Nove de Julho - Daher Cutait - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'Pinheiros ', -23.564501, -46.657143, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.564501,
    longitude = -46.657143;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2046', 'Túnel João Paulo II (Sob o Vale do Anhangabaú) Santana-Aeroporto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.543706, -46.635753, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543706,
    longitude = -46.635753;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2047', 'Túnel João Paulo II (Sob o Vale do Anhangabaú) Aeroporto-Santana', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.547071, -46.637853, FALSE)
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
VALUES ('2048', 'Pagssagem Subterrânea Noite Ilustrada (Paulista - Major Natanael)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Noite Ilustrada', 16, NULL, 'SÉ', -23.556086, -46.666379, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556086,
    longitude = -46.666379;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2049', 'Túnel Mackenzie', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Estradas das Lágrimas sob a Anchieta', 16, NULL, 'Ipiranga ', -23.604815, -46.599572, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604815,
    longitude = -46.599572;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2050', 'Túnel Ayrton Senna', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678,
    longitude = -46.658433;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2051', 'Túnel Tribunal de Justiça', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça', 16, NULL, 'Pinheiros ', -23.585449, -46.671083, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585449,
    longitude = -46.671083;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2052', 'EMEI Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.617025, -46.58283, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617025,
    longitude = -46.58283;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2053', 'EMEF Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.617025, -46.58283, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617025,
    longitude = -46.58283;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2054', 'Centro TEA - Zona Leste', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Av. Pires do Rio, 3654', 24, NULL, 'Itaquera ', -23.528035, -46.447777, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528035,
    longitude = -46.447777;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2055', 'Centro TEA - Zona Sul', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Zona Sul', 24, NULL, 'Jabaquara ', -22.9549425, -43.1892443, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -22.9549425,
    longitude = -43.1892443;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2056', 'Centro TEA - Zona Oeste', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Zona Oeste', 24, NULL, 'Butantã ', -23.571944, -46.700833, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.571944,
    longitude = -46.700833;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2057', 'Túnel Nove de Julho - Daher Cutait', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'Pinheiros ', -23.564501, -46.657143, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.564501,
    longitude = -46.657143;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2058', 'ROMA - Av. Roberto Marinho ', 'Prolongamento da Av. Jornalista Roberto Marinho até a Rodovia dos Imigrantes, construção de um parque linear e habitações de interesse social', 'Av. Jornalista Roberto Marinho 4000, São Paulo', 2, NULL, 'Santo Amaro ', -23.637622, -46.663102, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.637622,
    longitude = -46.663102;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2059', 'Ligação Viária Perus - Água Branca', 'Conexão entre distritos Lapa e Perus', 'água branca', 5, NULL, 'Lapa ', -23.5152526, -46.690828, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5152526,
    longitude = -46.690828;