INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1702', 'EMEI - Raul Joviano do Amaral', 'Readequação Predial', 'Rua Valentino Fioranvanti, 128 - Jardim Rubilene - São Paulo - SP, 04475380', 20, NULL, 'Cidade Ademar ', -23.7030064, -46.6362184, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7030064,
    longitude = -46.6362184;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1703', 'EMEI - Virgílio Tavora', 'Readequação Predial', 'Rua Jose Mauro de Mendonça, 93 - Parque Doroteia - São Paulo - SP, 04475492', 20, NULL, 'Cidade Ademar ', -23.6989298, -46.6385611, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6989298,
    longitude = -46.6385611;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1704', 'EMEF - Antonio De Alcântara Machado', 'Readequação Predial', 'Rua Belgrado, 74 - Moinho Velho - São paulo - SP, 04285040', 20, NULL, 'Ipiranga ', -23.6125461, -46.6015308, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6125461,
    longitude = -46.6015308;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1705', 'EMEI - Cidade Do Sol', 'Readequação Predial', 'Rua artistas de Heliópolis, 35 - Cidade Nova Heliópolis - São Paulo - SP, 04236100', 20, NULL, 'Ipiranga ', -23.6140864, -46.5936414, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6140864,
    longitude = -46.5936414;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1706', 'EMEF - Jean Mermoz', 'Readequação Predial', 'Rua Correria de Lemos, 30 - Chacara Inglesa - São Paulo - SP, 04140000', 20, NULL, 'Vila Mariana ', -23.6082389, -46.6367627, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6082389,
    longitude = -46.6367627;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1707', 'EMEI - Gleba do Pêssego', 'Readequação Predial', 'Rua Demeter, 200 - Gleba do Pessego - São Paulo - SP, 08265300', 20, NULL, 'Itaquera ', -23.5842841, -46.4518772, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5842841,
    longitude = -46.4518772;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1708', 'EMEI - João Rubens Marcelo ', 'Readequação Predial', 'Rua Azevedo e Brito, 395 - Vila Formosa - São Paulo - SP, 03366040', 20, NULL, 'Aricanduva ', -23.5680719, -46.5338955, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5680719,
    longitude = -46.5338955;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1709', 'EMEI - José Duarte', 'Readequação Predial', 'Rua Dias Coelho, 97 - Cidade Lider - São Paulo - SP, 08280360', 20, NULL, 'Itaquera ', -23.5576079, -46.4746671, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5576079,
    longitude = -46.4746671;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1710', 'EMEI - Najla Curi Izar', 'Readequação Predial', 'Avenida Paulo Gracindo, 53 - Conj.Habit.Fazenda do Carmo - São Paulo - SP, 08421520', 20, NULL, 'Itaquera ', -23.5677499, -46.4259003, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5677499,
    longitude = -46.4259003;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1711', 'EMEI - Professora Neyl Gomes Martin', 'Readequação Predial', 'Rua Miguel Bastos Soares, 275 - Jardim Catarina - São Paulo - SP, 03910000', 20, NULL, 'Aricanduva ', -23.583773, -46.5169671, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583773,
    longitude = -46.5169671;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1712', 'EMEI - Ronald De Carvalho', 'Readequação Predial', 'Rua Lincoln Junqueira, 590 - jardim São Pedro - São Paulo - SP, 08420660', 20, NULL, 'Itaquera ', -23.5461033, -46.4327351, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5461033,
    longitude = -46.4327351;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1713', 'EMEF - Roquette Pinto', 'Readequação Predial', 'Rua Professora Alzira de Oliveira Gilioli, 32 - Jardim Nice - São Paulo - SP, 03905090', 20, NULL, 'Aricanduva ', -23.5838087, -46.5168825, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5838087,
    longitude = -46.5168825;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1714', 'EMEI - Cidade Fernão Dias', 'Readequação Predial', 'Rua do Bandolim, 27 - Jardim Julieta - São Paulo - SP, 02161080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.4897171, -46.5690508, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4897171,
    longitude = -46.5690508;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1715', 'EMEI - Aviador Edu Chaves', 'Readequação Predial', 'Avenida Edu Chaves, 1561 - Parque Edu - São Paulo - SP, 02229001', 20, NULL, 'Jaçanã / Tremembé', -23.4805979, -46.5669004, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4805979,
    longitude = -46.5669004;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1716', 'EMEI - Professor Enio Correa', 'Readequação Predial', 'Avenida Basileia, 80 - Lauzane Paulista - São Paulo - SP, 02440060', 20, NULL, 'Santana / Tucuruvi', -23.4771575, -46.6468719, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4771575,
    longitude = -46.6468719;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1717', 'EMEF - Professora Esmeralda Salles Pereira Ramos', 'Readequação Predial', 'Rua Maria Amalia Lopes Azevedo, 2167 - Jardim Yara - São Paulo - SP, 02350002', 20, NULL, 'Jaçanã / Tremembé', -23.4578928, -46.6046974, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4578928,
    longitude = -46.6046974;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1718', 'EMEF - Firmino Tibúrcio da Costa', 'Readequação Predial', 'Rua Pedro Morcilla Filho, 578 - Cidade Patriarca - São Paulo - SP, 03546010', 20, NULL, 'Penha ', -23.5381168, -46.5097266, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5381168,
    longitude = -46.5097266;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1719', 'EMEI - Professora Irene Favret Lopes', 'Readequação Predial', 'Rua Jarinu, 640 - Cidade Mãe do Ceu - São Paulo - SP, 03306000', 20, NULL, 'Mooca ', -23.5460132, -46.5753946, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5460132,
    longitude = -46.5753946;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1720', 'EMEI - João Mendonça Falcão', 'Readequação Predial', 'Rau Coronel Mursa, 167 - Brás - São Paulo - SP, 03043050', 20, NULL, 'Mooca ', -23.5486581, -46.616667, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5486581,
    longitude = -46.616667;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1721', 'EMEF - Professora Alice Meireles Reis, Profª', 'Readequação Predial', 'Avenida Elísio Teixeira Leite, s/n - Sítio Morro Grande - São Paulo - SP - 02810000', 20, NULL, 'Freguesia / Brasilândia', -23.4675694, -46.7098527, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4675694,
    longitude = -46.7098527;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1722', 'EMEI - Antonio Munhoz Bonilha', 'Readequação Predial', 'Rua Vicente Antonio de Oliveira, 668 - Vila Mirante - São Paulo - SP, 02955080', 20, NULL, 'Pirituba / Jaraguá', -23.4680521, -46.7214475, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4680521,
    longitude = -46.7214475;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1723', 'EMEI - Padre Charbonneau', 'Readequação Predial', 'Rua Fábio de Almeida Magalhães, 95 - Jardim Santo Elias - São Paulo - SP, 05135370', 20, NULL, 'Pirituba / Jaraguá', -23.4964934, -46.7500224, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4964934,
    longitude = -46.7500224;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1724', 'EMEI  - Professor Clemente Segundo Pinho', 'Readequação Predial', 'Rua Virginia Galile, 100 - Jardim Ipanema - São paulo - SP, 05187060', 20, NULL, 'Pirituba / Jaraguá', -23.44348, -46.7506064, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.44348,
    longitude = -46.7506064;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1725', 'EMEF - Professora Eliane Benute Lessa Ayres Gonçalves', 'Readequação Predial', 'Avenida Raimundo Pereira de Magalhães, 12298 - Jardim Maril - São Paulo - SP< 02989095', 20, NULL, 'Pirituba / Jaraguá', -23.4719627, -46.72491, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4719627,
    longitude = -46.72491;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1726', 'EMEF - Professor Gabriel Prestes', 'Readequação Predial', 'Rua Carlos da Cunha Mattos, 134 - Chacará Inglesa = São Paulo - SP, 05140040', 20, NULL, 'Pirituba / Jaraguá', -23.4890331, -46.7265224, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4890331,
    longitude = -46.7265224;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1727', 'EMEF - Brigadeiro Henrique Raymundo Dyott Fontenelle', 'Readequação Predial', 'Rua Nossa Senhora da Conceição, 384 - Jaragua - São Paulo - SP, 05181280', 20, NULL, 'Pirituba / Jaraguá', -23.4556844, -46.7432717, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4556844,
    longitude = -46.7432717;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1728', 'EMEF - Professor Jairo De Almeida', 'Readequação Predial', 'Rua Recanto dos Humildes, s/n - Conj.Habit.Recanto dos Humildes - São Paulo - SP, 05209000', 20, NULL, 'Perus ', -23.414019, -46.750806, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.414019,
    longitude = -46.750806;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1729', 'CEI Anglicana Morumbi', 'Ampliação Unidade Educacional', 'R. Dr. José Pedro de Carvalho Lima - Jardim Parque Morumbi', 20, NULL, 'Campo Limpo ', -23.6223402, -46.7290238, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6223402,
    longitude = -46.7290238;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1730', 'EMEF - João da Silva', 'Manutenção em Unidades Educacionais', 'R. Conquista Popular, S/N ', 20, NULL, 'Capela do Socorro ', -23.760244, -46.679545, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.760244,
    longitude = -46.679545;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1731', 'CEMEI Setor 4201 - Rua Antonio Cardoso Nogueira', 'Construção Unidade Educacional', 'Rua Antonio Cardoso Nogueira', 20, NULL, 'Pirituba / Jaraguá', -23.457628, -46.755429, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.457628,
    longitude = -46.755429;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1732', 'EMEF Setor 8104 - Rua Simão de Abreu x Rua Ushikichi Kamiya x Estrada da Cachoeira', 'Construção Unidade Educacional', 'Rua Simão de Abreu x Rua Ushikichi Kamiya x Estrada da Cachoeira', 20, NULL, 'Jaçanã / Tremembé', -23.438276, -46.585624, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.438276,
    longitude = -46.585624;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1733', 'EMEI Setor 6803 - Rua Manoel Salgado', 'Construção Unidade Educacional', 'Rua Manoel Salgado', 20, NULL, 'Ipiranga ', -23.644566, -46.602315, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644566,
    longitude = -46.602315;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1734', 'CEMEI - Rua Júlio Colaço com a Rua Moisés Marx', 'Construção Unidade Educacional', 'Rua Júlio Colaço com a Rua Moisés Marx', 20, NULL, 'Penha ', -23.537996, -46.542628, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.537996,
    longitude = -46.542628;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1735', 'EMEF Setor 5804 - Rua Dr. José Silvio de Camargo - Cidade Ademar São Paulo', 'Construção Unidade Educacional', 'Rua Dr. José Silvio de Camargo - Cidade Ademar São Paulo', 20, NULL, 'Cidade Ademar ', -23.708701, -46.630899, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.708701,
    longitude = -46.630899;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1736', 'EMEI - Rua Kurt Engelhart', 'Construção Unidade Educacional', 'Rua Kurt Engelhart', 20, NULL, 'Ipiranga ', -23.634276, -46.601392, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634276,
    longitude = -46.601392;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1737', 'EMEI - Rua Francisco de Paula Bonilha x Rua Pedro de Velasco', 'Construção Unidade Educacional', 'Rua Francisco de Paula Bonilha x Rua Pedro de Velasco', 20, NULL, 'Freguesia / Brasilândia', -23.468101, -46.70524, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.468101,
    longitude = -46.70524;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1738', 'EMEI - Lote 1802 - Rua Mutuipe x Rua Canutama x Rua Riacho da Cruz', 'Construção Unidade Educacional', 'Rua Mutuipe x Rua Canutama x Rua Riacho da Cruz', 20, NULL, 'Penha ', -23.498167, -46.498289, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.498167,
    longitude = -46.498289;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1739', 'EMEI Lote 4403 - Rua José Nunes dos Santos', 'Construção Unidade Educacional', 'Rua José Nunes dos Santos', 20, NULL, 'São Miguel Paulista ', -23.486644, -46.427632, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.486644,
    longitude = -46.427632;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1740', 'CEI - Canindé ', 'Manutenção Unidades Educacionais', ' R. Carnot, 950 - Canindé, São Paulo - SP, 03032-030', 20, NULL, 'Mooca ', -23.5263171, -46.6214105, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5263171,
    longitude = -46.6214105;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1741', 'CEU - Água Azul - Professor Paulo Renato Costa Souza', 'Manutenção Unidades Educacionais', 'Av. dos Metalúrgicos, 1262 - Cidade Tiradentes, São Paulo - SP, 08471-000', 20, NULL, 'Cidade Tiradentes ', -23.5942754, -46.4064907, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5942754,
    longitude = -46.4064907;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1742', 'CEU - Coreto de Taipas', 'Manutenção Unidades Educacionais', 'Rua Joao Amado Coutinho, 240 - Conjunto Residencial Elisio Teixeira Lei, 02815-000', 20, NULL, 'Pirituba / Jaraguá', -23.4479684, -46.7150316, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4479684,
    longitude = -46.7150316;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1743', 'CEU - Freguesia - Esperança Garcia', 'Manutenção Unidades Educacionais', 'Rua Jacutiba, 167 - Parque São Luis - CEP: 02832240', 20, NULL, 'Freguesia / Brasilândia', -23.483422, -46.693486, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.483422,
    longitude = -46.693486;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1744', 'CEU - Horizonte Azul - Artur Alvim', 'Manutenção Unidades Educacionais', 'Av. Sylvio Torres, 295 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-010', 20, NULL, 'Penha ', -23.5526253, -46.4877258, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5526253,
    longitude = -46.4877258;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1745', 'CEU - Inácio Monteiro', 'Manutenção Unidades Educacionais', 'R. Barão Barroso do Amazonas, s/n - Conj. Hab. Inacio Monteiro, São Paulo - SP, 08472-721', 20, NULL, 'Cidade Tiradentes ', -23.5685606, -46.4109153, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5685606,
    longitude = -46.4109153;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1746', 'CEU - José Bonifácio - Jardim São Pedro', 'Manutenção Unidades Educacionais', 'Rua Professora Lucila Cerqueira, 194 - Jardim Sao Pedro, São Paulo - SP, 08420-690', 20, NULL, 'Itaquera ', -23.54706, -46.4278376, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54706,
    longitude = -46.4278376;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1747', 'CEU - Monte Serrat - Carrão', 'Manutenção Unidades Educacionais', 'Rua Monte Serrat, 380 - Tatuapé, São Paulo - SP, 03312-000', 20, NULL, 'Mooca ', -23.540882, -46.5625637, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.540882,
    longitude = -46.5625637;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1748', 'CEU - Parque do Carmo - João Cândido - Almirante Negrão', 'Manutenção Unidades Educacionais', 'R. Guerra de Aguiar, 63-237 - Jardim Nossa Sra. do Carmo, São Paulo - SP, 08270-000', 20, NULL, 'Itaquera ', -23.57359, -46.47991, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57359,
    longitude = -46.47991;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1749', 'CEU - Pinheirinho D´Água', 'Manutenção Unidades Educacionais', 'Rua Camillo Zanotti - Jaragua, São Paulo - SP, 02998-080', 20, NULL, 'Pirituba / Jaraguá', -23.4380499, -46.7322029, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4380499,
    longitude = -46.7322029;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1750', 'CEU - São Miguel - Luiz Melodia', 'Manutenção Unidades Educacionais', 'R. José Ferreira Crespo, 471 - Jardim Sao Vicente, São Paulo - SP, 08021-480', 20, NULL, 'São Miguel Paulista ', -23.49929, -46.42972, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.49929,
    longitude = -46.42972;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1751', 'CEU - Sapopemba', 'Manutenção Unidades Educacionais', 'Rua Manuel Quirino De Mattos , S/N - Jardim Sapopemba - CEP: 05273140', 20, NULL, 'Sapopemba', -23.6088372, -46.49362, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6088372,
    longitude = -46.49362;