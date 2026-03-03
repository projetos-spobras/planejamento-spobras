INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1301', 'EMEI Cezar Rogério Oliveira Peramezza, prof.', 'Readequação Predial', 'R. Professor Thiré, 151 - Vila Nhocuné, São Paulo - SP, 03561-010', 20, NULL, 'Penha ', -23.5467039, -46.4965822, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5467039,
    longitude = -46.4965822;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1302', 'EMEI Henrique Ricchetti, prof.', 'Readequação Predial', ' Rua Nebulosas, 156 - Jardim Tiete, São Paulo - SP, 08330-430', 20, NULL, 'São Mateus ', -23.6120855, -46.4642757, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6120855,
    longitude = -46.4642757;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1303', 'EMEI José Aloysio Rodrigues Corrêa, prof.', 'Readequação Predial', 'Rua Málaga, 391 - Parque Sevilha, São Paulo - SP, 03157-030', 20, NULL, 'Mooca ', -23.5764229, -46.570459, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5764229,
    longitude = -46.570459;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1304', 'EMEI José Roberto De Castro Ribeiro, prof.', 'Readequação Predial', 'R. Eng. Carlo Grazia, 120 - Cidade Tiradentes, São Paulo - SP, 08475-410', 20, NULL, 'Cidade Tiradentes ', -23.594585, -46.3982788, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.594585,
    longitude = -46.3982788;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1305', 'EMEI Luiz Pereira, prof.', 'Readequação Predial', 'R. José Oiticica, 113 - Jardim Itapema, São Paulo - SP, 03578-080', 20, NULL, 'Itaquera ', -23.5597784, -46.5031581, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5597784,
    longitude = -46.5031581;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1306', 'EMEI Maestro Alex Martins Costa, prof.', 'Readequação Predial', 'Rua Morro do Descanso, 160 - Jardim Sao Nicolau, São Paulo - SP, 03685-070', 20, NULL, 'Ermelino Matarazzo ', -23.523922, -46.4811131, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.523922,
    longitude = -46.4811131;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1307', 'EMEI Manoel De Alvarenga Freire Junior, prof.', 'Readequação Predial', ' R. Elsa Morante, 58 - Jardim Sao Francisco, São Paulo - SP, 08390-324', 20, NULL, 'São Mateus ', -23.632558, -46.4482049, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.632558,
    longitude = -46.4482049;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1308', 'EMEI Marciano Vasques Pereira, prof.', 'Readequação Predial', 'R. Itapipinas, 570 - Jardim Artur Alvim, São Paulo - SP, 03687-020', 20, NULL, 'Ermelino Matarazzo ', -23.5251595, -46.4860157, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5251595,
    longitude = -46.4860157;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1309', 'EMEI Taufik Daud Kurban, prof.', 'Readequação Predial', 'Rua Manuel Gaya, 500 - Vila Nova Mazzei, São Paulo - SP, 02313-001', 20, NULL, 'Jaçanã / Tremembé', -23.465442, -46.597575, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.465442,
    longitude = -46.597575;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1310', 'EMEI Isabel Colombo, profa.', 'Readequação Predial', ' Av. Padre Antônio José dos Santos, 1511 - Cidade Monções, São Paulo - SP, 04563-004', 20, NULL, 'Pinheiros ', -23.6069531, -46.6913186, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6069531,
    longitude = -46.6913186;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1311', 'EMEI Antonieta De Barros, profa.', 'Readequação Predial', 'Estrada Das Taipas, 1800 - Jardim Rincão, São Paulo- SP, 02991-000', 20, NULL, 'Pirituba / Jaraguá', -23.4418714, -46.7332666, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4418714,
    longitude = -46.7332666;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1312', 'EMEI Aparecida Maria Mendonça, profa.', 'Readequação Predial', 'R. Isidoro de Lara, 150 - J - Jardim Bonifacio, São Paulo - SP, 08253-250', 20, NULL, 'Itaquera ', -23.5441996, -46.4409286, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441996,
    longitude = -46.4409286;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1313', 'EMEI Carolina Ribeiro , profa.', 'Readequação Predial', 'Rua Major Walter Carlson, 879 - Jardim Sao Jorge (Raposo Tavares), São Paulo - SP, 05567-050', 20, NULL, 'Butantã ', -23.594814, -46.7881775, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.594814,
    longitude = -46.7881775;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1314', 'EMEI Dulce Salles Ferraz, profa.', 'Readequação Predial', 'Rua Oliveira Roma, 16 - Cidade Tiradentes, São Paulo - SP, 08475-330', 20, NULL, 'Cidade Tiradentes ', -23.5902004, -46.4013597, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5902004,
    longitude = -46.4013597;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1315', 'EMEI Eldy Poli Bifone, profa.', 'Readequação Predial', 'Av. Ariston Azevedo, 134 - Belenzinho, São Paulo - SP, 03021-020', 20, NULL, 'Mooca ', -23.5285245, -46.6007555, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5285245,
    longitude = -46.6007555;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1316', 'EMEI Elisa Kauffmann Abramovich, profa.', 'Readequação Predial', 'R. René de Toledo, 55 - Cid Tiradentes, São Paulo - SP, 08471-740', 20, NULL, 'Cidade Tiradentes ', -23.6026145, -46.4039363, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6026145,
    longitude = -46.4039363;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1317', 'EMEI Jane Verzinhasse Peres Zanfra, profa.', 'Readequação Predial', 'Rua Fernando Sabino, 148 - Parque Nações Unidas, São Paulo - SP, 02996-195', 20, NULL, 'Pirituba / Jaraguá', -23.43556, -46.7438691, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.43556,
    longitude = -46.7438691;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1318', 'EMEI Maria Dailce Monteiro Da Silva Gomes, profa.', 'Readequação Predial', 'Rua Martino Arosio, 147 - Vila Aurora, São Paulo - SP, 05186-150', 20, NULL, 'Pirituba / Jaraguá', -23.4334319, -46.7518564, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4334319,
    longitude = -46.7518564;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1319', 'EMEI Maria Do Carmo Godoy Ramos, profa.', 'Readequação Predial', 'R. Miguel Pereira Landim, 193 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-000', 20, NULL, 'Pirituba / Jaraguá', -23.4893964, -46.7567763, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4893964,
    longitude = -46.7567763;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1320', 'EMEI Maria Laura De Souza Campos, profa.', 'Readequação Predial', 'R. Mororó, 419 - Chácara Santo Antônio (Zona Leste), São Paulo - SP, 03410-060', 20, NULL, 'Aricanduva ', -23.5555966, -46.5526566, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5555966,
    longitude = -46.5526566;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1321', 'EMEI Marisa Lopes Pinheiro, profa.', 'Readequação Predial', 'Rua Roberto Said, 183 - Jardim Nélia, São Paulo - SP', 20, NULL, 'Itaim Paulista ', -23.5152229, -46.3859583, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5152229,
    longitude = -46.3859583;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1322', 'EMEI Rumi Oikawa, profa.', 'Readequação Predial', 'R. dos Lírios, 10 - Parque das Flores, São Paulo - SP, 08391-280', 20, NULL, 'São Mateus ', -23.6399752, -46.4462521, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6399752,
    longitude = -46.4462521;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1323', 'EMEI Thais Motta De Oliveira E Silva Rodrigues, profa.', 'Readequação Predial', 'Rua Diógenes Dourado S/N Conjunto Residencial Lei São Paulo SP 02815-060 ', 20, NULL, 'Pirituba / Jaraguá', -23.4451571, -46.7154348, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4451571,
    longitude = -46.7154348;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1324', 'EMEI Wilma Alvarenga De Oliveira , profa.', 'Readequação Predial', 'Rua Integrada, 395 - Jardim Do Pastor - Capão Redondo', 20, NULL, 'Campo Limpo ', -23.6655437, -46.7774403, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6655437,
    longitude = -46.7774403;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1325', 'EMEI Zuleika Pereira Leite, profa.', 'Readequação Predial', 'R. Dr. Antônio Barbosa da Cunha, 46 - Jardim Maria Sampaio', 20, NULL, 'Campo Limpo ', -23.6412654, -46.7852377, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6412654,
    longitude = -46.7852377;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1326', 'EMEI Ricardo Goncalves', 'Readequação Predial', 'Praça Tcheco, s/n - Vila Ipojuca, São Paulo - SP, 05057-080', 20, NULL, 'Lapa ', -23.5302328, -46.7062528, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5302328,
    longitude = -46.7062528;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1327', 'EMEI Rodrigues De Abreu', 'Readequação Predial', 'R. João dos Reis, 4 - Vila Princesa Isabel, São Paulo - SP, 08410-150', 20, NULL, 'Guaianazes ', -23.5466411, -46.4149838, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466411,
    longitude = -46.4149838;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1328', 'EMEI Vila Natal', 'Readequação Predial', 'R. Lima Natal, 99 - Vila Natal, São Paulo - SP, 04863-150', 20, NULL, 'Capela do Socorro ', -23.7604547, -46.7107375, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7604547,
    longitude = -46.7107375;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1329', 'EMEI Danton Castilho Cabral', 'Readequação Predial', 'RUA SILVESTRO SILVESTRI 319', 20, NULL, NULL, -23.6073957, -46.5169765, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6073957,
    longitude = -46.5169765;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1330', 'CIEJA - Santo Amaro', 'Readequação Predial', 'R. Francisco Ramos, R. ,132 - Jardim Consorcio, São Paulo - SP, 04437-060', 20, NULL, 'Santo Amaro ', -23.671398, -46.67576, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.671398,
    longitude = -46.67576;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1331', 'CEU Alto Alegre', 'Manutenção em Unidades Educacionais', 'Av. Bento Guelfi, s/n - Jardim Alto Alegre', 20, NULL, 'São Mateus ', -23.6149619, -46.4230413, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6149619,
    longitude = -46.4230413;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1332', 'EMEI Rua Manoel Bastos x Rua José Felipe Amaral x Rua Francisco Moreira', 'Construção Unidade Educacional', 'Rua Manoel Bastos', 20, NULL, 'Itaim Paulista ', -23.517445, -46.40375, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517445,
    longitude = -46.40375;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1333', 'CEI - Rua Domingas Galleteri Blotta x Rua São Canuto', 'Construção Unidade Educacional', 'Rua Domingos Galleteri Blotta', 20, NULL, 'Santo Amaro ', -23.682518, -46.6760914, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.682518,
    longitude = -46.6760914;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1334', 'EMEF - Setor 5513 - Rua Manoel da Costa Capanema', 'Construção Unidade Educacional', 'Rua Manoel da Costa Capanema', 20, NULL, 'Parelheiros ', -23.8787558, -46.6400421, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8787558,
    longitude = -46.6400421;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1335', 'CEI - Setor 5513 - Rua Manoel da Costa Capanema', 'Construção Unidade Educacional', 'Rua Manoel da Costa Capanema', 20, NULL, 'Parelheiros ', -23.878394, -46.640325, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.878394,
    longitude = -46.640325;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1336', 'EMEI Rua Jorge Jones', 'Construção Unidade Educacional', 'Rua Jorge Jones', 20, NULL, 'Itaim Paulista ', -23.505567, -46.419548, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505567,
    longitude = -46.419548;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1337', 'CEI Rua da Safra x Rua Doce Lima', 'Construção Unidade Educacional', 'Rua da Safra x Rua Doce Lima', 20, NULL, 'Campo Limpo ', -23.6701524, -46.784054, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6701524,
    longitude = -46.784054;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1338', 'CEI - Rua DR. Rabelo do Amaral x Viela da Paz', 'Construção Unidade Educacional', 'Rua DR. Rabelo do Amaral x Viela da Paz', 20, NULL, 'Butantã ', -23.6127865, -46.7501409, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6127865,
    longitude = -46.7501409;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1339', 'CEI Jardim Dom José - Rua Anum Dourado', 'Construção Unidade Educacional', 'Rua Anum Dourado', 20, NULL, 'Campo Limpo ', -23.6773097, -46.7957562, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6773097,
    longitude = -46.7957562;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1340', 'EMEI - Cora Coralina', 'Construção Unidade Educacional', 'R. Djalma Correa, 300', 20, NULL, 'Cidade Ademar ', -23.664875, -46.672466, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.664875,
    longitude = -46.672466;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1341', 'CEI Visconde de Taunay', 'Construção Unidade Educacional', 'Av. Casa Grande, 566', 20, NULL, 'Sapopemba', -23.6039366, -46.5149149, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6039366,
    longitude = -46.5149149;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1342', 'CEI José Manuel Camisa Nova - CDHU', 'Construção Unidade Educacional', 'Rua José Manuel Camisa Nova, 70', 20, NULL, 'M´Boi Mirim', -23.6649339, -46.7472622, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6649339,
    longitude = -46.7472622;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1343', 'CEU Caminho do Mar', 'Manutenção em Unidades Educacionais', 'av ARMANDO DE ARRUDA PEREIRA ENGENHEIRO 5080', 20, NULL, 'Jabaquara ', -23.6537212, -46.6370892, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6537212,
    longitude = -46.6370892;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1344', 'CEU Feitiço da Vila', 'Manutenção em Unidades Educacionais', 'av FEITICO DA VILA 399', 20, NULL, 'Campo Limpo ', -23.686523, -46.794625, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686523,
    longitude = -46.794625;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1345', 'CEU Curuçá', 'Manutenção em Unidades Educacionais', 'av marechal tito 3452', 20, NULL, 'Itaim Paulista ', -23.4950351, -46.4122963, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4950351,
    longitude = -46.4122963;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1346', 'CEU Navegantes', 'Manutenção em Unidades Educacionais', 'ARIA MOASSAB BARBOUR SN', 20, NULL, 'Capela do Socorro ', -23.7442239, -46.6606278, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7442239,
    longitude = -46.6606278;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1347', 'CEU Quinta do Sol', 'Manutenção em Unidades Educacionais', 'LUIZ IMPARATO 564', 20, NULL, 'Penha ', -23.499031, -46.4962695, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.499031,
    longitude = -46.4962695;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1348', 'CEU Vila do Sol', 'Manutenção em Unidades Educacionais', 'av FUNCIONARIOS PUBLICOS 369', 20, NULL, 'M´Boi Mirim', -23.7332846, -46.7835053, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7332846,
    longitude = -46.7835053;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1349', 'EMEBS Anne Sullivan', 'Manutenção em Unidades Educacionais', 'Rua Rodrigues Pais, 512', 20, NULL, 'Santo Amaro ', -23.6297077, -46.7020422, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6297077,
    longitude = -46.7020422;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1350', 'EMEF Assad Abdala', 'Manutenção em Unidades Educacionais', 'Av. Mendonça Drumond, 902', 20, NULL, 'Penha ', -23.5530248, -46.517691, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5530248,
    longitude = -46.517691;