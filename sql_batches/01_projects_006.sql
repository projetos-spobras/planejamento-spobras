INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('297', 'EMEI - Borba Gato', 'Readequação em Quadra Poliesportiva', 'R. Paulo Eiró, 567 - Santo amaro', 20, NULL, 'Santo Amaro ', -23.6501987, -46.708178, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6501987,
    longitude = -46.708178;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('298', 'EMEI - Doraci dos Santos Ramos, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. São Valfredo, S/N - Chácara Santa Etelvina', 20, NULL, 'Cidade Tiradentes ', -23.5867156, -46.4055591, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5867156,
    longitude = -46.4055591;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('299', 'EMEI - Eduardo Kneese de Mello, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Nascer do Sol, 1605 - Conj. Hab. Santa Etelvina II', 20, NULL, 'Cidade Tiradentes ', -23.5938676, -46.4143616, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5938676,
    longitude = -46.4143616;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('300', 'EMEF - Maria Aparecida do Nascimento, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Edson Danilo Dotto, 700 - Conj. Hab. S. Etelvina II', 20, NULL, 'Cidade Tiradentes ', -23.5930601, -46.4134362, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5930601,
    longitude = -46.4134362;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('301', 'EMEI - Fulvia Rosemberg, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Moacir Gomes de Almeida, 26 - Vila Paulista', 20, NULL, 'Cidade Tiradentes ', -23.5785817, -46.4052357, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5785817,
    longitude = -46.4052357;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('302', 'CEU EMEF - Conceição Aparecida de Jesus, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Ernesto souza Cruz, 2171 - Cid. Ant. Est. Carvalho', 20, NULL, 'Itaquera ', -23.5214415, -46.4568202, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5214415,
    longitude = -46.4568202;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('303', 'EMEF - Eduardo Prado', 'Readequação em Quadra Poliesportiva', 'R. Bento Teixeira, 100 - Jd. Brasilia', 20, NULL, 'Itaquera ', -23.5636784, -46.4927264, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5636784,
    longitude = -46.4927264;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('304', 'EMEI - Pedro Chaves, Min.', 'Readequação em Quadra Poliesportiva', 'R. Isabel Urbina, 149 - Jd. Bonifácio', 20, NULL, 'Itaquera ', -23.5466703, -46.4377153, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5466703,
    longitude = -46.4377153;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('305', 'EMEI - Piratininga', 'Readequação em Quadra Poliesportiva', 'R. Galeandra, 149 - Jd. Eliane', 20, NULL, 'Itaquera ', -23.5510349, -46.5035163, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5510349,
    longitude = -46.5035163;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('306', 'EMEF - Francisco Alves  Mendes Filho', 'Readequação em Quadra Poliesportiva', 'R. Quintino da Cunha, 22 - Jd. Marília', 20, NULL, 'Itaquera ', -23.5619076, -46.4956958, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5619076,
    longitude = -46.4956958;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('307', 'CEU / EMEF - Paulo Gomes Cardim, Prof. Dr.', 'Readequação em Quadra Poliesportiva', 'Av. Olga Fadel Abarca, S/N - Jd. Santa Teresinha', 20, NULL, 'Itaquera ', -23.573717, -46.5022499, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.573717,
    longitude = -46.5022499;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('308', 'EMEI - Florinda Roberto Queiroz de Castro', 'Readequação em Quadra Poliesportiva', 'R. Lincon Junqueira, 100 - Jd. São Pedro', 20, NULL, 'Itaquera ', -23.5473238, -46.4303763, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5473238,
    longitude = -46.4303763;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('309', 'EMEI - Olandya Peres Ribeiro, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Mariano Cursino de Moura, 395 - Pq. Maria Luiza', 20, NULL, 'Aricanduva ', -23.5581312, -46.5162197, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5581312,
    longitude = -46.5162197;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('310', 'EMEF - José Querino Ribeiro', 'Readequação em Quadra Poliesportiva', 'R. Cel. Albert de Rochas D''aiglum, 50 - V. Aricanduva', 20, NULL, 'Itaquera ', -23.5688792, -46.4817144, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5688792,
    longitude = -46.4817144;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('311', 'EMEF - Gilmar Taccola, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Lutécia, 1730 - Vila Santa Isabel', 20, NULL, 'Aricanduva ', -23.5582846, -46.5417929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5582846,
    longitude = -46.5417929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('312', 'CEU / EMEF - Rosangela Rodrigues Vieira, Prof.ª', 'Readequação em Quadra Poliesportiva', 'Av. Luiz Imparato, 564 - Parque Cisper', 20, NULL, 'Penha ', -23.499031, -46.4962695, FALSE)
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
VALUES ('313', 'CEU / EMEF - Antonio Carlos Rocha, Prof.', 'Readequação em Quadra Poliesportiva', 'Av. Condessa Elizabeth de Robiano, S/N - V. Moreira', 20, NULL, 'Penha ', -23.51723, -46.553564, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.51723,
    longitude = -46.553564;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('314', 'EMEI - Leonor Mendes de Barros, Da.', 'Readequação em Quadra Poliesportiva', 'Praça José Luz, 108 - Cidade Vargas', 20, NULL, 'Jabaquara ', -23.646167, -46.6370255, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.646167,
    longitude = -46.6370255;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('315', 'EMEI - Isa Silveira Leal', 'Readequação em Quadra Poliesportiva', 'R. Joaquim Alves Diniz, 912 - Vila São Francisco', 20, NULL, 'Ermelino Matarazzo ', -23.5216196, -46.4917469, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5216196,
    longitude = -46.4917469;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('316', 'EMEF - Emilio Ribas', 'Readequação em Quadra Poliesportiva', 'R. José Joaquim, 302 - Jardim  Amaro', 20, NULL, 'Sapopemba', -23.6013985, -46.5170517, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6013985,
    longitude = -46.5170517;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('317', 'EMEF - Jardim das Laranjeiras', 'Readequação em Quadra Poliesportiva', 'R. Luisa Sarazim, 139 - Jd. Bandeirante', 20, NULL, 'São Mateus ', -23.6050949, -46.4355133, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6050949,
    longitude = -46.4355133;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('318', 'EMEF - Martin Luther King Jr.', 'Readequação em Quadra Poliesportiva', 'Av. do Progresso, 100 - Marilu', 20, NULL, 'São Mateus ', -23.5951, -46.4192217, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5951,
    longitude = -46.4192217;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('319', 'EMEF - Henrique Melega, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Chiquinha Gonzaga, 349 - Vila Primavera', 20, NULL, 'Sapopemba', -23.5898136, -46.526078, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5898136,
    longitude = -46.526078;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('320', 'EMEF - Maria Imilda do Santíssimo Sacramento, Me.', 'Readequação em Quadra Poliesportiva', 'R. Gendiroba, 210 - Jd. Miragaia', 20, NULL, 'Itaim Paulista ', -23.4964394, -46.4194133, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4964394,
    longitude = -46.4194133;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('321', 'EMEF - Jardim Silva Teles', 'Readequação em Quadra Poliesportiva', 'R. Fred Astaire, 167 - Jd. Silva Teles', 20, NULL, 'Itaim Paulista ', -23.501, -46.4075304, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.501,
    longitude = -46.4075304;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('322', 'EMEF - Fernando de Azevedo, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Taperá, 415 - Vila Nova Curuçá', 20, NULL, 'Itaim Paulista ', -23.5204716, -46.421849, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5204716,
    longitude = -46.421849;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('323', 'EMEI - Bernardino Pimentel Mendes, Dr.', 'Readequação em Quadra Poliesportiva', 'Av. Inajar de souza, 6955 - Jd. Dos Francos', 20, NULL, 'Freguesia / Brasilândia', -23.4515461, -46.6749372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4515461,
    longitude = -46.6749372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('324', 'EMEI - Nelson Mandela', 'Readequação em Quadra Poliesportiva', 'Av. Prof. Celestino Bourrol, 358 - Jd. Pereira Leite', 20, NULL, 'Casa Verde ', -23.5105358, -46.6730092, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5105358,
    longitude = -46.6730092;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('325', 'EMEF - João Amos Comenius', 'Readequação em Quadra Poliesportiva', 'R. Ibiraiaras, 400 - Jd. Vista Alegre', 20, NULL, 'Freguesia / Brasilândia', -23.4505655, -46.6880923, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4505655,
    longitude = -46.6880923;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('326', 'EMEI - Eduardo Gomes, Brig.', 'Readequação em Quadra Poliesportiva', 'R. Santa Eudóxia, 800 - Parque Peruche', 20, NULL, 'Casa Verde ', -23.4969879, -46.65624, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4969879,
    longitude = -46.65624;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('327', 'EMEI - Manoel Preto', 'Readequação em Quadra Poliesportiva', 'R. Bonifácio Cubas, 356 - Vila Albertina', 20, NULL, 'Freguesia / Brasilândia', -23.500093, -46.694128, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.500093,
    longitude = -46.694128;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('328', 'EMEF - Neir Augusto Lopes, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Jorn. Octávio Ribeiro - Pena Branca, 20 - V. Bela Vis.', 20, NULL, 'Casa Verde ', -23.4645264, -46.6597372, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4645264,
    longitude = -46.6597372;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('329', 'EMEF - Raul Fernandes, Emb.', 'Readequação em Quadra Poliesportiva', 'R. Nair Ramos Schuring, 158 - Vila Brasilândia', 20, NULL, 'Freguesia / Brasilândia', -23.4691028, -46.6904596, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4691028,
    longitude = -46.6904596;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('330', 'EMEF - Dilermando Dias dos Santos', 'Readequação em Quadra Poliesportiva', 'R. Paulo Franco, 815 - Vila Hamburguesa', 20, NULL, 'Lapa ', -23.5357856, -46.7239681, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5357856,
    longitude = -46.7239681;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('331', 'EMEI - Noemia Ippolito', 'Readequação em Quadra Poliesportiva', 'Praça Alfredo Weiszflog, S/N - Vila Romana', 20, NULL, 'Lapa ', -23.5281501, -46.6949367, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5281501,
    longitude = -46.6949367;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('332', 'EMEI - Recanto dos Humildes I', 'Readequação em Quadra Poliesportiva', 'R. Recanto dos Humildes, S/N - Conj. Hab. Rec. Hum.', 20, NULL, 'Perus ', -23.4117924, -46.7505208, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4117924,
    longitude = -46.7505208;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('333', 'EMEI - Alice Feitosa, Da.', 'Readequação em Quadra Poliesportiva', 'R. Tarcon, 253 - Jd. Adelfiore', 20, NULL, 'Perus ', -23.4096914, -46.7396814, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4096914,
    longitude = -46.7396814;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('334', 'EMEF - Estação Jaraguá', 'Readequação em Quadra Poliesportiva', 'R. João Aires, S/N - Jd. Bandeirantes', 20, NULL, 'Pirituba / Jaraguá', -23.4559529, -46.7373331, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4559529,
    longitude = -46.7373331;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('335', 'EMEF - Edgard Carone', 'Readequação em Quadra Poliesportiva', 'R. Elisa Dina, 293 - Jd. Britânia', 20, NULL, 'Perus ', -23.4338404, -46.7911644, FALSE)
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
VALUES ('336', 'EMEI - Eunice dos Santos, Prof.ª', 'Readequação em Quadra Poliesportiva', 'R. Silvino de Godoy, 185 - Jd. Cidade Pirituba', 20, NULL, 'Pirituba / Jaraguá', -23.4797773, -46.7194776, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4797773,
    longitude = -46.7194776;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('337', 'EMEF - José Kauffmann, Dr.', 'Readequação em Quadra Poliesportiva', 'R. Samuel Bovy, 23 - Jd. Rincão', 20, NULL, 'Pirituba / Jaraguá', -23.4392136, -46.7318615, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4392136,
    longitude = -46.7318615;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('338', 'EMEF - Fernando Gracioso', 'Readequação em Quadra Poliesportiva', 'R. Silverânia, S/N - Jardim Russo', 20, NULL, 'Perus ', -23.4091203, -46.7620564, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4091203,
    longitude = -46.7620564;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('339', 'EMEF - Antônio Rodrigues de Campos, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Principe, 38 - Jd. Shangrila', 20, NULL, 'Pirituba / Jaraguá', -23.4285587, -46.7288492, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4285587,
    longitude = -46.7288492;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('340', 'EMEI - Oliveira Lima', 'Readequação em Quadra Poliesportiva', 'R. Antonio Maia, 476 - Vila Perus', 20, NULL, 'Perus ', -23.4080244, -46.75346, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4080244,
    longitude = -46.75346;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('341', 'EMEI - Vila ema', 'Readequação em Quadra Poliesportiva', 'R. Antonio Pires de Campos, 98 - Vila Ema', 20, NULL, 'Vila Prudente ', -23.5925222, -46.5387365, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5925222,
    longitude = -46.5387365;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('342', 'CEU / EMEI - Jaçanã', 'Readequação em Quadra Poliesportiva', 'R. Francisca Espósito Tonetti, 105 - Guapira', 20, NULL, 'Jaçanã / Tremembé', -23.4573769, -46.5838452, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4573769,
    longitude = -46.5838452;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('343', 'CEU / EMEF - Jaçanã', 'Readequação em Quadra Poliesportiva', 'R. Francisca Espósito Tonetti, 105 - Guapira', 20, NULL, 'Jaçanã / Tremembé', -23.4573769, -46.5838452, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4573769,
    longitude = -46.5838452;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('344', 'EMEI - Eduardo Carlos Pereira', 'Readequação em Quadra Poliesportiva', 'R. André Fonseca, 40 - Vila Maria Alta', 20, NULL, 'Vila Maria / Vila Guilherme', -23.500074, -46.5907583, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.500074,
    longitude = -46.5907583;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('345', 'EMEI - Ana Neri', 'Readequação em Quadra Poliesportiva', 'R. soldado Albino Cesar, 25 - Parque Novo Mundo', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5217132, -46.5662608, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5217132,
    longitude = -46.5662608;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('346', 'EMEI - Pedro Álvares Cabral Moraes, Prof.', 'Readequação em Quadra Poliesportiva', 'R. Leonor Fernandes C. Zacharias, 2150 - V. Guilherme', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5211863, -46.6075865, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5211863,
    longitude = -46.6075865;