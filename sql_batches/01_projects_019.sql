INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1251', 'EMEI  Vanda Coelho De Moraes', 'Readequação Predial', 'R. Guadalquivir, 9 - Jardim Ubirajara, São Paulo - SP, 04458-100', 20, NULL, 'Santo Amaro ', -23.6866927, -46.6738183, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6866927,
    longitude = -46.6738183;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1252', 'EMEI 25 De Janeiro', 'Readequação Predial', 'R. Padre Feliciano Domingues, 182 - Vila Marina, São Paulo - SP, 02965-140', 20, NULL, 'Freguesia / Brasilândia', -23.4831867, -46.7035113, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4831867,
    longitude = -46.7035113;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1253', 'EMEI Adevaldo De Moraes', 'Readequação Predial', 'R. Oreste Damolin, 791 - Conj. Promorar Sapopemba, São Paulo - SP, 03927-360', 20, NULL, 'Sapopemba', -23.6017648, -46.4985058, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6017648,
    longitude = -46.4985058;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1254', 'EMEI Ângelo Kreta', 'Readequação Predial', ' R. Nova Delhi, 560 - Jardim Edith, São Paulo - SP, 04813-240', 20, NULL, 'Capela do Socorro ', -23.722809, -46.6858705, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.722809,
    longitude = -46.6858705;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1255', 'EMEI Aracy De Almeida', 'Readequação Predial', 'R. Waldemar Ortega, 650 - Jardim Comercial', 20, NULL, 'Campo Limpo ', -23.6733574, -46.7823549, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6733574,
    longitude = -46.7823549;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1256', 'EMEI Begônia Real', 'Readequação Predial', 'Rua Hera Do Canadá, 20 - Jardim Pedra Branca, São Paulo - SP, 08490-870', 20, NULL, 'Itaquera ', -23.582683, -46.41956, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582683,
    longitude = -46.41956;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1257', 'EMEI Bertha Lurtz', 'Readequação Predial', 'R. Rômulo Naldi, 117 - Conj. Promorar Estrada da Parada, São Paulo - SP, 02873-250', 20, NULL, 'Freguesia / Brasilândia', -23.4557559, -46.6852291, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4557559,
    longitude = -46.6852291;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1258', 'EMEI Caio Graco Da Silva Prado', 'Readequação Predial', 'R. Pedro Pomar, 74 - Jardim Elisa Maria, São Paulo - SP, 02875-020', 20, NULL, 'Freguesia / Brasilândia', -23.4609713, -46.6800075, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4609713,
    longitude = -46.6800075;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1259', 'EMEI Carmem Miranda', 'Readequação Predial', 'R. Miguel Ferreira de Melo, 10 - Jardim Santo Andre, São Paulo - SP, 08390-000', 20, NULL, 'São Mateus ', -23.6293753, -46.4444134, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6293753,
    longitude = -46.4444134;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1260', 'EMEI Catulo Da Paixão Cearense ', 'Readequação Predial', 'Rua João Da Cunha Vasconcelos, 116 - Parque Ipê', 20, NULL, 'Campo Limpo ', -23.6394718, -46.7612254, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6394718,
    longitude = -46.7612254;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1261', 'EMEI Chácara Santa Maria - Obra', 'Readequação Predial', 'R. Feitiço da Vila, 877 - Chacara Santa Maria', 20, NULL, 'Campo Limpo ', -23.6861882, -46.7999254, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6861882,
    longitude = -46.7999254;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1262', 'EMEI Chiquinha Gonzaga', 'Readequação Predial', 'Rua Carlo Clausetti, 298 - Conj. Promorar Sapopemba, São Paulo - SP, 03928-220', 20, NULL, 'Sapopemba', -23.6048548, -46.5008628, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6048548,
    longitude = -46.5008628;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1263', 'EMEI Cidade A E Carvalho', 'Readequação Predial', 'Praca Jandaira, S/N - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08225-390', 20, NULL, 'Itaquera ', -23.5279793, -46.4646253, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5279793,
    longitude = -46.4646253;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1264', 'EMEI Cidade Ademar II', 'Readequação Predial', 'R. Eng. João Lang, 278 - Jardim Martini, São Paulo - SP, 04439-070', 20, NULL, 'Cidade Ademar ', -23.6753846, -46.6663339, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6753846,
    longitude = -46.6663339;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1265', 'EMEI Conjunto  Habitacional São Francisco', 'Readequação Predial', 'Tv. Coruja do Campo, 100 - Jardim Rodolfo Pirani, São Paulo - SP, 08311-410', 20, NULL, 'São Mateus ', -23.6309881, -46.4566928, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6309881,
    longitude = -46.4566928;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1266', 'EMEI Coronel Joao Negrão', 'Readequação Predial', ' R. Francisco Leite Esquerdo, 30 - Jardim Celeste, São Paulo - SP, 05528-040', 20, NULL, 'Butantã ', -23.5974351, -46.7561995, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5974351,
    longitude = -46.7561995;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1267', 'EMEI Cruz E Sousa', 'Readequação Predial', 'R. Henrique da Costa, 348 - Jardim Itacolomi, São Paulo - SP, 04386-000', 20, NULL, 'Jabaquara ', -23.6628309, -46.651978, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6628309,
    longitude = -46.651978;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1268', 'EMEI Eder Sader', 'Readequação Predial', 'R. Srg. Hermínio Aurélio Sampaio, 477 - Conj. Hab. Mal. Mascarenhas de Morais, São Paulo - SP, 03977-220', 20, NULL, 'Sapopemba', -23.6172508, -46.493812, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6172508,
    longitude = -46.493812;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1269', 'EMEI Emir Macedo Nogueira', 'Readequação Predial', 'Praça Gen. Araripe de Faria, 405 - Vila Gomes, São Paulo - SP, 05590-020', 20, NULL, 'Butantã ', -23.5767787, -46.7313318, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5767787,
    longitude = -46.7313318;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1270', 'EMEI Ernani Silva Bruno', 'Readequação Predial', 'R. Daniel Mongolo, 145 - J - Jardim Bonifacio, São Paulo - SP, 08250-580', 20, NULL, 'Itaquera ', -23.5386166, -46.4379241, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5386166,
    longitude = -46.4379241;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1271', 'EMEI Estrada Turística Do Jaraguá', 'Readequação Predial', 'Rua Agnes Fontoura, 75 - Conjunto Habitacional Turística, São Paulo – SP 05164-015', 20, NULL, 'Pirituba / Jaraguá', -23.4729704, -46.7550997, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4729704,
    longitude = -46.7550997;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1272', 'EMEI Fernando De Azevedo', 'Readequação Predial', 'R. Barra da Forquilha, 510 - Parque Panamericano, São Paulo - SP, 02993-000', 20, NULL, 'Pirituba / Jaraguá', -23.4510045, -46.729529, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4510045,
    longitude = -46.729529;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1273', 'EMEI Flávio Império', 'Readequação Predial', 'R. José Figliolini, 735 - Vila Nilo, São Paulo - SP, 02278-020', 20, NULL, 'Jaçanã / Tremembé', -23.4594515, -46.5741267, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4594515,
    longitude = -46.5741267;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1274', 'EMEI Gabriel Prestes', 'Readequação Predial', ' R. da Consolação, 1012 - Consolação, São Paulo - SP, 01302-000', 20, NULL, 'SÉ', -23.5483919, -46.6510213, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5483919,
    longitude = -46.6510213;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1275', 'EMEI Glauber Rocha', 'Readequação Predial', 'R. Pinheiro do Paraná, 493 - Parque Guarani, São Paulo - SP, 08235-590', 20, NULL, 'Itaquera ', -23.5198367, -46.4620131, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5198367,
    longitude = -46.4620131;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1276', 'EMEI Grajau', 'Readequação Predial', 'Rua Alba Valdez, 101 - Jardim Reimberg, São Paulo - SP, 04845-200', 20, NULL, 'Capela do Socorro ', -23.750906, -46.6965643, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.750906,
    longitude = -46.6965643;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1277', 'EMEI Helena Lopes Santana Da Silva', 'Readequação Predial', 'R. Andes, 851 - Guaianases, São Paulo - SP, 08440-180', 20, NULL, 'Guaianazes ', -23.536599, -46.4063124, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.536599,
    longitude = -46.4063124;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1278', 'EMEI J.G. De Araújo Jorge', 'Readequação Predial', 'R. Valdomiro Gonzaga Silva, 1209 - Jardim das Oliveiras, São Paulo - SP, 08111-540', 20, NULL, 'Itaim Paulista ', -23.4941073, -46.3716382, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4941073,
    longitude = -46.3716382;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1279', 'EMEI Jardim Novo Parelheiros I', 'Readequação Predial', ' R. Gentil Schunck Roschel, 101 - Jardim Novo Parelheiros, São Paulo - SP, 04890-410', 20, NULL, 'Parelheiros ', -23.829497, -46.7273529, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.829497,
    longitude = -46.7273529;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1280', 'EMEI Jean Piaget', 'Readequação Predial', 'R. Saldanha da Gama, 485 - Alto da Lapa, São Paulo - SP, 05081-000', 20, NULL, 'Lapa ', -23.530993, -46.7126877, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.530993,
    longitude = -46.7126877;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1281', 'EMEI Jesuína Nunes Barbosa', 'Readequação Predial', ' R. Emb. Ildefonso Falcão, 157 - Cidade São Mateus, São Paulo - SP, 03964-020', 20, NULL, 'São Mateus ', -23.6078241, -46.476153, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6078241,
    longitude = -46.476153;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1282', 'EMEI José Clemente Pereira', 'Readequação Predial', 'Av. Dr. Paulo Colombo Pereira de Queiroz, 320 - Parque Santa Madalena, São Paulo - SP, 03982-130', 20, NULL, 'Sapopemba', -23.6113476, -46.509531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6113476,
    longitude = -46.509531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1283', 'EMEI José Vicente Da Cunha', 'Readequação Predial', ' R. São João do Paraíso, 281 - Jardim Imperador, São Paulo - SP, 03934-000', 20, NULL, 'São Mateus ', -23.5911172, -46.4997934, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5911172,
    longitude = -46.4997934;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1284', 'EMEI Júlio Alves Pereira', 'Readequação Predial', 'R. Carolina Carvalho, 67 - Cidade D''Abril, São Paulo - SP, 05182-210', 20, NULL, 'Pirituba / Jaraguá', -23.452988, -46.7461492, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.452988,
    longitude = -46.7461492;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1285', 'EMEI Louro Rosa', 'Readequação Predial', 'R. Louro-Rosa, 18 - Jardim Camargo Novo, São Paulo - SP, 08141-670', 20, NULL, 'Itaim Paulista ', -23.5129373, -46.3878397, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5129373,
    longitude = -46.3878397;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1286', 'EMEI Luiz Da Câmara Cascudo', 'Readequação Predial', 'Rua Lanzarote, 38 - Jardim Vila Das Virtudes', 20, NULL, 'Campo Limpo ', -23.6511611, -46.7741177, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6511611,
    longitude = -46.7741177;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1287', 'EMEI Manoel Fiel Filho', 'Readequação Predial', ' R. Dr. Aristides Ricardo, 297 - Parque Sao Rafael, São Paulo - SP, 08311-270', 20, NULL, 'São Mateus ', -23.624747, -46.4696904, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.624747,
    longitude = -46.4696904;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1288', 'EMEI Marcilio Dias', 'Readequação Predial', 'Rua Jaibarás, 360 A - Belenzinho, São Paulo - SP, 03163-040', 20, NULL, 'Mooca ', -23.5486144, -46.5975191, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5486144,
    longitude = -46.5975191;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1289', 'EMEI Marechal Floriano Peixoto', 'Readequação Predial', 'Rua Victório Santim, 645 - Vila Carmosina, São Paulo - SP, 08290-001', 20, NULL, 'Itaquera ', -23.5415333, -46.4515645, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5415333,
    longitude = -46.4515645;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1290', 'EMEI Maria Aparecida Lara Coiado', 'Readequação Predial', 'R. Gen. Rocha Calado, S/N - Vila Marilena, São Paulo - SP, 08411-330', 20, NULL, 'Guaianazes ', -23.5549093, -46.4157249, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5549093,
    longitude = -46.4157249;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1291', 'EMEI Mary Buarque', 'Readequação Predial', 'R. Restinga, 150 - Tatuapé, São Paulo - SP, 03065-020', 20, NULL, 'Mooca ', -23.5398339, -46.5807668, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5398339,
    longitude = -46.5807668;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1292', 'EMEI Monsenhor Luís Biraghi', 'Readequação Predial', 'R. Joaquim Ferreira de Oliveira, 50 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08270-480', 20, NULL, 'Itaquera ', -23.5650349, -46.4583079, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5650349,
    longitude = -46.4583079;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1293', 'EMEI Orlando Villas Boas', 'Readequação Predial', 'Av. Paulo Costa Ribeiro Bastos, S/Nº - Jardim Guanhembu', 20, NULL, 'Capela do Socorro ', -23.7313313, -46.6860284, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7313313,
    longitude = -46.6860284;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1294', 'EMEI Padre Mauro Baptista', 'Readequação Predial', 'Rua Dos Catarinenses, 20 - Distrito De Vila Andrade', 20, NULL, 'Campo Limpo ', -23.6320808, -46.7414626, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6320808,
    longitude = -46.7414626;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1295', 'EMEI Padre Nildo Do Amaral Junior', 'Readequação Predial', 'R. Lopes de Medeiros, 5 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08275-430', 20, NULL, 'Itaquera ', -23.5710554, -46.4826314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5710554,
    longitude = -46.4826314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1296', 'EMEI Papa Joao Paulo II', 'Readequação Predial', ' R. Paulo Arentino, 870 - Conj. City Jaragua, São Paulo - SP, 02998-140', 20, NULL, 'Pirituba / Jaraguá', -23.4343224, -46.7356476, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4343224,
    longitude = -46.7356476;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1297', 'EMEI Parque Cocaia II', 'Readequação Predial', 'Rua José Júlio Mendes, 120 - Grajaú', 20, NULL, 'Capela do Socorro ', -23.7505691, -46.6797945, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7505691,
    longitude = -46.6797945;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1298', 'EMEI Presidente Dutra', 'Readequação Predial', ' R. Santo Elias, 146 - Parque São Jorge, São Paulo - SP, 03086-050', 20, NULL, 'Mooca ', -23.5326198, -46.5669663, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5326198,
    longitude = -46.5669663;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1299', 'EMEI Princesa Isabel', 'Readequação Predial', 'R. Amadis, 453 - Vila Independencia, São Paulo - SP, 04221-000', 20, NULL, 'Ipiranga ', -23.5958775, -46.5954286, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5958775,
    longitude = -46.5954286;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1300', 'EMEI Antonio Carlos Pacheco E Silva, prof.', 'Readequação Predial', 'Av. João Caiaffa, 90 - Jardim Taboao, São Paulo - SP, 05742-100', 20, NULL, 'Butantã ', -23.6116958, -46.7502634, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6116958,
    longitude = -46.7502634;