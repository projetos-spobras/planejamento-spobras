INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1150', 'CEI Indireto Menino Jesus Jardim Grimaldi', 'Readequação Predial', 'R. Olegário Maciel, 10 - Jardim Dona Sinha, São Paulo - SP, 03924-110', 20, NULL, 'Sapopemba', -23.5996172, -46.509155, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5996172, -- Use merged value
    longitude = -46.509155, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1151', 'CEI Indireto Nossa Senhora Da Assunção', 'Readequação Predial', 'R. Dr. José Pinto Azeredo, 48 - Vila Universitaria, São Paulo - SP, 05359-100', 20, NULL, 'Butantã ', -23.5737928, -46.7448836, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5737928, -- Use merged value
    longitude = -46.7448836, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1152', 'CEI Indireto Ondacaima ', 'Readequação Predial', 'BERNARDO ANTUNES ROLIM, S/N JARDIM DA LARANJEIRA ZONA LESTE. 08381-010 São Paulo - SP.', 20, NULL, 'São Mateus ', -23.6017751, -46.4328151, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6017751, -- Use merged value
    longitude = -46.4328151, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1153', 'CEI Indireto Ondacaima I', 'Readequação Predial', 'R. Tomás de Santa Maria, 78 - Conj. Hab. Teotonio Vilela, São Paulo - SP, 03928-170', 20, NULL, 'Sapopemba', -23.6059198, -46.504192, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6059198, -- Use merged value
    longitude = -46.504192, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1154', 'CEI Indireto Orlando Iazzetti, Dep.', 'Readequação Predial', 'Rua Barra do Camarajibe - Capão do Embira, São Paulo - SP', 20, NULL, 'Aricanduva ', -23.5818805, -46.5318984, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5818805, -- Use merged value
    longitude = -46.5318984, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1155', 'CEI Indireto Pari', 'Readequação Predial', 'R. Carnot, 950 - Canindé, São Paulo - SP, 03032-030', 20, NULL, 'Mooca ', -23.5254875, -46.6219854, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5254875, -- Use merged value
    longitude = -46.6219854, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1156', 'CEI Indireto Parque Das Nações', 'Readequação Predial', 'Paulo Patarra, S/N - Parque Nações Unidas, São Paulo - SP, 02996-205', 20, NULL, 'Pirituba / Jaraguá', -23.4359775, -46.7440859, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4359775, -- Use merged value
    longitude = -46.7440859, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1157', 'CEI Indireto Parque Mandi', 'Readequação Predial', 'Rua Nicolau Batanero Campos, 211', 20, NULL, 'Freguesia / Brasilândia', -23.4825749, -46.6819275, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4825749, -- Use merged value
    longitude = -46.6819275, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1158', 'CEI Indireto Parque Maria Domitila', 'Readequação Predial', ' R. Adrião Ferreira, 7 - Pq M. Domitila, São Paulo - SP, 05128-160', 20, NULL, 'Pirituba / Jaraguá', -23.4923906, -46.7421447, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923906, -- Use merged value
    longitude = -46.7421447, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1159', 'CEI Indireto Parque Residencial Cocaia - Grajaú', 'Readequação Predial', 'Praça Oscar Fenner, S/N - Parque Res. Cocaia', 20, NULL, 'Capela do Socorro ', -23.7434702, -46.6706551, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7434702, -- Use merged value
    longitude = -46.6706551, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1160', 'CEI Indireto Parque Santa Madalena II', 'Readequação Predial', 'R. Iambu, 395 - Parque Santa Madalena, São Paulo - SP, 03982-070', 20, NULL, 'Sapopemba', -23.6105328, -46.5110351, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6105328, -- Use merged value
    longitude = -46.5110351, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1161', 'CEI Indireto Penha', 'Readequação Predial', 'R. Cairo, 60 - Penha de França, São Paulo - SP, 03633-080', 20, NULL, 'Penha ', -23.5329125, -46.5460772, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5329125, -- Use merged value
    longitude = -46.5460772, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1162', 'CEI Indireto Raio De Luz', 'Readequação Predial', 'Av. Gal. Penha Brasil, 2651', 20, NULL, 'Freguesia / Brasilândia', -23.4518367, -46.6761384, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4518367, -- Use merged value
    longitude = -46.6761384, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1163', 'CEI Indireto Salesiana Domingos Savio', 'Readequação Predial', 'Rua Porto da Folha, 57', 20, NULL, 'Penha ', -23.53149, -46.502775, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53149, -- Use merged value
    longitude = -46.502775, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1164', 'CEI Indireto São Luiz Marie De Montfort', 'Readequação Predial', 'R. Litoral Paranaense, 102 - Jardim Pirituba, São Paulo - SP, 02984-030', 20, NULL, 'Pirituba / Jaraguá', -23.4468647, -46.7211772, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4468647, -- Use merged value
    longitude = -46.7211772, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1165', 'CEI Indireto Sapopemba II', 'Readequação Predial', ' R. Manuel do Patrocínio, 105 - Conj. Promorar Sapopemba, São Paulo - SP, 03927-080', 20, NULL, 'Sapopemba', -23.6029382, -46.4981108, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6029382, -- Use merged value
    longitude = -46.4981108, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1166', 'CEI Indireto Shiro Kyono, ver.', 'Readequação Predial', 'Rua professor Thiré, s/n', 20, NULL, 'Penha ', -23.5464802, -46.4951632, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5464802, -- Use merged value
    longitude = -46.4951632, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1167', 'CEI Indireto Sol Nascente', 'Readequação Predial', 'Alameda Aristoteles Claudio Sbrighi, 7 - Res. Sol Nascente, São Paulo - SP, 05282-000', 20, NULL, 'Perus ', -23.4382599, -46.7786586, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4382599, -- Use merged value
    longitude = -46.7786586, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1168', 'CEI Indireto Tatuapé', 'Readequação Predial', 'Rua Cristais, 160', 20, NULL, 'Mooca ', -23.5394736, -46.5780074, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5394736, -- Use merged value
    longitude = -46.5780074, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1169', 'CEI Indireto Tiquatira I', 'Readequação Predial', 'Rua Kampala, s/n', 20, NULL, 'Penha ', -23.516638, -46.553486, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.516638, -- Use merged value
    longitude = -46.553486, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1170', 'CEI Indireto Tomas De Aquino', 'Readequação Predial', 'Rua Arquiteto Roberto Patrão Assis, 114 - Conj. Promorar Sao Luis, São Paulo - SP, 05846-100', 20, NULL, 'M´Boi Mirim', -23.6576107, -46.7435179, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6576107, -- Use merged value
    longitude = -46.7435179, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1171', 'CEI Indireto União De Vila Nova', 'Readequação Predial', 'R. Rio Benedito, 30 - União Vila Nova, São Paulo - SP, 08072-012', 20, NULL, 'São Miguel Paulista ', -23.4904584, -46.4575828, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4904584, -- Use merged value
    longitude = -46.4575828, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1172', 'CEI Indireto Vicente Matheus', 'Readequação Predial', 'R. Cmte. Carlos Ruhl, 177 - Vila Princesa Isabel, São Paulo - SP, 08410-130', 20, NULL, 'Guaianazes ', -23.5455435, -46.4152998, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455435, -- Use merged value
    longitude = -46.4152998, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1173', 'CEI Indireto Vila Flávia', 'Readequação Predial', 'R. Luís Rosseti, 496 - Cidade São Mateus, São Paulo - SP, 03964-030', 20, NULL, 'São Mateus ', -23.6016117, -46.475176, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6016117, -- Use merged value
    longitude = -46.475176, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1174', 'CEI Indireto Vila Joia', 'Readequação Predial', 'Av. Mário Alves, 280 - Jardim Pedro José Nunes, São Paulo - SP, 08061-380', 20, NULL, 'São Miguel Paulista ', -23.5057801, -46.465714, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5057801, -- Use merged value
    longitude = -46.465714, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1175', 'CEI Indireto Vila Leopoldina', 'Readequação Predial', 'R. Peribebui, 98 - Alto da Lapa, São Paulo - SP, 05084-000', 20, NULL, 'Lapa ', -23.5270827, -46.7209972, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5270827, -- Use merged value
    longitude = -46.7209972, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1176', 'CEI Indireto Vila Nova Jaguaré', 'Readequação Predial', 'Av. Dracena, 797 - Jaguaré, São Paulo - SP, 05329-000', 20, NULL, 'Lapa ', -23.5418896, -46.7499839, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5418896, -- Use merged value
    longitude = -46.7499839, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1177', 'CEI Indireto Vila Piauí', 'Readequação Predial', 'R. Francisco Olavo de Assis, S/N - Chácara São João, São Paulo - SP, 05109-070', 20, NULL, 'Lapa ', -23.505697, -46.7617557, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505697, -- Use merged value
    longitude = -46.7617557, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1178', 'CEI Indireto Vila Regina', 'Readequação Predial', 'R. Alberto Píres, 69 - Vila Miriam, São Paulo - SP, 02968-100', 20, NULL, 'Pirituba / Jaraguá', -23.4783953, -46.7078785, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4783953, -- Use merged value
    longitude = -46.7078785, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1179', 'CEI Indireto Vila Silvia', 'Readequação Predial', 'Rua R. Colônia Leopoldina, 350', 20, NULL, 'Penha ', -23.4910533, -46.5016919, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4910533, -- Use merged value
    longitude = -46.5016919, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1180', 'CEI Indireto Vila União', 'Readequação Predial', 'Rua Sílvio Ribeiro dos Santos, 156 - Vila Uniao', 20, NULL, 'Ermelino Matarazzo ', -23.5173307, -46.4775996, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5173307, -- Use merged value
    longitude = -46.4775996, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1181', 'EMEF - Jardim Guarani - José Alfredo Apolinario , prof.', 'Readequação Predial', 'R. Santana do Araçuaí, 190 - Jardim Guarani, São Paulo - SP, 02849-130', 20, NULL, 'Freguesia / Brasilândia', -23.4623669, -46.6907449, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4623669, -- Use merged value
    longitude = -46.6907449, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1183', 'EMEF 8 De Maio', 'Readequação Predial', 'R. Cambaxirra, 176 - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08223-090', 20, NULL, 'Itaquera ', -23.5342926, -46.4726889, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5342926, -- Use merged value
    longitude = -46.4726889, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1184', 'EMEF Arthur Alvim', 'Readequação Predial', 'Rua Desembargador Rocha Portela, 464 - Vila Santa Teresa, São Paulo - SP, 03567-000', 20, NULL, 'Penha ', -23.5387358, -46.4933654, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5387358, -- Use merged value
    longitude = -46.4933654, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1185', 'EMEF Aureliano Leite', 'Readequação Predial', 'R. José Francisco Brandão, 370 - Cidade Tiradentes, São Paulo - SP, 08470-790', 20, NULL, 'Cidade Tiradentes ', -23.5929352, -46.3930314, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5929352, -- Use merged value
    longitude = -46.3930314, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1186', 'EMEF Bartolomeu Lourenço De Gusmão', 'Readequação Predial', 'R. Picinguaba, 802 - Vila Santa Isabel, São Paulo - SP, 03432-000', 20, NULL, 'Aricanduva ', -23.555426, -46.536332, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555426, -- Use merged value
    longitude = -46.536332, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1187', 'EMEF Benedito Calixto', 'Readequação Predial', 'R. Luís Medeiros da Silva, 195 - Jardim Sao Pedro, São Paulo - SP, 08420-650', 20, NULL, 'Itaquera ', -23.546849, -46.4292235, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546849, -- Use merged value
    longitude = -46.4292235, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1188', 'EMEF Carlos Chagas', 'Readequação Predial', 'Av. Osvaldo Valle Cordeiro, 337 - Jardim Brasilia, São Paulo - SP, 03584-000', 20, NULL, 'Itaquera ', -23.5558818, -46.4917797, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5558818, -- Use merged value
    longitude = -46.4917797, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1189', 'EMEF Cecilia Meireles', 'Readequação Predial', 'R. Frei Ricardo do Pilar, 60 - Cangaiba, São Paulo - SP, 03721-090', 20, NULL, 'Penha ', -23.5029634, -46.5268679, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5029634, -- Use merged value
    longitude = -46.5268679, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1190', 'EMEF Cidade De Osaka', 'Readequação Predial', 'Av. Baronesa de Muritiba, 55 - Parque Sao Rafael, São Paulo - SP, 08311-080', 20, NULL, 'São Mateus ', -23.6237846, -46.4711933, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6237846, -- Use merged value
    longitude = -46.4711933, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1191', 'EMEF Coronel Hélio Franco Chaves', 'Readequação Predial', 'R. Kotinda, 1343 - Jardim Corisco, São Paulo - SP, 02365-010', 20, NULL, 'Jaçanã / Tremembé', -23.4282365, -46.5829, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4282365, -- Use merged value
    longitude = -46.5829, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1192', 'EMEF Deputado Roge Ferreira', 'Readequação Predial', 'Rua Philonilia Goncalves dos Santos, S/N - Jaraguá, São Paulo - SP, 02992-210', 20, NULL, 'Pirituba / Jaraguá', -23.4445088, -46.7335629, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4445088, -- Use merged value
    longitude = -46.7335629, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1193', 'EMEF Desembargador Silvio Portugal', 'Readequação Predial', 'R. Francisco Savério Orlandi, 141 - Jardim Libano, São Paulo - SP, 05138-100', 20, NULL, 'Pirituba / Jaraguá', -23.4865273, -46.7339857, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4865273, -- Use merged value
    longitude = -46.7339857, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1194', 'EMEF Dezoito Do Forte', 'Readequação Predial', 'Rua Hafiz Abi Chedid, 110 - Vila Bom Jardim, São Paulo - SP, 04937-210', 20, NULL, 'M´Boi Mirim', -23.6871486, -46.7582117, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6871486, -- Use merged value
    longitude = -46.7582117, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1195', 'EMEF Doutor João Naoki Sumita', 'Readequação Predial', 'Av. Monsenhor Antônio Castro, 222 - Jardim Vila Formosa, São Paulo - SP, 03461-000', 20, NULL, 'Aricanduva ', -23.5711265, -46.5279504, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711265, -- Use merged value
    longitude = -46.5279504, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1196', 'EMEF Francisco Alves Mendes Filho -Chico Mendes', 'Readequação Predial', 'R. Quintino da Cunha, 22 - Jardim Marília, São Paulo - SP, 03579-160', 20, NULL, 'Itaquera ', -23.5619534, -46.4956828, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5619534, -- Use merged value
    longitude = -46.4956828, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1197', 'EMEF Francisco Rebolo', 'Readequação Predial', 'R. Catarinenses, 200 - Vila Andrade, São Paulo - SP, 05728-050', 20, NULL, 'Campo Limpo ', -23.6323503, -46.7416167, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6323503, -- Use merged value
    longitude = -46.7416167, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1198', 'EMEF General Álvaro Silva Braga', 'Readequação Predial', 'Rua Padre Paulo Canelles, 611 - Vila Dalva, São Paulo - SP, 05386-070', 20, NULL, 'Butantã ', -23.5643784, -46.764463, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5643784, -- Use merged value
    longitude = -46.764463, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1199', 'EMEF General Henrique Geisel - Obra', 'Readequação Predial', ' R. Miguel Pereira Landim, 253 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-000', 20, NULL, 'Pirituba / Jaraguá', -23.489782, -46.7565935, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.489782, -- Use merged value
    longitude = -46.7565935, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1200', 'EMEF General Paulo Carneiro Thomaz Alves', 'Readequação Predial', 'R. Nossa Sra. da Aparecida, 15 - Parque Vila Maria, São Paulo - SP, 02169-290', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5193891, -46.5754517, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5193891, -- Use merged value
    longitude = -46.5754517, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1201', 'EMEF Geraldo Sesso Junior', 'Readequação Predial', 'R. José Siqueira Brito, 123 - Vila Brasilandia, São Paulo - SP, 02845-160', 20, NULL, 'Freguesia / Brasilândia', -23.4687705, -46.6908367, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4687705, -- Use merged value
    longitude = -46.6908367, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1202', 'EMEF Gianfrancesco Guarnieri', 'Readequação Predial', 'Rua Domenico Fontana, S/N - Parque Maria Helena, São Paulo - SP, 05854-080', 20, NULL, 'Campo Limpo ', -23.66148, -46.7596439, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.66148, -- Use merged value
    longitude = -46.7596439, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1203', 'EMEF Governador Mário Covas', 'Readequação Predial', 'R. Chuvas de Verão - Conj. Hab. Fazenda do Carmo, São Paulo - SP, 08421-570', 20, NULL, 'Itaquera ', -23.5647194, -46.4214765, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5647194, -- Use merged value
    longitude = -46.4214765, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1204', 'EMEF Henrique Pegado', 'Readequação Predial', ' R. Itapiruna, 131 - Jardim Penha, São Paulo - SP, 03757-050', 20, NULL, 'Penha ', -23.5046602, -46.49891, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5046602, -- Use merged value
    longitude = -46.49891, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1205', 'EMEF Imperatriz Dona Amelia', 'Readequação Predial', 'Av. Ten. Lauro Sodré, 235 - Jardim Santa Adelia, São Paulo - SP, 03974-050', 20, NULL, 'São Mateus ', -23.612795, -46.4851069, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.612795, -- Use merged value
    longitude = -46.4851069, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1206', 'EMEF Irineu Marinho', 'Readequação Predial', 'R. Jacaraípe, 478 - Vila Alóis, São Paulo - SP, 03152-150', 20, NULL, 'Vila Prudente ', -23.5927319, -46.5809483, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5927319, -- Use merged value
    longitude = -46.5809483, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1207', 'EMEF Jardim Damasceno I', 'Readequação Predial', 'Av. Dep. Cantídio Sampaio, 4798 - Jardim Brasilia (Zona Norte), São Paulo - SP, 02860-001', 20, NULL, 'Freguesia / Brasilândia', -23.4464074, -46.7042513, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4464074, -- Use merged value
    longitude = -46.7042513, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1208', 'EMEF João De Deus Cardoso De Melo', 'Readequação Predial', 'R. Manoel Vitorino Pereira, 220 - Jordanópolis', 20, NULL, 'Capela do Socorro ', -23.7331031, -46.6993104, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7331031, -- Use merged value
    longitude = -46.6993104, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1209', 'EMEF Joaquim Osorio Duque Estrada', 'Readequação Predial', 'R. Primo Baudini, 441 - Jardim Augusto, São Paulo - SP, 08371-120', 20, NULL, 'São Mateus ', -23.599428, -46.447435, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599428, -- Use merged value
    longitude = -46.447435, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1210', 'EMEF Júlio De Grammont', 'Readequação Predial', 'Tv. Meiri, 73 - Jardim Rodolfo Pirani, São Paulo - SP, 08311-560', 20, NULL, 'São Mateus ', -23.6318959, -46.4573697, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6318959, -- Use merged value
    longitude = -46.4573697, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1211', 'EMEF Leonardo Villas Boas ', 'Readequação Predial', 'Rua José Viriato De Castro, 63 - Campo Limpo', 20, NULL, 'Campo Limpo ', -23.6331335, -46.7738727, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6331335, -- Use merged value
    longitude = -46.7738727, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1212', 'EMEF Major Silvio Fleming', 'Readequação Predial', 'R. Paulo de Lima Corrêia, 65 - Vila Prudente, São Paulo - SP, 03193-060', 20, NULL, 'Mooca ', -23.5731496, -46.5774842, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5731496, -- Use merged value
    longitude = -46.5774842, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1213', 'EMEF Manoel De Abreu', 'Readequação Predial', 'R. Gen. Renato Varandas de Azevedo, 377 - Jardim Três Corações', 20, NULL, 'Capela do Socorro ', -23.7702755, -46.6849838, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7702755, -- Use merged value
    longitude = -46.6849838, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1214', 'EMEF Mario Lago', 'Readequação Predial', 'Rua Dourada - S/N - Cohab Jardim Paulistano, São Paulo - SP, 02820-090', 20, NULL, 'Pirituba / Jaraguá', -23.4496335, -46.7090029, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4496335, -- Use merged value
    longitude = -46.7090029, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1215', 'EMEF Mauro Faccio Zacarias', 'Readequação Predial', 'Av. Raquel Alves Moreira, 823 - Jardim Guarujá', 20, NULL, 'M´Boi Mirim', -23.6678654, -46.7487453, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6678654, -- Use merged value
    longitude = -46.7487453, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1216', 'EMEF Ministro Calógeras', 'Readequação Predial', 'R. Alsácia, 59 - Jardim Aeroporto, São Paulo - SP, 04630-040', 20, NULL, 'Santo Amaro ', -23.6331668, -46.660614, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6331668, -- Use merged value
    longitude = -46.660614, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1217', 'EMEF Ministro Synésio Rocha', 'Readequação Predial', 'R. Jaracatiá, 448 - Jardim Umarizal', 20, NULL, 'Campo Limpo ', -23.6197637, -46.7541731, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6197637, -- Use merged value
    longitude = -46.7541731, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1218', 'EMEF Olival Costa', 'Readequação Predial', 'Av. João Rodrigues Ruiz, 248 - Jardim Sapopemba, São Paulo - SP, 03975-110', 20, NULL, 'Sapopemba', -23.6106858, -46.4934826, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6106858, -- Use merged value
    longitude = -46.4934826, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1219', 'EMEF Padre Antonio Vieira', 'Readequação Predial', 'Rua Antonino Bacaeri, 171 - Jardim Nordeste, São Paulo - SP, 03687-060', 20, NULL, 'Penha ', -23.5268352, -46.4860738, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5268352, -- Use merged value
    longitude = -46.4860738, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1220', 'EMEF Padre Nildo Do Amaral Junior', 'Readequação Predial', 'R. Antônio João de Medeiros, 1901 - Jardim Camargo Novo, São Paulo - SP, 08140-060', 20, NULL, 'Itaim Paulista ', -23.5158017, -46.3939919, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5158017, -- Use merged value
    longitude = -46.3939919, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1221', 'EMEF Parque Boa Esperança II', 'Readequação Predial', 'R. Francisco de Melo Palheta, S/N - Parque Boa Esperança, São Paulo - SP, 08341-000', 20, NULL, 'São Mateus ', -23.6021906, -46.4521297, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6021906, -- Use merged value
    longitude = -46.4521297, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1222', 'EMEF Parque São Miguel', 'Readequação Predial', 'R. Alziro Pinheiro Magalhães, 877 - Parque Sao Miguel', 20, NULL, 'Capela do Socorro ', -23.7591217, -46.6841348, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7591217, -- Use merged value
    longitude = -46.6841348, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1223', 'EMEF Plínio Salgado', 'Readequação Predial', 'R. Clarissa - Jardim Eliana, São Paulo - SP, 04851-000', 20, NULL, 'Capela do Socorro ', -23.7533834, -46.6702017, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7533834, -- Use merged value
    longitude = -46.6702017, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1224', 'EMEF Aldo Ribeiro Luz, prof.', 'Readequação Predial', 'Rua Jean Coralli, 135 - Jardim Santa Lucrecia, São Paulo - SP, 05183-000', 20, NULL, 'Pirituba / Jaraguá', -23.4517905, -46.7526476, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4517905, -- Use merged value
    longitude = -46.7526476, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1225', 'EMEF Almeida Júnior, prof.', 'Readequação Predial', 'R. Francisco Mendes, 238 - Socorro', 20, NULL, 'Capela do Socorro ', -23.6682052, -46.7103484, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6682052, -- Use merged value
    longitude = -46.7103484, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1226', 'EMEF Benedito Montenegro, prof.', 'Readequação Predial', 'Avenida Ragueb Chohfi, 4046 - Jardim Três Marias, São Paulo - SP, 08375-000', 20, NULL, 'São Mateus ', -23.5948297, -46.4469045, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5948297, -- Use merged value
    longitude = -46.4469045, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1227', 'EMEF Gabriel Sylvestre Teixeira De Carvalho, prof.', 'Readequação Predial', 'R. Cel. Albino Rêgo, 132 - Parque Maria Domitila, São Paulo - SP, 05128-030', 20, NULL, 'Pirituba / Jaraguá', -23.4957752, -46.7391982, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4957752, -- Use merged value
    longitude = -46.7391982, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1228', 'EMEF João De Lima Paiva, prof.', 'Readequação Predial', 'R. Getulina, 278 - Guaianases, São Paulo - SP, 08450-020', 20, NULL, 'Guaianazes ', -23.5418404, -46.4125602, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5418404, -- Use merged value
    longitude = -46.4125602, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1229', 'EMEF José Francisco Cavalcante, prof.', 'Readequação Predial', ' R. Tajal - Conj. Hab. Jardim Sao Bento, São Paulo - SP', 20, NULL, 'Campo Limpo ', -23.6789778, -46.792738, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6789778, -- Use merged value
    longitude = -46.792738, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1230', 'EMEF Júlio César De Melo E Sousa - Malba Tahan, prof.', 'Readequação Predial', 'R. Sebastião Medeiros da Silva, 89 - Itaquera, São Paulo - SP, 08210-661', 20, NULL, 'Itaquera ', -23.5314831, -46.4430227, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5314831, -- Use merged value
    longitude = -46.4430227, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1231', 'EMEF Luiz Roberto Mega, prof.', 'Readequação Predial', 'R. Henrique Adamus, 16 - Jardim Aurea, São Paulo - SP, 08421-107', 20, NULL, 'Cidade Tiradentes ', -23.565511, -46.4169953, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.565511, -- Use merged value
    longitude = -46.4169953, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1232', 'EMEF Meire De Jesus Ribeiro, prof.', 'Readequação Predial', 'R. Alfonso Asturaro, 305 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-591', 20, NULL, 'Cidade Tiradentes ', -23.5851988, -46.3931011, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5851988, -- Use merged value
    longitude = -46.3931011, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1233', 'EMEF Isabel Vieira Ferreira, profa.', 'Readequação Predial', ' R. das Orquídias, 130 - Parque Primavera, São Paulo - SP, 04467-245', 20, NULL, 'Cidade Ademar ', -23.6944649, -46.6487856, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6944649, -- Use merged value
    longitude = -46.6487856, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1234', 'EMEF Claudia Bartolomazi, profa.', 'Readequação Predial', 'R. Arroio Arapongas, 275 - Conj. Hab. Santa Etelvina III, São Paulo - SP, 08485-440', 20, NULL, 'Cidade Tiradentes ', -23.582481, -46.4119035, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582481, -- Use merged value
    longitude = -46.4119035, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1235', 'EMEF Doutora Irene Garcia Costa De Souza, profa.', 'Readequação Predial', 'R. Gonçalo Aldana, 385 - Vila Homero, São Paulo - SP, 05184-300', 20, NULL, 'Pirituba / Jaraguá', -23.4510299, -46.7584668, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4510299, -- Use merged value
    longitude = -46.7584668, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1236', 'EMEF Idêmia De Godoy, profa.', 'Readequação Predial', 'Rua: Andes, 807 - Guaianases, São Paulo - SP, 08440-180', 20, NULL, 'Guaianazes ', -23.5366293, -46.4066126, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5366293, -- Use merged value
    longitude = -46.4066126, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1237', 'EMEF Josefa Nicacio Araújo, profa.', 'Readequação Predial', 'R. Manuel Rodrigues Santiago, 809 - Jardim Laura, São Paulo - SP, 08142-235', 20, NULL, 'Itaim Paulista ', -23.5149011, -46.3812161, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5149011, -- Use merged value
    longitude = -46.3812161, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1238', 'EMEF Marili Dias, profa.', 'Readequação Predial', 'Rua Antônio Conselheiro, 1 - Vila dos Palmares, São Paulo - SP, 05273-140', 20, NULL, 'Perus ', -23.4409085, -46.8072379, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4409085, -- Use merged value
    longitude = -46.8072379, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1239', 'EMEF Olinda Menezes Serra Vidal, profa.', 'Readequação Predial', 'R. Várzea Nova, 40 - Cidade Tiradentes, São Paulo - SP, 08475-420', 20, NULL, 'Cidade Tiradentes ', -23.5939469, -46.4001126, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5939469, -- Use merged value
    longitude = -46.4001126, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1240', 'EMEF Thereza Maciel De Paula, profa.', 'Readequação Predial', 'R. Jorge Carlos de Almeida, 659 - Jardim Santo Andre, São Paulo - SP, 08390-355', 20, NULL, 'São Mateus ', -23.6320354, -46.44357, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6320354, -- Use merged value
    longitude = -46.44357, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1241', 'EMEF Virginia Lorisa Zeitounian Camargo, profa.', 'Readequação Predial', 'Rua Tritão, S/N - Cidade Satelite Santa Barbara, São Paulo - SP, 08340-120', 20, NULL, 'São Mateus ', -23.6070086, -46.4622456, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6070086, -- Use merged value
    longitude = -46.4622456, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1242', 'EMEF Wanny Salgado, profa.', 'Readequação Predial', 'R. Sílvio Ribeiro dos Santos, 104 - Vila Uniao (Zona Leste), São Paulo - SP, 03683-040', 20, NULL, 'Ermelino Matarazzo ', -23.517631, -46.4770736, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517631, -- Use merged value
    longitude = -46.4770736, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1243', 'EMEI Recanto Campo Belo -  Dirce Zillesg Borges Dos Santos, profa.', 'Readequação Predial', 'R. Marcelo Bernardini, S/N - Recanto Campo Belo, São Paulo - SP, 04880-080', 20, NULL, 'Parelheiros ', -23.7971934, -46.736067, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7971934, -- Use merged value
    longitude = -46.736067, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1244', 'EMEF Senador Luís Carlos Prestes', 'Readequação Predial', 'R. Igarapé Guará, 90 - Conj. Hab. Inacio Monteiro, São Paulo - SP, 08472-120', 20, NULL, 'Cidade Tiradentes ', -23.570453, -46.3996415, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570453, -- Use merged value
    longitude = -46.3996415, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1245', 'EMEF Sócrates Brasileiro Sampaio De Sousa Vieira De Oliveira', 'Readequação Predial', 'R. Profa. Nina Stocco, 597 - Jardim Catanduva, São Paulo - SP, 05767-001', 20, NULL, 'Campo Limpo ', -23.630894, -46.759304, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.630894, -- Use merged value
    longitude = -46.759304, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1246', 'EMEF Tenente José Maria Pinto Duarte', 'Readequação Predial', 'R. Atalaia, 100 - Sumaré, São Paulo - SP, 01251-060', 20, NULL, 'Lapa ', -23.5462039, -46.6762304, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5462039, -- Use merged value
    longitude = -46.6762304, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1247', 'EMEF Teófilo Benedito Ottoni', 'Readequação Predial', 'R. Inácio Cervantes, 490 - Parque Ipe, São Paulo - SP, 05572-000', 20, NULL, 'Butantã ', -23.5944471, -46.7980759, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5944471, -- Use merged value
    longitude = -46.7980759, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1248', 'EMEF Theo Dutra', 'Readequação Predial', ' Av. Guilherme de Almeida, 110 - Vila Penteado, São Paulo - SP, 02866-040', 20, NULL, 'Freguesia / Brasilândia', -23.4673787, -46.6796071, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4673787, -- Use merged value
    longitude = -46.6796071, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1249', 'EMEF Vereadora Anna Lamberga Zeglio', 'Readequação Predial', 'R. Olímpia Montani, 231 - Conj. Hab. Santa Etelvina II, São Paulo - SP, 08475-320', 20, NULL, 'Cidade Tiradentes ', -23.5912442, -46.401436, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5912442, -- Use merged value
    longitude = -46.401436, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1250', 'EMEI  Almirante Sylvio De Magalhaes Figueiredo', 'Readequação Predial', 'R. Salvador Rodrigues Negrão, 604 - Vila Marari, São Paulo - SP, 04401-160', 20, NULL, 'Cidade Ademar ', -23.6718322, -46.6621698, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6718322, -- Use merged value
    longitude = -46.6621698, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1251', 'EMEI  Vanda Coelho De Moraes', 'Readequação Predial', 'R. Guadalquivir, 9 - Jardim Ubirajara, São Paulo - SP, 04458-100', 20, NULL, 'Santo Amaro ', -23.6866927, -46.6738183, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6866927, -- Use merged value
    longitude = -46.6738183, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1252', 'EMEI 25 De Janeiro', 'Readequação Predial', 'R. Padre Feliciano Domingues, 182 - Vila Marina, São Paulo - SP, 02965-140', 20, NULL, 'Freguesia / Brasilândia', -23.4831867, -46.7035113, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4831867, -- Use merged value
    longitude = -46.7035113, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1253', 'EMEI Adevaldo De Moraes', 'Readequação Predial', 'R. Oreste Damolin, 791 - Conj. Promorar Sapopemba, São Paulo - SP, 03927-360', 20, NULL, 'Sapopemba', -23.6017648, -46.4985058, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6017648, -- Use merged value
    longitude = -46.4985058, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1254', 'EMEI Ângelo Kreta', 'Readequação Predial', ' R. Nova Delhi, 560 - Jardim Edith, São Paulo - SP, 04813-240', 20, NULL, 'Capela do Socorro ', -23.722809, -46.6858705, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.722809, -- Use merged value
    longitude = -46.6858705, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1255', 'EMEI Aracy De Almeida', 'Readequação Predial', 'R. Waldemar Ortega, 650 - Jardim Comercial', 20, NULL, 'Campo Limpo ', -23.6733574, -46.7823549, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6733574, -- Use merged value
    longitude = -46.7823549, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1256', 'EMEI Begônia Real', 'Readequação Predial', 'Rua Hera Do Canadá, 20 - Jardim Pedra Branca, São Paulo - SP, 08490-870', 20, NULL, 'Itaquera ', -23.582683, -46.41956, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582683, -- Use merged value
    longitude = -46.41956, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1257', 'EMEI Bertha Lurtz', 'Readequação Predial', 'R. Rômulo Naldi, 117 - Conj. Promorar Estrada da Parada, São Paulo - SP, 02873-250', 20, NULL, 'Freguesia / Brasilândia', -23.4557559, -46.6852291, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4557559, -- Use merged value
    longitude = -46.6852291, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1258', 'EMEI Caio Graco Da Silva Prado', 'Readequação Predial', 'R. Pedro Pomar, 74 - Jardim Elisa Maria, São Paulo - SP, 02875-020', 20, NULL, 'Freguesia / Brasilândia', -23.4609713, -46.6800075, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4609713, -- Use merged value
    longitude = -46.6800075, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1259', 'EMEI Carmem Miranda', 'Readequação Predial', 'R. Miguel Ferreira de Melo, 10 - Jardim Santo Andre, São Paulo - SP, 08390-000', 20, NULL, 'São Mateus ', -23.6293753, -46.4444134, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6293753, -- Use merged value
    longitude = -46.4444134, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1260', 'EMEI Catulo Da Paixão Cearense ', 'Readequação Predial', 'Rua João Da Cunha Vasconcelos, 116 - Parque Ipê', 20, NULL, 'Campo Limpo ', -23.6394718, -46.7612254, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6394718, -- Use merged value
    longitude = -46.7612254, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1261', 'EMEI Chácara Santa Maria - Obra', 'Readequação Predial', 'R. Feitiço da Vila, 877 - Chacara Santa Maria', 20, NULL, 'Campo Limpo ', -23.6861882, -46.7999254, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6861882, -- Use merged value
    longitude = -46.7999254, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1262', 'EMEI Chiquinha Gonzaga', 'Readequação Predial', 'Rua Carlo Clausetti, 298 - Conj. Promorar Sapopemba, São Paulo - SP, 03928-220', 20, NULL, 'Sapopemba', -23.6048548, -46.5008628, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6048548, -- Use merged value
    longitude = -46.5008628, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1263', 'EMEI Cidade A E Carvalho', 'Readequação Predial', 'Praca Jandaira, S/N - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08225-390', 20, NULL, 'Itaquera ', -23.5279793, -46.4646253, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5279793, -- Use merged value
    longitude = -46.4646253, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1264', 'EMEI Cidade Ademar II', 'Readequação Predial', 'R. Eng. João Lang, 278 - Jardim Martini, São Paulo - SP, 04439-070', 20, NULL, 'Cidade Ademar ', -23.6753846, -46.6663339, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6753846, -- Use merged value
    longitude = -46.6663339, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1265', 'EMEI Conjunto  Habitacional São Francisco', 'Readequação Predial', 'Tv. Coruja do Campo, 100 - Jardim Rodolfo Pirani, São Paulo - SP, 08311-410', 20, NULL, 'São Mateus ', -23.6309881, -46.4566928, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6309881, -- Use merged value
    longitude = -46.4566928, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1266', 'EMEI Coronel Joao Negrão', 'Readequação Predial', ' R. Francisco Leite Esquerdo, 30 - Jardim Celeste, São Paulo - SP, 05528-040', 20, NULL, 'Butantã ', -23.5974351, -46.7561995, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5974351, -- Use merged value
    longitude = -46.7561995, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1267', 'EMEI Cruz E Sousa', 'Readequação Predial', 'R. Henrique da Costa, 348 - Jardim Itacolomi, São Paulo - SP, 04386-000', 20, NULL, 'Jabaquara ', -23.6628309, -46.651978, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6628309, -- Use merged value
    longitude = -46.651978, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1268', 'EMEI Eder Sader', 'Readequação Predial', 'R. Srg. Hermínio Aurélio Sampaio, 477 - Conj. Hab. Mal. Mascarenhas de Morais, São Paulo - SP, 03977-220', 20, NULL, 'Sapopemba', -23.6172508, -46.493812, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6172508, -- Use merged value
    longitude = -46.493812, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1269', 'EMEI Emir Macedo Nogueira', 'Readequação Predial', 'Praça Gen. Araripe de Faria, 405 - Vila Gomes, São Paulo - SP, 05590-020', 20, NULL, 'Butantã ', -23.5767787, -46.7313318, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5767787, -- Use merged value
    longitude = -46.7313318, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1270', 'EMEI Ernani Silva Bruno', 'Readequação Predial', 'R. Daniel Mongolo, 145 - J - Jardim Bonifacio, São Paulo - SP, 08250-580', 20, NULL, 'Itaquera ', -23.5386166, -46.4379241, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5386166, -- Use merged value
    longitude = -46.4379241, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1271', 'EMEI Estrada Turística Do Jaraguá', 'Readequação Predial', 'Rua Agnes Fontoura, 75 - Conjunto Habitacional Turística, São Paulo – SP 05164-015', 20, NULL, 'Pirituba / Jaraguá', -23.4729704, -46.7550997, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4729704, -- Use merged value
    longitude = -46.7550997, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1272', 'EMEI Fernando De Azevedo', 'Readequação Predial', 'R. Barra da Forquilha, 510 - Parque Panamericano, São Paulo - SP, 02993-000', 20, NULL, 'Pirituba / Jaraguá', -23.4510045, -46.729529, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4510045, -- Use merged value
    longitude = -46.729529, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1273', 'EMEI Flávio Império', 'Readequação Predial', 'R. José Figliolini, 735 - Vila Nilo, São Paulo - SP, 02278-020', 20, NULL, 'Jaçanã / Tremembé', -23.4594515, -46.5741267, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4594515, -- Use merged value
    longitude = -46.5741267, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1274', 'EMEI Gabriel Prestes', 'Readequação Predial', ' R. da Consolação, 1012 - Consolação, São Paulo - SP, 01302-000', 20, NULL, 'SÉ', -23.5483919, -46.6510213, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5483919, -- Use merged value
    longitude = -46.6510213, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1275', 'EMEI Glauber Rocha', 'Readequação Predial', 'R. Pinheiro do Paraná, 493 - Parque Guarani, São Paulo - SP, 08235-590', 20, NULL, 'Itaquera ', -23.5198367, -46.4620131, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5198367, -- Use merged value
    longitude = -46.4620131, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1276', 'EMEI Grajau', 'Readequação Predial', 'Rua Alba Valdez, 101 - Jardim Reimberg, São Paulo - SP, 04845-200', 20, NULL, 'Capela do Socorro ', -23.750906, -46.6965643, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.750906, -- Use merged value
    longitude = -46.6965643, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1277', 'EMEI Helena Lopes Santana Da Silva', 'Readequação Predial', 'R. Andes, 851 - Guaianases, São Paulo - SP, 08440-180', 20, NULL, 'Guaianazes ', -23.536599, -46.4063124, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.536599, -- Use merged value
    longitude = -46.4063124, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1278', 'EMEI J.G. De Araújo Jorge', 'Readequação Predial', 'R. Valdomiro Gonzaga Silva, 1209 - Jardim das Oliveiras, São Paulo - SP, 08111-540', 20, NULL, 'Itaim Paulista ', -23.4941073, -46.3716382, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4941073, -- Use merged value
    longitude = -46.3716382, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1279', 'EMEI Jardim Novo Parelheiros I', 'Readequação Predial', ' R. Gentil Schunck Roschel, 101 - Jardim Novo Parelheiros, São Paulo - SP, 04890-410', 20, NULL, 'Parelheiros ', -23.829497, -46.7273529, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.829497, -- Use merged value
    longitude = -46.7273529, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1280', 'EMEI Jean Piaget', 'Readequação Predial', 'R. Saldanha da Gama, 485 - Alto da Lapa, São Paulo - SP, 05081-000', 20, NULL, 'Lapa ', -23.530993, -46.7126877, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.530993, -- Use merged value
    longitude = -46.7126877, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1281', 'EMEI Jesuína Nunes Barbosa', 'Readequação Predial', ' R. Emb. Ildefonso Falcão, 157 - Cidade São Mateus, São Paulo - SP, 03964-020', 20, NULL, 'São Mateus ', -23.6078241, -46.476153, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6078241, -- Use merged value
    longitude = -46.476153, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1282', 'EMEI José Clemente Pereira', 'Readequação Predial', 'Av. Dr. Paulo Colombo Pereira de Queiroz, 320 - Parque Santa Madalena, São Paulo - SP, 03982-130', 20, NULL, 'Sapopemba', -23.6113476, -46.509531, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6113476, -- Use merged value
    longitude = -46.509531, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1283', 'EMEI José Vicente Da Cunha', 'Readequação Predial', ' R. São João do Paraíso, 281 - Jardim Imperador, São Paulo - SP, 03934-000', 20, NULL, 'São Mateus ', -23.5911172, -46.4997934, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5911172, -- Use merged value
    longitude = -46.4997934, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1284', 'EMEI Júlio Alves Pereira', 'Readequação Predial', 'R. Carolina Carvalho, 67 - Cidade D''Abril, São Paulo - SP, 05182-210', 20, NULL, 'Pirituba / Jaraguá', -23.452988, -46.7461492, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.452988, -- Use merged value
    longitude = -46.7461492, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1285', 'EMEI Louro Rosa', 'Readequação Predial', 'R. Louro-Rosa, 18 - Jardim Camargo Novo, São Paulo - SP, 08141-670', 20, NULL, 'Itaim Paulista ', -23.5129373, -46.3878397, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5129373, -- Use merged value
    longitude = -46.3878397, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1286', 'EMEI Luiz Da Câmara Cascudo', 'Readequação Predial', 'Rua Lanzarote, 38 - Jardim Vila Das Virtudes', 20, NULL, 'Campo Limpo ', -23.6511611, -46.7741177, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6511611, -- Use merged value
    longitude = -46.7741177, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1287', 'EMEI Manoel Fiel Filho', 'Readequação Predial', ' R. Dr. Aristides Ricardo, 297 - Parque Sao Rafael, São Paulo - SP, 08311-270', 20, NULL, 'São Mateus ', -23.624747, -46.4696904, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.624747, -- Use merged value
    longitude = -46.4696904, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1288', 'EMEI Marcilio Dias', 'Readequação Predial', 'Rua Jaibarás, 360 A - Belenzinho, São Paulo - SP, 03163-040', 20, NULL, 'Mooca ', -23.5486144, -46.5975191, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5486144, -- Use merged value
    longitude = -46.5975191, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1289', 'EMEI Marechal Floriano Peixoto', 'Readequação Predial', 'Rua Victório Santim, 645 - Vila Carmosina, São Paulo - SP, 08290-001', 20, NULL, 'Itaquera ', -23.5415333, -46.4515645, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5415333, -- Use merged value
    longitude = -46.4515645, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1290', 'EMEI Maria Aparecida Lara Coiado', 'Readequação Predial', 'R. Gen. Rocha Calado, S/N - Vila Marilena, São Paulo - SP, 08411-330', 20, NULL, 'Guaianazes ', -23.5549093, -46.4157249, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5549093, -- Use merged value
    longitude = -46.4157249, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1291', 'EMEI Mary Buarque', 'Readequação Predial', 'R. Restinga, 150 - Tatuapé, São Paulo - SP, 03065-020', 20, NULL, 'Mooca ', -23.5398339, -46.5807668, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5398339, -- Use merged value
    longitude = -46.5807668, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1292', 'EMEI Monsenhor Luís Biraghi', 'Readequação Predial', 'R. Joaquim Ferreira de Oliveira, 50 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08270-480', 20, NULL, 'Itaquera ', -23.5650349, -46.4583079, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5650349, -- Use merged value
    longitude = -46.4583079, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1293', 'EMEI Orlando Villas Boas', 'Readequação Predial', 'Av. Paulo Costa Ribeiro Bastos, S/Nº - Jardim Guanhembu', 20, NULL, 'Capela do Socorro ', -23.7313313, -46.6860284, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7313313, -- Use merged value
    longitude = -46.6860284, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1294', 'EMEI Padre Mauro Baptista', 'Readequação Predial', 'Rua Dos Catarinenses, 20 - Distrito De Vila Andrade', 20, NULL, 'Campo Limpo ', -23.6320808, -46.7414626, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6320808, -- Use merged value
    longitude = -46.7414626, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1295', 'EMEI Padre Nildo Do Amaral Junior', 'Readequação Predial', 'R. Lopes de Medeiros, 5 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08275-430', 20, NULL, 'Itaquera ', -23.5710554, -46.4826314, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5710554, -- Use merged value
    longitude = -46.4826314, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1296', 'EMEI Papa Joao Paulo II', 'Readequação Predial', ' R. Paulo Arentino, 870 - Conj. City Jaragua, São Paulo - SP, 02998-140', 20, NULL, 'Pirituba / Jaraguá', -23.4343224, -46.7356476, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4343224, -- Use merged value
    longitude = -46.7356476, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1297', 'EMEI Parque Cocaia II', 'Readequação Predial', 'Rua José Júlio Mendes, 120 - Grajaú', 20, NULL, 'Capela do Socorro ', -23.7505691, -46.6797945, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7505691, -- Use merged value
    longitude = -46.6797945, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1298', 'EMEI Presidente Dutra', 'Readequação Predial', ' R. Santo Elias, 146 - Parque São Jorge, São Paulo - SP, 03086-050', 20, NULL, 'Mooca ', -23.5326198, -46.5669663, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5326198, -- Use merged value
    longitude = -46.5669663, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1299', 'EMEI Princesa Isabel', 'Readequação Predial', 'R. Amadis, 453 - Vila Independencia, São Paulo - SP, 04221-000', 20, NULL, 'Ipiranga ', -23.5958775, -46.5954286, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5958775, -- Use merged value
    longitude = -46.5954286, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1300', 'EMEI Antonio Carlos Pacheco E Silva, prof.', 'Readequação Predial', 'Av. João Caiaffa, 90 - Jardim Taboao, São Paulo - SP, 05742-100', 20, NULL, 'Butantã ', -23.6116958, -46.7502634, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6116958, -- Use merged value
    longitude = -46.7502634, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1301', 'EMEI Cezar Rogério Oliveira Peramezza, prof.', 'Readequação Predial', 'R. Professor Thiré, 151 - Vila Nhocuné, São Paulo - SP, 03561-010', 20, NULL, 'Penha ', -23.5467039, -46.4965822, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5467039, -- Use merged value
    longitude = -46.4965822, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1302', 'EMEI Henrique Ricchetti, prof.', 'Readequação Predial', ' Rua Nebulosas, 156 - Jardim Tiete, São Paulo - SP, 08330-430', 20, NULL, 'São Mateus ', -23.6120855, -46.4642757, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6120855, -- Use merged value
    longitude = -46.4642757, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1303', 'EMEI José Aloysio Rodrigues Corrêa, prof.', 'Readequação Predial', 'Rua Málaga, 391 - Parque Sevilha, São Paulo - SP, 03157-030', 20, NULL, 'Mooca ', -23.5764229, -46.570459, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5764229, -- Use merged value
    longitude = -46.570459, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1304', 'EMEI José Roberto De Castro Ribeiro, prof.', 'Readequação Predial', 'R. Eng. Carlo Grazia, 120 - Cidade Tiradentes, São Paulo - SP, 08475-410', 20, NULL, 'Cidade Tiradentes ', -23.594585, -46.3982788, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.594585, -- Use merged value
    longitude = -46.3982788, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1305', 'EMEI Luiz Pereira, prof.', 'Readequação Predial', 'R. José Oiticica, 113 - Jardim Itapema, São Paulo - SP, 03578-080', 20, NULL, 'Itaquera ', -23.5597784, -46.5031581, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5597784, -- Use merged value
    longitude = -46.5031581, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1306', 'EMEI Maestro Alex Martins Costa, prof.', 'Readequação Predial', 'Rua Morro do Descanso, 160 - Jardim Sao Nicolau, São Paulo - SP, 03685-070', 20, NULL, 'Ermelino Matarazzo ', -23.523922, -46.4811131, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.523922, -- Use merged value
    longitude = -46.4811131, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1307', 'EMEI Manoel De Alvarenga Freire Junior, prof.', 'Readequação Predial', ' R. Elsa Morante, 58 - Jardim Sao Francisco, São Paulo - SP, 08390-324', 20, NULL, 'São Mateus ', -23.632558, -46.4482049, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.632558, -- Use merged value
    longitude = -46.4482049, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1308', 'EMEI Marciano Vasques Pereira, prof.', 'Readequação Predial', 'R. Itapipinas, 570 - Jardim Artur Alvim, São Paulo - SP, 03687-020', 20, NULL, 'Ermelino Matarazzo ', -23.5251595, -46.4860157, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5251595, -- Use merged value
    longitude = -46.4860157, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1309', 'EMEI Taufik Daud Kurban, prof.', 'Readequação Predial', 'Rua Manuel Gaya, 500 - Vila Nova Mazzei, São Paulo - SP, 02313-001', 20, NULL, 'Jaçanã / Tremembé', -23.465442, -46.597575, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.465442, -- Use merged value
    longitude = -46.597575, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1310', 'EMEI Isabel Colombo, profa.', 'Readequação Predial', ' Av. Padre Antônio José dos Santos, 1511 - Cidade Monções, São Paulo - SP, 04563-004', 20, NULL, 'Pinheiros ', -23.6069531, -46.6913186, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6069531, -- Use merged value
    longitude = -46.6913186, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1311', 'EMEI Antonieta De Barros, profa.', 'Readequação Predial', 'Estrada Das Taipas, 1800 - Jardim Rincão, São Paulo- SP, 02991-000', 20, NULL, 'Pirituba / Jaraguá', -23.4418714, -46.7332666, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4418714, -- Use merged value
    longitude = -46.7332666, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1312', 'EMEI Aparecida Maria Mendonça, profa.', 'Readequação Predial', 'R. Isidoro de Lara, 150 - J - Jardim Bonifacio, São Paulo - SP, 08253-250', 20, NULL, 'Itaquera ', -23.5441996, -46.4409286, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441996, -- Use merged value
    longitude = -46.4409286, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1313', 'EMEI Carolina Ribeiro , profa.', 'Readequação Predial', 'Rua Major Walter Carlson, 879 - Jardim Sao Jorge (Raposo Tavares), São Paulo - SP, 05567-050', 20, NULL, 'Butantã ', -23.594814, -46.7881775, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.594814, -- Use merged value
    longitude = -46.7881775, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1314', 'EMEI Dulce Salles Ferraz, profa.', 'Readequação Predial', 'Rua Oliveira Roma, 16 - Cidade Tiradentes, São Paulo - SP, 08475-330', 20, NULL, 'Cidade Tiradentes ', -23.5902004, -46.4013597, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5902004, -- Use merged value
    longitude = -46.4013597, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1315', 'EMEI Eldy Poli Bifone, profa.', 'Readequação Predial', 'Av. Ariston Azevedo, 134 - Belenzinho, São Paulo - SP, 03021-020', 20, NULL, 'Mooca ', -23.5285245, -46.6007555, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5285245, -- Use merged value
    longitude = -46.6007555, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1316', 'EMEI Elisa Kauffmann Abramovich, profa.', 'Readequação Predial', 'R. René de Toledo, 55 - Cid Tiradentes, São Paulo - SP, 08471-740', 20, NULL, 'Cidade Tiradentes ', -23.6026145, -46.4039363, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6026145, -- Use merged value
    longitude = -46.4039363, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1317', 'EMEI Jane Verzinhasse Peres Zanfra, profa.', 'Readequação Predial', 'Rua Fernando Sabino, 148 - Parque Nações Unidas, São Paulo - SP, 02996-195', 20, NULL, 'Pirituba / Jaraguá', -23.43556, -46.7438691, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.43556, -- Use merged value
    longitude = -46.7438691, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1318', 'EMEI Maria Dailce Monteiro Da Silva Gomes, profa.', 'Readequação Predial', 'Rua Martino Arosio, 147 - Vila Aurora, São Paulo - SP, 05186-150', 20, NULL, 'Pirituba / Jaraguá', -23.4334319, -46.7518564, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4334319, -- Use merged value
    longitude = -46.7518564, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1319', 'EMEI Maria Do Carmo Godoy Ramos, profa.', 'Readequação Predial', 'R. Miguel Pereira Landim, 193 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-000', 20, NULL, 'Pirituba / Jaraguá', -23.4893964, -46.7567763, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4893964, -- Use merged value
    longitude = -46.7567763, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1320', 'EMEI Maria Laura De Souza Campos, profa.', 'Readequação Predial', 'R. Mororó, 419 - Chácara Santo Antônio (Zona Leste), São Paulo - SP, 03410-060', 20, NULL, 'Aricanduva ', -23.5555966, -46.5526566, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5555966, -- Use merged value
    longitude = -46.5526566, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1321', 'EMEI Marisa Lopes Pinheiro, profa.', 'Readequação Predial', 'Rua Roberto Said, 183 - Jardim Nélia, São Paulo - SP', 20, NULL, 'Itaim Paulista ', -23.5152229, -46.3859583, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5152229, -- Use merged value
    longitude = -46.3859583, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1322', 'EMEI Rumi Oikawa, profa.', 'Readequação Predial', 'R. dos Lírios, 10 - Parque das Flores, São Paulo - SP, 08391-280', 20, NULL, 'São Mateus ', -23.6399752, -46.4462521, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6399752, -- Use merged value
    longitude = -46.4462521, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1323', 'EMEI Thais Motta De Oliveira E Silva Rodrigues, profa.', 'Readequação Predial', 'Rua Diógenes Dourado S/N Conjunto Residencial Lei São Paulo SP 02815-060 ', 20, NULL, 'Pirituba / Jaraguá', -23.4451571, -46.7154348, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4451571, -- Use merged value
    longitude = -46.7154348, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1324', 'EMEI Wilma Alvarenga De Oliveira , profa.', 'Readequação Predial', 'Rua Integrada, 395 - Jardim Do Pastor - Capão Redondo', 20, NULL, 'Campo Limpo ', -23.6655437, -46.7774403, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6655437, -- Use merged value
    longitude = -46.7774403, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1325', 'EMEI Zuleika Pereira Leite, profa.', 'Readequação Predial', 'R. Dr. Antônio Barbosa da Cunha, 46 - Jardim Maria Sampaio', 20, NULL, 'Campo Limpo ', -23.6412654, -46.7852377, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6412654, -- Use merged value
    longitude = -46.7852377, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1326', 'EMEI Ricardo Goncalves', 'Readequação Predial', 'Praça Tcheco, s/n - Vila Ipojuca, São Paulo - SP, 05057-080', 20, NULL, 'Lapa ', -23.5302328, -46.7062528, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5302328, -- Use merged value
    longitude = -46.7062528, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1327', 'EMEI Rodrigues De Abreu', 'Readequação Predial', 'R. João dos Reis, 4 - Vila Princesa Isabel, São Paulo - SP, 08410-150', 20, NULL, 'Guaianazes ', -23.5466411, -46.4149838, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466411, -- Use merged value
    longitude = -46.4149838, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1328', 'EMEI Vila Natal', 'Readequação Predial', 'R. Lima Natal, 99 - Vila Natal, São Paulo - SP, 04863-150', 20, NULL, 'Capela do Socorro ', -23.7604547, -46.7107375, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7604547, -- Use merged value
    longitude = -46.7107375, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1329', 'EMEI Danton Castilho Cabral', 'Readequação Predial', 'RUA SILVESTRO SILVESTRI 319', 20, NULL, NULL, -23.6073957, -46.5169765, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6073957, -- Use merged value
    longitude = -46.5169765, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1330', 'CIEJA - Santo Amaro', 'Readequação Predial', 'R. Francisco Ramos, R. ,132 - Jardim Consorcio, São Paulo - SP, 04437-060', 20, NULL, 'Santo Amaro ', -23.671398, -46.67576, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.671398, -- Use merged value
    longitude = -46.67576, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1331', 'CEU Alto Alegre', 'Manutenção em Unidades Educacionais', 'Av. Bento Guelfi, s/n - Jardim Alto Alegre', 20, NULL, 'São Mateus ', -23.6149619, -46.4230413, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6149619, -- Use merged value
    longitude = -46.4230413, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1332', 'EMEI Rua Manoel Bastos x Rua José Felipe Amaral x Rua Francisco Moreira', 'Construção Unidade Educacional', 'Rua Manoel Bastos', 20, NULL, 'Itaim Paulista ', -23.517445, -46.40375, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.517445, -- Use merged value
    longitude = -46.40375, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1333', 'CEI - Rua Domingas Galleteri Blotta x Rua São Canuto', 'Construção Unidade Educacional', 'Rua Domingos Galleteri Blotta', 20, NULL, 'Santo Amaro ', -23.682518, -46.6760914, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.682518, -- Use merged value
    longitude = -46.6760914, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1334', 'EMEF - Setor 5513 - Rua Manoel da Costa Capanema', 'Construção Unidade Educacional', 'Rua Manoel da Costa Capanema', 20, NULL, 'Parelheiros ', -23.8787558, -46.6400421, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8787558, -- Use merged value
    longitude = -46.6400421, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1335', 'CEI - Setor 5513 - Rua Manoel da Costa Capanema', 'Construção Unidade Educacional', 'Rua Manoel da Costa Capanema', 20, NULL, 'Parelheiros ', -23.878394, -46.640325, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.878394, -- Use merged value
    longitude = -46.640325, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1336', 'EMEI Rua Jorge Jones', 'Construção Unidade Educacional', 'Rua Jorge Jones', 20, NULL, 'Itaim Paulista ', -23.505567, -46.419548, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505567, -- Use merged value
    longitude = -46.419548, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1337', 'CEI Rua da Safra x Rua Doce Lima', 'Construção Unidade Educacional', 'Rua da Safra x Rua Doce Lima', 20, NULL, 'Campo Limpo ', -23.6701524, -46.784054, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6701524, -- Use merged value
    longitude = -46.784054, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1338', 'CEI - Rua DR. Rabelo do Amaral x Viela da Paz', 'Construção Unidade Educacional', 'Rua DR. Rabelo do Amaral x Viela da Paz', 20, NULL, 'Butantã ', -23.6127865, -46.7501409, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6127865, -- Use merged value
    longitude = -46.7501409, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1339', 'CEI Jardim Dom José - Rua Anum Dourado', 'Construção Unidade Educacional', 'Rua Anum Dourado', 20, NULL, 'Campo Limpo ', -23.6773097, -46.7957562, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6773097, -- Use merged value
    longitude = -46.7957562, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1340', 'EMEI - Cora Coralina', 'Construção Unidade Educacional', 'R. Djalma Correa, 300', 20, NULL, 'Cidade Ademar ', -23.664875, -46.672466, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.664875, -- Use merged value
    longitude = -46.672466, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1341', 'CEI Visconde de Taunay', 'Construção Unidade Educacional', 'Av. Casa Grande, 566', 20, NULL, 'Sapopemba', -23.6039366, -46.5149149, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6039366, -- Use merged value
    longitude = -46.5149149, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1342', 'CEI José Manuel Camisa Nova - CDHU', 'Construção Unidade Educacional', 'Rua José Manuel Camisa Nova, 70', 20, NULL, 'M´Boi Mirim', -23.6649339, -46.7472622, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6649339, -- Use merged value
    longitude = -46.7472622, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1343', 'CEU Caminho do Mar', 'Manutenção em Unidades Educacionais', 'av ARMANDO DE ARRUDA PEREIRA ENGENHEIRO 5080', 20, NULL, 'Jabaquara ', -23.6537212, -46.6370892, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6537212, -- Use merged value
    longitude = -46.6370892, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1344', 'CEU Feitiço da Vila', 'Manutenção em Unidades Educacionais', 'av FEITICO DA VILA 399', 20, NULL, 'Campo Limpo ', -23.686523, -46.794625, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686523, -- Use merged value
    longitude = -46.794625, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1345', 'CEU Curuçá', 'Manutenção em Unidades Educacionais', 'av marechal tito 3452', 20, NULL, 'Itaim Paulista ', -23.4950351, -46.4122963, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4950351, -- Use merged value
    longitude = -46.4122963, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1346', 'CEU Navegantes', 'Manutenção em Unidades Educacionais', 'ARIA MOASSAB BARBOUR SN', 20, NULL, 'Capela do Socorro ', -23.7442239, -46.6606278, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7442239, -- Use merged value
    longitude = -46.6606278, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1347', 'CEU Quinta do Sol', 'Manutenção em Unidades Educacionais', 'LUIZ IMPARATO 564', 20, NULL, 'Penha ', -23.499031, -46.4962695, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.499031, -- Use merged value
    longitude = -46.4962695, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1348', 'CEU Vila do Sol', 'Manutenção em Unidades Educacionais', 'av FUNCIONARIOS PUBLICOS 369', 20, NULL, 'M´Boi Mirim', -23.7332846, -46.7835053, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7332846, -- Use merged value
    longitude = -46.7835053, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1349', 'EMEBS Anne Sullivan', 'Manutenção em Unidades Educacionais', 'Rua Rodrigues Pais, 512', 20, NULL, 'Santo Amaro ', -23.6297077, -46.7020422, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6297077, -- Use merged value
    longitude = -46.7020422, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1350', 'EMEF Assad Abdala', 'Manutenção em Unidades Educacionais', 'Av. Mendonça Drumond, 902', 20, NULL, 'Penha ', -23.5530248, -46.517691, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5530248, -- Use merged value
    longitude = -46.517691, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;