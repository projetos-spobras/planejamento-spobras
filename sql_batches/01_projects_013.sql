INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('652', 'Viaduto na Praça Pérola Byington', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Santo Amaro/Rua Brigadeiro Luiz Antonio sobre a Avenida Radial Leste-Oeste – Bela Vista. ', 16, NULL, 'SÉ', -23.555755, -46.639505, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555755,
    longitude = -46.639505;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('653', 'Viaduto Shuhei Uetsuka', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Conselheiro Furtado sobre a Avenida Radial Leste Oeste - Sé. ', 16, NULL, 'SÉ', -23.556615, -46.633015, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556615,
    longitude = -46.633015;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('654', 'Viaduto Mie Ken', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua da Glória sobre a Avenida Radial Leste Oeste – Liberdade. ', 16, NULL, 'SÉ', -23.556569, -46.634166, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556569,
    longitude = -46.634166;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('655', 'Viaduto Jaceguai', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Radial Leste Oeste sobre a Avenida 23 de Maio - Liberdade.', 16, NULL, 'SÉ', -23.556205, -46.637566, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556205,
    longitude = -46.637566;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('656', 'Viaduto Pedroso (Bispo Tid Hernandes)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Prolongamento da Rua Pedroso até a Rua Vergueiro sobre a Avenida 23 de Maio – Bela Vista', 16, NULL, 'SÉ', -23.562695, -46.640141, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.562695,
    longitude = -46.640141;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('657', 'Passagem Inferior a Av. Domingos de Souza Marques à Av. Alexandre Colares', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Domingos de Souza Marques e a Avenida Alexandre Colares sob a Avenida Frederico Fellini (próxima à Rodovia Anhanguera) - Parque Anhanguera.', 16, NULL, 'Lapa ', -23.509004, -46.738198, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.509004,
    longitude = -46.738198;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('658', 'Passagem Inferior na Av. Mutinga sob a Av. Raimundo Pereira de Magalhães', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Av. Mutinga sob a Av. Raimundo Pereira de Magalhães - Pirituba', 16, NULL, 'Pirituba / Jaraguá', -23.48856, -46.72822, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48856,
    longitude = -46.72822;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('659', 'Complexo Viário Nelson Paulino', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Viaduto de interligação da Avenida Luis Gushiken com a Avenida Guido Caloi', 16, NULL, 'M´Boi Mirim', -23.663779, -46.726702, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.663779,
    longitude = -46.726702;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('660', 'Ponte Edson de Godoy Melo (Itapaiuna)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Acesso Vindo da Marginal Pinheiros', 16, NULL, 'Santo Amaro ', -23.640958, -46.726197, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.640958,
    longitude = -46.726197;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('661', 'Terminal Itaim Paulista', 'Construção de terminal de ônibus municipal com 10 plataformas e área total edificada de 5.539m²', 'Av. Marechal Tito de frente à confluência com a Estrada Dom João Nery', 5, NULL, 'Itaim Paulista ', -23.4946, -46.40465, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4946,
    longitude = -46.40465;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('662', 'Ponte Nordestino', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Ponte Nordestinos', 16, NULL, 'Penha ', -23.507191, -46.551166, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.507191,
    longitude = -46.551166;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('663', 'Viaduto na Rua Arlindo Colaço', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Arlindo Colaço e a Avenida Doutor José Artur Nova sobre a CPTM e a Rua Idio', 16, NULL, 'São Miguel Paulista ', -23.49081, -46.43976, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49081,
    longitude = -46.43976;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('664', 'Viaduto Vice Presidente José de Alencar', 'Corrigir, pois não encontrei o endereço', 'praça da sé', 16, NULL, 'SÉ', -23.5503099, -46.6342009, FALSE)
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
VALUES ('665', 'Centro TEA - Zona Norte', 'Construção de novas instalações do primeiro Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Av Santos Dumont, 1318', 24, NULL, 'Santana / Tucuruvi', -23.516163, -46.629538, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.516163,
    longitude = -46.629538;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('666', 'Nova sede SME - Edifício Canadá', 'Reforma do Edifício Canadá', 'RUA XV DE NOVEMBRO, 240', 20, NULL, 'SÉ', -23.546855, -46.634314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546855,
    longitude = -46.634314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('667', 'Nova sede SME - Edifício Bráulio Gomes ', 'Reforma Edifício Bráulio Gomes', 'RUA BRAULIO GOMES 175 ', 20, NULL, 'SÉ', -23.5475075, -46.6413052, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5475075,
    longitude = -46.6413052;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('668', 'SME - Planetário Jd. Paulistano', 'Construção de Planetário', 'Rua Aparecida do Taboado S/N', 20, NULL, NULL, -23.4590442, -46.7080542, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4590442,
    longitude = -46.7080542;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('669', 'SME - Planetário Parelheiros', 'Construção de Planetário', 'R José Pedro de Borba, 20', 20, NULL, NULL, -23.8284719, -46.7241212, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8284719,
    longitude = -46.7241212;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('670', 'SME - Teatro ( CEU Jardim Paulistano)', 'Construção de Teatro', 'Rua Aparecida do Taboado S/N', 20, NULL, NULL, -23.4590442, -46.7080542, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4590442,
    longitude = -46.7080542;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('671', 'CEU Rosa da China', 'Manutenção em Unidades Educacionais', 'rua CLARA PETRELA 113', 20, NULL, 'Sapopemba', -23.6219227, -46.5011468, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6219227,
    longitude = -46.5011468;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('672', 'CEU PAZ', 'Manutenção em Unidades Educacionais', 'RUA DANIEL CERRI 1549', 20, NULL, 'Freguesia / Brasilândia', -23.4481102, -46.6887195, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4481102,
    longitude = -46.6887195;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('673', 'CEU Três Lagos', 'Manutenção em Unidades Educacionais', 'MARIA MOURA DA CONCEICAO SN', 20, NULL, 'Capela do Socorro ', -23.7667247, -46.6798706, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7667247,
    longitude = -46.6798706;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('674', 'CEU Campo Limpo', 'Manutenção em Unidades Educacionais', 'AV CARLOS LACERDA 678', 20, NULL, 'Campo Limpo ', -23.636989, -46.7795195, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.636989,
    longitude = -46.7795195;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('675', 'CEU Jardim Paulistano', 'Manutenção em Unidades Educacionais', 'RUA APARECIDA DO TABOADO SN', 20, NULL, 'Freguesia / Brasilândia', -23.4590442, -46.7080542, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4590442,
    longitude = -46.7080542;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('676', 'CEU Anhanguera', 'Manutenção em Unidades Educacionais', 'RUA PEDRO JOSE DE LIMA SN', 20, NULL, 'Perus ', -23.4417665, -46.7880047, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4417665,
    longitude = -46.7880047;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('677', 'CEU São Mateus', 'Manutenção em Unidades Educacionais', 'RUA CURUMATIM 199', 20, NULL, 'São Mateus ', -23.601972, -46.4500587, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.601972,
    longitude = -46.4500587;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('678', 'CEU Butantã', 'Manutenção em Unidades Educacionais', 'RUA HEITOR ANTONIO EIRAS GARCIA ENGENHEIRO 1870', 20, NULL, 'Butantã ', -23.5907915, -46.773298, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5907915,
    longitude = -46.773298;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('679', 'CEU Pera Marmelo', 'Manutenção em Unidades Educacionais', 'RUA PERAMARMELO 225', 20, NULL, 'Pirituba / Jaraguá', -23.4369287, -46.750919, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4369287,
    longitude = -46.750919;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('680', 'CEU Perus', 'Manutenção em Unidades Educacionais', 'RUA BERNARDO JOSE DE LORENA SN ', 20, NULL, 'Perus ', -23.4057127, -46.7513843, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4057127,
    longitude = -46.7513843;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('681', 'CEU Alvarenga', 'Manutenção em Unidades Educacionais', 'RUA ALVARENGA 3752', 20, NULL, 'Cidade Ademar ', -23.704624, -46.643744, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.704624,
    longitude = -46.643744;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('682', 'CEU Cidade Dutra', 'Manutenção em Unidades Educacionais', 'AVENIDA INTERLAGOS 7350', 20, NULL, 'Capela do Socorro ', -23.7108747, -46.704458, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7108747,
    longitude = -46.704458;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('683', 'CEU Vila Rubi', 'Manutenção em Unidades Educacionais', 'Rua DOMINGOS TARROSO 101', 20, NULL, 'Capela do Socorro ', -23.7280559, -46.6971732, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7280559,
    longitude = -46.6971732;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('684', 'CEU Parque das Veredas', 'Manutenção em Unidades Educacionais', 'rua DANIEL MULLER 347', 20, NULL, 'Itaim Paulista ', -23.5132857, -46.3898958, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5132857,
    longitude = -46.3898958;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('685', 'CEU Uirapuru', 'Manutenção em Unidades Educacionais', 'RUA NAZIR MIGUEL 849', 20, NULL, 'Butantã ', -23.600713, -46.7890422, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.600713,
    longitude = -46.7890422;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('686', 'CEU Parque São Carlos', 'Manutenção em Unidades Educacionais', 'RUA CLAREAR 141', 20, NULL, 'São Miguel Paulista ', -23.509784, -46.473683, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.509784,
    longitude = -46.473683;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('687', 'CEU Heliópolis', 'Manutenção em Unidades Educacionais', 'ESTRADA DAS LAGRIMAS 2385', 20, NULL, 'Ipiranga ', -23.6218736, -46.5903965, FALSE)
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
VALUES ('688', 'CEU Vila Atlântica', 'Manutenção em Unidades Educacionais', 'Rua Coronel Jose Venancio Dias, 840', 20, NULL, 'Pirituba / Jaraguá', -23.4819974, -46.7626048, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4819974,
    longitude = -46.7626048;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('689', 'CEU CANTOS DO AMANHECER', 'Manutenção em Unidades Educacionais', 'AV CANTOS DO AMANHECER SN', 20, NULL, 'Campo Limpo ', -23.6496234, -46.7859499, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6496234,
    longitude = -46.7859499;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('988', 'ADM Diretoria Regional De Pirituba/Jaraguá', 'Readequação Predial', 'R. Aurélia, 996 - Lapa, São Paulo - SP, 05046-000', 20, NULL, 'Lapa ', -23.5308636, -46.6982677, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5308636,
    longitude = -46.6982677;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('989', 'ADM Diretoria Regional Do Ipiranga', 'Readequação Predial', 'R. Leandro Dupret, 525 - Vila Clementino, São Paulo - SP, 04025-012', 20, NULL, 'Vila Mariana ', -23.5990213, -46.6464331, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5990213,
    longitude = -46.6464331;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('990', 'ADM Diretoria Regional Do Itaquera', 'Readequação Predial', 'Av. Itaquera, 241 - Cidade Líder, São Paulo - SP, 08285-060', 20, NULL, 'Penha ', -23.5523641, -46.4795343, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5523641,
    longitude = -46.4795343;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('991', 'CEI Direta Vila Constança (Jaçanã/Tremembé)', 'Readequação Predial', 'RUA SÃO GERALDINO, 180 ', 20, NULL, 'Jaçanã / Tremembé', -23.475721, -46.58325, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.475721,
    longitude = -46.58325;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('992', 'CEI Indir Jardim Damasceno', 'Readequação Predial', 'RUA GREGORIO POMAR 10', 20, NULL, 'Freguesia / Brasilândia', -23.4514914, -46.6955408, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4514914,
    longitude = -46.6955408;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('993', 'CEI Direta  Jardim Luso', 'Readequação Predial', 'R. Oldegard Olsen Sapucaia, 275 - Jardim Luso, São Paulo - SP, 04421-000', 20, NULL, 'Cidade Ademar ', -23.6879282, -46.6362158, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6879282,
    longitude = -46.6362158;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('994', 'CEI Direta Deputado Jose Salvador Julianelli', 'Readequação Predial', 'R. Barão de Jaceguai, 201 - Campo Belo, São Paulo - SP, 04606-000', 20, NULL, 'Santo Amaro ', -23.6271411, -46.6815136, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6271411,
    longitude = -46.6815136;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('995', 'CEI Direta Jardim Monjolo', 'Readequação Predial', 'CALIXTO DE ALMEIDA 442', 20, NULL, NULL, -23.4889279, -46.7008532, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4889279,
    longitude = -46.7008532;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('996', 'CIEJA Lelia Gonçalvez', 'Manutenção em Unidades Educacionais', 'Praça DO TRABALHADOR, S/N PARQUE MARIA FERNANDES', 20, NULL, 'Parelheiros ', -23.768049, -46.71711, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.768049,
    longitude = -46.71711;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('997', 'CEI Indir Nossa Senhora Assunção', 'Readequação Predial', 'RUA JOSE PINTO DE AZEREDO 48', 20, NULL, NULL, -23.5737928, -46.7448836, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5737928,
    longitude = -46.7448836;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('998', 'CEI Direta 13 De Maio', 'Readequação Predial', 'R. Treze de Maio, 1279 - Bela Vista, São Paulo - SP, 01327-000', 20, NULL, 'SÉ', -23.5642728, -46.6450602, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5642728,
    longitude = -46.6450602;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('999', 'CEI Direta Adhemar Ferreira Da Silva', 'Readequação Predial', 'R. Antônio Carlos Mingues Lopes, S/N - Conj. Hab. Sitio Conceicao, São Paulo - SP, 08473-270', 20, NULL, 'Cidade Tiradentes ', -23.5818102, -46.3955142, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5818102,
    longitude = -46.3955142;