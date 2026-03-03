INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('398', 'EMEF - José de Alcântara Machado Filho', 'Readequação Predial', 'Rua Rua Mattia Filizzola, 76 - Real Parque.', 20, NULL, 'Butantã ', -23.6076274, -46.7050997, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6076274,
    longitude = -46.7050997;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('399', 'EMEF - Jardim Mitsutani I', 'Readequação Predial', 'Travessa Waldemar Cordeiro, 101 - Cohab Monet.', 20, NULL, 'Campo Limpo ', -23.6481856, -46.7899095, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6481856,
    longitude = -46.7899095;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('400', 'CEI - Parque Regina', 'Readequação Predial', 'Rua Inácio Manuel Tourinho, 101 - Parque Regina.', 20, NULL, 'Campo Limpo ', -23.6339025, -46.7532633, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6339025,
    longitude = -46.7532633;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('401', 'CEI - Aurindo dos Santos Freire', 'Readequação Predial', 'Rua Cauima, S/N - Vila Andrade.', 20, NULL, 'Campo Limpo ', -23.6264579, -46.7475672, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6264579,
    longitude = -46.7475672;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('402', 'CEI INDIRETO - Campo Limpo Iv', 'Readequação Predial', 'Rua Antônio Antunes, 215.', 20, NULL, 'Campo Limpo ', -23.6373046, -46.7726031, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6373046,
    longitude = -46.7726031;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('403', 'CEI INDIRETO - Jardim Monte Azul', 'Readequação Predial', ' Av. Tomás De Sousa, 874.', 20, NULL, 'M´Boi Mirim', -23.6456575, -46.7367301, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6456575,
    longitude = -46.7367301;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('404', 'CEI - Olga Benário Prestes', 'Readequação Predial', 'Rua Aroldo De Azevedo, 60 - Jardim Bom Refúgio.', 20, NULL, 'Campo Limpo ', -23.633154, -46.7760794, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.633154,
    longitude = -46.7760794;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('405', 'EMEI - Ignácio Henrique Romeiro', 'Readequação Predial', 'Alameda Jauaperi, 1639 - Indianópolis.', 20, NULL, 'Vila Mariana ', -23.6096601, -46.6714348, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6096601,
    longitude = -46.6714348;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('406', 'EMEI - Lucy Garcia Salgado, Profª', 'Readequação Predial', 'Alameda Dos Guaramomis, 1410 - Planalto Paulista.', 20, NULL, 'Vila Mariana ', -23.6163819, -46.6624643, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6163819,
    longitude = -46.6624643;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('407', 'EMEF - de Gaulle, Gen.', 'Readequação Predial', 'Rua Mourisca, 16 - Jardim Ibirapuera.', 20, NULL, 'M´Boi Mirim', -23.6578578, -46.7312684, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6578578,
    longitude = -46.7312684;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('408', 'EMEI - Viriato Correia', 'Readequação Predial', 'Rua Bento Rodrigues Bastos, 25 - Vila Friburgo.', 20, NULL, 'Capela do Socorro ', -23.6908878, -46.7018636, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6908878,
    longitude = -46.7018636;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('409', 'EMEI - Compositor Silvio Caldas', 'Readequação Predial', 'Rua Andre Pujos, S/N - Jardim Celeste.', 20, NULL, 'Ipiranga ', -23.6584803, -46.6131704, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6584803,
    longitude = -46.6131704;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('410', 'CEI - Francisco Perez, Ver.', 'Readequação Predial', 'Rua Jacape, 148 - Vila Agua Funda.', 20, NULL, 'Ipiranga ', -23.636141, -46.628632, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.636141,
    longitude = -46.628632;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('411', 'CEI IND - Frei Sérgio Calixto Val Verde', 'Readequação Predial', 'Rua Cancao De Exilio, 175 - Jd Sao Saverio.', 20, NULL, 'Ipiranga ', -23.6526303, -46.6105349, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6526303,
    longitude = -46.6105349;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('412', 'EMEI - Fátima Regina Da Cruz Sabino Calaça, Profª', 'Readequação Predial', 'Rua Mario Quintana, 15 - Jardim Sao Saverio.', 20, NULL, 'Ipiranga ', -23.6539933, -46.6098936, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6539933,
    longitude = -46.6098936;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('413', 'EMEF - Roberto Plínio Colacioppo, Prof', 'Readequação Predial', 'Rua Atílio Selva, 16 - Jardim Celeste.', 20, NULL, 'Ipiranga ', -23.6577235, -46.6136245, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6577235,
    longitude = -46.6136245;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('414', 'CEI IND - Marta Conovalov Vaelatti, Profª', 'Readequação Predial', 'Rua Líra Dos Verdes Anos, 145.', 20, NULL, 'Ipiranga ', -23.6526695, -46.6129521, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6526695,
    longitude = -46.6129521;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('415', 'CEI - Vila Missionária', 'Readequação Predial', 'Rua Pietro Mongini, S/N - Vila Missionaria.', 20, NULL, 'Cidade Ademar ', -23.6890746, -46.6488352, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6890746,
    longitude = -46.6488352;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('416', 'EMEI - Neusa Maria Rossi', 'Readequação Predial', 'Rua Lucrecia Maciel, 40 - Vila Guarani.', 20, NULL, 'Jabaquara ', -23.6342797, -46.6364567, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6342797,
    longitude = -46.6364567;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('417', 'CEU EMEI - Luciana Azevedo Pompermayer, Profª', 'Readequação Predial', 'Rua Prof. Artur Primavesi.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952,
    longitude = -46.608619;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('418', 'CEU EMEF - Maria Cristina Tartaglia Sena, Profª', 'Readequação Predial', 'Rua Prof. Artur Primavesi, S/N.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952,
    longitude = -46.608619;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('419', 'CEI - Jardim Clímax Ii', 'Readequação Predial', 'Rua Celestino Vidal, S/N.', 20, NULL, 'Ipiranga ', -23.6429724, -46.6016931, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6429724,
    longitude = -46.6016931;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('420', 'CEI - Inês Menezes Maria', 'Readequação Predial', 'Rua Isabel De Góis, 10.', 20, NULL, 'Ipiranga ', -23.6363439, -46.6100451, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6363439,
    longitude = -46.6100451;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('421', 'CEI - Assistente Social Vicentina Velasco', 'Readequação Predial', 'Tv. Castro Prado, 39', 20, NULL, 'Ipiranga ', -23.649473, -46.605505, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.649473,
    longitude = -46.605505;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('422', 'EMEF - Cassiano Ricardo', 'Readequação Predial', 'Rua João José Da Silva, 422.', 20, NULL, 'Ipiranga ', -23.6487325, -46.6042432, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6487325,
    longitude = -46.6042432;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('423', 'EMEF - Hercília de Campos Costa', 'Readequação Predial', 'Rua José Pereira Cruz, 95.', 20, NULL, 'Ipiranga ', -23.6489098, -46.6051285, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6489098,
    longitude = -46.6051285;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('424', 'CEI IND - Jardim Clímax I', 'Readequação Predial', 'Rua Francisco Pestana, 164.', 20, NULL, 'Ipiranga ', -23.6385273, -46.6045163, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6385273,
    longitude = -46.6045163;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('425', 'EMEF - José do Patrocínio', 'Readequação Predial', 'Rua Cantiga Ingênua, 64.', 20, NULL, 'Ipiranga ', -23.6475828, -46.5989515, FALSE)
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
VALUES ('427', 'CEU - Parque Bristol', 'Readequação Predial', 'Rua Professor Artur Primavesi, S/N°.', 20, NULL, 'Ipiranga ', -23.6432952, -46.608619, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6432952,
    longitude = -46.608619;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('428', 'CEI - Santa Teresa', 'Readequação Predial', 'Rua Cláudio Ferreira Manoel, 140. Vila Santa Teresazona Sul.', 20, NULL, 'Ipiranga ', -23.6473049, -46.5946535, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6473049,
    longitude = -46.5946535;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('429', 'CEI - Jardim Guarani', 'Readequação Predial', 'Rua Santana Do Araçuaí, 168.', 20, NULL, 'Freguesia / Brasilândia', -23.4624218, -46.6907951, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4624218,
    longitude = -46.6907951;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('430', 'CEI - Vila Brasilândia', 'Readequação Predial', 'Rua Domingos Vega, 500.', 20, NULL, 'Freguesia / Brasilândia', -23.4635219, -46.7010797, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4635219,
    longitude = -46.7010797;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('431', 'EMEF - Castro Alves', 'Readequação Predial', 'Rua Agenor Alves Meira, 285.', 20, NULL, 'Freguesia / Brasilândia', -23.4594173, -46.677608, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4594173,
    longitude = -46.677608;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('432', 'CEI - Jardim Damasceno II', 'Readequação Predial', 'Rua Eliseu Reinaldo Moraes Vieira.', 20, NULL, 'Freguesia / Brasilândia', -23.4460226, -46.7036023, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4460226,
    longitude = -46.7036023;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('433', 'EMEI - Rosa E Carolina Agazzi', 'Readequação Predial', 'Rua Dr. Araújo Castro, S/N.', 20, NULL, 'Casa Verde ', -23.4614658, -46.6634046, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4614658,
    longitude = -46.6634046;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('434', 'CEI - Jardim Guairaca', 'Readequação Predial', 'Rua Jacitara Tipiti, 217.', 20, NULL, 'Vila Prudente ', -23.6043079, -46.540628, FALSE)
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
VALUES ('435', 'EMEF - Leonel Franca, Pe', 'Readequação Predial', 'Rua Xavier Dos Pássaros, 39.', 20, NULL, 'Pirituba / Jaraguá', -23.438786, -46.728329, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.438786,
    longitude = -46.728329;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('436', 'EMEF - Júlio de Oliveira', 'Readequação Predial', 'Rua Júlio De Oliveira, 160.', 20, NULL, 'Perus ', -23.4028916, -46.7383861, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4028916,
    longitude = -46.7383861;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('437', 'EMEF - Remo Rinaldi Naddeo, Prof', 'Readequação Predial', 'Rua Dionísio Bellante, 487.', 20, NULL, 'Perus ', -23.4325224, -46.7943032, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4325224,
    longitude = -46.7943032;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('438', 'EMEF - Paulo Prado', 'Readequação Predial', 'Rua Pompeu Bertoni, 80.', 20, NULL, 'Perus ', -23.4299311, -46.7928059, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4299311,
    longitude = -46.7928059;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('439', 'EMEF - Milena Benedicto, Profª', 'Readequação Predial', 'Av. Felippo Sturba, 25.', 20, NULL, 'Perus ', -23.4386689, -46.789015, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4386689,
    longitude = -46.789015;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('440', 'EMEI - Oswaldo Cruz', 'Readequação Predial', 'Rua Carlos Gerolomo Mônaco, 171.', 20, NULL, 'Vila Mariana ', -23.5973805, -46.6232109, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5973805,
    longitude = -46.6232109;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('441', 'CEMEI - Suzana Campos Tauil (antiga EMEI Sena Madureira)', 'Readequação Predial', ' Rua Loefgren, 1963.', 20, NULL, 'Vila Mariana ', -23.5998865, -46.6450463, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5998865,
    longitude = -46.6450463;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('442', 'CEI - Eduardo Campos', 'Readequação Predial', 'Rua Dom Bernardo Nogueira, 921.', 20, NULL, 'Ipiranga ', -23.6082, -46.6203319, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6082,
    longitude = -46.6203319;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('443', 'EMEI - Heitor Villa Lobos', 'Readequação Predial', 'Rua Curitiba, 232.', 20, NULL, 'Vila Mariana ', -23.5819437, -46.6542667, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5819437,
    longitude = -46.6542667;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('444', 'EMEF - José Maria Lisboa', 'Readequação Predial', 'Praça João Rodrigues, 575.', 20, NULL, 'Ipiranga ', -23.6140265, -46.6129839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6140265,
    longitude = -46.6129839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('445', 'EMEI - Manuel Soares Neiva', 'Readequação Predial', 'Praca Cosmopolita, 9.', 20, NULL, 'Ipiranga ', -23.6039743, -46.6130244, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6039743,
    longitude = -46.6130244;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('446', 'EMEI - Montese', 'Readequação Predial', 'Rua Domingos De Rogatis, 91.', 20, NULL, 'Ipiranga ', -23.6130487, -46.616873, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6130487,
    longitude = -46.616873;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('447', 'CEI - Padre Gregório Westrupp', 'Readequação Predial', 'Rua Estado De Israel, 565.', 20, NULL, 'Vila Mariana ', -23.59454, -46.6451664, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59454,
    longitude = -46.6451664;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('448', 'EMEI - São Paulo', 'Readequação Predial', 'Rua Pedro De Toledo, 1231.', 20, NULL, 'Vila Mariana ', -23.5981869, -46.648377, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5981869,
    longitude = -46.648377;