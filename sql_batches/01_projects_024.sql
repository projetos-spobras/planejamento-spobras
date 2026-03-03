INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1501', 'Parque Dom Pedro', 'Novo Parque Dom Pedro', 'Parque Dom Pedro sp', 5, NULL, 'SÉ', -23.5448544, -46.6315659, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5448544,
    longitude = -46.6315659;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1502', 'EMEF - Marli Ferraz Tores Bonfim ', 'Manutenção em Unidades Educacionais', 'Rua Jacques Le Mercier, 7 - Jardim Mariane, São Paulo - SP, 05866-050', 20, NULL, 'M´Boi Mirim', -23.6801339, -46.7670077, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6801339,
    longitude = -46.7670077;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1503', 'EMEF - Otoniel Mota', 'Manutenção em Unidades Educacionais', 'R. Raimunda Franklin de Melo, 184 - Parque Santo Antônio, São Paulo - SP, 05850-270', 20, NULL, 'M´Boi Mirim', -23.6595539, -46.7552548, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6595539,
    longitude = -46.7552548;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1504', 'IEJA - Santana/Tucuruvi', 'Manutenção em Unidades Educacionais', 'R. Cel. João da Silva Feijó, 34 - Parque Mandaqui, São Paulo - SP, 02422-200', 20, NULL, 'Santana / Tucuruvi', -23.468443, -46.6390435, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.468443,
    longitude = -46.6390435;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1505', 'CIEJA - Vila Maria /Vila Guilherme ', 'Manutenção em Unidades Educacionais', 'R. Francisco Franco Machado, 68 - Vila Sabrina, São Paulo - SP, 02139-020', 20, NULL, NULL, -23.4923218, -46.573558, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923218,
    longitude = -46.573558;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1506', 'EMEF - Comandante Gastão Moutinho', 'Manutenção em Unidades Educacionais', 'R. Cel. João da Silva Feijó, 40 - Parque Mandaqui, São Paulo - SP, 02422-200', 20, NULL, NULL, -23.4687107, -46.6394222, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4687107,
    longitude = -46.6394222;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1507', 'EMEF - Olivia Irene Bayerlein Silva ', 'Manutenção em Unidades Educacionais', 'R. Amazonas da Silva, 893 - Vila Guilherme, São Paulo - SP, 02051-001', 20, NULL, NULL, -23.5121353, -46.6089524, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5121353,
    longitude = -46.6089524;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1508', 'EMEF - Professora Maria Aparecida do Nascimento ', 'Manutenção em Unidades Educacionais', 'PROFA. Rua EDSON DANILLO DOTTO, 700', 20, NULL, NULL, -23.5931821, -46.4135065, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5931821,
    longitude = -46.4135065;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1509', 'CMCT - Centro Municipal de Capacitação e treinamento l - CMTC l', 'Manutenção em Unidades Educacionais', 'R. Daniel Bernardo, 95 - São Miguel Paulista, São Paulo - SP, 08010-100', 20, NULL, 'São Miguel Paulista ', -23.4942437, -46.4421778, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4942437,
    longitude = -46.4421778;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1510', 'CMCT - Centro Municipal de Capacitação e treinamento ll - CMTC ll Lenine Soares de Jesus ', 'Manutenção em Unidades Educacionais', 'R. Jasmim do Imperador, 244 - Jardim Camargo Novo, São Paulo - SP, 08141-600', 20, NULL, 'Itaim Paulista ', -23.5095463, -46.3900232, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5095463,
    longitude = -46.3900232;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1511', 'EMEF - Professor Jose Bento de Assis ', 'Manutenção em Unidades Educacionais', 'Avenida São Gonçalo do Rio das Pedras, 140 - Vila Mara', 20, NULL, 'São Miguel Paulista ', -23.4876308, -46.4213986, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4876308,
    longitude = -46.4213986;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1512', 'EMEF - Professora Celis Regina Andery Braga ', 'Manutenção em Unidades Educacionais', 'R. Henrique Adamus, 15 - Jardim Aurea, São Paulo - SP, 08421-107', 20, NULL, 'Cidade Tiradentes ', -23.5654211, -46.4170142, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5654211,
    longitude = -46.4170142;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1513', 'EMEF - CMCT - Elias Shammas ', 'Manutenção em Unidades Educacionais', 'R. do Pai Nosso, 7 - Conj. Hab. Sitio Conceicao, São Paulo - SP, 08473-020', 20, NULL, 'Cidade Tiradentes ', -23.57925, -46.39421, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57925,
    longitude = -46.39421;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1514', 'EMEI - Professora Elisa Mara Torres', 'Manutenção em Unidades Educacionais', 'Rua Baía de Caeté, S/N - Jardim Santa Teresinha, São Paulo - SP, 08430-027', 20, NULL, 'Guaianazes ', -23.5291627, -46.4282486, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5291627,
    longitude = -46.4282486;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1515', 'EMEF - João Ribeiro de Barros ', 'Manutenção em Unidades Educacionais', 'Rua Ananaí, 968 - Vila Nova Curuca, São Paulo - SP, 08032-370', 20, NULL, 'Guaianazes ', -23.5228512, -46.4192968, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5228512,
    longitude = -46.4192968;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1516', 'EMEI - Professora Lucilia de Andrade Ferreira ', 'Manutenção em Unidades Educacionais', 'R. Cachoeira Triunfo, 55 - COHAB BARRO BRANCO II, São Paulo - SP, 08475-080', 20, NULL, 'Cidade Tiradentes ', -23.5830286, -46.3941561, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5830286,
    longitude = -46.3941561;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1517', 'EMEI - Antonio Bento', 'Manutenção em Unidades Educacionais', 'Rua João Batista de Sousa Filho, 405 - Caxingui, São Paulo - SP, 05515-040', 20, NULL, 'Butantã ', -23.5791629, -46.7158403, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5791629,
    longitude = -46.7158403;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1518', 'EMEI - Professor Benedicto Castrucci', 'Manutenção em Unidades Educacionais', 'R. Cachoeira Poraquê, S/N - Conj. Promorar Raposo Tavares, São Paulo - SP, 05574-450', 20, NULL, 'Butantã ', -23.5866338, -46.8008373, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5866338,
    longitude = -46.8008373;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1519', 'EMEF - Brasil - Japão', 'Manutenção em Unidades Educacionais', 'R. Dr. Paulo Carvalho Ferreira, 94 - Jardim Sarah, São Paulo - SP, 05382-040', 20, NULL, 'Butantã ', -23.5738108, -46.7616411, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5738108,
    longitude = -46.7616411;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1520', 'EMEI - Carolina Maria de Jesus', 'Manutenção em Unidades Educacionais', 'R. Domingos de Abreu, 458 - Vila Dalva, São Paulo - SP, 05387-070', 20, NULL, 'Butantã ', -23.5646559, -46.7642866, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5646559,
    longitude = -46.7642866;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1521', 'EMEI - Clycie Mendes Carneiro', 'Manutenção em Unidades Educacionais', 'R. Joaquina da Lapa, 210 - Jardim Ester Yolanda, São Paulo - SP, 05374-070', 20, NULL, 'Butantã ', -23.5789208, -46.7609987, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5789208,
    longitude = -46.7609987;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1522', 'EMEF - Professora Eda Terezinha Chica Medeiros', 'Manutenção em Unidades Educacionais', 'R. Eng. Hugo Takahashi, 333 - Raposo Tavares, São Paulo - SP, 05563-120', 20, NULL, 'Butantã ', -23.602241, -46.783528, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.602241,
    longitude = -46.783528;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1523', 'EMEI - Fernando Pessoa', 'Manutenção em Unidades Educacionais', 'Rua Bartolomeo Bon, 105 - Jardim Dracena, São Paulo - SP, 05528-200', 20, NULL, 'Butantã ', -23.5938803, -46.7592414, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5938803,
    longitude = -46.7592414;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1524', 'EMEF - Ibrahim Nobre', 'Manutenção em Unidades Educacionais', 'Rua Coronel Salvador de Moya, 263 - Vila Alba, São Paulo - SP, 05368-020', 20, NULL, 'Butantã ', -23.5752987, -46.7528177, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5752987,
    longitude = -46.7528177;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1525', 'EMEF - Professora Ileusa Caetano da Silva', 'Manutenção em Unidades Educacionais', 'Rua D - 10 - Jardim Educandario, São Paulo - SP, 05564-100', 20, NULL, 'Butantã ', -23.6042507, -46.7873006, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6042507,
    longitude = -46.7873006;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1526', 'CEI - Yvone Maluhy Joseph Sabga', 'Manutenção em Unidades Educacionais', 'Rua Rosária Ana Barbosa, 21 - Jardim Ester, São Paulo - SP, 05373-000', 20, NULL, 'Butantã ', -23.5824542, -46.757352, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5824542,
    longitude = -46.757352;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1527', 'EMEI - Professora Maria Jose Galvão de França Pinto', 'Manutenção em Unidades Educacionais', 'R. Inácio Cervantes, 480 - Parque Ipe, São Paulo - SP, 05572-000', 20, NULL, 'Butantã ', -23.5943051, -46.7976878, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5943051,
    longitude = -46.7976878;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1528', 'EMEI - Educadora Nida Maldi Corazza', 'Manutenção em Unidades Educacionais', 'R. Profa. Abigail Alves Pires, 76 - Rio Pequeno, São Paulo - SP, 05381-000', 20, NULL, 'Butantã ', -23.575377, -46.7620508, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575377,
    longitude = -46.7620508;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1529', 'EMEF - Pedro Nava', 'Manutenção em Unidades Educacionais', 'R. Joaquina da Lapa, 453 - Jardim Ester Yolanda, São Paulo - SP, 05374-070', 20, NULL, 'Butantã ', -23.5794337, -46.7604318, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5794337,
    longitude = -46.7604318;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1530', 'EMEI - Pedroso de Moraes', 'Manutenção em Unidades Educacionais', 'Av. Pedroso de Morais, 100 - Pinheiros, São Paulo - SP, 05420-000', 20, NULL, 'Pinheiros ', -23.5685204, -46.6878365, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5685204,
    longitude = -46.6878365;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1531', 'EMEI - Professor Ronaldo Porto Macedo', 'Manutenção em Unidades Educacionais', 'R. Dr. Francisco Pati, 345 - Cidade São Francisco, São Paulo - SP, 05352-090', 20, NULL, 'Butantã ', -23.5574643, -46.7589958, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5574643,
    longitude = -46.7589958;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1532', 'EMEF - Vila Munck', 'Manutenção em Unidades Educacionais', 'R. Joaquim Guimarães, 47 - Butantã, São Paulo - SP, 05574-010', 20, NULL, 'Butantã ', -23.591527, -46.8005054, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.591527,
    longitude = -46.8005054;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1533', 'EMEI - Assis Chateaubriand', 'Manutenção em Unidades Educacionais', 'R. Caranandina, 30 - Umarizal, São Paulo - SP, 05754-020', 20, NULL, 'Campo Limpo ', -23.6192818, -46.754688, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6192818,
    longitude = -46.754688;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1534', 'EMEI - Barbara Heliodora Guilhermina da Silveira', 'Manutenção em Unidades Educacionais', 'R. Marcelino Coelho, 297 - Jardim Angela, São Paulo - SP, 04939-010', 20, NULL, 'M´Boi Mirim', -23.6885182, -46.7718185, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6885182,
    longitude = -46.7718185;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1535', 'CEI - Bryan Biguinati Jardim', 'Manutenção em Unidades Educacionais', 'R. Francisco Soares, 27 - Parque Regina, São Paulo - SP, 05774-300', 20, NULL, 'Campo Limpo ', -23.6386503, -46.7497602, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6386503,
    longitude = -46.7497602;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1536', 'EMEI - Carlos de Laet', 'Manutenção em Unidades Educacionais', 'Rua Professor Leitão da Cunha, 1732 - Parque Regina, São Paulo - SP, 05775-200', 20, NULL, 'Campo Limpo ', -23.6421695, -46.7508246, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6421695,
    longitude = -46.7508246;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1537', 'EMEF - Professora Carolina Renno Ribeiro de Oliveira', 'Manutenção em Unidades Educacionais', 'R. João Ferreira da Silva, 99 - Jardim Santa Margarida, São Paulo - SP, 04931-070', 20, NULL, 'M´Boi Mirim', -23.683977, -46.7562373, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.683977,
    longitude = -46.7562373;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1538', 'EMEI - Chácara Sonho Azul', 'Manutenção em Unidades Educacionais', 'Tv. Alcato, 1 - Vila Calu, São Paulo - SP, 04961-160', 20, NULL, 'M´Boi Mirim', -23.7361844, -46.7895873, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7361844,
    longitude = -46.7895873;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1539', 'EMEF - Edivaldo dos Santos Dantas', 'Manutenção em Unidades Educacionais', 'Av. Peratuba, S/N - Cidade Ipava, São Paulo - SP, 04951-000', 20, NULL, 'M´Boi Mirim', -23.7249689, -46.7603924, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7249689,
    longitude = -46.7603924;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1540', 'EMEF - Professor Euclides da Cunha', 'Manutenção em Unidades Educacionais', 'R. da Costa Nova do Prado, 108 - Jardim Comercial, São Paulo - SP, 05885-190', 20, NULL, 'Campo Limpo ', -23.671525, -46.779839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.671525,
    longitude = -46.779839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1541', 'EMEF - Herbert de Souza - Betinho', 'Manutenção em Unidades Educacionais', 'R. Cortegaca, 240 - Jardim Guaruja, São Paulo - SP, 05877-200', 20, NULL, 'Campo Limpo ', -23.6908365, -46.7937779, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6908365,
    longitude = -46.7937779;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1542', 'CEMEI - Jardim Angela', 'Manutenção em Unidades Educacionais', 'Estrada do M''Boi Mirim, 5320', 20, NULL, 'M´Boi Mirim', -23.691716, -46.7759714, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.691716,
    longitude = -46.7759714;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1543', 'CEMEI - Jardim Dom José I', 'Manutenção em Unidades Educacionais', 'R. da Moenda, S/N - Jardim Dom José, São Paulo - SP, 05886-140', 20, NULL, 'Campo Limpo ', -23.6835687, -46.7954365, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6835687,
    longitude = -46.7954365;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1544', 'CEI - Jardim Maria Alice', 'Manutenção em Unidades Educacionais', 'R. Felice Giardini, 350 - Jardim Coimbra, São Paulo - SP, 04932-390', 20, NULL, 'M´Boi Mirim', -23.6802827, -46.759676, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6802827,
    longitude = -46.759676;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1545', 'EMEI - Marechal Mario Ary Pires', 'Manutenção em Unidades Educacionais', 'R. Francisco de Almeida, 185 - Jardim Lidia, São Paulo - SP, 05862-180', 20, NULL, 'Campo Limpo ', -23.6662862, -46.7624347, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6662862,
    longitude = -46.7624347;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1546', 'EMEF - Professor Mario Marques de Oliveira', 'Manutenção em Unidades Educacionais', 'R. Marcelino Coelho, 297', 20, NULL, 'M´Boi Mirim', -23.688831, -46.772008, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.688831,
    longitude = -46.772008;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1547', 'EMEF - Bacharel Mario Moura e Albuquerque', 'Manutenção em Unidades Educacionais', 'R. Humberto de Almeida, 521 - Chácara Santana, São Paulo - SP, 05831-000', 20, NULL, 'M´Boi Mirim', -23.6711053, -46.7479305, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6711053,
    longitude = -46.7479305;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1548', 'EMEF - Coronel Palimércio de Resende', 'Manutenção em Unidades Educacionais', 'R. Manuel Ribeiro de Azevedo, S/N - Jardim Catanduva, São Paulo - SP, 05767-480', 20, NULL, 'Campo Limpo ', -23.6349359, -46.7619778, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6349359,
    longitude = -46.7619778;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1549', 'EMEI  - Parque Santo Antonio I', 'Manutenção em Unidades Educacionais', 'R. Rinaldo de Handel, S/Nº - Chácara Santana, São Paulo - SP, 05821-140', 20, NULL, 'M´Boi Mirim', -23.6666651, -46.7482181, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6666651,
    longitude = -46.7482181;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1550', 'EMEF  - Professor Paulo Freire', 'Manutenção em Unidades Educacionais', 'Rua Melchior Giola, 296 - Paraisópolis, São Paulo - SP, 05664-000', 20, NULL, 'Campo Limpo ', -23.616781, -46.7236565, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.616781,
    longitude = -46.7236565;