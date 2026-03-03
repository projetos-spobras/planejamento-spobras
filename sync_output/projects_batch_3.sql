INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('449', 'EMEI - Sena Madureira', 'Readequação Predial', 'Rua Loefgren, 1963.', 20, NULL, 'Vila Mariana ', -23.5998865, -46.6450463, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5998865, -- Use merged value
    longitude = -46.6450463, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('450', 'EMEI - Therezinha Batista Pettan', 'Readequação Predial', 'Rua Vig. Albernaz, 834.', 20, NULL, 'Ipiranga ', -23.6075274, -46.6203438, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6075274, -- Use merged value
    longitude = -46.6203438, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('451', 'CEI IND - Dandara dos Palmares (Antiga CEI - Ponte Pequena)', 'Readequação Predial', 'Av. Santos Dumont, 843.', 20, NULL, 'SÉ', -23.5206467, -46.6319511, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5206467, -- Use merged value
    longitude = -46.6319511, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('452', 'CEI IND - Raphaela Capellano Dias', 'Readequação Predial', 'Rua Leonardo Jones Júnior, 320.', 20, NULL, 'SÉ', -23.5240068, -46.6563962, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5240068, -- Use merged value
    longitude = -46.6563962, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('453', 'EMEI - Antônio Figueiredo do Amaral', 'Readequação Predial', 'Rua Leonardo Jones Júnior, 34.', 20, NULL, 'SÉ', -23.5240491, -46.6560954, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5240491, -- Use merged value
    longitude = -46.6560954, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('454', 'EMEI - Alceu Maynard de Araújo', 'Readequação Predial', 'Rua Neves De Carvalho, 780.', 20, NULL, 'SÉ', -23.5191088, -46.6498099, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5191088, -- Use merged value
    longitude = -46.6498099, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('455', 'EMEI - Armando de Arruda Pereira', 'Readequação Predial', 'Praça Da República, 350.', 20, NULL, 'SÉ', -23.5428123, -46.6430237, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5428123, -- Use merged value
    longitude = -46.6430237, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('456', 'EMEI - Patrícia Galvão', 'Readequação Predial', 'Rua João Guimarães Rosa, 135.', 20, NULL, 'SÉ', -23.548998, -46.647169, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.548998, -- Use merged value
    longitude = -46.647169, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('457', 'CEI IND - Sonho de Criança', 'Readequação Predial', 'Av. Pres. Castelo Branco, 5200.', 20, NULL, 'SÉ', -23.5210064, -46.6397788, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5210064, -- Use merged value
    longitude = -46.6397788, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('458', 'CEI - Wilson José Abdalla', 'Readequação Predial', 'Rua Neves De Carvalho, 850.', 20, NULL, 'SÉ', -23.5185734, -46.6502427, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5185734, -- Use merged value
    longitude = -46.6502427, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('459', 'EMEI - Dona Leopoldina', 'Readequação Predial', 'Rua Peribebui, S/N.', 20, NULL, 'Lapa ', -23.5266279, -46.7221739, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5266279, -- Use merged value
    longitude = -46.7221739, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('460', 'EMEI - Jaguaré', 'Readequação Predial', 'Av. Pres. Altino, S/N.', 20, NULL, 'Lapa ', -23.5421585, -46.7526587, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5421585, -- Use merged value
    longitude = -46.7526587, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('461', 'CEI IND - Vila Anglo', 'Readequação Predial', 'Rua Daniel Cardoso, 129.', 20, NULL, 'Lapa ', -23.5354357, -46.6929869, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5354357, -- Use merged value
    longitude = -46.6929869, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('462', 'CEI - Enedina de Souza Carvalho', 'Readequação Predial', 'Rua Antônio De Paiva Azevedo, 60.', 20, NULL, 'Vila Prudente ', -23.587411, -46.5371373, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.587411, -- Use merged value
    longitude = -46.5371373, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('463', 'EMEI - Afonso Celso', 'Readequação Predial', 'Praça Belchior De Borba, 61.', 20, NULL, 'Vila Prudente ', -23.5992674, -46.5623176, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5992674, -- Use merged value
    longitude = -46.5623176, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('464', 'EMEF - Cleomenes Campos', 'Readequação Predial', ' Rua Bartolomeu Corrêa Bueno, 268.', 20, NULL, 'Vila Prudente ', -23.5874306, -46.5521838, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5874306, -- Use merged value
    longitude = -46.5521838, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('465', 'EMEF - General Osório', 'Readequação Predial', 'Rua Araripe, 317.', 20, NULL, 'Vila Prudente ', -23.6075241, -46.5566954, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6075241, -- Use merged value
    longitude = -46.5566954, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('466', 'EMEI - Joaquim Antônio Da Rocha', 'Readequação Predial', 'Rua Professor José Ozi, S/N.', 20, NULL, 'Ipiranga ', -23.6091991, -46.58165, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6091991, -- Use merged value
    longitude = -46.58165, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('467', 'EMEI - José Veríssimo', 'Readequação Predial', 'Rua Antônio De Paiva Azevedo, 16.', 20, NULL, 'Vila Prudente ', -23.5873424, -46.5374761, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5873424, -- Use merged value
    longitude = -46.5374761, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('468', 'CEI IND - Padre Pacômio Maas', 'Readequação Predial', 'Praça Mairara, 65.', 20, NULL, 'Vila Prudente ', -23.6077436, -46.5539245, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6077436, -- Use merged value
    longitude = -46.5539245, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('469', 'EMEF - Péricles Eugênio Da Silva Ramos', 'Readequação Predial', 'Rua Professor José Ozi, 62.', 20, NULL, 'Ipiranga ', -23.6101777, -46.5810007, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6101777, -- Use merged value
    longitude = -46.5810007, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('470', 'EMEI - Sebastião Sanches Martines, Prof', 'Readequação Predial', 'Av. São Lucas, 284.', 20, NULL, 'Vila Prudente ', -23.5951495, -46.5478039, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5951495, -- Use merged value
    longitude = -46.5478039, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('471', 'EMEI - Zenaida Grandini, Profª', 'Readequação Predial', 'Rua Grão Mongol, 240.', 20, NULL, 'Vila Prudente ', -23.605185, -46.560578, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.605185, -- Use merged value
    longitude = -46.560578, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('472', 'EMEI - Otávio José Da Silva Júnior', 'Readequação Predial', 'Rua Da Fantasia, 27.', 20, NULL, 'Ipiranga ', -23.6104764, -46.5939482, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6104764, -- Use merged value
    longitude = -46.5939482, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('473', 'CEI - Parque Fongaro', 'Readequação Predial', 'Rua Joaquim Gonçalves Andrade, 66.', 20, NULL, 'Ipiranga ', -23.6325756, -46.5925153, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6325756, -- Use merged value
    longitude = -46.5925153, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('474', 'EMEF - Dr. Abrão Huck', 'Readequação Predial', 'Rua Alencar Araripe, 261.', 20, NULL, 'Ipiranga ', -23.609791, -46.5975816, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.609791, -- Use merged value
    longitude = -46.5975816, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('475', 'CEI IND - Kandinsky', 'Readequação Predial', ' Rua Antônio Passos', 20, NULL, 'Ipiranga ', -23.63411, -46.607974, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.63411, -- Use merged value
    longitude = -46.607974, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('476', 'EMEF - Luiz Gonzaga do Nascimento Jr.', 'Readequação Predial', 'Estr. Das Lágrimas, 1029.', 20, NULL, 'Ipiranga ', -23.610404, -46.5954663, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.610404, -- Use merged value
    longitude = -46.5954663, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('477', 'CEI IND - Margarida Maria Alves', 'Readequação Predial', 'Rua Da Fantasia, 63.', 20, NULL, 'Ipiranga ', -23.611006, -46.594524, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.611006, -- Use merged value
    longitude = -46.594524, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('478', 'CEI IND - Mina', 'Readequação Predial', 'Rua Da Mina, 53, Rua Vila Heliopolis São Paulo.', 20, NULL, 'Ipiranga ', -23.6167131, -46.5910219, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6167131, -- Use merged value
    longitude = -46.5910219, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('479', 'CEI IND - Nora Auler de Arruda Botelho', 'Readequação Predial', 'Rua Sao Joao Climaco, S/N Sao Joao Climaco. 04255-010 São Paulo.', 20, NULL, 'Ipiranga ', -23.623458, -46.5911342, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.623458, -- Use merged value
    longitude = -46.5911342, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('480', 'EMEI - Isolina Leonel Ferreira, Prof!', 'Readequação Predial', 'Estr. Das Lágrimas, 603.', 20, NULL, 'Ipiranga ', -23.6067308, -46.5981789, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6067308, -- Use merged value
    longitude = -46.5981789, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('481', 'EMEI - Santo Dias Da Silva', 'Readequação Predial', 'Praça Michel Mattar, S/N.', 20, NULL, 'Ipiranga ', -23.630492, -46.5907655, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.630492, -- Use merged value
    longitude = -46.5907655, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('482', 'EMEF - Sylvia Martin Pires', 'Readequação Predial', 'Rua Italva, 266.', 20, NULL, 'Ipiranga ', -23.6252671, -46.6051365, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6252671, -- Use merged value
    longitude = -46.6051365, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('483', 'CEI - Ver. José Gomes de Moraes Netto', 'Readequação Predial', 'Rua Democracia, 262.', 20, NULL, 'Ipiranga ', -23.6270606, -46.6164706, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6270606, -- Use merged value
    longitude = -46.6164706, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('484', 'EMEF - Maria Aparecida Rodrigues Cintra, Profª', 'Readequação Predial', 'Rua Arauazinho, S/N.', 20, NULL, 'Freguesia / Brasilândia', -23.4823164, -46.7028047, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4823164, -- Use merged value
    longitude = -46.7028047, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('485', 'CEI - Jardim Monjolo', 'Readequação Predial', 'Rua Calixto De Almeida, 442.', 20, NULL, 'Freguesia / Brasilândia', -23.4889279, -46.7008532, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4889279, -- Use merged value
    longitude = -46.7008532, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('486', 'EMEI - 7 de Setembro', 'Readequação Predial', 'Rua Baltasar Abadal, 23.', 20, NULL, 'Casa Verde ', -23.4943368, -46.6706944, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4943368, -- Use merged value
    longitude = -46.6706944, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('487', 'EMEF - Antônio Prudente', 'Readequação Predial', 'Rua Manuel Inácio Alvarenga, 50.', 20, NULL, 'Freguesia / Brasilândia', -23.4765343, -46.6767209, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4765343, -- Use merged value
    longitude = -46.6767209, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('488', 'CEI - Jardim Maracanã', 'Readequação Predial', 'Praça Jequié, 10.', 20, NULL, 'Freguesia / Brasilândia', -23.475794, -46.6813354, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.475794, -- Use merged value
    longitude = -46.6813354, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('489', 'EMEI - Vicente Paulo Da Silva', 'Readequação Predial', 'Rua Dr. Fleury Silveira, 295.', 20, NULL, 'Casa Verde ', -23.4899893, -46.6701568, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4899893, -- Use merged value
    longitude = -46.6701568, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('490', 'CEI - Vila Prado', 'Readequação Predial', 'Rua Quartim Barbosa, 40.', 20, NULL, 'Casa Verde ', -23.4924562, -46.6722882, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4924562, -- Use merged value
    longitude = -46.6722882, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('491', 'EMEF - Joaquim Nabuco', 'Readequação Predial', 'Praça Dr. Wadih Safady, 10.', 20, NULL, 'Ipiranga ', -23.6379594, -46.5991577, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6379594, -- Use merged value
    longitude = -46.5991577, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('492', 'EMEF - Liberato Bitencourt, Gal.', 'Readequação Predial', 'Rua Arnaldo Alvernaz Nunes, 320.', 20, NULL, 'Pirituba / Jaraguá', -23.4856327, -46.7130662, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4856327, -- Use merged value
    longitude = -46.7130662, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('493', 'EMEI - Olga Maria Germano Martins Domingos, Profª', 'Readequação Predial', 'Praça Balthazar De Godoy, S/N.', 20, NULL, 'Pirituba / Jaraguá', -23.4879717, -46.7170809, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4879717, -- Use merged value
    longitude = -46.7170809, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('494', 'EMEF - Mário Kosel', 'Readequação Predial', 'Rua Uratinga, 144.', 20, NULL, 'Pirituba / Jaraguá', -23.4942448, -46.712977, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4942448, -- Use merged value
    longitude = -46.712977, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('495', 'EMEI - Odilo Dennys, Marechal', 'Readequação Predial', 'Rua Porteira Do Pinhal, 206.', 20, NULL, 'Casa Verde ', -23.477448, -46.6525814, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.477448, -- Use merged value
    longitude = -46.6525814, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('496', 'EMEF - Garcia Davila, Cte', 'Readequação Predial', 'Rua Armando Coelho Silva, 859.', 20, NULL, 'Casa Verde ', -23.4915957, -46.6546929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4915957, -- Use merged value
    longitude = -46.6546929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('497', 'CEI - Jardim São Paulo', 'Readequação Predial', 'R. Feliciano De Mendonca, 500- Jardim Sao Paulo(Zona Leste), São Paulo.', 20, NULL, 'Guaianazes ', -23.5540132, -46.3986121, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5540132, -- Use merged value
    longitude = -46.3986121, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('498', 'EMEF - Ary Gomes, Cel.', 'Readequação Predial', 'Rua Benedito Alessio, 184.', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5260245, -46.582152, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5260245, -- Use merged value
    longitude = -46.582152, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('499', 'CEI IND - Jardim Brasil- Presépio', 'Readequação Predial', 'Rua Jota Carlos, 2.', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4866353, -46.5721361, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4866353, -- Use merged value
    longitude = -46.5721361, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('500', 'CEI IND - Jardim Tremembé', 'Readequação Predial', 'Rua Gen. Taváres Da Silva, 10.', 20, NULL, 'Jaçanã / Tremembé', -23.454962, -46.5993178, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.454962, -- Use merged value
    longitude = -46.5993178, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('501', 'EMEF - Marcos Melega', 'Readequação Predial', 'Rua Mont Blanc, 98. Lauzane Paulista.', 20, NULL, 'Santana / Tucuruvi', -23.4764754, -46.6467934, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4764754, -- Use merged value
    longitude = -46.6467934, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('502', 'EMEF - Tamandaré, Alm.', 'Readequação Predial', 'Rua Gen. Mendes, 46.', 20, NULL, 'Vila Maria / Vila Guilherme', -23.501662, -46.5907771, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.501662, -- Use merged value
    longitude = -46.5907771, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('503', 'EMEF - Guilherme de Almeida', 'Readequação Predial', 'Rua Faustino Paganini, 647.', 20, NULL, 'Penha ', -23.5112586, -46.5306294, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5112586, -- Use merged value
    longitude = -46.5306294, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('504', 'CEI - Delson Domingues', 'Readequação Predial', 'Rua Marco Polo, 905.', 20, NULL, 'Ermelino Matarazzo ', -23.4975898, -46.4880413, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4975898, -- Use merged value
    longitude = -46.4880413, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('505', 'CEI - Jardim Cotinha', 'Readequação Predial', 'Rua Bandeira Do Almado, 18. Jardim Cotinha.', 20, NULL, 'Ermelino Matarazzo ', -23.510675, -46.479516, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.510675, -- Use merged value
    longitude = -46.479516, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('506', 'CIEJA - Centro Ed. Jovens E Adultos', 'Readequação Predial', 'Rua Cabo Estácio Da Conceição, 176.', 20, NULL, 'Campo Limpo ', -23.6591561, -46.7639297, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6591561, -- Use merged value
    longitude = -46.7639297, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('507', 'CEI IND - Vila Carioca', 'Readequação Predial', 'Rua Álvaro Fragoso, 520.', 20, NULL, 'Ipiranga ', -23.5968765, -46.5922453, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5968765, -- Use merged value
    longitude = -46.5922453, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('508', 'CEI - Monumento', 'Readequação Predial', ' Rua Leais Paulistanos, 22.', 20, NULL, 'Ipiranga ', -23.5788716, -46.6090655, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5788716, -- Use merged value
    longitude = -46.6090655, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('509', 'EMEBS - Helen Keller', 'Readequação Predial', ' Rua Pedra Azul, 314.', 20, NULL, 'SÉ', -23.575983, -46.629579, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575983, -- Use merged value
    longitude = -46.629579, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('510', 'CEI - Genoveva D''Ascoli', 'Readequação Predial', 'Rua Maria Daffré, 740.', 20, NULL, 'Vila Prudente ', -23.5875136, -46.5855332, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5875136, -- Use merged value
    longitude = -46.5855332, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('511', 'EMEI - Alberto de Oliveira', 'Readequação Predial', 'Praça Donatello, 335.', 20, NULL, 'SÉ', -23.5576172, -46.6244094, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576172, -- Use merged value
    longitude = -46.6244094, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('512', 'EMEI - Angelo Martino', 'Readequação Predial', 'Rua Humaitá, 536', 20, NULL, 'SÉ', -23.5568194, -46.6416848, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5568194, -- Use merged value
    longitude = -46.6416848, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('513', 'EMEI - Delfino Azevedo', 'Readequação Predial', 'Praça Primeiro De Outubro, 30.', 20, NULL, 'Ipiranga ', -23.5825195, -46.6138374, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5825195, -- Use merged value
    longitude = -46.6138374, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('514', 'CEI IND - Fernanda', 'Readequação Predial', 'Rua Pedroso, 348.', 20, NULL, 'SÉ', -23.5620141, -46.6421937, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5620141, -- Use merged value
    longitude = -46.6421937, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('515', 'CEI - Içami Tiba', 'Readequação Predial', 'Rua Castro Alves, 163', 20, NULL, 'SÉ', -23.5672475, -46.6382729, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5672475, -- Use merged value
    longitude = -46.6382729, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('516', 'EMEF - Ruth Lopes Andrade, Profª', 'Readequação Predial', 'Rua Jundiapeba, 177.', 20, NULL, 'Vila Prudente ', -23.5899506, -46.5808719, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5899506, -- Use merged value
    longitude = -46.5808719, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('517', 'CEI - Ver. José de Moura', 'Readequação Predial', 'Rua Dona Ana Néri, 157.', 20, NULL, 'SÉ', -23.5556036, -46.6142847, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5556036, -- Use merged value
    longitude = -46.6142847, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('518', 'EMEF - Danylo José Fernandes', 'Readequação Predial', 'Av. Dr. Francisco Munhoz Filho, 431.', 20, NULL, 'Itaquera ', -23.5545331, -46.4653423, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5545331, -- Use merged value
    longitude = -46.4653423, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('519', 'EMEF - Ayres Martins Torres', 'Readequação Predial', 'Rua Catarina Lopes, 428. Itaquera.', 20, NULL, 'Itaquera ', -23.5302914, -46.4589975, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5302914, -- Use merged value
    longitude = -46.4589975, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('520', 'CEI - AE Carvalho', 'Readequação Predial', 'Rua Beleza Pura, 56- Conjunto Habitacional A. E. Carvalho, São Paulo.', 20, NULL, 'Itaquera ', -23.5273939, -46.459247, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5273939, -- Use merged value
    longitude = -46.459247, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('521', 'CEI - Jardim Santa Maria', 'Readequação Predial', 'Rua Embiú, 256.', 20, NULL, 'Itaquera ', -23.555165, -46.511102, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555165, -- Use merged value
    longitude = -46.511102, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('522', 'EMEI - Jardim Marília', 'Readequação Predial', 'Rua Quintino Da Cunha, 20.', 20, NULL, 'Itaquera ', -23.5625545, -46.4962889, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5625545, -- Use merged value
    longitude = -46.4962889, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('523', 'CEI - Vila Ramos', 'Readequação Predial', 'Rua Laranja De Natal, 251.', 20, NULL, 'Itaquera ', -23.518658, -46.4666098, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.518658, -- Use merged value
    longitude = -46.4666098, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('524', 'EMEI - Alberto Mesquita de Camargo', 'Readequação Predial', 'Praça Barão Homem De Melo, S/N.', 20, NULL, 'Aricanduva ', -23.5579362, -46.541379, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5579362, -- Use merged value
    longitude = -46.541379, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('525', 'EMEF - Brigadeiro Haroldo Veloso', 'Readequação Predial', 'Rua Marcelino Da Silva, 50.', 20, NULL, 'Itaquera ', -23.5321004, -46.4443341, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5321004, -- Use merged value
    longitude = -46.4443341, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('526', 'CEI - Cabreuvas', 'Readequação Predial', 'Rua Antônio Gandini, 858.', 20, NULL, 'Itaquera ', -23.5377444, -46.4393992, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5377444, -- Use merged value
    longitude = -46.4393992, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('527', 'CEI - Jardim Hercilia', 'Readequação Predial', 'Rua Alves Maldonado, 46.', 20, NULL, 'Penha ', -23.5423528, -46.5012865, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5423528, -- Use merged value
    longitude = -46.5012865, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('528', 'CEI - Antônia Maria Torres', 'Readequação Predial', 'Rua Padre Tiago Alberione, 42.', 20, NULL, 'Ermelino Matarazzo ', -23.5167841, -46.4810004, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5167841, -- Use merged value
    longitude = -46.4810004, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('529', 'EMEF - Abrão de Moraes', 'Readequação Predial', 'Rua Isaura Vergueiro Naufel, 238.', 20, NULL, 'Penha ', -23.5474468, -46.4996055, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5474468, -- Use merged value
    longitude = -46.4996055, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('530', 'EMEF - Álvares de Azevedo', 'Readequação Predial', 'Rua Alcaçuz, 130.', 20, NULL, 'Vila Prudente ', -23.604496, -46.538574, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604496, -- Use merged value
    longitude = -46.538574, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('531', 'EMEF - Mal. Mascarenhas de Moraes', 'Readequação Predial', 'Rua Dr. Camilo Haddad, 234.', 20, NULL, 'Vila Prudente ', -23.5960384, -46.5394689, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5960384, -- Use merged value
    longitude = -46.5394689, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('532', 'EMEF - Presidente Prudente de Morais', 'Readequação Predial', 'Rua Juíz De Fora, 980.', 20, NULL, 'Vila Prudente ', -23.595953, -46.536639, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595953, -- Use merged value
    longitude = -46.536639, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('533', 'EMEF - Francisco Da Silveira Bueno, Prof', 'Readequação Predial', 'Rua Três Lagoas, 336.', 20, NULL, 'Vila Prudente ', -23.6132227, -46.5321999, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6132227, -- Use merged value
    longitude = -46.5321999, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('534', 'EMEF - Armando de Salles Oliveira', 'Readequação Predial', 'R. Milton Da Cruz, 659.', 20, NULL, 'Sapopemba', -23.6095515, -46.5129718, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6095515, -- Use merged value
    longitude = -46.5129718, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('535', 'EMEI - Benjamin Constant', 'Readequação Predial', ' Av. Casa Grande, 133.', 20, NULL, 'Sapopemba', -23.603694, -46.514098, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.603694, -- Use merged value
    longitude = -46.514098, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('536', 'EMEF - Brasílio Machado', 'Readequação Predial', 'Rua Alm. Otacílio Cunha, 325.', 20, NULL, 'Sapopemba', -23.6131772, -46.5079518, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6131772, -- Use merged value
    longitude = -46.5079518, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('537', 'EMEI - Danton Castilho Cabral', 'Readequação Predial', 'Rua Silvestro Silvestre, 319.', 20, NULL, 'Sapopemba', -23.6073957, -46.5169765, FALSE, NULL, NULL)
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
VALUES ('538', 'CEI - Parque Santa Madalena', 'Readequação Predial', 'Avenida Doutor Paulo Colombo P De Queiroz, 340. Parque Santa Madalena', 20, NULL, 'Sapopemba', -23.6116863, -46.5108024, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6116863, -- Use merged value
    longitude = -46.5108024, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('539', 'EMEI - Rachel Mesquita de Salles Oliveira', 'Readequação Predial', ' Rua Milton Da Cruz, 585.', 20, NULL, 'Sapopemba', -23.6092938, -46.5123887, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6092938, -- Use merged value
    longitude = -46.5123887, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('540', 'EMEI - José Mauro de Vasconcelos', 'Readequação Predial', 'Rua Josino Mendes De Alvarenga Freire, 341.', 20, NULL, 'São Mateus ', -23.599572, -46.4906591, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599572, -- Use merged value
    longitude = -46.4906591, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('541', 'EMEF - José Lins Do Rego', 'Readequação Predial', 'Rua Augusto Ferreira Ramos, 54.', 20, NULL, 'São Mateus ', -23.5878113, -46.4925385, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5878113, -- Use merged value
    longitude = -46.4925385, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('542', 'CEI - Inezita Barroso', 'Readequação Predial', 'Rua Poços De Caldas, 25.', 20, NULL, 'São Mateus ', -23.584924, -46.494693, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.584924, -- Use merged value
    longitude = -46.494693, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('543', 'EMEI - Jardim Imperador', 'Readequação Predial', 'Rua Eugenópolis, S/N.', 20, NULL, 'São Mateus ', -23.588583, -46.502515, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.588583, -- Use merged value
    longitude = -46.502515, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('544', 'EMEF - Padre Gregório Westrupp', 'Readequação Predial', 'Rua Esquivel Navarro, 10.', 20, NULL, 'Sapopemba', -23.603627, -46.5039652, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.603627, -- Use merged value
    longitude = -46.5039652, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('545', 'EMEI - Charles Chaplin', 'Readequação Predial', 'Rua Esquivel Navarro, 463.', 20, NULL, 'Sapopemba', -23.6055246, -46.5067984, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6055246, -- Use merged value
    longitude = -46.5067984, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('546', 'EMEF - Arquiteto Vilas Novas Artigas', 'Readequação Predial', 'Rua Esquivel Navarro, 463.', 20, NULL, 'Sapopemba', -23.6055246, -46.5067984, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6055246, -- Use merged value
    longitude = -46.5067984, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('547', 'EMEF - Bartolomeu Campo de Queiroz', 'Readequação Predial', ' Av. Arquiteto Vilanova Artigas, 1471.', 20, NULL, 'Sapopemba', -23.6022437, -46.5032556, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6022437, -- Use merged value
    longitude = -46.5032556, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('548', 'EMEF - Benedito de Jesus Batista Laurindo', 'Readequação Predial', 'Rua Alfonso Ferrabosco, 52.', 20, NULL, 'Sapopemba', -23.589176, -46.51247, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.589176, -- Use merged value
    longitude = -46.51247, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('550', 'CEI - João Francisco Haro', 'Readequação Predial', 'Rua Pedro De Castro Velho, 559.', 20, NULL, 'Sapopemba', -23.5931077, -46.5164124, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5931077, -- Use merged value
    longitude = -46.5164124, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('551', 'EMEI - Origenes Lessa', 'Readequação Predial', 'Av. Egídio Martins, S/N.', 20, NULL, 'Sapopemba', -23.5917471, -46.526278, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5917471, -- Use merged value
    longitude = -46.526278, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('552', 'EMEI - Carlos Humberto Volpon', 'Readequação Predial', 'Rua Srg. Luís Rodrigues Filho, 191.', 20, NULL, 'Sapopemba', -23.617862, -46.496375, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617862, -- Use merged value
    longitude = -46.496375, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('553', 'CEI - Assma Curiati', 'Readequação Predial', 'Rua Francisco Matias, 105', 20, NULL, 'Sapopemba', -23.610526, -46.487609, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.610526, -- Use merged value
    longitude = -46.487609, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('554', 'CEI - Jardim Tietê', 'Readequação Predial', 'Rua Ettore Andreazza, 40.', 20, NULL, 'São Mateus ', -23.6021668, -46.4906121, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6021668, -- Use merged value
    longitude = -46.4906121, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('555', 'EMEI - Nini Duarte', 'Readequação Predial', 'Rua Esquivel Navarro, 180.', 20, NULL, 'Sapopemba', -23.6090949, -46.5016731, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6090949, -- Use merged value
    longitude = -46.5016731, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('556', 'CEI - Jardim Adutora', 'Readequação Predial', 'Rua Antonio Vilares, 187.', 20, NULL, 'Sapopemba', -23.6152624, -46.4988348, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6152624, -- Use merged value
    longitude = -46.4988348, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('557', 'CEI - Anita Garibaldi', 'Readequação Predial', 'Rua Carlo Clausetti, 177.', 20, NULL, 'Sapopemba', -23.605172, -46.5011869, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.605172, -- Use merged value
    longitude = -46.5011869, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('558', 'EMEI - Aparecida Candida Dos Santos de Jesus', 'Readequação Predial', 'Rua Alexandre Groppali, 179.', 20, NULL, 'Sapopemba', -23.6134914, -46.4888525, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6134914, -- Use merged value
    longitude = -46.4888525, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('559', 'EMEF - Arlindo Caetano Filho, Prof', 'Readequação Predial', 'Rua Palmeira Bacaba, 39.', 20, NULL, 'Sapopemba', -23.6157543, -46.5105447, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6157543, -- Use merged value
    longitude = -46.5105447, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('560', 'EMEF - Heraldo Barbuy', 'Readequação Predial', 'Rua Cristóvão De Vasconcelos, 86.', 20, NULL, 'Sapopemba', -23.6166316, -46.5031393, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6166316, -- Use merged value
    longitude = -46.5031393, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('561', 'EMEF - Ivete Varga, Deputada', 'Readequação Predial', 'Rua Carlo Clausetti, 300.', 20, NULL, 'Sapopemba', -23.6042966, -46.5007588, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6042966, -- Use merged value
    longitude = -46.5007588, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('562', 'CEI - João Ubaldo', 'Readequação Predial', 'Rua Rosa Da China, 1.', 20, NULL, 'Sapopemba', -23.6202984, -46.5004325, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6202984, -- Use merged value
    longitude = -46.5004325, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('563', 'EMEF - Paulo Duarte', 'Readequação Predial', 'Av. Arquiteto Vilanova Artigas, 583.', 20, NULL, 'Sapopemba', -23.6095289, -46.5016919, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6095289, -- Use merged value
    longitude = -46.5016919, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('564', 'CEI - Teotônio Vilela', 'Readequação Predial', 'Avenida Arquiteto Vila Nova Artigas, 780. Jardim Sapopemba', 20, NULL, 'Sapopemba', -23.6078916, -46.50094, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6078916, -- Use merged value
    longitude = -46.50094, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('565', 'EMEI - Dona Maria de Lourdes Coutinho Torres', 'Readequação Predial', 'Rua Bartolomeu Gonçalves, 45.', 20, NULL, 'São Mateus ', -23.6203219, -46.462318, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6203219, -- Use merged value
    longitude = -46.462318, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('566', 'CEI - Elizabeth Souza Lobo Garcia', 'Readequação Predial', 'Av. Mendonça E Vasconcelos, 201.', 20, NULL, 'São Mateus ', -23.6226423, -46.4643339, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6226423, -- Use merged value
    longitude = -46.4643339, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('567', 'CEI - Jardim Vera Cruz', 'Readequação Predial', 'Rua  Felipe Cotrim, 54.', 20, NULL, 'São Mateus ', -23.6194862, -46.473147, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6194862, -- Use merged value
    longitude = -46.473147, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('568', 'EMEF - Alceu Amoroso Lima', 'Readequação Predial', 'Rua Carmem Tortola, 48.', 20, NULL, 'São Mateus ', -23.6210448, -46.4575556, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6210448, -- Use merged value
    longitude = -46.4575556, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('569', 'EMEI - Dr. Vital Brazil', 'Readequação Predial', 'Av. Rodolfo Pirani, 320.', 20, NULL, 'São Mateus ', -23.6276555, -46.4624493, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6276555, -- Use merged value
    longitude = -46.4624493, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('570', 'EMEF - Forte Dos Reis Magos', 'Readequação Predial', 'Rua Forte Dos Réis Magos, 46.', 20, NULL, 'São Mateus ', -23.6217765, -46.4617791, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6217765, -- Use merged value
    longitude = -46.4617791, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('571', 'CEI - Luiz Gonzaga Do Nascimento Jr.', 'Readequação Predial', 'Rua Pascoal Dias, 719.', 20, NULL, 'São Mateus ', -23.6199952, -46.4790839, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6199952, -- Use merged value
    longitude = -46.4790839, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('572', 'EMEI - Mário de Andrade', 'Readequação Predial', 'Av. Srg. Iracitan Coimbra, 511.', 20, NULL, 'São Mateus ', -23.6191012, -46.4737482, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6191012, -- Use merged value
    longitude = -46.4737482, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('573', 'CEI - Parque São Rafael II', 'Readequação Predial', 'Rua Senador Filinto Muller, 391.', 20, NULL, 'São Mateus ', -23.6263086, -46.4761831, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6263086, -- Use merged value
    longitude = -46.4761831, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('574', 'EMEF - José Carlos Nicoleto - Zito, Prof.', 'Readequação Predial', ' Rua Bandeira De Aracambi, 707.', 20, NULL, 'São Mateus ', -23.6310951, -46.457106, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6310951, -- Use merged value
    longitude = -46.457106, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('575', 'EMEI - Antônia de Oliveira Mota de Araújo, Prof.ª', 'Readequação Predial', 'Rua Cinira Polônio, 1.', 20, NULL, 'São Mateus ', -23.619822, -46.4555874, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.619822, -- Use merged value
    longitude = -46.4555874, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('576', 'EMEI - Fúlvia Rosemberg', 'Readequação Predial', 'Rua Moacir Gomes De Almeida, 26.', 20, NULL, NULL, -23.5785817, -46.4052357, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5785817, -- Use merged value
    longitude = -46.4052357, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('577', 'CEI - Maria Cursi', 'Readequação Predial', 'Rua Maria Luísa Do Val Penteado, 560.', 20, NULL, 'São Mateus ', -23.6070416, -46.4832928, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6070416, -- Use merged value
    longitude = -46.4832928, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('578', 'EMEI - Jardim Da Conquista Ii', 'Readequação Predial', 'Travessa Jambalaya, 49 -Jardim Da Conquista, São Paulo.', 20, NULL, 'São Mateus ', -23.6082985, -46.4474462, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6082985, -- Use merged value
    longitude = -46.4474462, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('579', 'CEI IND - Benedito Costa de Carvalho, Dr.', 'Readequação Predial', 'Rua Pirâmide Dos Piques, 102.', 20, NULL, 'São Mateus ', -23.6073106, -46.4341003, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6073106, -- Use merged value
    longitude = -46.4341003, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('580', 'EMEI - Elis Regina', 'Readequação Predial', 'Rua Ernesto Manograsso, 340.', 20, NULL, 'São Mateus ', -23.6109678, -46.4794611, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6109678, -- Use merged value
    longitude = -46.4794611, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('581', 'EMEI - Francisco Adalto Rodrigues', 'Readequação Predial', 'Rua Aguarico, 5.', 20, NULL, 'São Mateus ', -23.599467, -46.448421, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599467, -- Use merged value
    longitude = -46.448421, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('582', 'CEI - Jardim Colonial', 'Readequação Predial', 'Av. José Rodrigues Santarém, 494.', 20, NULL, 'São Mateus ', -23.6021064, -46.4722341, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6021064, -- Use merged value
    longitude = -46.4722341, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('583', 'CEI - Jardim Vila Carrão', 'Readequação Predial', 'Rua Bartolomeu Antunes, 40.', 20, NULL, 'São Mateus ', -23.6170783, -46.4592707, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6170783, -- Use merged value
    longitude = -46.4592707, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('584', 'EMEI - Pestalozzi', 'Readequação Predial', 'Rua Abner Ribeiro Borges, 154.', 20, NULL, 'São Mateus ', -23.596169, -46.4421121, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.596169, -- Use merged value
    longitude = -46.4421121, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('585', 'EMEF - Vladimir Herzog', 'Readequação Predial', 'Rua Francisco José Viana, 894.', 20, NULL, 'Cidade Tiradentes ', -23.6110445, -46.3967378, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6110445, -- Use merged value
    longitude = -46.3967378, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('586', 'EMEI - Gianfederico Porta, Prof', 'Readequação Predial', 'Rua Torre De Santiago, 323.', 20, NULL, 'Guaianazes ', -23.5490515, -46.4014653, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5490515, -- Use merged value
    longitude = -46.4014653, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('587', 'EMEI - Antônio Pereira Lima', 'Readequação Predial', 'Rua Ananaí, 982.', 20, NULL, 'Itaim Paulista ', -23.5232384, -46.4188089, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5232384, -- Use merged value
    longitude = -46.4188089, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('588', 'EMEF - Alexandre de Gusmão', 'Readequação Predial', 'Rua Porto Do Bezerra, 25.', 20, NULL, 'Guaianazes ', -23.5359933, -46.4166985, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5359933, -- Use merged value
    longitude = -46.4166985, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('589', 'CEI - Vila Marilena', 'Readequação Predial', 'Rua Rio Fartura, 200.', 20, NULL, 'Guaianazes ', -23.5573221, -46.412973, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5573221, -- Use merged value
    longitude = -46.412973, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('590', 'CEI - Zacarias Mauro Faccio', 'Readequação Predial', 'Rua Cavaleiro De Jorge, 300.', 20, NULL, 'Cidade Tiradentes ', -23.5791636, -46.3989961, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5791636, -- Use merged value
    longitude = -46.3989961, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('591', 'EMEI - Paulo Camilhier Florençano', 'Readequação Predial', ' Rua Felíciano De Mendonça, 502.', 20, NULL, 'Guaianazes ', -23.5539648, -46.3978335, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5539648, -- Use merged value
    longitude = -46.3978335, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('592', 'EMEI - D. Pedro II', 'Readequação Predial', 'Rua Dr. José De Porciúncula, 1280.', 20, NULL, 'São Miguel Paulista ', -23.4833063, -46.4204978, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4833063, -- Use merged value
    longitude = -46.4204978, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('593', 'EMEF - João Augusto Breves, Dr.', 'Readequação Predial', 'Rua Cecília Iter, 746.', 20, NULL, 'São Miguel Paulista ', -23.5225265, -46.4358776, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5225265, -- Use merged value
    longitude = -46.4358776, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('594', 'CEI - Conveniada Veredas', 'Readequação Predial', 'Rua Louro Rosa, 6.', 20, NULL, 'Itaim Paulista ', -23.5131023, -46.3874236, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5131023, -- Use merged value
    longitude = -46.3874236, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('595', 'EMEF - Henrique Souza Filho - Henfil', 'Readequação Predial', 'Rua Érico Semer, S/N', 20, NULL, 'São Mateus ', -23.5965802, -46.4229817, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5965802, -- Use merged value
    longitude = -46.4229817, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('596', 'EMEI - Jardim Premiano', 'Readequação Predial', 'Av. Do Progresso, 150', 20, NULL, 'São Mateus ', -23.5974214, -46.4201221, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5974214, -- Use merged value
    longitude = -46.4201221, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('598', 'Autódromo de Interlagos - 2022', 'Autódromo', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.703282, -46.700285, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.703282, -- Use merged value
    longitude = -46.700285, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('599', 'CTA ILPI', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'RUA COMENDADOR NESTOR PEREIRA, Nº 75', 19, NULL, 'SÉ', -23.5247041, -46.619354, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5247041, -- Use merged value
    longitude = -46.619354, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('600', 'CTA MARIA', 'Obras de manutenção, reparos e adaptações de infraestrutura de Unidades Socioassistenciais.', 'RUA COMENDADOR NESTOR PEREIRA, Nº 75', 19, NULL, 'SÉ', -23.5247041, -46.619354, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5247041, -- Use merged value
    longitude = -46.619354, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('601', 'Descomplica Mooca', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Taquari nº 549', 8, NULL, 'Mooca ', -23.5499694, -46.5992585, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5499694, -- Use merged value
    longitude = -46.5992585, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('602', 'Descomplica Pinheiros', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Dra. Ruth Cardoso, 7123', 8, NULL, 'Pinheiros ', -23.5661031, -46.702514, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5661031, -- Use merged value
    longitude = -46.702514, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('603', 'Descomplica Parelheiros', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', '- Estrada Ecoturística de Parelheiros nº 5252', 8, NULL, 'Parelheiros ', -23.8159122, -46.7355002, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.8159122, -- Use merged value
    longitude = -46.7355002, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('604', 'Descomplica Pirituba', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua Dr. Carlos Afranio da Cunha Matos, 67 ', 8, NULL, 'Pirituba / Jaraguá', -23.4887209, -46.7271853, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4887209, -- Use merged value
    longitude = -46.7271853, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('605', 'Descomplica Itaim Paulista', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Av. Marechal Tito, 3012', 8, NULL, 'Itaim Paulista ', -23.4946203, -46.4171384, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4946203, -- Use merged value
    longitude = -46.4171384, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('606', 'Descomplica Santo Amaro', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Praça Floriano Peixoto nº 54', 8, NULL, 'Santo Amaro ', -23.6514849, -46.7069966, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6514849, -- Use merged value
    longitude = -46.7069966, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('607', 'Boulevard JK', 'Reurbanização da avenida JK, com 1.300m de extensão, compreendendo a reformulação viária de superfície e via rebaixada sob a avenida Presidente Juscelino Kubitschek.', 'Avenida Presidente Juscelino Kubitschek', 4, NULL, 'Pinheiros ', -23.59045, -46.681391, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59045, -- Use merged value
    longitude = -46.681391, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('608', 'Ciclopassarela Panorama', 'Execução dos levantamentos de campo, serviços geotécnicos, consolidação do projeto funcional, elaboração de projetos básicos, projetos executivos e dos estudos ambientais ', 'Sobre o canal do Rio Pinheiros, vias marginais e Linha 9 – Esmeralda CPTM, junto à Estação Berrini', 5, NULL, 'Pinheiros ', -23.604734, -46.69615, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604734, -- Use merged value
    longitude = -46.69615, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('609', 'Av. Teotônio Vilela / Av. Sadamu Inoue - Duplicação', 'Elaboração dos Projetos Básicos, Projetos executivos e Serviços Ambientais para duplicação viária da Avenida Senador Teotônio Vilela', 'Av Teotônio Vilela x Av. Sadamu Inoue', 5, NULL, 'Parelheiros ', -23.773657, -46.720829, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.773657, -- Use merged value
    longitude = -46.720829, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('610', 'Implantação viadutos na Av. Santos Dumont sobre a Av. do Estado', 'Projeto Viadutos', 'Início próximo a Rua dos Bandeirantes até proximidades da Rua Porto Seguro', 5, NULL, 'SÉ', -23.528708, -46.6319, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528708, -- Use merged value
    longitude = -46.6319, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('611', 'Nova Ponte Jurubatuba – Av. Interlagos - Sentido Bairro – Centro', 'Execução dos levantamentos de campo, serviços geotécnicos, elaboração de projetos básicos, projetos executivos e dos estudos ambientais ', 'Avenida Interlagos sobre o Rio Jurubatuba, com localização próxima a Vila da Paz', 5, NULL, 'Capela do Socorro ', -23.751, -46.69564, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.751, -- Use merged value
    longitude = -46.69564, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('612', 'Nova Sede do Conselho Municipal da Pessoa com Deficiência - SMPED', 'Elaboração de projeto básico e executivo para a reforma parcial da Secretaria Municipal da Pessoa com Deficiência e das novas instalações da sede do Conselho Municipal da Pessoa com projeto Executivo', 'Rua Líbero Badaró, 425 - 4º andar e 32º andares', 24, NULL, 'SÉ', -23.5455, -46.63609, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455, -- Use merged value
    longitude = -46.63609, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('613', 'Sede da SMDET', 'Elaboração de projeto básico/executivo para a reforma da Secretaria Municipal de Desenvolvimento Econômico, Trabalho e Turismo', 'Rua Líbero Badaró, 425 - 8º e 12º andares', 24, NULL, 'SÉ', -23.5455, -46.63609, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455, -- Use merged value
    longitude = -46.63609, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('615', 'Viaduto Marcelo Figueiredo Portugal Gouvêa', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na avenida Juscelino Kubistchek sentido marginal Pinheiros - Castelo Branco', 16, NULL, 'Pinheiros ', -23.589805, -46.690992, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.589805, -- Use merged value
    longitude = -46.690992, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('616', 'Viaduto Rua Hely Lopes Meirelles', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação Marginal Tiete e Rua Hely Lopes Meirelles, sobre a R. Condessa Elizabeth Robiano', 16, NULL, 'Mooca ', -23.524138, -46.560195, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.524138, -- Use merged value
    longitude = -46.560195, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('617', 'Viaduto Mateus Grou', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Teodoro Sampaio, sobre a Rua Mateus Grou - Pinheiros.', 16, NULL, 'Pinheiros ', -23.562422, -46.685627, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.562422, -- Use merged value
    longitude = -46.685627, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('618', 'Viaduto Joaquim Antunes (Teodoro Sampaio)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Teodoro Sampaio, sobre a Rua Joaquim Antunes - Pinheiros.', 16, NULL, 'Pinheiros ', -23.561288, -46.683736, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561288, -- Use merged value
    longitude = -46.683736, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('619', 'Viaduto Miguel Colello', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Loefgreen, entre a Rua Joel Jorge de Melo e a Rua Jaime Viana sobre a Rua Sabino – Saúde', 16, NULL, 'Vila Mariana ', -23.599714, -46.632879, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.599714, -- Use merged value
    longitude = -46.632879, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('620', 'Viaduto Professor Bernardino Tranchesi (Viaduto São Carlos do Pinhal)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Na Rua São Carlos do Pinhal sobre a Avenida 9 de Julho e a Rua Peixoto Gomide - Cerqueira César.', 16, NULL, 'SÉ', -23.560604, -46.655234, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.560604, -- Use merged value
    longitude = -46.655234, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('621', 'Viaduto República Árabe-Síria', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Indianópolis, sobre a Avenida Rubem Berta - Moema.', 16, NULL, 'Vila Mariana ', -23.607785, -46.652693, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.607785, -- Use merged value
    longitude = -46.652693, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('622', 'Ponte Laguna (Vice-Presidente José Alencar)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Laguna sobre a Marginal Pinheiros', 16, NULL, 'Santo Amaro ', -23.633429, -46.718533, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.633429, -- Use merged value
    longitude = -46.718533, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('623', 'Pontilhão na Rua Igaraçu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Iguaçu sobre Córrego Lageado – Vila Simone', 16, NULL, 'Itaim Paulista ', -23.502753, -46.406448, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.502753, -- Use merged value
    longitude = -46.406448, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('624', 'Pontilhão na Rua do Ipê Roxo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Ipê Roxo sobre Córrego Lageado – Jardim Jaraguá', 16, NULL, 'Itaim Paulista ', -23.506221, -46.404839, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.506221, -- Use merged value
    longitude = -46.404839, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('625', 'Pontilhão na Rua Castelo do Piauí', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Castelo do Piauí sobre o Rio Verde - Itaquera', 16, NULL, 'Itaquera ', -23.54347, -46.462181, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54347, -- Use merged value
    longitude = -46.462181, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('626', 'Viaduto Único Galláfrio', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Henry Ford e a Avenida Presidente Altino sobre a CPTM e a Praça Alaor da Silva - Jaguaré.', 16, NULL, 'Lapa ', -23.530457, -46.760273, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.530457, -- Use merged value
    longitude = -46.760273, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('627', 'Viaduto Okuhara Koei', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Doutor Arnaldo e a Rua da Consolação sobre a Avenida Rebouças – Consolação.', 16, NULL, 'Pinheiros ', -23.556493, -46.665315, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556493, -- Use merged value
    longitude = -46.665315, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('628', 'Viaduto Avenida Cangaiba', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Cangaíba, sobre a Avenida Governador Carvalho Pinto e o Córrego Tiquatira – Cangaíba.', 16, NULL, 'Penha ', -23.513923, -46.545894, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.513923, -- Use merged value
    longitude = -46.545894, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('629', 'Viaduto Santa Generosa', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Bernardino de Campos e a Rua Vergueiro sobre a Avenida 23 de Maio – Paraíso.', 16, NULL, 'Vila Mariana ', -23.575289, -46.641566, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575289, -- Use merged value
    longitude = -46.641566, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('630', 'Viaduto Tutóia', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Tutóia e a Rua Doutor Amâncio de Carvalho sobre a Avenida 23 de Maio - Paraíso.', 16, NULL, 'Vila Mariana ', -23.58114, -46.649767, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58114, -- Use merged value
    longitude = -46.649767, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('631', 'Viaduto Onze de Junho (Avenida Rubem Berta)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rubem Berta sobre a Interligação entre a Avenida José Maria Whitaker e a Rua Haberbeck Brandão - Vila Clementino.', 16, NULL, 'Vila Mariana ', -23.601428, -46.651276, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.601428, -- Use merged value
    longitude = -46.651276, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('632', 'Viaduto sobre a Rua João Moura', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Paulo VI sobre a Rua João Moura - Jardim América.', 16, NULL, 'Pinheiros ', -23.555154, -46.681326, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555154, -- Use merged value
    longitude = -46.681326, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('633', 'Viaduto na Rua Arthur de Azevedo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Arthur de Azevedo sobre a Rua Paulo Gontijo de Carvalho - Jardim Paulista.', 16, NULL, 'Pinheiros ', -23.561316, -46.679499, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.561316, -- Use merged value
    longitude = -46.679499, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('634', 'Viaduto Vereador José Diniz (Avenida Rodrigues Alves)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Acesso vindo da Avenida Professor Vicente Rao pista sentido Santo Amaro/Brooklin - Vila Carmem.', 16, NULL, 'Santo Amaro ', -23.62806, -46.684816, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.62806, -- Use merged value
    longitude = -46.684816, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('635', 'Viaduto Prefeito José Carlos de Figueiredo Ferraz', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de saída da Av. Jacu Pêssego/Nova Trabalhadores para Av. José Pinheiro Borges (Radial Leste) - sentido Centro', 16, NULL, 'Itaquera ', -23.534427, -46.454253, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534427, -- Use merged value
    longitude = -46.454253, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('636', 'Viaduto na Avenida José Pinheiro Borges', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Alça de Saída para a Avenida David Domingues Ferreira – Jardim Liderança.', 16, NULL, 'Itaquera ', -23.535279, -46.453993, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.535279, -- Use merged value
    longitude = -46.453993, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('637', 'Viaduto na Avenida Prof. Francisco Morato', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Francisco Morato sobre a Avenida Monsenhor Manfredo Leite - Butantã', 16, NULL, 'Butantã ', -23.602396, -46.744013, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.602396, -- Use merged value
    longitude = -46.744013, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('638', 'Viaduto Sonia Maria de Moraes Angel Jones (ligação Guido Caloi)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida João Dias, sentido Ponte João Dias, sobre a Avenida Maria Coelho de Aguiar– Jardim Santo Antônio', 16, NULL, 'M´Boi Mirim', -23.644438, -46.729689, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644438, -- Use merged value
    longitude = -46.729689, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('639', 'Viaduto na Rua Augusta', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Augusta sobre a Avenida Radial Leste- Oeste - Consolação.', 16, NULL, 'SÉ', -23.550072, -46.646455, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.550072, -- Use merged value
    longitude = -46.646455, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('640', 'Viaduto na Rua da Consolação', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua da Consolação sobre a Avenida Radial Leste-Oeste - Consolação', 16, NULL, 'SÉ', -23.547343, -46.647524, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547343, -- Use merged value
    longitude = -46.647524, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('641', 'Viaduto na Avenida Rangel Pestana sobre a Rua Frederico Alvarenga', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rangel Pestana sobre a Rua Frederico Alvarenga - Parque Dom Pedro II.', 16, NULL, 'SÉ', -23.549559, -46.629967, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.549559, -- Use merged value
    longitude = -46.629967, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('642', 'Viaduto Boa Vista', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Boa Vista sobre a Rua General Carneiro', 16, NULL, 'SÉ', -23.547411, -46.63331, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547411, -- Use merged value
    longitude = -46.63331, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('643', 'Viaduto na Rua Peixoto Gomide sobre a Rua São Carlos do Pinhal', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Peixoto Gomide sobre a Rua São Carlos do Pinhal - Cerqueira César.', 16, NULL, 'SÉ', -23.559865, -46.656062, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.559865, -- Use merged value
    longitude = -46.656062, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('644', 'Viaduto Matheus Torloni', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Getúlio Vargas Filho e a Secretária de Agricultura e Abastecimento sobre a Rodovia dos imigrantes – Cidade Vargas', 16, NULL, 'Jabaquara ', -23.646953, -46.631848, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.646953, -- Use merged value
    longitude = -46.631848, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('645', 'Viaduto Professor Alberto Mesquita de Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua da Mooca sobre a Avenida Presidente Wilson, a CPTM e a Rua Doutor Almeida de Lima - Mooca.', 16, NULL, 'Mooca ', -23.55461, -46.610341, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.55461, -- Use merged value
    longitude = -46.610341, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('646', 'Viaduto na Rua Montesina', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Rua Montesina sobre a Avenida Salim Farah Maluf – Vila Paulina.', 16, NULL, 'Mooca ', -23.575264, -46.570957, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.575264, -- Use merged value
    longitude = -46.570957, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('647', 'Viaduto Milton Leão', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Rua Durande e a Rua Boipeva sobre a Avenida Águia de Haia - Artur Alvim.', 16, NULL, 'Penha ', -23.539543, -46.483367, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539543, -- Use merged value
    longitude = -46.483367, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('648', 'Viaduto Maria Montanaro Colella', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', ' Na Rua do Orfanato sobre a Avenida Salim Farah Maluf – Vila Paulina.', 16, NULL, 'Mooca ', -23.574443, -46.570766, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.574443, -- Use merged value
    longitude = -46.570766, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('649', 'Viaduto Maestro Alberto Marino (Rangel Pestana)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Rangel Pestana sobre a CPTM (próximo à Estação Brás) - Brás.', 16, NULL, 'Mooca ', -23.543523, -46.617584, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543523, -- Use merged value
    longitude = -46.617584, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('650', 'Viaduto Itinguçu', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação entre a Avenida Paraguassu e a Rua Itinguçu/Rua Júlio Sayago sobre a Rua Doutor Luiz Ayres e a CPTM - Vila Ré.', 16, NULL, 'Penha ', -23.535649, -46.493839, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.535649, -- Use merged value
    longitude = -46.493839, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('651', 'Viaduto Julio de Mesquita Filho 2', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Na Avenida Radial Leste-Oeste, sobre a Rua Major Diogo – Bela Vista.', 16, NULL, 'SÉ', -23.555315, -46.642303, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.555315, -- Use merged value
    longitude = -46.642303, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;