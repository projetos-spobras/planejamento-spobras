INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1652', 'EMEF - Olavo Fontoura', 'Readequação Predial', 'Rua Doutor Lafaiette de Sousa Camargo, 72 - Jardim Climax - São Paulo - SP, 04177380', 20, NULL, 'Ipiranga ', -23.6385603, -46.6068035, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6385603,
    longitude = -46.6068035;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1653', 'EMEI - Tenente Paulo Alves', 'Readequação Predial', 'Rua José de camargo, 259 - Vila mariana - São Paulo - SP, 04139010', 20, NULL, 'Vila Mariana ', -23.605914, -46.6335611, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.605914,
    longitude = -46.6335611;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1654', 'CIEJA - Paulo Emilio Vanzolini - Cambuci', 'Readequação Predial', 'Rua Cesário Ramalho, 111 - Cambuci - São Paulo - SP, 01521000', 20, NULL, 'SÉ', -23.5600389, -46.6244114, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5600389,
    longitude = -46.6244114;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1655', 'EMEI - Dom Pedro I', 'Readequação Predial', 'Praça Nami Jafet, 305 - Ipiranda - São Paulo - SP, 04205020', 20, NULL, 'Ipiranga ', -23.5807003, -46.6050531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5807003,
    longitude = -46.6050531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1656', 'CEI - Zézinho', 'Readequação Predial', 'Rua do Pacificador, 31 - Cidade Nova Heliópolis - São Paulo - SP, 04235025', 20, NULL, 'Ipiranga ', -23.6147473, -46.5892989, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6147473,
    longitude = -46.5892989;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1657', 'EMEF - Professor Mário Schenberg', 'Readequação Predial', 'Rua Papa Gregorio Magno, 133 - Vila Missionaria - São Paulo - SP, 04430130', 20, NULL, 'Cidade Ademar ', -23.6929938, -46.6533733, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6929938,
    longitude = -46.6533733;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1658', 'EMEF - Professor Nelson Pimentel Queiroz', 'Readequação Predial', 'Avenida Leonardo da Vinci, 1371 - Vila Guarani - São Paulo - SP, 04313001', 20, NULL, 'Jabaquara ', -23.6408468, -46.6392156, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6408468,
    longitude = -46.6392156;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1659', 'EMEF - Comandante Pereira Carneiro', 'Readequação Predial', 'Avenida João Peixoto Viegas, 441 - Jardim Consorcio - São Paulo - SP, 04437000', 20, NULL, 'Santo Amaro ', -23.6716034, -46.6761927, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6716034,
    longitude = -46.6761927;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1660', 'EMEF - Professor Antonio Duarte De Almeida', 'Readequação Predial', 'Rua Trevo de Santa Maria, 1 - Parque Guarani - São Paulo - SP, 08235560', 20, NULL, 'Itaquera ', -23.5209608, -46.4616323, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5209608,
    longitude = -46.4616323;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1661', 'EMEI - Antonio Gonçalves Dias ', 'Readequação Predial', 'Rua Antonio Moura Andrade, 395 - Jardim Redil - São Paulo -SP, 08210660', 20, NULL, 'Itaquera ', -23.5311659, -46.4432855, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5311659,
    longitude = -46.4432855;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1662', 'EMEI - Doutor Bueno De Azevedo', 'Readequação Predial', 'Rua Augusto Cavalcanti, 232 - Conj.Resid.Jose Bonifacio - São Paulo - SP, 08253110', 20, NULL, 'Itaquera ', -23.5441861, -46.4361891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441861,
    longitude = -46.4361891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1663', 'CIEJA - Itaquera', 'Readequação Predial', 'Avenida Itaquera, 221 - Cidade Lider - São Paulo - SP, 08285060', 20, NULL, 'Penha ', -23.5530709, -46.4796205, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5530709,
    longitude = -46.4796205;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1664', 'EMEI - Professora Denise Mercier Rodrigues Aguiar', 'Readequação Predial', 'Rua Geovanni Quadri, 354 - Conj.Resid.Jose Bonifacio - São Paulo - SP, 08255500', 20, NULL, 'Itaquera ', -23.5485398, -46.4339176, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5485398,
    longitude = -46.4339176;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1665', 'EMEF - Sergio Milliet', 'Readequação Predial', 'Rua Doutor Paulo de Andrade Arantes, 125 - Parque Maria Luiza - São Paulo - SP, 03451090', 20, NULL, 'Aricanduva ', -23.5576231, -46.5170141, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576231,
    longitude = -46.5170141;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1666', 'EMEI - Professora Suzana Evangelina Felipe', 'Readequação Predial', 'Praça Haroldo Dalton, s/n - Vila Nova Manchester - Sâo Paulo - SP, 03444090', 20, NULL, 'Aricanduva ', -23.5477427, -46.5340192, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5477427,
    longitude = -46.5340192;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1667', 'EMEI - Professora Sylvia Varoni De Castro', 'Readequação Predial', 'Rua Antonio Gandini, 857 - Itaquera - São Paulo - SP, 08215460', 20, NULL, 'Itaquera ', -23.5372417, -46.4397689, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5372417,
    longitude = -46.4397689;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1668', 'EMEI - Professora Thereza The De Carvalho', 'Readequação Predial', 'Rua Barra do Camarajibe, 200 - Parque Cruzeiro do Sul - São Paylo - SP, 03383120', 20, NULL, 'Aricanduva ', -23.5822754, -46.5306899, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5822754,
    longitude = -46.5306899;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1669', 'EMEF - Vicentina Ribeiro Da Luz', 'Readequação Predial', 'Rua Ailton Nagrão Fazzio, 59 - Parque Santo Eduardo - São Paulo - SP, 03384020', 20, NULL, 'Aricanduva ', -23.5779538, -46.5227682, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5779538,
    longitude = -46.5227682;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1670', 'EMEI - Ataulfo Alves', 'Readequação Predial', 'Rua Cachoeira de Minas, 172 - Jardim Santa Adélia - São Paulo - SP, 03973050', 20, NULL, 'São Mateus ', -23.6169251, -46.4805119, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6169251,
    longitude = -46.4805119;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1671', 'EMEF - Professor Carlos Correa Mascaro', 'Readequação Predial', 'Travessa Salve a Mocidade, 932 - Jardim da Conquista - São Paulo - SP, 08343320', 20, NULL, 'São Mateus ', -23.604569, -46.4449423, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604569,
    longitude = -46.4449423;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1672', 'EMEF - Claudio Manoel Da Costa', 'Readequação Predial', 'Avenida Rodolfo Pirani, 224 - jardim Rodolfo Pirani - São Paulo - SP, 08310000', 20, NULL, 'São Mateus ', -23.6267675, -46.4626465, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6267675,
    longitude = -46.4626465;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1673', 'EMEI - Clovis Bevilacqua', 'Readequação Predial', 'Rua Jose de Queiroz Matos, 190 - Jardim Grimaldi - São Paulo - SP, 03922040', 20, NULL, 'Sapopemba', -23.5981981, -46.5155475, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5981981,
    longitude = -46.5155475;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1674', 'EMEF - Professor Enzo Antonio Silvestrin', 'Readequação Predial', 'Estrada do Congo, 204 - Jardim Pirituba - São Paulo - SP, 02984090', 20, NULL, 'Pirituba / Jaraguá', -23.4436903, -46.7204468, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4436903,
    longitude = -46.7204468;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1675', 'EMEF - Professor Ernesto De Moraes Leme', 'Readequação Predial', 'Rua Vale das Flores, 120 - Jardim Santa Lucrecia - São Paulo -SP, 05185400', 20, NULL, 'Pirituba / Jaraguá', -23.4442418, -46.7467648, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4442418,
    longitude = -46.7467648;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1676', 'EMEI - Euripedes Simões De Paula', 'Readequação Predial', 'Rua Barra do Jacaré, 73 - Vila Herminia - São Paulo - Sp, 02977090', 20, NULL, 'Freguesia / Brasilândia', -23.4737288, -46.7099506, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4737288,
    longitude = -46.7099506;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1677', 'EMEI - Morro Doce', 'Readequação Predial', 'Rua Elisa Dina, 293 - Jardim Britania - São Paulo - Sp, 05269080', 20, NULL, 'Perus ', -23.4338404, -46.7911644, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4338404,
    longitude = -46.7911644;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1678', 'CEI - Parque Anhanguera', 'Readequação Predial', 'Rua Pedro José de Lima, 1020 - Jardim Anhanguera - São Paulo - SP, 05267174', 20, NULL, 'Perus ', -23.4400536, -46.7879453, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4400536,
    longitude = -46.7879453;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1679', 'EMEI - Paulo VI', 'Readequação Predial', 'Rua Carlos Perinello, s/n - Vila Mangalot - São Paulo - SP, 05132210', 20, NULL, 'Pirituba / Jaraguá', -23.5032249, -46.7441345, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5032249,
    longitude = -46.7441345;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1680', 'EMEF - Professora Philó Gonçalves Santos', 'Readequação Predial', 'Rua Alagoa nova, s/n - perus - São Paulo - Sp, 05202280', 20, NULL, 'Perus ', -23.4016513, -46.7430117, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4016513,
    longitude = -46.7430117;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1681', 'CEI - Indireta Espaço Da Comunidade II', 'Readequação Predial', 'Rua Diego Sande, 150 - Jardim Camargo - Sãp Paulo - SP, 08121100', 20, NULL, 'Itaim Paulista ', -23.498822, -46.3847982, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.498822,
    longitude = -46.3847982;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1682', 'EMEI - Doutor Fausto Ribeiro Da Silva Filho', 'Readequação Predial', 'Rua Alexandre Dias Nogueira, 365 - Vila Nova Curuca - São Paulo - SP, 08031240', 20, NULL, 'Itaim Paulista ', -23.5135003, -46.4211493, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5135003,
    longitude = -46.4211493;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1683', 'EMEI - Globo Do Sol', 'Readequação Predial', 'Rua Globo do Sol, 85 - Jardim Pedro Jose Nunes - São Paulo - SP, 08061290', 20, NULL, 'São Miguel Paulista ', -23.5042843, -46.4633477, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5042843,
    longitude = -46.4633477;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1684', 'EMEF - Professora Maria Helena Faria Lima', 'Readequação Predial', 'Avenida Roland Garros, 573 - Jardim Brasil - São Paulo - SP, 02235000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4806041, -46.5820587, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4806041,
    longitude = -46.5820587;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1685', 'EMEI - Dona Maria Yolanda De Souza Pinto Hahne', 'Readequação Predial', 'Rua Gastão Madeira, 340 - Vila Maria Alta - São paulo - SP, 02131080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5057841, -46.5853201, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5057841,
    longitude = -46.5853201;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1686', 'EMEF - Octavio Pereira Lopes', 'Readequação Predial', 'Rua Alcy Borges dos Santos - 242 - São Paulo, SP, 02276020', 20, NULL, 'Jaçanã / Tremembé', -23.4614314, -46.5851135, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4614314,
    longitude = -46.5851135;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1687', 'EMEF - Dom Pedro I', 'Readequação Predial', 'Praça Presidente Janio da Silva Quadros, 420 - Jardim Japão - São Paulo - SP, 02132000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5000263, -46.5790112, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5000263,
    longitude = -46.5790112;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1688', 'EMEF - Rodrigues Alves', 'Readequação Predial', 'Rua Borges. 242 - Parada Inglesa - São Paulo - SP, 02247000', 20, NULL, 'Santana / Tucuruvi', -23.4896575, -46.6000589, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4896575,
    longitude = -46.6000589;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1689', 'EMEF - Professora Shirley Guio', 'Readequação Predial', 'Rua Cristovão Lins, 611 - Vila Isolina Mazzei - São Paulo - SP, 02083000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4950342, -46.5968131, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4950342,
    longitude = -46.5968131;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1690', 'EMEF  - Professor Antônio De Sampaio Doria', 'Readequação Predial', 'Praça Tito Pacheco, 7 - jardim Miriam - São Paulo - SP, 04419140', 20, NULL, 'Cidade Ademar ', -23.6815903, -46.6426927, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6815903,
    longitude = -46.6426927;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1691', 'EMEF - Armando Arruda Pereira', 'Readequação Predial', 'Rua Coronel Luis de faria e Sousa, 12 - Vila do Encontro - São Paulo - SP, 04323010', 20, NULL, 'Jabaquara ', -23.6522075, -46.640893, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6522075,
    longitude = -46.640893;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1692', 'EMEI - Arthur Baptista Da Luz', 'Readequação Predial', 'Rua Cunha Mendes, 90 - Jardim Itapura - São Paulo - SP, 04467110', 20, NULL, 'Cidade Ademar ', -23.693703, -46.6554179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.693703,
    longitude = -46.6554179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1693', 'EMEI - Ayrton Senna Da Silva', 'Readequação Predial', 'Rua Sebastião Afonso, 271 - Jardim Mirim - São Paulo - SP, 04417100', 20, NULL, 'Cidade Ademar ', -23.6789404, -46.6356574, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6789404,
    longitude = -46.6356574;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1694', 'EMEF - Cacilda Becker', 'Readequação Predial', 'Avenida Engenheiro Armando Arruda Pereira, 2013 - Jabaquara - São Paulo - SP, 04309011', 20, NULL, 'Jabaquara ', -23.6454492, -46.640516, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6454492,
    longitude = -46.640516;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1695', 'EMEI - Geloira De Campos', 'Readequação Predial', 'Rua Laplace, 421 - Brooklin Novo - São Paulo - SP, 04622000', 20, NULL, 'Santo Amaro ', -23.6270471, -46.6818944, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6270471,
    longitude = -46.6818944;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1696', 'EMEF - Professora Liliane Verzini Silva', 'Readequação Predial', 'Avenida Francesco Maria Melani, S/N - Jardim Luso - São Paulo - SP, 04421180', 20, NULL, 'Cidade Ademar ', -23.6923543, -46.6398236, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6923543,
    longitude = -46.6398236;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1697', 'EMEF - Professora Maria Lucia Dos Santos', 'Readequação Predial', 'Rua Estampa Esportiva, 55 - Americanópolis - São Paulo - SP, 04429060', 20, NULL, 'Cidade Ademar ', -23.6763295, -46.6637539, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6763295,
    longitude = -46.6637539;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1698', 'CEI - Celso Daniel', 'Readequação Predial', 'Rua Jose Doria de Andrade, 535 - Cidade Lider - São Paulo - SP, 08285340', 20, NULL, 'Itaquera ', -23.5554837, -46.4759127, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5554837,
    longitude = -46.4759127;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1699', 'CEI - Danielle Monteiro, GCMF', 'Readequação Predial', 'Rua Senador Henrique Novaes, 310 - jardim Caguassu - São Paulo - SP, 03906000', 20, NULL, 'Aricanduva ', -23.5822236, -46.5124081, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5822236,
    longitude = -46.5124081;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1700', 'CEI  - Vila Chuca', 'Readequação Predial', 'Rua Andre Basili, 245 - Vial Chuca - São Paulo - SP, 08270370', 20, NULL, 'Itaquera ', -23.561789, -46.4532342, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561789,
    longitude = -46.4532342;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1701', 'EMEF - Prestes Maia', 'Readequação Predial', 'Rua Selma Kurtz, 166 - Jardim Maria Luiza - São Paulo - SP, 04434010', 20, NULL, 'Cidade Ademar ', -23.6785492, -46.6651583, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6785492,
    longitude = -46.6651583;