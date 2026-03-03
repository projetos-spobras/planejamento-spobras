INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1957', 'CEI Ind - Cachoeira de Sao Benedito', 'Manutenção Unidades Educacionais', 'R. Cachoeira São Benedito, 113 - Vila Sao Nicolau, São Paulo - SP, 03254-390', 20, NULL, 'Vila Prudente ', -23.6130042, -46.5360018, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6130042, -- Use merged value
    longitude = -46.5360018, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1958', 'CEI Ind - Carrão I', 'Manutenção Unidades Educacionais', 'R. Dr. Coryntho Baldoíno Costa, 450 - Vila Zilda, São Paulo - SP, 03069-070', 20, NULL, 'Mooca ', -23.5363097, -46.5629775, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5363097, -- Use merged value
    longitude = -46.5629775, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1959', 'CEI Ind - CDHU Jacui A', 'Manutenção Unidades Educacionais', 'Rua Japichaua, 313 - Jardim Matarazzo, São Paulo - SP, 03813-310', 20, NULL, 'Ermelino Matarazzo ', -23.4816018, -46.4704987, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4816018, -- Use merged value
    longitude = -46.4704987, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1960', 'CEI DIRET - Celia Peres Sunhiga', 'Manutenção Unidades Educacionais', 'R. David de Melo Lopes, 141 - Vila Cardoso Franco, São Paulo - SP, 03978-070', 20, NULL, 'Sapopemba', -23.6195924, -46.5047994, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6195924, -- Use merged value
    longitude = -46.5047994, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1962', 'CEI DIRET - Cidade Pedro Jose Nunes', 'Manutenção Unidades Educacionais', 'Av. Mário Alves, 482 - Jardim Pedro José Nunes, São Paulo - SP, 08061-380', 20, NULL, 'São Miguel Paulista ', -23.5033643, -46.4673571, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5033643, -- Use merged value
    longitude = -46.4673571, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1963', 'CEI DIRET - Coryntho Baldoino Da Costa Filho, Ver', 'Manutenção Unidades Educacionais', 'Rua Júlio Parigot, 203 - Vila Antonieta, São Paulo - SP, 03478-000', 20, NULL, 'Aricanduva ', -23.56821, -46.515384, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56821, -- Use merged value
    longitude = -46.515384, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1964', 'CEI DIRET - Dominguinhos', 'Manutenção Unidades Educacionais', 'Parque Boa Esperança, São Paulo - SP, 08341-235', 20, NULL, 'São Mateus ', -23.6032393, -46.4518871, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6032393, -- Use merged value
    longitude = -46.4518871, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1965', 'CEI DIRET - Gabriel Nogueira De Quadros, Ver', 'Manutenção Unidades Educacionais', 'R. Lagoa Seca, 67 - Jardim Record, São Paulo - SP, 03462-100', 20, NULL, 'Aricanduva ', -23.5742142, -46.526451, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5742142, -- Use merged value
    longitude = -46.526451, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1966', 'CEI DIRET - Jardim Klein', 'Manutenção Unidades Educacionais', 'Jardim Boa Vista (Zona Oeste), São Paulo - SP, 05818-370', 20, NULL, 'M´Boi Mirim', -23.6731695, -46.7482645, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6731695, -- Use merged value
    longitude = -46.7482645, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1967', 'CEI DIRET - Jardim Nove de Julho', 'Manutenção Unidades Educacionais', ' R. Gomes de Melo, 42 - Jardim Nove de Julho, São Paulo - SP, 03951-070', 20, NULL, 'São Mateus ', -23.5865592, -46.4887714, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5865592, -- Use merged value
    longitude = -46.4887714, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1968', 'CEI DIRET - Jardim Santo André', 'Manutenção Unidades Educacionais', 'Av. dos Sertanistas, 790 - Jardim Santo Andre, São Paulo - SP, 08390-240', 20, NULL, 'São Mateus ', -23.6270471, -46.4458531, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6270471, -- Use merged value
    longitude = -46.4458531, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1969', 'CEI DIRET - João Bento de Carvalho', 'Manutenção Unidades Educacionais', 'R. Pedro de Mena, 291 - Jardim Marília, São Paulo - SP, 03579-270', 20, NULL, 'Itaquera ', -23.5630999, -46.4953515, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5630999, -- Use merged value
    longitude = -46.4953515, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1970', 'CEI Ind - Jose Vieira de Santana', 'Manutenção Unidades Educacionais', 'Av. Mendonça Drumond, 898 - Jardim Maringa, São Paulo - SP, 03524-030', 20, NULL, 'Penha ', -23.5528181, -46.517388, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5528181, -- Use merged value
    longitude = -46.517388, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1971', 'CEU EMEF - Maria Aparecida de Souza Campos, Profa', 'Manutenção Unidades Educacionais', 'R. Srg. Claudiner Evaristo Dias, 10 - Parque Santo Antônio, São Paulo - SP, 03385-150', 20, NULL, 'Aricanduva ', -23.5802737, -46.5243638, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5802737, -- Use merged value
    longitude = -46.5243638, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1972', 'CEI DIRET - Parque Savoy City', 'Manutenção Unidades Educacionais', 'R. Estevão Dias Vergara, 700 - Fazenda Aricanduva, São Paulo - SP, 08275-120', 20, NULL, 'Itaquera ', -23.5697695, -46.4798117, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5697695, -- Use merged value
    longitude = -46.4798117, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1973', 'CEI Ind - Sao Jose Operario', 'Manutenção Unidades Educacionais', 'R. Isidoro de Lara, 295 - Conj. Res. José Bonifácio, São Paulo - SP, 08253-250', 20, NULL, 'Itaquera ', -23.5456355, -46.4407724, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5456355, -- Use merged value
    longitude = -46.4407724, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1974', 'CEI Ind - Ventura Branco', 'Manutenção Unidades Educacionais', 'Rua Japichaua, 311 - Jardim Matarazzo, São Paulo - SP, 03813-310', 20, NULL, 'São Miguel Paulista ', -23.4847227, -46.4639942, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4847227, -- Use merged value
    longitude = -46.4639942, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1975', 'CEI Ind - Vovó Julia', 'Manutenção Unidades Educacionais', 'R. Novo Oriente do Piauí, 170 - Vila Silvia, São Paulo - SP, 03820-310', 20, NULL, 'Penha ', -23.4941641, -46.5036959, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4941641, -- Use merged value
    longitude = -46.5036959, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1976', 'CEI Ind - Wenceslau Guimarães', 'Manutenção Unidades Educacionais', 'Rua Wenceslau Guimarães, 521 - Parque Cisper, São Paulo - SP, 03823-000', 20, NULL, 'Ermelino Matarazzo ', -23.4892022, -46.4930729, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4892022, -- Use merged value
    longitude = -46.4930729, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1977', 'CEI DIRET - Zilda Arns Neumann, dra', 'Manutenção Unidades Educacionais', 'R. Barreiras do Piauí, 227-79 - Burgo Paulista, São Paulo - SP, 03681-010', 20, NULL, 'Ermelino Matarazzo ', -23.5209064, -46.4843471, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5209064, -- Use merged value
    longitude = -46.4843471, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1978', 'Gerenciamento - OAEs', 'Gerenciamento das Obras de Arte Especiais', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -23.5475305, -46.6342173, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5475305, -- Use merged value
    longitude = -46.6342173, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1979', 'Sede SPObras (Reformas, Manutenções, outros)', 'manutenções, Reformas e Outros serviços na Sede SPObras', 'Rua XV de Novembro, 165', 24, NULL, 'SÉ', -23.5475305, -46.6342173, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5475305, -- Use merged value
    longitude = -46.6342173, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1980', 'EMEI - Rua Antonio Antunes - Setor 3361', 'Construção Unidade Educacional', 'Rua Antonio Antunes', 20, NULL, 'Campo Limpo ', -23.6370201, -46.7724478, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6370201, -- Use merged value
    longitude = -46.7724478, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1981', 'EMEF Ernani Silva Bruno', 'Manutenção Unidades Educacionais ', 'R. Interativa, 100', 20, NULL, 'Pirituba / Jaraguá', -23.446383, -46.7093655, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.446383, -- Use merged value
    longitude = -46.7093655, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1982', 'EMEF - Rua David Perez - Residencial Espanha', 'Construção Unidade Educacional', 'Rua David Perez', 20, NULL, 'Cidade Ademar ', -23.7079405, -46.6555603, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7079405, -- Use merged value
    longitude = -46.6555603, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1983', 'CEI inidir - Jardim Helena I', 'manutenções, Reformas e Outros serviços na Sede SPObras', 'R. Kumaki Aoki, 1138 - Jardim Helena, São Paulo - SP, 08090-370', 20, NULL, 'São Miguel Paulista ', -23.4791193, -46.4181938, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4791193, -- Use merged value
    longitude = -46.4181938, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1984', 'CEI indir - Jorge Jones', 'Manutenção Unidades Educacionais ', 'R. Jorge Jones, 380 - Vila Curuçá Velha, São Paulo - SP, 08030-720', 20, NULL, 'Itaim Paulista ', -23.5056242, -46.4192527, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5056242, -- Use merged value
    longitude = -46.4192527, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1985', 'CEI diret - Marcos Melega, ver.', 'Manutenção Unidades Educacionais ', 'Rua Torres Florêncio e Rielli, 270 - Jardim Planalto, São Paulo - SP, 03984-050', 20, NULL, 'Sapopemba', -23.6073132, -46.5111858, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6073132, -- Use merged value
    longitude = -46.5111858, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1986', 'CEU Jardim Filhos da Terra', 'Construção Unidade Educacional', 'Travessa Igarapé Primavera, 92', 20, NULL, 'Jaçanã / Tremembé', -23.4541866, -46.5843754, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4541866, -- Use merged value
    longitude = -46.5843754, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1987', 'CEU - Cachoeirinha', 'Construção Unidade Educacional', 'Rua Santa Lucrécia de Aguiar, 443', 20, NULL, 'Casa Verde ', -23.4648623, -46.6603371, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4648623, -- Use merged value
    longitude = -46.6603371, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1988', 'CEU - Jd. Helena', 'Construção Unidade Educacional', 'Rua Manuel Barbosa dos Reis', 20, NULL, 'São Miguel Paulista ', -23.4914407, -46.3998832, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4914407, -- Use merged value
    longitude = -46.3998832, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1989', 'CEU Jd. Angela', 'Construção Unidade Educacional', 'Rua das Três Marias, 4', 20, NULL, 'M´Boi Mirim', -23.7022332, -46.7834737, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7022332, -- Use merged value
    longitude = -46.7834737, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1990', 'CEI Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.6170252, -46.5828309, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6170252, -- Use merged value
    longitude = -46.5828309, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1991', 'CEU Grajaú', 'Construção Unidade Educacional', 'Rua Dr Nuno Guerner de Almeida , s/n', 20, NULL, 'Capela do Socorro ', -23.7491305, -46.6802345, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7491305, -- Use merged value
    longitude = -46.6802345, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1992', 'CEI - Uso para cadastro de previsão ', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1993', 'EMEI - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1994', 'EMEF - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1995', 'CEU - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1996', 'DRE - Rua da Balsa', 'Construção Unidade Educacional', 'Rua da Balsa 331', 20, NULL, 'Freguesia / Brasilândia', -23.5060664, -46.6965523, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5060664, -- Use merged value
    longitude = -46.6965523, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1997', 'TESTE 01 - GEC', 'não utilizar', 'Rua XV de Novembro, 165', 22, NULL, NULL, -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1998', 'TESTE 02 - GEC', 'não utilizar', 'ITAQUERA', 22, NULL, NULL, -23.5396118, -46.4536545, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5396118, -- Use merged value
    longitude = -46.4536545, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1999', 'TESTE 03 - GEC', 'não utilizar', 'TUCURUVI', 22, NULL, NULL, -23.473904, -46.6108174, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.473904, -- Use merged value
    longitude = -46.6108174, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2000', 'Centro de Educação Infantil - Setor 1903', ' implantação do equipamento educacional Centro de Educação Infantil ', 'Rua Dr. Luís da Fonseca Galvão, 64', 20, NULL, 'Campo Limpo ', -23.6610167, -46.7672321, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6610167, -- Use merged value
    longitude = -46.7672321, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2001', 'Habitações de Interesse Social - HIS 41', 'COMPLEMENTAÇÃO E FINALIZAÇÃO DAS HABITAÇÕES DE INTERESSE SOCIAL', 'Rua Hildebrando Siqueira, números 488', 2, NULL, 'Jabaquara ', -23.660303, -46.6405232, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.660303, -- Use merged value
    longitude = -46.6405232, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2002', 'Habitações de Interesse Social - HIS 27', 'COMPLEMENTAÇÃO E FINALIZAÇÃO DAS HABITAÇÕES DE INTERESSE SOCIAL', 'Rua Hildebrando Siqueira, números 130', 2, NULL, 'Jabaquara ', -23.660303, -46.6405232, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.660303, -- Use merged value
    longitude = -46.6405232, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2003', 'Qualidade - Teste', 'Teste Qualidade', 'ru xv de novembro, 165', 7, NULL, NULL, -23.547778, -46.6341823, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778, -- Use merged value
    longitude = -46.6341823, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2006', 'Autódromo de Interlagos - 2024', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7033489, -46.7002579, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7033489, -- Use merged value
    longitude = -46.7002579, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2007', 'Calçadas - Viaduto do Chá, Entorno Theatro Municipal e Praça do Patriarca', 'Reforma dos pavimentos das calçadas e calçadões, implantação de sinalização turística e ambiental, melhorias no mobiliário urbano e iluminação, drenagem e valas técnicas para Telecom.', 'Viaduto do Chá', 23, NULL, 'SÉ', -23.5467184, -46.6377189, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5467184, -- Use merged value
    longitude = -46.6377189, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2008', 'Complexo Viário Ragueb Chohfi', 'IMPLANTAÇÃO COMPLEXO VIÁRIO RAGUEB CHOHFI', 'INTERSECÇÃO ENTRE A AVENIDA ARICANDUVA COM A AV. RAGUEB CHOHFI', 5, NULL, 'São Mateus ', -23.598443, -46.464389, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.598443, -- Use merged value
    longitude = -46.464389, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2009', 'CEU Sete Campos - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'Estrada do retiro nº 298', 20, NULL, 'Cidade Ademar ', -23.6955436, -46.6439871, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6955436, -- Use merged value
    longitude = -46.6439871, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2010', 'CEU Cachoeirinha - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'Rua Santa Lucrécia de Aguiar nº 443', 20, NULL, 'Casa Verde ', -23.4648623, -46.6603371, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4648623, -- Use merged value
    longitude = -46.6603371, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2011', 'Reservatório Freitas', 'Implantação de obras de drenagem - reservatório córrego Freitas', 'Rua Manuel Bordalo Pinheiro, 288', 18, NULL, 'M´Boi Mirim', -23.6593396, -46.7571208, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6593396, -- Use merged value
    longitude = -46.7571208, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2012', 'Túneis de Ligação av. do Estado x av. Cruzeiro do Sul x Rodoviária Tietê', 'Implantação de Passagem Av. Cruzeiro do Sul', 'Av. Tiradentes, 277', 5, NULL, 'SÉ', -23.534847, -46.63331, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534847, -- Use merged value
    longitude = -46.63331, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2013', 'Construção 6 Novos CEU''s', 'Construção 06 novos CEUS', '?', 20, NULL, 'SÉ', -23.570849, -46.563149, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570849, -- Use merged value
    longitude = -46.563149, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2014', 'Expansão do Circuito SPCINE nos CEU''s.', 'Implantação da Expansão do Circuito SPCINE nos CEU''s', '?', 24, NULL, 'SÉ', -23.570849, -46.563149, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570849, -- Use merged value
    longitude = -46.563149, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2015', 'Eixo Histórico Ipiranga', 'Requalificação urbana do eixo histórico do Ipiranga', 'Praça do Monumento, 200', 23, NULL, 'Ipiranga ', -23.580142, -46.610704, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.580142, -- Use merged value
    longitude = -46.610704, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2016', 'Requalificação Av. Bandeirantes - Luís Carlos Berrini', 'requalificação da Av. dos Bandeirantes e da Av. Eng. Luis Carlos Berrini até a saída da Av. Dr. Ricardo Jafet', 'Av. Bandeirantes,319', 5, NULL, 'Pinheiros ', -23.6003904, -46.6842116, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6003904, -- Use merged value
    longitude = -46.6842116, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2017', 'Requalificação Largo da Matriz', 'Requalificação Urbana do polo cultural, gastronômico e turístico do Largo da Matriz de Nossa Senhora do Ó.', 'Largo da Matriz de Nossa Senhora do Ó, 101', 23, NULL, 'Freguesia / Brasilândia', -23.5012109, -46.6979886, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5012109, -- Use merged value
    longitude = -46.6979886, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2018', 'Passarela Washington Luis x Rua Pirandello', 'Implantação de passarela - Avenida Washington Luis x Rua Pirandello', 'Rua Pirandello, 918', 5, NULL, 'Santo Amaro ', -23.634951, -46.674801, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634951, -- Use merged value
    longitude = -46.674801, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2019', 'Ligação Norte - Sul (Braz Leme x Estação da Luz)', 'Implantação de requalificação urbana Ligação Norte - Sul (Braz Leme x Estação da Luz)', 'R. Darzan, 1', 5, NULL, 'Santana / Tucuruvi', -23.5041636, -46.6263423, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5041636, -- Use merged value
    longitude = -46.6263423, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2020', 'Passagem em Desnível na Av do Estado', 'Requalificação urbana da região do Brás e da Zona Norte de/para Parque Dom Pedro II (centro) e Av. Cruzeiro do Sul (zona norte).', 'Av. do Estado, 48', 5, NULL, 'SÉ', -23.5430689, -46.6293929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5430689, -- Use merged value
    longitude = -46.6293929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2021', 'Gerenciamento do Programa de Mobilidade e de Requalificação', 'Gerenciamento do Programa de Mobilidade e de Requalificação', 'Rua XV de Novembro, 165', 5, NULL, 'SÉ', -23.54753, -46.634217, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54753, -- Use merged value
    longitude = -46.634217, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2022', 'Túnel Dr. Euryclides de Jesus Zerbini', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Dr. Euryclides de Jesus Zerbini', 16, NULL, 'Butantã ', -23.572692, -46.70468, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.572692, -- Use merged value
    longitude = -46.70468, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2023', 'Túnel Sebastião Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Sebastião Camargo', 16, NULL, 'Pinheiros ', -23.59042, -46.6902, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.59042, -- Use merged value
    longitude = -46.6902, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2024', 'Túnel Tribunal de Justiça - Ibirapuera Marginal', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça - Ibirapuera Marginal', 16, NULL, 'Pinheiros ', -23.585449, -46.671083, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585449, -- Use merged value
    longitude = -46.671083, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2025', 'Túnel Tribunal de Justiça (EMURB) Marginal - Ibirapuera', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça (EMURB) Marginal - Ibirapuera', 16, NULL, 'Pinheiros ', -23.585157, -46.670687, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585157, -- Use merged value
    longitude = -46.670687, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2026', 'Túnel Takeharu Agagawa (av. São Gabriel)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Takeharu Agagawa (asv. São Gabriel)', 16, NULL, 'Pinheiros ', -23.582521, -46.670423, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.582521, -- Use merged value
    longitude = -46.670423, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2027', 'Tunel Jornalista Fernando Vieira de Melo - Centro-Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Tunel Jornalista Fernando Vieira de Melo - Centro-Bairro', 16, NULL, 'Pinheiros ', -23.5711, -46.690925, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711, -- Use merged value
    longitude = -46.690925, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2028', 'Túnel Jornalista Fernando Vieira de Mello - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Fernando Vieira de Mello - Bairro - Centro', 16, NULL, 'Pinheiros ', -23.570876, -46.690682, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.570876, -- Use merged value
    longitude = -46.690682, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2029', 'Túnel Max Feffer - Centro - Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Max Feffer', 16, NULL, 'Pinheiros ', -23.583037, -46.686279, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583037, -- Use merged value
    longitude = -46.686279, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2030', 'Túnel Max Feffer - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Max Feffer', 16, NULL, 'Pinheiros ', -23.583018, -46.686279, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.583018, -- Use merged value
    longitude = -46.686279, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2031', 'Passagem Dirce Camargo', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Dirce Camargo', 16, NULL, 'Pinheiros ', -23.586491, -46.689778, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586491, -- Use merged value
    longitude = -46.689778, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2032', 'Túnel Maria Maluf Anchieta-Imigrantes', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Maria Maluf', 16, NULL, 'Ipiranga ', -23.6249, -46.614547, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6249, -- Use merged value
    longitude = -46.614547, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2033', 'Túnel Maria Maluf - Imigrantes-Anchieta', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Maria Maluf', 16, NULL, 'Ipiranga ', -23.6249, -46.614547, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6249, -- Use merged value
    longitude = -46.614547, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2034', 'Túnel Jornalista Odon Pereira - Itaquera', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Jornalista Odon Pereira - Itaquera', 16, NULL, 'Itaquera ', -23.541126, -46.46556, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.541126, -- Use merged value
    longitude = -46.46556, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2035', 'Túnel Paulo Autran', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Paulo Autran', 16, NULL, 'Santo Amaro ', -23.626744, -46.661314, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.626744, -- Use merged value
    longitude = -46.661314, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2036', 'Túnel Arieta Calfat Khoury Farah', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Arieta Calfat Khoury Farah', 16, NULL, 'Itaquera ', -23.543014, -46.469321, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543014, -- Use merged value
    longitude = -46.469321, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2037', 'Túnel Ayrton Senna (Bairro-Centro)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678, -- Use merged value
    longitude = -46.658433, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2038', 'Túnel Ayrton Senna (Centro-Bairro)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678, -- Use merged value
    longitude = -46.658433, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2039', 'Passagem Tom Jobim - Santana-Aeroporto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Tom Jobim - Santana-Aeroporto', 16, NULL, 'SÉ', -23.539336, -46.63377, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539336, -- Use merged value
    longitude = -46.63377, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2040', 'Passagem Tom Jobim - Aeroporto-Santana', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tom Jobim', 16, NULL, 'SÉ', -23.53934, -46.633735, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.53934, -- Use merged value
    longitude = -46.633735, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2041', 'Túnel José Roberto Fanganiello Melhem (Av. Paulista x Dr. Arnaldo)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel José Roberto Fanganiello Melhem', 16, NULL, 'SÉ', -23.556268, -46.662297, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556268, -- Use merged value
    longitude = -46.662297, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2042', 'Autódromo de Interlagos - 2025', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.703348, -46.700257, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.703348, -- Use merged value
    longitude = -46.700257, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2043', 'Passagem Subterrânea - Paulista - Rebouças', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Interligação Av. Paulista x Av. Rebouças', 16, NULL, 'SÉ', -23.556, -46.665733, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556, -- Use merged value
    longitude = -46.665733, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2044', 'Túnel Nove de Julho - Daher Cutait - Centro - Bairro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'SÉ', -23.560638, -46.655219, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.560638, -- Use merged value
    longitude = -46.655219, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2045', 'Túnel  Nove de Julho - Daher Cutait - Bairro - Centro', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'Pinheiros ', -23.564501, -46.657143, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.564501, -- Use merged value
    longitude = -46.657143, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2046', 'Túnel João Paulo II (Sob o Vale do Anhangabaú) Santana-Aeroporto', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.543706, -46.635753, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543706, -- Use merged value
    longitude = -46.635753, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2047', 'Túnel João Paulo II (Sob o Vale do Anhangabaú) Aeroporto-Santana', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.547071, -46.637853, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547071, -- Use merged value
    longitude = -46.637853, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2048', 'Pagssagem Subterrânea Noite Ilustrada (Paulista - Major Natanael)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Passagem Noite Ilustrada', 16, NULL, 'SÉ', -23.556086, -46.666379, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556086, -- Use merged value
    longitude = -46.666379, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2049', 'Túnel Mackenzie', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Estradas das Lágrimas sob a Anchieta', 16, NULL, 'Ipiranga ', -23.604815, -46.599572, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.604815, -- Use merged value
    longitude = -46.599572, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2050', 'Túnel Ayrton Senna', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Ayrton Senna', 16, NULL, 'Vila Mariana ', -23.586678, -46.658433, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.586678, -- Use merged value
    longitude = -46.658433, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2051', 'Túnel Tribunal de Justiça', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Túnel Tribunal de Justiça', 16, NULL, 'Pinheiros ', -23.585449, -46.671083, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.585449, -- Use merged value
    longitude = -46.671083, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2052', 'EMEI Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.617025, -46.58283, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617025, -- Use merged value
    longitude = -46.58283, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2053', 'EMEF Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.617025, -46.58283, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617025, -- Use merged value
    longitude = -46.58283, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2054', 'Centro TEA - Zona Leste', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Av. Pires do Rio, 3654', 24, NULL, 'Itaquera ', -23.528035, -46.447777, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.528035, -- Use merged value
    longitude = -46.447777, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2055', 'Centro TEA - Zona Sul', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Zona Sul', 24, NULL, 'Jabaquara ', -22.9549425, -43.1892443, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -22.9549425, -- Use merged value
    longitude = -43.1892443, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2056', 'Centro TEA - Zona Oeste', 'Construção de novas instalações do Centro de Atendimento de Pessoas com Transtorno Espectro Autista', 'Zona Oeste', 24, NULL, 'Butantã ', -23.571944, -46.700833, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.571944, -- Use merged value
    longitude = -46.700833, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2057', 'Túnel Nove de Julho - Daher Cutait', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. Nove de Julho sob a Av. Paulista', 16, NULL, 'Pinheiros ', -23.564501, -46.657143, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.564501, -- Use merged value
    longitude = -46.657143, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2058', 'ROMA - Av. Roberto Marinho ', 'Prolongamento da Av. Jornalista Roberto Marinho até a Rodovia dos Imigrantes, construção de um parque linear e habitações de interesse social', 'Av. Jornalista Roberto Marinho 4000, São Paulo', 2, NULL, 'Santo Amaro ', -23.637622, -46.663102, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.637622, -- Use merged value
    longitude = -46.663102, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2059', 'Ligação Viária Perus - Água Branca', 'Conexão entre distritos Lapa e Perus', 'água branca', 5, NULL, 'Lapa ', -23.5152526, -46.690828, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5152526, -- Use merged value
    longitude = -46.690828, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2060', 'Ligação Viária em Túnel - Centro - Morumbi', 'LIGAÇÃO EM TÚNEIS DA AV. 23 DE MAIO – FARIA LIMA – MORUMBI AV LINEU DE PAULA', 'Faria Lima', 5, NULL, 'Vila Mariana ', -23.58706, -46.66581, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58706, -- Use merged value
    longitude = -46.66581, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2061', 'Requalificação - Santana - Zona Norte', 'Requalificação - Santana - Zona Norte', 'Santana', 5, NULL, 'Santana / Tucuruvi', -23.514228, -46.636662, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.514228, -- Use merged value
    longitude = -46.636662, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2062', 'Eixo de Ligação - Hélio Pelegrino - Av. dos Bandeirantes', 'Eixo de Ligação - Hélio Pelegrino - Av. dos Bandeirantes', 'Av. Hélio Pelegrino', 5, NULL, 'Pinheiros ', -23.596743, -46.67959, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.596743, -- Use merged value
    longitude = -46.67959, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2063', 'ATA Recuperação Funcional OAE', 'Manutenções Em Lotes', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2064', 'Obras de Reforço Estrutural Fase 4 OAE', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2065', 'Inspeções Especiais Fase 5 (212 UE)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2066', 'Obra Estrutural - 9 OAES - Nota 1', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2067', 'ATA Galerias de Grande Porte', 'ATA Galerias de Grande Porte', 'Rua XV de Novembro, 165', 18, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2068', 'Obras de Recuperação Estrutural 9 Túneis', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2069', 'Pontes que Conectam 12 OAES', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2070', 'OAE - Rotineira / Funcionais - 1272', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2071', '206 OAEs Funcional', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2072', 'Túnel de Ligação - Pirituba / Villa-Lobos', 'Melhorias Viárias', 'Pirituba', 5, NULL, 'Pirituba / Jaraguá', -23.4791158, -46.7418047, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4791158, -- Use merged value
    longitude = -46.7418047, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2073', 'Casa Mulher Paulistana', '??', 'Praça da sé - SP', 24, NULL, 'SÉ', -23.5503099, -46.6342009, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5503099, -- Use merged value
    longitude = -46.6342009, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2074', 'Ligação Jabaquara - Zoológico - Vila Santa Luiza', 'Melhorias Viárias', 'Vila Santa Luzia - SP', 5, NULL, 'Jabaquara ', -23.6612844, -46.6102146, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6612844, -- Use merged value
    longitude = -46.6102146, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2075', 'Duplicação e Melhorias na Estrada do M''Boi Mirim', 'Melhorias Viárias', 'Estrada M Boi Mirim', 5, NULL, 'M´Boi Mirim', -23.6985032, -46.779409, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6985032, -- Use merged value
    longitude = -46.779409, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2076', 'Boulevard Marquês de São Vicente', 'Melhorias Viárias', 'Marques de São Vicente', 5, NULL, 'Lapa ', -23.5191501, -46.6751177, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5191501, -- Use merged value
    longitude = -46.6751177, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2077', 'Túnel João Paulo II (Sob o Vale do Anhangabaú)', 'Manutenção de Obras de Arte Especiais do Município de São Paulo', 'Av. 23 de Maio sob o Vale do Anhangabaú', 16, NULL, 'SÉ', -23.547071, -46.637853, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547071, -- Use merged value
    longitude = -46.637853, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2079', 'Gestão Ambiental - Empresarial', 'Gestão Ambiental - Empresarial', 'Rua XV de Novembro, 165', 24, NULL, 'SÉ', -31.7644709, -52.3395742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -31.7644709, -- Use merged value
    longitude = -52.3395742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2080', 'Praça Raízes da Pompéia', 'Investigação Ambiental', 'Praça Raízes da Pompéia', 24, NULL, 'Lapa ', -23.525799, -46.682196, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.525799, -- Use merged value
    longitude = -46.682196, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2081', 'Av. Tiradentes - Dois Túneis a partir da estação da Luz até a Marginal Tietê', 'Melhorias Viárias', 'av. Tiradentes', 5, NULL, 'SÉ', -23.529598, -46.6315546, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.529598, -- Use merged value
    longitude = -46.6315546, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2082', 'Ligação - João Goulart x Lourenço Cabreira', 'Melhorias Viárias', 'av lourenço cabreira', 5, NULL, 'Capela do Socorro ', -23.7177586, -46.6906402, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7177586, -- Use merged value
    longitude = -46.6906402, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2083', 'Ligação - Rua Mathias Beck x Av. Gregório Bezerra', 'Melhorias Viárias', 'Av. Gregório Bezerra', 5, NULL, 'Capela do Socorro ', -23.7117211, -46.68674, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7117211, -- Use merged value
    longitude = -46.68674, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('2084', 'Ligação - Vergueiro x Rua Professor Oswaldo Lacerda', 'Melhorias Viárias', 'Rua Professor Oswaldo Lacerda', 5, NULL, 'Vila Mariana ', -23.595059, -46.6218399, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595059, -- Use merged value
    longitude = -46.6218399, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;