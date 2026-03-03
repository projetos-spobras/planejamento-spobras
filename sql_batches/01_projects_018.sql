INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1201', 'EMEF Geraldo Sesso Junior', 'Readequação Predial', 'R. José Siqueira Brito, 123 - Vila Brasilandia, São Paulo - SP, 02845-160', 20, NULL, 'Freguesia / Brasilândia', -23.4687705, -46.6908367, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4687705,
    longitude = -46.6908367;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1202', 'EMEF Gianfrancesco Guarnieri', 'Readequação Predial', 'Rua Domenico Fontana, S/N - Parque Maria Helena, São Paulo - SP, 05854-080', 20, NULL, 'Campo Limpo ', -23.66148, -46.7596439, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.66148,
    longitude = -46.7596439;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1203', 'EMEF Governador Mário Covas', 'Readequação Predial', 'R. Chuvas de Verão - Conj. Hab. Fazenda do Carmo, São Paulo - SP, 08421-570', 20, NULL, 'Itaquera ', -23.5647194, -46.4214765, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5647194,
    longitude = -46.4214765;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1204', 'EMEF Henrique Pegado', 'Readequação Predial', ' R. Itapiruna, 131 - Jardim Penha, São Paulo - SP, 03757-050', 20, NULL, 'Penha ', -23.5046602, -46.49891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5046602,
    longitude = -46.49891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1205', 'EMEF Imperatriz Dona Amelia', 'Readequação Predial', 'Av. Ten. Lauro Sodré, 235 - Jardim Santa Adelia, São Paulo - SP, 03974-050', 20, NULL, 'São Mateus ', -23.612795, -46.4851069, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.612795,
    longitude = -46.4851069;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1206', 'EMEF Irineu Marinho', 'Readequação Predial', 'R. Jacaraípe, 478 - Vila Alóis, São Paulo - SP, 03152-150', 20, NULL, 'Vila Prudente ', -23.5927319, -46.5809483, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5927319,
    longitude = -46.5809483;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1207', 'EMEF Jardim Damasceno I', 'Readequação Predial', 'Av. Dep. Cantídio Sampaio, 4798 - Jardim Brasilia (Zona Norte), São Paulo - SP, 02860-001', 20, NULL, 'Freguesia / Brasilândia', -23.4464074, -46.7042513, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4464074,
    longitude = -46.7042513;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1208', 'EMEF João De Deus Cardoso De Melo', 'Readequação Predial', 'R. Manoel Vitorino Pereira, 220 - Jordanópolis', 20, NULL, 'Capela do Socorro ', -23.7331031, -46.6993104, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7331031,
    longitude = -46.6993104;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1209', 'EMEF Joaquim Osorio Duque Estrada', 'Readequação Predial', 'R. Primo Baudini, 441 - Jardim Augusto, São Paulo - SP, 08371-120', 20, NULL, 'São Mateus ', -23.599428, -46.447435, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599428,
    longitude = -46.447435;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1210', 'EMEF Júlio De Grammont', 'Readequação Predial', 'Tv. Meiri, 73 - Jardim Rodolfo Pirani, São Paulo - SP, 08311-560', 20, NULL, 'São Mateus ', -23.6318959, -46.4573697, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6318959,
    longitude = -46.4573697;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1211', 'EMEF Leonardo Villas Boas ', 'Readequação Predial', 'Rua José Viriato De Castro, 63 - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6331335, -46.7738727, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6331335,
    longitude = -46.7738727;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1212', 'EMEF Major Silvio Fleming', 'Readequação Predial', 'R. Paulo de Lima Corrêia, 65 - Vila Prudente, São Paulo - SP, 03193-060', 20, NULL, 'Mooca ', -23.5731496, -46.5774842, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5731496,
    longitude = -46.5774842;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1213', 'EMEF Manoel De Abreu', 'Readequação Predial', 'R. Gen. Renato Varandas de Azevedo, 377 - Jardim Três Corações', 20, NULL, 'Capela do Socorro ', -23.7702755, -46.6849838, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7702755,
    longitude = -46.6849838;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1214', 'EMEF Mario Lago', 'Readequação Predial', 'Rua Dourada - S/N - Cohab Jardim Paulistano, São Paulo - SP, 02820-090', 20, NULL, 'Pirituba / Jaraguá', -23.4496335, -46.7090029, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4496335,
    longitude = -46.7090029;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1215', 'EMEF Mauro Faccio Zacarias', 'Readequação Predial', 'Av. Raquel Alves Moreira, 823 - Jardim Guarujá', 20, NULL, 'M´Boi Mirim', -23.6678654, -46.7487453, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6678654,
    longitude = -46.7487453;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1216', 'EMEF Ministro Calógeras', 'Readequação Predial', 'R. Alsácia, 59 - Jardim Aeroporto, São Paulo - SP, 04630-040', 20, NULL, 'Santo Amaro ', -23.6331668, -46.660614, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6331668,
    longitude = -46.660614;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1217', 'EMEF Ministro Synésio Rocha', 'Readequação Predial', 'R. Jaracatiá, 448 - Jardim Umarizal', 20, NULL, 'Campo Limpo ', -23.6197637, -46.7541731, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6197637,
    longitude = -46.7541731;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1218', 'EMEF Olival Costa', 'Readequação Predial', 'Av. João Rodrigues Ruiz, 248 - Jardim Sapopemba, São Paulo - SP, 03975-110', 20, NULL, 'Sapopemba', -23.6106858, -46.4934826, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6106858,
    longitude = -46.4934826;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1219', 'EMEF Padre Antonio Vieira', 'Readequação Predial', 'Rua Antonino Bacaeri, 171 - Jardim Nordeste, São Paulo - SP, 03687-060', 20, NULL, 'Penha ', -23.5268352, -46.4860738, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5268352,
    longitude = -46.4860738;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1220', 'EMEF Padre Nildo Do Amaral Junior', 'Readequação Predial', 'R. Antônio João de Medeiros, 1901 - Jardim Camargo Novo, São Paulo - SP, 08140-060', 20, NULL, 'Itaim Paulista ', -23.5158017, -46.3939919, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5158017,
    longitude = -46.3939919;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1221', 'EMEF Parque Boa Esperança II', 'Readequação Predial', 'R. Francisco de Melo Palheta, S/N - Parque Boa Esperança, São Paulo - SP, 08341-000', 20, NULL, 'São Mateus ', -23.6021906, -46.4521297, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6021906,
    longitude = -46.4521297;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1222', 'EMEF Parque São Miguel', 'Readequação Predial', 'R. Alziro Pinheiro Magalhães, 877 - Parque Sao Miguel', 20, NULL, 'Capela do Socorro ', -23.7591217, -46.6841348, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7591217,
    longitude = -46.6841348;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1223', 'EMEF Plínio Salgado', 'Readequação Predial', 'R. Clarissa - Jardim Eliana, São Paulo - SP, 04851-000', 20, NULL, 'Capela do Socorro ', -23.7533834, -46.6702017, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7533834,
    longitude = -46.6702017;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1224', 'EMEF Aldo Ribeiro Luz, prof.', 'Readequação Predial', 'Rua Jean Coralli, 135 - Jardim Santa Lucrecia, São Paulo - SP, 05183-000', 20, NULL, 'Pirituba / Jaraguá', -23.4517905, -46.7526476, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4517905,
    longitude = -46.7526476;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1225', 'EMEF Almeida Júnior, prof.', 'Readequação Predial', 'R. Francisco Mendes, 238 - Socorro', 20, NULL, 'Capela do Socorro ', -23.6682052, -46.7103484, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6682052,
    longitude = -46.7103484;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1226', 'EMEF Benedito Montenegro, prof.', 'Readequação Predial', 'Avenida Ragueb Chohfi, 4046 - Jardim Três Marias, São Paulo - SP, 08375-000', 20, NULL, 'São Mateus ', -23.5948297, -46.4469045, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5948297,
    longitude = -46.4469045;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1227', 'EMEF Gabriel Sylvestre Teixeira De Carvalho, prof.', 'Readequação Predial', 'R. Cel. Albino Rêgo, 132 - Parque Maria Domitila, São Paulo - SP, 05128-030', 20, NULL, 'Pirituba / Jaraguá', -23.4957752, -46.7391982, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4957752,
    longitude = -46.7391982;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1228', 'EMEF João De Lima Paiva, prof.', 'Readequação Predial', 'R. Getulina, 278 - Guaianases, São Paulo - SP, 08450-020', 20, NULL, 'Guaianazes ', -23.5418404, -46.4125602, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5418404,
    longitude = -46.4125602;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1229', 'EMEF José Francisco Cavalcante, prof.', 'Readequação Predial', ' R. Tajal - Conj. Hab. Jardim Sao Bento, São Paulo - SP', 20, NULL, 'Campo Limpo ', -23.6789778, -46.792738, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6789778,
    longitude = -46.792738;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1230', 'EMEF Júlio César De Melo E Sousa - Malba Tahan, prof.', 'Readequação Predial', 'R. Sebastião Medeiros da Silva, 89 - Itaquera, São Paulo - SP, 08210-661', 20, NULL, 'Itaquera ', -23.5314831, -46.4430227, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5314831,
    longitude = -46.4430227;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1231', 'EMEF Luiz Roberto Mega, prof.', 'Readequação Predial', 'R. Henrique Adamus, 16 - Jardim Aurea, São Paulo - SP, 08421-107', 20, NULL, 'Cidade Tiradentes ', -23.565511, -46.4169953, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.565511,
    longitude = -46.4169953;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1232', 'EMEF Meire De Jesus Ribeiro, prof.', 'Readequação Predial', 'R. Alfonso Asturaro, 305 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-591', 20, NULL, 'Cidade Tiradentes ', -23.5851988, -46.3931011, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5851988,
    longitude = -46.3931011;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1233', 'EMEF Isabel Vieira Ferreira, profa.', 'Readequação Predial', ' R. das Orquídias, 130 - Parque Primavera, São Paulo - SP, 04467-245', 20, NULL, 'Cidade Ademar ', -23.6944649, -46.6487856, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6944649,
    longitude = -46.6487856;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1234', 'EMEF Claudia Bartolomazi, profa.', 'Readequação Predial', 'R. Arroio Arapongas, 275 - Conj. Hab. Santa Etelvina III, São Paulo - SP, 08485-440', 20, NULL, 'Cidade Tiradentes ', -23.582481, -46.4119035, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582481,
    longitude = -46.4119035;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1235', 'EMEF Doutora Irene Garcia Costa De Souza, profa.', 'Readequação Predial', 'R. Gonçalo Aldana, 385 - Vila Homero, São Paulo - SP, 05184-300', 20, NULL, 'Pirituba / Jaraguá', -23.4510299, -46.7584668, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4510299,
    longitude = -46.7584668;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1236', 'EMEF Idêmia De Godoy, profa.', 'Readequação Predial', 'Rua: Andes, 807 - Guaianases, São Paulo - SP, 08440-180', 20, NULL, 'Guaianazes ', -23.5366293, -46.4066126, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5366293,
    longitude = -46.4066126;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1237', 'EMEF Josefa Nicacio Araújo, profa.', 'Readequação Predial', 'R. Manuel Rodrigues Santiago, 809 - Jardim Laura, São Paulo - SP, 08142-235', 20, NULL, 'Itaim Paulista ', -23.5149011, -46.3812161, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5149011,
    longitude = -46.3812161;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1238', 'EMEF Marili Dias, profa.', 'Readequação Predial', 'Rua Antônio Conselheiro, 1 - Vila dos Palmares, São Paulo - SP, 05273-140', 20, NULL, 'Perus ', -23.4409085, -46.8072379, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4409085,
    longitude = -46.8072379;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1239', 'EMEF Olinda Menezes Serra Vidal, profa.', 'Readequação Predial', 'R. Várzea Nova, 40 - Cidade Tiradentes, São Paulo - SP, 08475-420', 20, NULL, 'Cidade Tiradentes ', -23.5939469, -46.4001126, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5939469,
    longitude = -46.4001126;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1240', 'EMEF Thereza Maciel De Paula, profa.', 'Readequação Predial', 'R. Jorge Carlos de Almeida, 659 - Jardim Santo Andre, São Paulo - SP, 08390-355', 20, NULL, 'São Mateus ', -23.6320354, -46.44357, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6320354,
    longitude = -46.44357;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1241', 'EMEF Virginia Lorisa Zeitounian Camargo, profa.', 'Readequação Predial', 'Rua Tritão, S/N - Cidade Satelite Santa Barbara, São Paulo - SP, 08340-120', 20, NULL, 'São Mateus ', -23.6070086, -46.4622456, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6070086,
    longitude = -46.4622456;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1242', 'EMEF Wanny Salgado, profa.', 'Readequação Predial', 'R. Sílvio Ribeiro dos Santos, 104 - Vila Uniao (Zona Leste), São Paulo - SP, 03683-040', 20, NULL, 'Ermelino Matarazzo ', -23.517631, -46.4770736, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517631,
    longitude = -46.4770736;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1243', 'EMEI Recanto Campo Belo -  Dirce Zillesg Borges Dos Santos, profa.', 'Readequação Predial', 'R. Marcelo Bernardini, S/N - Recanto Campo Belo, São Paulo - SP, 04880-080', 20, NULL, 'Parelheiros ', -23.7971934, -46.736067, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7971934,
    longitude = -46.736067;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1244', 'EMEF Senador Luís Carlos Prestes', 'Readequação Predial', 'R. Igarapé Guará, 90 - Conj. Hab. Inacio Monteiro, São Paulo - SP, 08472-120', 20, NULL, 'Cidade Tiradentes ', -23.570453, -46.3996415, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570453,
    longitude = -46.3996415;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1245', 'EMEF Sócrates Brasileiro Sampaio De Sousa Vieira De Oliveira', 'Readequação Predial', 'R. Profa. Nina Stocco, 597 - Jardim Catanduva, São Paulo - SP, 05767-001', 20, NULL, 'Campo Limpo ', -23.630894, -46.759304, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.630894,
    longitude = -46.759304;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1246', 'EMEF Tenente José Maria Pinto Duarte', 'Readequação Predial', 'R. Atalaia, 100 - Sumaré, São Paulo - SP, 01251-060', 20, NULL, 'Lapa ', -23.5462039, -46.6762304, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5462039,
    longitude = -46.6762304;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1247', 'EMEF Teófilo Benedito Ottoni', 'Readequação Predial', 'R. Inácio Cervantes, 490 - Parque Ipe, São Paulo - SP, 05572-000', 20, NULL, 'Butantã ', -23.5944471, -46.7980759, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5944471,
    longitude = -46.7980759;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1248', 'EMEF Theo Dutra', 'Readequação Predial', ' Av. Guilherme de Almeida, 110 - Vila Penteado, São Paulo - SP, 02866-040', 20, NULL, 'Freguesia / Brasilândia', -23.4673787, -46.6796071, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4673787,
    longitude = -46.6796071;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1249', 'EMEF Vereadora Anna Lamberga Zeglio', 'Readequação Predial', 'R. Olímpia Montani, 231 - Conj. Hab. Santa Etelvina II, São Paulo - SP, 08475-320', 20, NULL, 'Cidade Tiradentes ', -23.5912442, -46.401436, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5912442,
    longitude = -46.401436;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1250', 'EMEI  Almirante Sylvio De Magalhaes Figueiredo', 'Readequação Predial', 'R. Salvador Rodrigues Negrão, 604 - Vila Marari, São Paulo - SP, 04401-160', 20, NULL, 'Cidade Ademar ', -23.6718322, -46.6621698, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6718322,
    longitude = -46.6621698;