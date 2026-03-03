INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1150', 'CEI Indireto Menino Jesus Jardim Grimaldi', 'Readequação Predial', 'R. Olegário Maciel, 10 - Jardim Dona Sinha, São Paulo - SP, 03924-110', 20, NULL, 'Sapopemba', -23.5996172, -46.509155, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5996172,
    longitude = -46.509155;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1151', 'CEI Indireto Nossa Senhora Da Assunção', 'Readequação Predial', 'R. Dr. José Pinto Azeredo, 48 - Vila Universitaria, São Paulo - SP, 05359-100', 20, NULL, 'Butantã ', -23.5737928, -46.7448836, FALSE)
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
VALUES ('1152', 'CEI Indireto Ondacaima ', 'Readequação Predial', 'BERNARDO ANTUNES ROLIM, S/N JARDIM DA LARANJEIRA ZONA LESTE. 08381-010 São Paulo - SP.', 20, NULL, 'São Mateus ', -23.6017751, -46.4328151, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6017751,
    longitude = -46.4328151;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1153', 'CEI Indireto Ondacaima I', 'Readequação Predial', 'R. Tomás de Santa Maria, 78 - Conj. Hab. Teotonio Vilela, São Paulo - SP, 03928-170', 20, NULL, 'Sapopemba', -23.6059198, -46.504192, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6059198,
    longitude = -46.504192;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1154', 'CEI Indireto Orlando Iazzetti, Dep.', 'Readequação Predial', 'Rua Barra do Camarajibe - Capão do Embira, São Paulo - SP', 20, NULL, 'Aricanduva ', -23.5818805, -46.5318984, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5818805,
    longitude = -46.5318984;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1155', 'CEI Indireto Pari', 'Readequação Predial', 'R. Carnot, 950 - Canindé, São Paulo - SP, 03032-030', 20, NULL, 'Mooca ', -23.5254875, -46.6219854, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5254875,
    longitude = -46.6219854;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1156', 'CEI Indireto Parque Das Nações', 'Readequação Predial', 'Paulo Patarra, S/N - Parque Nações Unidas, São Paulo - SP, 02996-205', 20, NULL, 'Pirituba / Jaraguá', -23.4359775, -46.7440859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4359775,
    longitude = -46.7440859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1157', 'CEI Indireto Parque Mandi', 'Readequação Predial', 'Rua Nicolau Batanero Campos, 211', 20, NULL, 'Freguesia / Brasilândia', -23.4825749, -46.6819275, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4825749,
    longitude = -46.6819275;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1158', 'CEI Indireto Parque Maria Domitila', 'Readequação Predial', ' R. Adrião Ferreira, 7 - Pq M. Domitila, São Paulo - SP, 05128-160', 20, NULL, 'Pirituba / Jaraguá', -23.4923906, -46.7421447, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923906,
    longitude = -46.7421447;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1159', 'CEI Indireto Parque Residencial Cocaia - Grajaú', 'Readequação Predial', 'Praça Oscar Fenner, S/N - Parque Res. Cocaia', 20, NULL, 'Capela do Socorro ', -23.7434702, -46.6706551, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7434702,
    longitude = -46.6706551;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1160', 'CEI Indireto Parque Santa Madalena II', 'Readequação Predial', 'R. Iambu, 395 - Parque Santa Madalena, São Paulo - SP, 03982-070', 20, NULL, 'Sapopemba', -23.6105328, -46.5110351, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6105328,
    longitude = -46.5110351;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1161', 'CEI Indireto Penha', 'Readequação Predial', 'R. Cairo, 60 - Penha de França, São Paulo - SP, 03633-080', 20, NULL, 'Penha ', -23.5329125, -46.5460772, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5329125,
    longitude = -46.5460772;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1162', 'CEI Indireto Raio De Luz', 'Readequação Predial', 'Av. Gal. Penha Brasil, 2651', 20, NULL, 'Freguesia / Brasilândia', -23.4518367, -46.6761384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4518367,
    longitude = -46.6761384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1163', 'CEI Indireto Salesiana Domingos Savio', 'Readequação Predial', 'Rua Porto da Folha, 57', 20, NULL, 'Penha ', -23.53149, -46.502775, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53149,
    longitude = -46.502775;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1164', 'CEI Indireto São Luiz Marie De Montfort', 'Readequação Predial', 'R. Litoral Paranaense, 102 - Jardim Pirituba, São Paulo - SP, 02984-030', 20, NULL, 'Pirituba / Jaraguá', -23.4468647, -46.7211772, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4468647,
    longitude = -46.7211772;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1165', 'CEI Indireto Sapopemba II', 'Readequação Predial', ' R. Manuel do Patrocínio, 105 - Conj. Promorar Sapopemba, São Paulo - SP, 03927-080', 20, NULL, 'Sapopemba', -23.6029382, -46.4981108, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6029382,
    longitude = -46.4981108;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1166', 'CEI Indireto Shiro Kyono, ver.', 'Readequação Predial', 'Rua professor Thiré, s/n', 20, NULL, 'Penha ', -23.5464802, -46.4951632, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5464802,
    longitude = -46.4951632;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1167', 'CEI Indireto Sol Nascente', 'Readequação Predial', 'Alameda Aristoteles Claudio Sbrighi, 7 - Res. Sol Nascente, São Paulo - SP, 05282-000', 20, NULL, 'Perus ', -23.4382599, -46.7786586, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4382599,
    longitude = -46.7786586;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1168', 'CEI Indireto Tatuapé', 'Readequação Predial', 'Rua Cristais, 160', 20, NULL, 'Mooca ', -23.5394736, -46.5780074, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5394736,
    longitude = -46.5780074;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1169', 'CEI Indireto Tiquatira I', 'Readequação Predial', 'Rua Kampala, s/n', 20, NULL, 'Penha ', -23.516638, -46.553486, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.516638,
    longitude = -46.553486;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1170', 'CEI Indireto Tomas De Aquino', 'Readequação Predial', 'Rua Arquiteto Roberto Patrão Assis, 114 - Conj. Promorar Sao Luis, São Paulo - SP, 05846-100', 20, NULL, 'M´Boi Mirim', -23.6576107, -46.7435179, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6576107,
    longitude = -46.7435179;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1171', 'CEI Indireto União De Vila Nova', 'Readequação Predial', 'R. Rio Benedito, 30 - União Vila Nova, São Paulo - SP, 08072-012', 20, NULL, 'São Miguel Paulista ', -23.4904584, -46.4575828, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4904584,
    longitude = -46.4575828;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1172', 'CEI Indireto Vicente Matheus', 'Readequação Predial', 'R. Cmte. Carlos Ruhl, 177 - Vila Princesa Isabel, São Paulo - SP, 08410-130', 20, NULL, 'Guaianazes ', -23.5455435, -46.4152998, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455435,
    longitude = -46.4152998;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1173', 'CEI Indireto Vila Flávia', 'Readequação Predial', 'R. Luís Rosseti, 496 - Cidade São Mateus, São Paulo - SP, 03964-030', 20, NULL, 'São Mateus ', -23.6016117, -46.475176, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6016117,
    longitude = -46.475176;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1174', 'CEI Indireto Vila Joia', 'Readequação Predial', 'Av. Mário Alves, 280 - Jardim Pedro José Nunes, São Paulo - SP, 08061-380', 20, NULL, 'São Miguel Paulista ', -23.5057801, -46.465714, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5057801,
    longitude = -46.465714;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1175', 'CEI Indireto Vila Leopoldina', 'Readequação Predial', 'R. Peribebui, 98 - Alto da Lapa, São Paulo - SP, 05084-000', 20, NULL, 'Lapa ', -23.5270827, -46.7209972, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5270827,
    longitude = -46.7209972;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1176', 'CEI Indireto Vila Nova Jaguaré', 'Readequação Predial', 'Av. Dracena, 797 - Jaguaré, São Paulo - SP, 05329-000', 20, NULL, 'Lapa ', -23.5418896, -46.7499839, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5418896,
    longitude = -46.7499839;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1177', 'CEI Indireto Vila Piauí', 'Readequação Predial', 'R. Francisco Olavo de Assis, S/N - Chácara São João, São Paulo - SP, 05109-070', 20, NULL, 'Lapa ', -23.505697, -46.7617557, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505697,
    longitude = -46.7617557;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1178', 'CEI Indireto Vila Regina', 'Readequação Predial', 'R. Alberto Píres, 69 - Vila Miriam, São Paulo - SP, 02968-100', 20, NULL, 'Pirituba / Jaraguá', -23.4783953, -46.7078785, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4783953,
    longitude = -46.7078785;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1179', 'CEI Indireto Vila Silvia', 'Readequação Predial', 'Rua R. Colônia Leopoldina, 350', 20, NULL, 'Penha ', -23.4910533, -46.5016919, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4910533,
    longitude = -46.5016919;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1180', 'CEI Indireto Vila União', 'Readequação Predial', 'Rua Sílvio Ribeiro dos Santos, 156 - Vila Uniao', 20, NULL, 'Ermelino Matarazzo ', -23.5173307, -46.4775996, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5173307,
    longitude = -46.4775996;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1181', 'EMEF - Jardim Guarani - José Alfredo Apolinario , prof.', 'Readequação Predial', 'R. Santana do Araçuaí, 190 - Jardim Guarani, São Paulo - SP, 02849-130', 20, NULL, 'Freguesia / Brasilândia', -23.4623669, -46.6907449, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4623669,
    longitude = -46.6907449;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1183', 'EMEF 8 De Maio', 'Readequação Predial', 'R. Cambaxirra, 176 - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08223-090', 20, NULL, 'Itaquera ', -23.5342926, -46.4726889, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5342926,
    longitude = -46.4726889;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1184', 'EMEF Arthur Alvim', 'Readequação Predial', 'Rua Desembargador Rocha Portela, 464 - Vila Santa Teresa, São Paulo - SP, 03567-000', 20, NULL, 'Penha ', -23.5387358, -46.4933654, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5387358,
    longitude = -46.4933654;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1185', 'EMEF Aureliano Leite', 'Readequação Predial', 'R. José Francisco Brandão, 370 - Cidade Tiradentes, São Paulo - SP, 08470-790', 20, NULL, 'Cidade Tiradentes ', -23.5929352, -46.3930314, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5929352,
    longitude = -46.3930314;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1186', 'EMEF Bartolomeu Lourenço De Gusmão', 'Readequação Predial', 'R. Picinguaba, 802 - Vila Santa Isabel, São Paulo - SP, 03432-000', 20, NULL, 'Aricanduva ', -23.555426, -46.536332, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555426,
    longitude = -46.536332;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1187', 'EMEF Benedito Calixto', 'Readequação Predial', 'R. Luís Medeiros da Silva, 195 - Jardim Sao Pedro, São Paulo - SP, 08420-650', 20, NULL, 'Itaquera ', -23.546849, -46.4292235, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546849,
    longitude = -46.4292235;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1188', 'EMEF Carlos Chagas', 'Readequação Predial', 'Av. Osvaldo Valle Cordeiro, 337 - Jardim Brasilia, São Paulo - SP, 03584-000', 20, NULL, 'Itaquera ', -23.5558818, -46.4917797, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5558818,
    longitude = -46.4917797;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1189', 'EMEF Cecilia Meireles', 'Readequação Predial', 'R. Frei Ricardo do Pilar, 60 - Cangaiba, São Paulo - SP, 03721-090', 20, NULL, 'Penha ', -23.5029634, -46.5268679, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5029634,
    longitude = -46.5268679;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1190', 'EMEF Cidade De Osaka', 'Readequação Predial', 'Av. Baronesa de Muritiba, 55 - Parque Sao Rafael, São Paulo - SP, 08311-080', 20, NULL, 'São Mateus ', -23.6237846, -46.4711933, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6237846,
    longitude = -46.4711933;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1191', 'EMEF Coronel Hélio Franco Chaves', 'Readequação Predial', 'R. Kotinda, 1343 - Jardim Corisco, São Paulo - SP, 02365-010', 20, NULL, 'Jaçanã / Tremembé', -23.4282365, -46.5829, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4282365,
    longitude = -46.5829;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1192', 'EMEF Deputado Roge Ferreira', 'Readequação Predial', 'Rua Philonilia Goncalves dos Santos, S/N - Jaraguá, São Paulo - SP, 02992-210', 20, NULL, 'Pirituba / Jaraguá', -23.4445088, -46.7335629, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4445088,
    longitude = -46.7335629;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1193', 'EMEF Desembargador Silvio Portugal', 'Readequação Predial', 'R. Francisco Savério Orlandi, 141 - Jardim Libano, São Paulo - SP, 05138-100', 20, NULL, 'Pirituba / Jaraguá', -23.4865273, -46.7339857, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4865273,
    longitude = -46.7339857;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1194', 'EMEF Dezoito Do Forte', 'Readequação Predial', 'Rua Hafiz Abi Chedid, 110 - Vila Bom Jardim, São Paulo - SP, 04937-210', 20, NULL, 'M´Boi Mirim', -23.6871486, -46.7582117, FALSE)
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
VALUES ('1195', 'EMEF Doutor João Naoki Sumita', 'Readequação Predial', 'Av. Monsenhor Antônio Castro, 222 - Jardim Vila Formosa, São Paulo - SP, 03461-000', 20, NULL, 'Aricanduva ', -23.5711265, -46.5279504, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711265,
    longitude = -46.5279504;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1196', 'EMEF Francisco Alves Mendes Filho -Chico Mendes', 'Readequação Predial', 'R. Quintino da Cunha, 22 - Jardim Marília, São Paulo - SP, 03579-160', 20, NULL, 'Itaquera ', -23.5619534, -46.4956828, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5619534,
    longitude = -46.4956828;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1197', 'EMEF Francisco Rebolo', 'Readequação Predial', 'R. Catarinenses, 200 - Vila Andrade, São Paulo - SP, 05728-050', 20, NULL, 'Campo Limpo ', -23.6323503, -46.7416167, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6323503,
    longitude = -46.7416167;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1198', 'EMEF General Álvaro Silva Braga', 'Readequação Predial', 'Rua Padre Paulo Canelles, 611 - Vila Dalva, São Paulo - SP, 05386-070', 20, NULL, 'Butantã ', -23.5643784, -46.764463, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5643784,
    longitude = -46.764463;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1199', 'EMEF General Henrique Geisel - Obra', 'Readequação Predial', ' R. Miguel Pereira Landim, 253 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-000', 20, NULL, 'Pirituba / Jaraguá', -23.489782, -46.7565935, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.489782,
    longitude = -46.7565935;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1200', 'EMEF General Paulo Carneiro Thomaz Alves', 'Readequação Predial', 'R. Nossa Sra. da Aparecida, 15 - Parque Vila Maria, São Paulo - SP, 02169-290', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5193891, -46.5754517, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5193891,
    longitude = -46.5754517;