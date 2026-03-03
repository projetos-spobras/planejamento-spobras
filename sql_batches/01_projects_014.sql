INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1000', 'CEI Direta Antônia Muotri Lamberga', 'Readequação Predial', 'R. Inácio de Araújo, 232 - Brás, São Paulo - SP, 03053-010', 20, NULL, 'Mooca ', -23.544916, -46.606713, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.544916,
    longitude = -46.606713;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1001', 'CEI Direta Benedito Bueno', 'Readequação Predial', 'R. Vicente Antônio de Oliveira, 674 - Vila Mirante, São Paulo - SP, 02955-080', 20, NULL, 'Pirituba / Jaraguá', -23.467877, -46.721372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.467877,
    longitude = -46.721372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1002', 'CEI Direta Cidade Nova Do Parque Novo Mundo', 'Readequação Predial', 'R. Nossa Sra. da Aparecida, 215 - Parque Vila Maria, São Paulo - SP, 02169-290', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5202061, -46.5754516, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5202061,
    longitude = -46.5754516;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1003', 'CEI Direta Cidade Tiradentes', 'Readequação Predial', 'Rua Santo Rizzo, 122 - Cidade Tiradentes, São Paulo - SP, 08470-250', 20, NULL, 'Cidade Tiradentes ', -23.5908289, -46.4069878, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5908289,
    longitude = -46.4069878;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1004', 'CEI Direta City Jaraguá IV', 'Readequação Predial', 'Rua José Galvez, 252 - Conj. City Jaragua, São Paulo - SP, 02998-270', 20, NULL, 'Pirituba / Jaraguá', -23.4369639, -46.7361764, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4369639,
    longitude = -46.7361764;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1005', 'CEI Direta Conjunto Habitacional Texima', 'Readequação Predial', 'R. Henrique Abadie, 70 - Jardim das Oliveiras, São Paulo - SP, 08111-765', 20, NULL, 'Itaim Paulista ', -23.4880973, -46.3873796, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4880973,
    longitude = -46.3873796;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1006', 'CEI Direta Curuçá Velha', 'Readequação Predial', 'Rua Grapirá, 10 - Vila Curuçá, São Paulo- SP, 08030-190', 20, NULL, 'Itaim Paulista ', -23.4959418, -46.4231355, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4959418,
    longitude = -46.4231355;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1007', 'CEI Direta Doralice Pereira De Souza Leonardo', 'Readequação Predial', 'Av. Rio Mirivaí, 274 - Parque Santa Amélia, São Paulo - SP, 08122-440', 20, NULL, 'Itaim Paulista ', -23.5001423, -46.3766651, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5001423,
    longitude = -46.3766651;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1008', 'CEI Direta Elísio Teixeira Leite', 'Readequação Predial', 'Rua Egídio Felini, 101 - Conj. Res. Elisio Teixeira Leite, São Paulo - SP, 02815-040', 20, NULL, 'Pirituba / Jaraguá', -23.4455427, -46.71635, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4455427,
    longitude = -46.71635;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1009', 'CEI Direta Frei Tito De Alencar Lima', 'Readequação Predial', 'R. Francisco José Viana, S/N - Cidade Tiradentes, São Paulo - SP', 20, NULL, 'Cidade Tiradentes ', -23.6086462, -46.3989342, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6086462,
    longitude = -46.3989342;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1010', 'CEI Direta Geraldo Magela Peron', 'Readequação Predial', 'R. Samouna, 216 - Guaianases, São Paulo - SP, 08460-230', 20, NULL, 'Guaianazes ', -23.547064, -46.4033107, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547064,
    longitude = -46.4033107;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1011', 'CEI Direta Ildefranca Irma', 'Readequação Predial', 'Rua Pedro Geraldo Nascimento, 42 - Jardim Robru, São Paulo - SP, 08150-280', 20, NULL, 'Itaim Paulista ', -23.5229565, -46.4156, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5229565,
    longitude = -46.4156;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1012', 'CEI Direta Jardim Camargo Velho', 'Readequação Predial', 'R. Floraí, 322 - Itaim Paulista, São Paulo - SP, 08120-460', 20, NULL, 'Itaim Paulista ', -23.503624, -46.3913943, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.503624,
    longitude = -46.3913943;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1013', 'CEI Direta Jardim Das Orquídeas', 'Readequação Predial', 'R. Savério Valente, 70 - Parque Nações Unidas, São Paulo - SP, 02995-160', 20, NULL, 'Pirituba / Jaraguá', -23.4419477, -46.7348749, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4419477,
    longitude = -46.7348749;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1014', 'CEI Direta Jardim Japão', 'Readequação Predial', 'Pr. Pres. Jânio da Silva Quadros, 270 - Jardim Japao, São Paulo - SP, 02132-000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5003047, -46.5837348, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5003047,
    longitude = -46.5837348;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1015', 'CEI Direta Jardim Kagohara', 'Readequação Predial', 'R. das Fermatas, 120 - Jardim Kagohara, São Paulo - SP, 04938-030', 20, NULL, 'M´Boi Mirim', -23.6898202, -46.7607341, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6898202,
    longitude = -46.7607341;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1016', 'CEI Direta Jardim Macedônia', 'Readequação Predial', ' R. Soriano de Albuquerque, 77 - Jardim Macedonia, São Paulo - SP, 05894-440', 20, NULL, 'Campo Limpo ', -23.6530594, -46.790095, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6530594,
    longitude = -46.790095;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1017', 'CEI Direta Jardim Maia', 'Readequação Predial', 'Av. Estrela da Noite, 287 - Jardim Maia, São Paulo - SP, 08180-190', 20, NULL, 'São Miguel Paulista ', -23.4928414, -46.4157987, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4928414,
    longitude = -46.4157987;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1018', 'CEI Direta Jardim Matarazzo', 'Readequação Predial', 'R. Zilda Fernandes de Hollanda, 75 - Jardim Matarazzo, São Paulo - SP, 03810-080', 20, NULL, 'Ermelino Matarazzo ', -23.488161, -46.4735979, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.488161,
    longitude = -46.4735979;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1019', 'CEI Direta Jardim Panamericano', 'Readequação Predial', 'R. Barra da Forquilha, 99 - Jardim Vivan, São Paulo - SP, 02993-000', 20, NULL, 'Pirituba / Jaraguá', -23.4516422, -46.7298122, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4516422,
    longitude = -46.7298122;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1020', 'CEI Direta Jardim Popular', 'Readequação Predial', 'Rua Flor de Cera, 80 - Jardim Popular, São Paulo - SP, 03671-050', 20, NULL, 'Ermelino Matarazzo ', -23.5188416, -46.5062975, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5188416,
    longitude = -46.5062975;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1021', 'CEI Direta Jardim República', 'Readequação Predial', 'R. José Bonifácio Filho, 301 - Jardim Sao Benedito, São Paulo - SP, 04813-060', 20, NULL, 'Capela do Socorro ', -23.7175207, -46.6873233, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7175207,
    longitude = -46.6873233;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1022', 'CEI Direta Jardim Rodrigo', 'Readequação Predial', 'R. Tanagra Violácea, 72 - Jardim Rodrigo, São Paulo - SP, 02990-350', 20, NULL, 'Pirituba / Jaraguá', -23.4288414, -46.7286414, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4288414,
    longitude = -46.7286414;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1023', 'CEI Direta Jardim São Luiz II', 'Readequação Predial', ' R. Colombo Leoni, 23 - Conj. Promorar Sao Luis, São Paulo - SP, 05846-210', 20, NULL, 'M´Boi Mirim', -23.6584119, -46.746141, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6584119,
    longitude = -46.746141;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1024', 'CEI Direta Jardim São Vicente', 'Readequação Predial', ' R. Mohamad Ibrahim Saleh, 769 - Cidade Nova São Miguel, São Paulo - SP, 08042-130', 20, NULL, 'São Miguel Paulista ', -23.5038837, -46.4328852, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5038837,
    longitude = -46.4328852;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1025', 'CEI Direta Jardim Taipas', 'Readequação Predial', 'Av. Elias Antônio Lopes, 135 - Parque Taipas, São Paulo - SP, 02986-110', 20, NULL, 'Pirituba / Jaraguá', -23.434225, -46.7158406, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.434225,
    longitude = -46.7158406;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1026', 'CEI Direta Jardim Três Estrelas', 'Readequação Predial', ' R. Rosalba Carriera, 174 - Jardim Imbé, São Paulo - SP, 05863-250', 20, NULL, 'Campo Limpo ', -23.6726764, -46.7663809, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6726764,
    longitude = -46.7663809;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1027', 'CEI Direta Jardim Umarizal', 'Readequação Predial', 'Rua Ecaúna, 139 - Umarizal, São Paulo - SP, 05754-040', 20, NULL, 'Campo Limpo ', -23.6192563, -46.7553202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6192563,
    longitude = -46.7553202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1028', 'CEI Direta Jardim Universitário', 'Readequação Predial', 'R. Geraldo do Brumado, S/N - Jardim Angelina, São Paulo - SP, 04829-500', 20, NULL, 'Capela do Socorro ', -23.7361158, -46.7100774, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7361158,
    longitude = -46.7100774;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1029', 'CEI Direta Jardim Verônia', 'Readequação Predial', 'R. Rita de Souza, 30 - Jardim Veronica, São Paulo - SP, 03816-100', 20, NULL, 'Ermelino Matarazzo ', -23.4893131, -46.4887439, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4893131,
    longitude = -46.4887439;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1030', 'CEI Direta Maria Aparecida Nascimento', 'Readequação Predial', ' R. Jorge Carlos de Almeida, 66 - Jardim Santo Andre, São Paulo - SP, 08390-355', 20, NULL, 'São Mateus ', -23.6320689, -46.4437247, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6320689,
    longitude = -46.4437247;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1031', 'CEI Direta Maria Auxiliadora Da Silva', 'Readequação Predial', 'R. Ângelo Aloísio, 145 - Guapira, São Paulo - SP, 02276-100', 20, NULL, 'Jaçanã / Tremembé', -23.4596322, -46.5841192, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4596322,
    longitude = -46.5841192;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1032', 'CEI Direta Maria Da Gloria Freire Lemos', 'Readequação Predial', 'R. Aiquara, 17 - Parque Cisper, São Paulo - SP, 03818-210', 20, NULL, 'Ermelino Matarazzo ', -23.4950998, -46.4969097, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4950998,
    longitude = -46.4969097;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1033', 'CEI Direta Maria Henriqueta Catite', 'Readequação Predial', ' R. Dom Luís Felipe de Orleans, 1000 - Vila Maria Baixa, São Paulo - SP, 02118-001', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5189431, -46.587173, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5189431,
    longitude = -46.587173;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1034', 'CEI Direta Marilia De Dirceu', 'Readequação Predial', 'Rua Luis Bordese, 43 - Cidade Tiradentes, São Paulo - SP, 08471-790', 20, NULL, 'Cidade Tiradentes ', -23.6031774, -46.4036143, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6031774,
    longitude = -46.4036143;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1035', 'CEI Direta Mario Caldana', 'Readequação Predial', 'Rua Heitor Diniz Campello, 258 - Chácara Cruzeiro do Sul, São Paulo - SP, 03732-100', 20, NULL, 'Penha ', -23.5126759, -46.5351431, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5126759,
    longitude = -46.5351431;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1036', 'CEI Direta Mario Da Costa Barbosa', 'Readequação Predial', 'R. Srg. Jeter Augusto Pereira, 121 - Parque Novo Mundo, São Paulo - SP, 02188-070', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5121639, -46.5661898, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5121639,
    longitude = -46.5661898;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1037', 'CEI Direta Mitiko Matsushita Nevoeiro', 'Readequação Predial', 'R. Martim Cacha, 15 - Jardim Marilda, São Paulo - SP, 04857-380', 20, NULL, 'Capela do Socorro ', -23.7832826, -46.6934085, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7832826,
    longitude = -46.6934085;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1038', 'CEI Direta Nazaré', 'Readequação Predial', 'R. dos Masseiros, 140 - Jardim Bartira, São Paulo - SP, 08152-060', 20, NULL, 'Itaim Paulista ', -23.5131506, -46.4074381, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5131506,
    longitude = -46.4074381;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1039', 'CEI Direta Ninho Alegre', 'Readequação Predial', 'Rua João Nicário Eleutério, 430 - Cidade Nova São Miguel, São Paulo - SP, 08042-080', 20, NULL, 'São Miguel Paulista ', -23.5095713, -46.433805, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5095713,
    longitude = -46.433805;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1040', 'CEI Direta Padre Manoel Da Nobrega', 'Readequação Predial', 'R. Padre José Vieira de Matos, 128 - Conjunto Habitacional Padre Manoel da Nóbrega, São Paulo - SP, 03590-010', 20, NULL, 'Penha ', -23.5444565, -46.4800436, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5444565,
    longitude = -46.4800436;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1041', 'CEI Direta Padre Matias Bonar Gonzalez', 'Readequação Predial', 'R. Estéfano Filipini, 99 - Conj. Hab. Padre Manoel da Nobrega, São Paulo - SP, 03591-150', 20, NULL, 'Penha ', -23.5522821, -46.4822452, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5522821,
    longitude = -46.4822452;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1042', 'CEI Direta Parque Figueira Grande', 'Readequação Predial', ' Rua Pedro da Costa Faleiro, 111 - Jardim Figueira Grande, São Paulo - SP, 04915-020', 20, NULL, 'M´Boi Mirim', -23.6804814, -46.7468011, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6804814,
    longitude = -46.7468011;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1043', 'CEI Direta Parque Santa Rita', 'Readequação Predial', 'Rua Mateus Barbosa De Rezende, 120 - Parque Santa Rita, São Paulo - SP,  08161-530', 20, NULL, 'Itaim Paulista ', -23.5090628, -46.4156993, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5090628,
    longitude = -46.4156993;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1044', 'CEI Direta Paulo Cochrane Suplicy', 'Readequação Predial', 'R. Arroio Butiá, 383 - Conj. Hab. Instituto Adventista, São Paulo - SP, 05868-880', 20, NULL, 'Campo Limpo ', -23.6606853, -46.7753045, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6606853,
    longitude = -46.7753045;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1045', 'CEI Direta Paulo E Admar', 'Readequação Predial', 'R. Rev. Peixoto da Silva, 155 - Jardim Rosana, São Paulo - SP, 05795-010', 20, NULL, 'Campo Limpo ', -23.6487558, -46.7769866, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6487558,
    longitude = -46.7769866;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1046', 'CEI Direta Penha', 'Readequação Predial', 'R. Leopoldo de Freitas, 850 - Vila Centenario, São Paulo - SP, 03645-010', 20, NULL, 'Penha ', -23.5308143, -46.531284, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5308143,
    longitude = -46.531284;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1047', 'CEI Direta Presidente Juscelino Kubitschek Oliveira', 'Readequação Predial', 'Favela Do Bob - R. Pedro de Seabra, 80 - Guaianases, São Paulo - SP, 08461-380', 20, NULL, 'Guaianazes ', -23.5632447, -46.4054119, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5632447,
    longitude = -46.4054119;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1048', 'CEI Direta Durval Miola, prof.', 'Readequação Predial', 'R. Padre Orlando Nogueira, 235 - Limoeiro, São Paulo - SP, 08051-560', 20, NULL, 'São Miguel Paulista ', -23.5114771, -46.4654076, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5114771,
    longitude = -46.4654076;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1049', 'CEI Direta Albertina Rodrigues Simon, profa.', 'Readequação Predial', 'Marco De Canaveses, 35 - Jardim Mitsutani , São Paulo - SP,  05791-190', 20, NULL, 'Campo Limpo ', -23.64638, -46.7856424, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.64638,
    longitude = -46.7856424;