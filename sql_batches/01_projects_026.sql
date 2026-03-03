INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1602', 'EMEF - Jose do Patrocinio', 'Manutenção em Unidades Educacionais', 'R. Cantiga Ingênua, 64 - Jardim Santa Emilia, São Paulo - SP, 04184-065', 20, NULL, NULL, -23.6475828, -46.5989515, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6475828,
    longitude = -46.5989515;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1603', 'EMEI - Padre Mario Marques e Serra', 'Manutenção em Unidades Educacionais', 'R. Francisco Pestana, 10 - Jardim Maria Estela, São Paulo - SP, 04176-130', 20, NULL, NULL, -23.6372438, -46.6058809, FALSE)
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
VALUES ('1604', 'CEU - São Rafael', 'Manutenção em Unidades Educacionais', 'Rua Cinira Polonio, 100 - Promorar Rio Claro - CEP: 08395320', 20, NULL, NULL, -23.620626, -46.456258, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.620626,
    longitude = -46.456258;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1605', 'EMEF - Alceu Amoroso Lima', 'Manutenção em Unidades Educacionais', 'R. Carmem Tortola, 48 - Conj. Promorar Rio Claro, São Paulo - SP, 08395-330', 20, NULL, NULL, -23.6210448, -46.4575556, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6210448,
    longitude = -46.4575556;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1606', 'EMEF - Professor José Carlos Nicoleto – Zito', 'Manutenção em Unidades Educacionais', 'R. Bandeira de Aracambi, 707 - Jardim Rodolfo Pirani, São Paulo - SP, 08310-010', 20, NULL, NULL, -23.6310951, -46.457106, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6310951,
    longitude = -46.457106;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1607', 'EMEI - Elis Regina', 'Manutenção em Unidades Educacionais', 'R. Ernesto Manograsso, 340 - Cidade São Mateus, São Paulo - SP, 03963-100', 20, NULL, NULL, -23.6109678, -46.4794611, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6109678,
    longitude = -46.4794611;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1608', 'EMEF - Henrique Souza Filho – HENFIL', 'Manutenção em Unidades Educacionais', 'R. Érico Semer, S/N - Jardim Marilu, São Paulo - SP, 08371-400', 20, NULL, NULL, -23.5966278, -46.4229637, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5966278,
    longitude = -46.4229637;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1609', 'EMEF - Arquiteto Vilanova Artigas', 'Manutenção em Unidades Educacionais', 'R. Guarantã, S/N - Parque dos Bancarios, São Paulo - SP, 03924-120', 20, NULL, NULL, -23.6002335, -46.5095133, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6002335,
    longitude = -46.5095133;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1610', 'EMEF - Marcos Melega', 'Manutenção em Unidades Educacionais', 'Rua Monteblanc, 98', 20, NULL, NULL, -29.4625007, -50.5753603, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -29.4625007,
    longitude = -50.5753603;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1611', 'EMEF - Coronel Ary Gomes', 'Manutenção em Unidades Educacionais', ' Rua Benedito Alessio, 184 - Jardim Andarai, São Paulo - SP, 02166-100', 20, NULL, NULL, -23.5260245, -46.582152, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5260245,
    longitude = -46.582152;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1612', 'EMEF - Dezoito do Forte', 'Manutenção em Unidades Educacionais', 'Rua Hafiz Abi Chedid, 110 - Vila Bom Jardim, São Paulo - SP, 04937-210', 20, NULL, NULL, -23.6871486, -46.7582117, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6871486,
    longitude = -46.7582117;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1613', 'CEI  - Nair Tadiello Gracioso', 'Manutenção em Unidades Educacionais', 'Av. Pio XI, 120 - Vila Missionaria, São Paulo - SP, 04430-150', 20, NULL, 'Cidade Ademar ', -23.691541, -46.6492443, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.691541,
    longitude = -46.6492443;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1614', 'CEI  - Prof Maria Margarida Rodrigues De Oliveira', 'Manutenção em Unidades Educacionais', 'Rua Domênico Palma, 401 - Cupecê, São Paulo - SP, 04652-234', 20, NULL, 'Cidade Ademar ', -23.6641023, -46.6660785, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6641023,
    longitude = -46.6660785;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1615', 'CEI  - Vereador Rubens Granja', 'Manutenção em Unidades Educacionais', 'R. Santa Cruz do Rio Pardo, 252 - Americanópolis, São Paulo - SP, 04411-120', 20, NULL, 'Cidade Ademar ', -23.6790879, -46.6438277, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6790879,
    longitude = -46.6438277;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1616', 'CEI - Parque Fernanda', 'Manutenção em Unidades Educacionais', 'Rua Antônio Forlenza, 127 - Parque Fernanda, São Paulo - SP, 05888-010', 20, NULL, 'Campo Limpo ', -23.6757286, -46.79332, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6757286,
    longitude = -46.79332;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1617', 'CEI - Jardim Maria Sampaio', 'Manutenção em Unidades Educacionais', 'Av. Augusto Barbosa Tavares, 700 - Jardim Iracema, São Paulo - SP, 05790-140', 20, NULL, 'Campo Limpo ', -23.6429884, -46.7868869, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6429884,
    longitude = -46.7868869;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1618', 'EMEF - Jardim Mitsutani I', 'Manutenção em Unidades Educacionais', 'Travessa Waldemar Cordeiro, R. Monet, 101 - Cohab, SP, 05856-590', 20, NULL, NULL, -23.6477704, -46.7903314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6477704,
    longitude = -46.7903314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1619', 'Autódromo de Interlagos - 2023', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7033489, -46.7002579, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7033489,
    longitude = -46.7002579;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1620', 'EMEI - Sargento Max Wolf Filho', 'Readequação Predial', 'Rua Dona Maria Jovita da Conceição, 258 - Jardim Belem', 20, NULL, 'Ermelino Matarazzo ', -23.4878805, -46.4773929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4878805,
    longitude = -46.4773929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1621', 'EMEF - Octávio Mangabeira', 'Readequação Predial', 'R. Jarinu, 730 - Tatuape, São Paulo - SP, 03306-000', 20, NULL, 'Mooca ', -23.5468424, -46.5752755, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5468424,
    longitude = -46.5752755;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1622', 'EMEF - Doutor Miguel Vieira Ferreira', 'Readequação Predial', 'Praça Escolar, S/N - Cidade Dutra, São Paulo - SP, 04810-140', 20, NULL, 'Capela do Socorro ', -23.7094714, -46.6988621, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7094714,
    longitude = -46.6988621;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1623', 'EMEF - Professor Milton Ferreira De Albuquerque', 'Readequação Predial', 'Rua Georgina Bocchiglieri, 55 - Jardim Beatriz, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7378556, -46.7074779, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7378556,
    longitude = -46.7074779;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1624', 'EMEI - Marechal Osvaldo Cordeiro De Farias', 'Readequação Predial', 'Rua Henry Arthur Jones, 10 - Jardim Edi, São Paulo ', 20, NULL, 'Capela do Socorro ', -23.754031, -46.6707296, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.754031,
    longitude = -46.6707296;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1625', 'EMEF - Paulo Setubal', 'Readequação Predial', 'R. Francisco de Caldas, 50 - Jardim Ana Lucia, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7167027, -46.690111, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7167027,
    longitude = -46.690111;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1626', 'EMEF - Pedro Geraldo Schunck', 'Readequação Predial', 'R. Antônio Bernal, 40 - Jardim Silveira, São Paulo - SP, 04892-100', 20, NULL, 'Parelheiros ', -23.851381, -46.7154816, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.851381,
    longitude = -46.7154816;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1627', 'EMEF - Placido de Castro', 'Readequação Predial', ' R. Antônio Mesquita Pereira, 78 - Capela do Socorro', 20, NULL, 'Capela do Socorro ', -23.6922472, -46.7031746, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6922472,
    longitude = -46.7031746;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1628', 'EMEI - Barão do Rio Branco', 'Readequação Predial', 'Rua Rafard, Av. Brg. Faria Lima, S/N - Conjunto Habitacional', 20, NULL, 'Capela do Socorro ', -23.7555093, -46.6865816, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7555093,
    longitude = -46.6865816;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1629', 'EMEF - Desembargador Teodomiro Toledo Piza', 'Readequação Predial', 'R. Pelagia Starbulov, 324 - Parque Grajau, São Paulo', 20, NULL, 'Capela do Socorro ', -23.7451548, -46.6912522, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7451548,
    longitude = -46.6912522;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1630', 'EMEF - Ulysses da Sylveira Guimarães ', 'Readequação Predial', 'R. Condé de Lancastre, 209 - Jardim Santa Fe (Zona Sul)', 20, NULL, 'Parelheiros ', -23.8322473, -46.7118186, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8322473,
    longitude = -46.7118186;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1631', 'EMEI - Zumbi Dos Palmares', 'Readequação Predial', ' Rua Armando Spósito, 225 - Parque America', 20, NULL, 'Capela do Socorro ', -23.7325461, -46.6907385, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7325461,
    longitude = -46.6907385;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1632', 'EMEF - Professora Caira Alayde Alvarenga Medea', 'Readequação Predial', 'R. Xavier da Silva Ferrão, 317 - Sítio Morro Grande', 20, NULL, 'Freguesia / Brasilândia', -23.4693245, -46.7004569, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4693245,
    longitude = -46.7004569;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1633', 'EMEF - Professora Cecilia Moraes de Vasconcelos', 'Readequação Predial', 'R. Rômulo Naldi, 147 - Jardim Elisa Maria', 20, NULL, 'Freguesia / Brasilândia', -23.4554558, -46.6846326, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4554558,
    longitude = -46.6846326;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1634', 'EMEI - Felipe Mestre Jou ', 'Readequação Predial', 'Av. João Paulo I, 1347 - Jardim Maracana', 20, NULL, 'Freguesia / Brasilândia', -23.4819859, -46.6873719, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4819859,
    longitude = -46.6873719;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1635', 'EMEF - Professor Gilberto Dupas', 'Readequação Predial', 'Av. Dep. Emílio Carlos, 3871 - Limão, São Paulo - SP, 02720-200', 20, NULL, 'Casa Verde ', -23.4750814, -46.6688929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4750814,
    longitude = -46.6688929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1636', 'EMEF - Professora Joaninha Grassi Fagundes', 'Readequação Predial', 'R. Alberto Andaló, 36 - Parque Sao Luis', 20, NULL, 'Freguesia / Brasilândia', -23.482466, -46.688558, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.482466,
    longitude = -46.688558;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1637', 'EMEI - Coronel José Canavo Filho', 'Readequação Predial', 'R. Euvaldo Augusto Freire, 2 - Jardim Carombe', 20, NULL, 'Freguesia / Brasilândia', -23.4550094, -46.6994849, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4550094,
    longitude = -46.6994849;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1638', 'EMEF - José Herminio Rodrigues, Cel. PM', 'Readequação Predial', 'R. Pedro Pomar, S/N - Jardim Elisa Maria', 20, NULL, 'Freguesia / Brasilândia', -23.4613212, -46.6805575, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4613212,
    longitude = -46.6805575;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1639', 'EMEI - Manuel Bandeira', 'Readequação Predial', 'Rua Antônio Genele, 151 - Jardim Monte Alegre', 20, NULL, 'Freguesia / Brasilândia', -23.4758818, -46.7028915, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4758818,
    longitude = -46.7028915;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1640', 'EMEI - Martins Fontes', 'Readequação Predial', 'R. Bartolomeo Laurenti, 205 - Brasilandia', 20, NULL, 'Freguesia / Brasilândia', -23.4626069, -46.6770061, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4626069,
    longitude = -46.6770061;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1641', 'EMEF - Professor Neir Augusto Lopes ', 'Readequação Predial', 'R. Jorn. Octávio Ribeiro - Pena Branca, 20 - Vila Bela Vista', 20, NULL, NULL, -23.4645264, -46.6597372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4645264,
    longitude = -46.6597372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1642', 'EMEF - Professor Roberto Patricio', 'Readequação Predial', ' R. Antônio Domingues Freitas, 147 - Vila Amélia', 20, NULL, 'Casa Verde ', -23.4717992, -46.6548817, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4717992,
    longitude = -46.6548817;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1643', 'EMEF - Desembargador Sebastião Nogueira de Lima', 'Readequação Predial', 'R. Joaquina Maria dos Santos, 177 - Vila Rica', 20, NULL, 'Freguesia / Brasilândia', -23.4709501, -46.673705, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4709501,
    longitude = -46.673705;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1644', 'EMEI - Professor Alexandre Correia ', 'Readequação Predial', 'Praça Tito Pachêco, 9 - Jardim Miriam, São Paulo - SP, 04419-140', 20, NULL, 'Cidade Ademar ', -23.6816694, -46.6427552, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6816694,
    longitude = -46.6427552;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1645', 'EMEF - Alferes Tiradentes ', 'Readequação Predial', 'R. Salvador Rodrigues Negrão, 602 - Vila Marari', 20, NULL, 'Cidade Ademar ', -23.6713521, -46.6620472, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6713521,
    longitude = -46.6620472;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1646', 'EMEF - Professora Ana Maria Alves Benetti', 'Readequação Predial', 'Rua Cruz das Almas, 74 - Vila Campestre - São Paulo - SP, 04330060', 20, NULL, 'Jabaquara ', -23.6525983, -46.6460654, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6525983,
    longitude = -46.6460654;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1647', 'EMEI - Anhanguera', 'Readequação Predial', 'Rua Sargento José Martins Dias, s/n - Jardim Anhanguera - São Paulo - SP, 04675040', 20, NULL, 'Santo Amaro ', -23.6623183, -46.6860652, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6623183,
    longitude = -46.6860652;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1648', 'EMEF - Doutor Antônio Carlos De Abreu Sodré', 'Readequação Predial', 'Rua Juari, 835 - Jardim Sabara - São Paulo - SP, 04446160', 20, NULL, 'Santo Amaro ', -23.686014, -46.6822199, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686014,
    longitude = -46.6822199;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1649', 'EMEF - Deputado João Sussumu Hirata', 'Readequação Predial', 'Estrada do Alvarenga, 2113 - Jardim Ofelia - São Paulo - SP, 04467000', 20, NULL, 'Cidade Ademar ', -23.6949086, -46.6553296, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6949086,
    longitude = -46.6553296;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1650', 'EMEF - Professor Laerte Ramos De Carvalho', 'Readequação Predial', 'Rua Beijui, 296 - Vila Isa - São Paulo - SP, 04689000', 20, NULL, 'Santo Amaro ', -23.6683223, -46.6929462, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6683223,
    longitude = -46.6929462;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1651', 'EMEI - Professora Lourdes Heredia Mello', 'Readequação Predial', 'Praça Whitaker Penteado, 264 - Vila Guarani - São Paulo - Sp, 04307050', 20, NULL, 'Jabaquara ', -23.6306998, -46.6434658, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6306998,
    longitude = -46.6434658;