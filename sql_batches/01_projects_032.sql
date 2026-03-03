INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1903', 'EMEI - Adalberto Panzan Dr. ', 'Manutenção Unidades Educacionais', 'Rua Luisa Sarazim, 29 - Jardim Bandeirante (Sao Rafael), São Paulo - SP, 08372-100', 20, NULL, 'São Mateus ', -23.6050763, -46.4349446, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6050763,
    longitude = -46.4349446;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1904', 'EMEI - Gina De Martino Dr. ', 'Manutenção Unidades Educacionais', 'Praça Dona Joana, 111 - Vila Vitorio Mazzei, São Paulo - SP, 02409-040', 20, NULL, 'Santana / Tucuruvi', -23.4778204, -46.626763, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4778204,
    longitude = -46.626763;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1905', 'EMEI - Guilherme Rudge', 'Manutenção Unidades Educacionais', 'Praça Maj. Guilherme Rudge, 128 - Belenzinho, São Paulo - SP, 03014-020', 20, NULL, 'Mooca ', -23.5377545, -46.5891154, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5377545,
    longitude = -46.5891154;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1906', 'EMEI - Iguatemi', 'Manutenção Unidades Educacionais', 'R. Tauro, 1 - Terceira Divisão de Interlagos, São Paulo - SP, 08381-770', 20, NULL, 'São Mateus ', -23.6125326, -46.4232948, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6125326,
    longitude = -46.4232948;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1907', 'EMEI - Leila Diniz', 'Manutenção Unidades Educacionais', 'Rua Peroba-Rosa, 13 - Jardim Miragaia, São Paulo - SP, 08161-310', 20, NULL, 'Itaim Paulista ', -23.5055345, -46.4165169, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5055345,
    longitude = -46.4165169;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1908', 'EMEI - Margareth De Fatima Marques De Azevedo', 'Manutenção Unidades Educacionais', 'R. Augusto Rodrigues, 262 - Jardim Fontalis, São Paulo - SP, 02360-010', 20, NULL, 'Jaçanã / Tremembé', -23.4379266, -46.5770638, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4379266,
    longitude = -46.5770638;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1909', 'EMEI - Margarida Maria Alves', 'Manutenção Unidades Educacionais', 'Rua Santo Rizzo, 10 - Cidade Tiradentes, São Paulo - SP, 08470-250', 20, NULL, 'Cidade Tiradentes ', -23.5909391, -46.4073578, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5909391,
    longitude = -46.4073578;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1910', 'EMEI - Oduvaldo Viana Filho', 'Manutenção Unidades Educacionais', 'R. Utaro Kanai, 202 - Conj. Hab. Juscelino Kubitschek, São Paulo - SP, 08465-000', 20, NULL, 'Guaianazes ', -23.5658611, -46.3995407, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5658611,
    longitude = -46.3995407;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1911', 'EMEI - Padre Anchieta', 'Manutenção Unidades Educacionais', 'R. Maria Cândida, 1592 - Vila Guilherme, São Paulo - SP, 02071-002', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5070925, -46.6001304, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5070925,
    longitude = -46.6001304;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1912', 'EMEI - Parque Santa Rita I', 'Manutenção Unidades Educacionais', 'Av. Fernando Figueiredo Lins, S/N - Parque Santa Rita, São Paulo - SP, 08150-040', 20, NULL, 'Itaim Paulista ', -23.5108324, -46.4173899, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5108324,
    longitude = -46.4173899;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1913', 'EMEI - Janio Quadros Pres. ', 'Manutenção Unidades Educacionais', 'R. Canto do Engenho, 240 - Parque Casa de Pedra, São Paulo - SP, 02322-210', 20, NULL, 'Jaçanã / Tremembé', -23.4481311, -46.5966713, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4481311,
    longitude = -46.5966713;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1914', 'EMEI - Lourenco Filho Profº', 'Manutenção Unidades Educacionais', 'R. Dom Luís Felipe de Orleans, 1062 - Vila Maria Baixa, São Paulo - SP, 02118-001', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5191096, -46.5864853, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5191096,
    longitude = -46.5864853;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1915', 'EMEI - Doracil Dina Benício Profª', 'Manutenção Unidades Educacionais', 'R. Big Boys, 365 - Jardim Bartira, São Paulo - SP, 08152-100', 20, NULL, 'Itaim Paulista ', -23.5129623, -46.402838, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5129623,
    longitude = -46.402838;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1916', 'EMEI - Eudoxia De Barros Profª', 'Manutenção Unidades Educacionais', 'Rua Sônia Margy, 246 - Parque Casa de Pedra, São Paulo - SP, 02351-000', 20, NULL, 'Jaçanã / Tremembé', -23.4551173, -46.6001776, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4551173,
    longitude = -46.6001776;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1917', 'EMEI - Sarita Camargo Profª', 'Manutenção Unidades Educacionais', 'R. Caiapós, 148 - Vila Anastácio, São Paulo - SP, 05094-000', 20, NULL, 'Lapa ', -23.5116798, -46.7198276, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5116798,
    longitude = -46.7198276;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1918', 'EMEI - Roberto Victor Cordeiro', 'Manutenção Unidades Educacionais', 'Av. Sylvio Torres, 349 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-010', 20, NULL, 'Penha ', -23.5523149, -46.487211, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5523149,
    longitude = -46.487211;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1919', 'EMEI - Santos Dumont', 'Manutenção Unidades Educacionais', 'R. Diana, 250 - Pompeia, São Paulo - SP, 05019-000', 20, NULL, 'Lapa ', -23.5306425, -46.6798595, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5306425,
    longitude = -46.6798595;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1920', 'EMEI - Silvio Romero', 'Manutenção Unidades Educacionais', 'São José, 1 - Maranhão, São Paulo - SP, 03089-010', 20, NULL, 'Mooca ', -23.5288951, -46.5589404, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5288951,
    longitude = -46.5589404;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1921', 'EMEI - Wilson Reis Santos', 'Manutenção Unidades Educacionais', 'Rua Francisco de Soutomaior, 14 - Jardim Lourdes, São Paulo - SP, 08452-430', 20, NULL, 'Guaianazes ', -23.5276354, -46.3928941, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5276354,
    longitude = -46.3928941;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1922', 'EMEI - Zélia Gattai', 'Manutenção Unidades Educacionais', 'Rua Henrique Salvatori, 21 - Conj. City Jaragua, São Paulo - SP, 02998-260', 20, NULL, 'Pirituba / Jaraguá', -23.4368137, -46.7366821, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4368137,
    longitude = -46.7366821;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1923', 'Gerenciamento - Programa Educação', 'Serviços de Gerenciamento do Programa Educação (inclui contratos não passíveis de separar por empreendimentos)', 'rua quinze de novembro', 20, NULL, 'SÉ', -23.547776, -46.634216, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547776,
    longitude = -46.634216;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1924', 'CEI - Indireta Santa Monica', 'manutenção Unidades Educacionais', 'Rua Santa Albina, S/N - Jardim Santa Monica, 05171-140', 20, NULL, 'Pirituba / Jaraguá', -23.48021, -46.748631, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48021,
    longitude = -46.748631;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1925', 'CEI - Direta Vereador Cid Franco', 'manutenção Unidades Educacionais', 'AURELIO BELOTTI JUNIOR, 80 JARDIM SAMARA. 05759-210', 20, NULL, 'Campo Limpo ', -23.631472, -46.763046, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.631472,
    longitude = -46.763046;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1926', 'CEI - Direta Jardim Souza', 'manutenção Unidades Educacionais', 'FRANCISCO SOBREIRA DA SILVA, S/N JARDIM SOUZA. 04917-120', 20, NULL, 'M´Boi Mirim', -23.689281, -46.746822, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.689281,
    longitude = -46.746822;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1927', 'EMEF - Jornalista Millor Fernandes', 'manutenção Unidades Educacionais', 'R. Francisco Soares, 487 - Parque Regina, 05774-300', 20, NULL, 'Campo Limpo ', -23.634252, -46.749004, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634252,
    longitude = -46.749004;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1928', 'CEI - Direta Parque Santa Margarida', 'manutenção Unidades Educacionais', 'R. Capão Redondo, 80 - Jardim Santa Margarida, 04931-100', 20, NULL, 'M´Boi Mirim', -23.683106, -46.756742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.683106,
    longitude = -46.756742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1929', 'EMEF - Terezinha Mota de Figueiredo', 'manutenção Unidades Educacionais', 'R. Cantorias Paulistas, 20 - Conj. Hab. Jardim Sao Bento, 05886-490', 20, NULL, 'Campo Limpo ', -23.680442, -46.795019, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.680442,
    longitude = -46.795019;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1930', 'CEI - Indireta Conjunto Habitacional Itaquera IV', 'manutenção Unidades Educacionais', 'CASA NO CAMPO, 10 AO LADO DA EMEF AGUA. CONJUNTO RESIDENCIAL JOSE BONIFACIO. 08257-050', 20, NULL, 'Itaquera ', -23.554308, -46.430019, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.554308,
    longitude = -46.430019;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1931', 'CEI - Direta Padre Elias Pereira De Melo', 'manutenção Unidades Educacionais', 'MANDASSAIA, 95 CIDADE ANTONIO ESTEVAO DE CARVALHO. 08223-120', 20, NULL, 'Itaquera ', -23.534318, -46.471961, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534318,
    longitude = -46.471961;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1932', 'CEI - Direta Jardim São Pedro', 'manutenção Unidades Educacionais', 'LUIS MATEUS, 820 JARDIM SAO PEDRO. 08420-750', 20, NULL, 'Itaquera ', -23.54953, -46.426067, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54953,
    longitude = -46.426067;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1933', 'CEI - Direta Maria Aparecida Siqueira Campos', 'manutenção Unidades Educacionais', 'ANTONIO LOMBARDO, 56 JARDIM SANTA TEREZINHA ZONA LESTE. 03572-230', 20, NULL, 'Itaquera ', -23.573482, -46.500018, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.573482,
    longitude = -46.500018;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1934', 'CEI - Direta Sao Jorge Arpoador', 'manutenção Unidades Educacionais', 'EUDORO LINCOLN BERLINCK, 114 JARDIM ARPOADOR. 05565-200', 20, NULL, 'Butantã ', -23.595185, -46.790125, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595185,
    longitude = -46.790125;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1935', 'EMEI - Aurelio Buarque de Holanda Ferreira', 'manutenção Unidades Educacionais', 'DOUTOR ARMANDO FAJARDO, 400 JARDIM SAO BERNARDO. 04844-590', 20, NULL, NULL, -23.756329, -46.702929, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.756329,
    longitude = -46.702929;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1939', 'EMEF - Bartolomeu Campos de Queiros', 'manutenção Unidades Educacionais', 'ARQUITETO VILANOVA ARTIGAS, 1471 PREDIO ESCOLAR PROPR. CONJUNTO HABITACIONAL TEOTONIO VILELA. 03928-', 20, NULL, NULL, -23.6022437, -46.5032556, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6022437,
    longitude = -46.5032556;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1941', 'CEI - Indireta Cidade A e Carvalho II', 'manutenção Unidades Educacionais', 'RAIMUNDO GONCALVES FERREIRA, 140 JARDIM AURORA ZONA LESTE. 08225-410', 20, NULL, 'Itaquera ', -23.5308139, -46.4648065, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5308139,
    longitude = -46.4648065;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1942', 'CEI - Indireta Conjunto Habitacional Padre Manoel de Paiva', 'manutenção Unidades Educacionais', 'ESTEFANO FILIPINI, 105 CONJUNTO HABITACIONAL PADRE MANOEL DE PA. 03591-150', 20, NULL, 'Penha ', -23.5520318, -46.4817896, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5520318,
    longitude = -46.4817896;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1943', 'CEI - Indireta Marta Terezinha Godinho', 'manutenção Unidades Educacionais', 'BATUIRA DO CAMPO, 49 ERMELINO MATARAZZO. 03828-000', 20, NULL, 'Penha ', -23.4844128, -46.4983205, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4844128,
    longitude = -46.4983205;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1944', 'CEI - Direta Balneario Mar Paulista', 'manutenção Unidades Educacionais', 'R. Matsuichi Wada, S/N - Balneário Mar Paulista, 04463-060', 20, NULL, 'Cidade Ademar ', -23.6960914, -46.661711, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6960914,
    longitude = -46.661711;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1945', 'CIEJA - Professor Francisco Hernani Alverne Facundo Leite', 'manutenção Unidades Educacionais', 'R. Francisco Ramos, R. ,132 - Jardim Consorcio, 04437-060', 20, NULL, 'Santo Amaro ', -23.6716408, -46.675901, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6716408,
    longitude = -46.675901;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1946', 'EMEF - Marcilio Dias', 'manutenção Unidades Educacionais', 'Rua RIBEIRO JUNQUEIRA, 259', 20, NULL, 'Casa Verde ', -23.478894, -46.653984, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.478894,
    longitude = -46.653984;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1947', 'EMEI - Luiz Grassman – Setor 4601', 'Construção Unidade Educacional', 'Rua Luis Grassman', 20, NULL, 'M´Boi Mirim', -23.644492, -46.732259, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644492,
    longitude = -46.732259;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1948', 'EMEF - Luiz Grassman – Setor 4601', 'Construção Unidade Educacional', 'Rua Luis Grassman', 20, NULL, 'M´Boi Mirim', -23.644492, -46.732259, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644492,
    longitude = -46.732259;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1949', 'CEI - Cesar Pena Ramos', 'Manutenção Unidades Educacionais', 'Rua César Penna Ramos', 20, NULL, 'Casa Verde ', -23.4895959, -46.6669747, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4895959,
    longitude = -46.6669747;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1950', 'CEI Ind - Adhemar Ferreira Castilho, Prof', 'Manutenção Unidades Educacionais', 'R. Serra Verde, 215 - Vila Silvia, São Paulo - SP, 03821-230', 20, NULL, 'Penha ', -23.4923412, -46.5024164, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923412,
    longitude = -46.5024164;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1951', 'EMEF - Campo Belo - Rua Adão Cabral Neto, 38', 'Manutenção Unidades Educacionais', 'R. Adão Cabral Neto, 38 - Recanto Campo Belo, São Paulo - SP, 04880-275', 20, NULL, 'Parelheiros ', -23.7952872, -46.7404123, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7952872,
    longitude = -46.7404123;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1952', 'EMEI - Aluisio De Almeida', 'Manutenção Unidades Educacionais', 'Rua Noronha Santos, 252 - Jardim Monte Alegre, São Paulo - SP, 05546-050', 20, NULL, 'Butantã ', -23.5870798, -46.7680368, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5870798,
    longitude = -46.7680368;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1953', 'CEI DIRET - Anibal Di Francia', 'Manutenção Unidades Educacionais', 'R. Cap. Francisco Teixeira Nogueira, 383 - Água Branca, São Paulo - SP, 05037-030', 20, NULL, 'Lapa ', -23.5114854, -46.6863483, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5114854,
    longitude = -46.6863483;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1954', 'CEI DIRET - Anton Meroth, Pe', 'Manutenção Unidades Educacionais', 'R. Ganímedes, 27 - Cidade Satelite Santa Barbara, São Paulo - SP, 08330-385', 20, NULL, 'São Mateus ', -23.6074926, -46.4594707, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6074926,
    longitude = -46.4594707;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1955', 'CEI Ind - Arca do Saber', 'Manutenção Unidades Educacionais', 'R. Arraial de Santa Bárbara, 1018 - Jardim Pedro José Nunes, São Paulo - SP, 08061-360', 20, NULL, 'São Miguel Paulista ', -23.5041177, -46.4706951, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5041177,
    longitude = -46.4706951;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1956', 'CEI Ind - Bela Vista', 'Manutenção Unidades Educacionais', 'R. Humaitá, 500 - Bela Vista, São Paulo - SP, 01321-010', 20, NULL, 'SÉ', -23.5572022, -46.642004, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5572022,
    longitude = -46.642004;