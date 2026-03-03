INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1957', 'CEI Ind - Cachoeira de Sao Benedito', 'Manutenção Unidades Educacionais', 'R. Cachoeira São Benedito, 113 - Vila Sao Nicolau, São Paulo - SP, 03254-390', 20, NULL, 'Vila Prudente ', -23.6130042, -46.5360018, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6130042,
    longitude = -46.5360018;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1958', 'CEI Ind - Carrão I', 'Manutenção Unidades Educacionais', 'R. Dr. Coryntho Baldoíno Costa, 450 - Vila Zilda, São Paulo - SP, 03069-070', 20, NULL, 'Mooca ', -23.5363097, -46.5629775, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5363097,
    longitude = -46.5629775;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1959', 'CEI Ind - CDHU Jacui A', 'Manutenção Unidades Educacionais', 'Rua Japichaua, 313 - Jardim Matarazzo, São Paulo - SP, 03813-310', 20, NULL, 'Ermelino Matarazzo ', -23.4816018, -46.4704987, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4816018,
    longitude = -46.4704987;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1960', 'CEI DIRET - Celia Peres Sunhiga', 'Manutenção Unidades Educacionais', 'R. David de Melo Lopes, 141 - Vila Cardoso Franco, São Paulo - SP, 03978-070', 20, NULL, 'Sapopemba', -23.6195924, -46.5047994, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6195924,
    longitude = -46.5047994;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1962', 'CEI DIRET - Cidade Pedro Jose Nunes', 'Manutenção Unidades Educacionais', 'Av. Mário Alves, 482 - Jardim Pedro José Nunes, São Paulo - SP, 08061-380', 20, NULL, 'São Miguel Paulista ', -23.5033643, -46.4673571, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5033643,
    longitude = -46.4673571;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1963', 'CEI DIRET - Coryntho Baldoino Da Costa Filho, Ver', 'Manutenção Unidades Educacionais', 'Rua Júlio Parigot, 203 - Vila Antonieta, São Paulo - SP, 03478-000', 20, NULL, 'Aricanduva ', -23.56821, -46.515384, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.56821,
    longitude = -46.515384;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1964', 'CEI DIRET - Dominguinhos', 'Manutenção Unidades Educacionais', 'Parque Boa Esperança, São Paulo - SP, 08341-235', 20, NULL, 'São Mateus ', -23.6032393, -46.4518871, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6032393,
    longitude = -46.4518871;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1965', 'CEI DIRET - Gabriel Nogueira De Quadros, Ver', 'Manutenção Unidades Educacionais', 'R. Lagoa Seca, 67 - Jardim Record, São Paulo - SP, 03462-100', 20, NULL, 'Aricanduva ', -23.5742142, -46.526451, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5742142,
    longitude = -46.526451;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1966', 'CEI DIRET - Jardim Klein', 'Manutenção Unidades Educacionais', 'Jardim Boa Vista (Zona Oeste), São Paulo - SP, 05818-370', 20, NULL, 'M´Boi Mirim', -23.6731695, -46.7482645, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6731695,
    longitude = -46.7482645;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1967', 'CEI DIRET - Jardim Nove de Julho', 'Manutenção Unidades Educacionais', ' R. Gomes de Melo, 42 - Jardim Nove de Julho, São Paulo - SP, 03951-070', 20, NULL, 'São Mateus ', -23.5865592, -46.4887714, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5865592,
    longitude = -46.4887714;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1968', 'CEI DIRET - Jardim Santo André', 'Manutenção Unidades Educacionais', 'Av. dos Sertanistas, 790 - Jardim Santo Andre, São Paulo - SP, 08390-240', 20, NULL, 'São Mateus ', -23.6270471, -46.4458531, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6270471,
    longitude = -46.4458531;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1969', 'CEI DIRET - João Bento de Carvalho', 'Manutenção Unidades Educacionais', 'R. Pedro de Mena, 291 - Jardim Marília, São Paulo - SP, 03579-270', 20, NULL, 'Itaquera ', -23.5630999, -46.4953515, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5630999,
    longitude = -46.4953515;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1970', 'CEI Ind - Jose Vieira de Santana', 'Manutenção Unidades Educacionais', 'Av. Mendonça Drumond, 898 - Jardim Maringa, São Paulo - SP, 03524-030', 20, NULL, 'Penha ', -23.5528181, -46.517388, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5528181,
    longitude = -46.517388;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1971', 'CEU EMEF - Maria Aparecida de Souza Campos, Profa', 'Manutenção Unidades Educacionais', 'R. Srg. Claudiner Evaristo Dias, 10 - Parque Santo Antônio, São Paulo - SP, 03385-150', 20, NULL, 'Aricanduva ', -23.5802737, -46.5243638, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5802737,
    longitude = -46.5243638;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1972', 'CEI DIRET - Parque Savoy City', 'Manutenção Unidades Educacionais', 'R. Estevão Dias Vergara, 700 - Fazenda Aricanduva, São Paulo - SP, 08275-120', 20, NULL, 'Itaquera ', -23.5697695, -46.4798117, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5697695,
    longitude = -46.4798117;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1973', 'CEI Ind - Sao Jose Operario', 'Manutenção Unidades Educacionais', 'R. Isidoro de Lara, 295 - Conj. Res. José Bonifácio, São Paulo - SP, 08253-250', 20, NULL, 'Itaquera ', -23.5456355, -46.4407724, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5456355,
    longitude = -46.4407724;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1974', 'CEI Ind - Ventura Branco', 'Manutenção Unidades Educacionais', 'Rua Japichaua, 311 - Jardim Matarazzo, São Paulo - SP, 03813-310', 20, NULL, 'São Miguel Paulista ', -23.4847227, -46.4639942, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4847227,
    longitude = -46.4639942;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1975', 'CEI Ind - Vovó Julia', 'Manutenção Unidades Educacionais', 'R. Novo Oriente do Piauí, 170 - Vila Silvia, São Paulo - SP, 03820-310', 20, NULL, 'Penha ', -23.4941641, -46.5036959, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4941641,
    longitude = -46.5036959;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1976', 'CEI Ind - Wenceslau Guimarães', 'Manutenção Unidades Educacionais', 'Rua Wenceslau Guimarães, 521 - Parque Cisper, São Paulo - SP, 03823-000', 20, NULL, 'Ermelino Matarazzo ', -23.4892022, -46.4930729, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4892022,
    longitude = -46.4930729;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1977', 'CEI DIRET - Zilda Arns Neumann, dra', 'Manutenção Unidades Educacionais', 'R. Barreiras do Piauí, 227-79 - Burgo Paulista, São Paulo - SP, 03681-010', 20, NULL, 'Ermelino Matarazzo ', -23.5209064, -46.4843471, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5209064,
    longitude = -46.4843471;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1978', 'Gerenciamento - OAEs', 'Gerenciamento das Obras de Arte Especiais', 'Rua XV de Novembro, 165', 16, NULL, 'SÉ', -23.5475305, -46.6342173, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5475305,
    longitude = -46.6342173;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1979', 'Sede SPObras (Reformas, Manutenções, outros)', 'manutenções, Reformas e Outros serviços na Sede SPObras', 'Rua XV de Novembro, 165', 24, NULL, 'SÉ', -23.5475305, -46.6342173, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5475305,
    longitude = -46.6342173;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1980', 'EMEI - Rua Antonio Antunes - Setor 3361', 'Construção Unidade Educacional', 'Rua Antonio Antunes', 20, NULL, 'Campo Limpo ', -23.6370201, -46.7724478, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6370201,
    longitude = -46.7724478;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1981', 'EMEF Ernani Silva Bruno', 'Manutenção Unidades Educacionais ', 'R. Interativa, 100', 20, NULL, 'Pirituba / Jaraguá', -23.446383, -46.7093655, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.446383,
    longitude = -46.7093655;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1982', 'EMEF - Rua David Perez - Residencial Espanha', 'Construção Unidade Educacional', 'Rua David Perez', 20, NULL, 'Cidade Ademar ', -23.7079405, -46.6555603, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7079405,
    longitude = -46.6555603;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1983', 'CEI inidir - Jardim Helena I', 'manutenções, Reformas e Outros serviços na Sede SPObras', 'R. Kumaki Aoki, 1138 - Jardim Helena, São Paulo - SP, 08090-370', 20, NULL, 'São Miguel Paulista ', -23.4791193, -46.4181938, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4791193,
    longitude = -46.4181938;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1984', 'CEI indir - Jorge Jones', 'Manutenção Unidades Educacionais ', 'R. Jorge Jones, 380 - Vila Curuçá Velha, São Paulo - SP, 08030-720', 20, NULL, 'Itaim Paulista ', -23.5056242, -46.4192527, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5056242,
    longitude = -46.4192527;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1985', 'CEI diret - Marcos Melega, ver.', 'Manutenção Unidades Educacionais ', 'Rua Torres Florêncio e Rielli, 270 - Jardim Planalto, São Paulo - SP, 03984-050', 20, NULL, 'Sapopemba', -23.6073132, -46.5111858, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6073132,
    longitude = -46.5111858;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1986', 'CEU Jardim Filhos da Terra', 'Construção Unidade Educacional', 'Travessa Igarapé Primavera, 92', 20, NULL, 'Jaçanã / Tremembé', -23.4541866, -46.5843754, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4541866,
    longitude = -46.5843754;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1987', 'CEU - Cachoeirinha', 'Construção Unidade Educacional', 'Rua Santa Lucrécia de Aguiar, 443', 20, NULL, 'Casa Verde ', -23.4648623, -46.6603371, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4648623,
    longitude = -46.6603371;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1988', 'CEU - Jd. Helena', 'Construção Unidade Educacional', 'Rua Manuel Barbosa dos Reis', 20, NULL, 'São Miguel Paulista ', -23.4914407, -46.3998832, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4914407,
    longitude = -46.3998832;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1989', 'CEU Jd. Angela', 'Construção Unidade Educacional', 'Rua das Três Marias, 4', 20, NULL, 'M´Boi Mirim', -23.7022332, -46.7834737, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7022332,
    longitude = -46.7834737;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1990', 'CEI Heliópolis - “Redondinhos”', 'Construção Unidade Educacional', 'Rua Peroba Branca', 20, NULL, 'Ipiranga ', -23.6170252, -46.5828309, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6170252,
    longitude = -46.5828309;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1991', 'CEU Grajaú', 'Construção Unidade Educacional', 'Rua Dr Nuno Guerner de Almeida , s/n', 20, NULL, 'Capela do Socorro ', -23.7491305, -46.6802345, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7491305,
    longitude = -46.6802345;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1992', 'CEI - Uso para cadastro de previsão ', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1993', 'EMEI - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1994', 'EMEF - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1995', 'CEU - Uso para cadastro de previsão', 'não utilizar', 'Rua XV de Novembro, 165', 20, NULL, 'SÉ', -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1996', 'DRE - Rua da Balsa', 'Construção Unidade Educacional', 'Rua da Balsa 331', 20, NULL, 'Freguesia / Brasilândia', -23.5060664, -46.6965523, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5060664,
    longitude = -46.6965523;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1997', 'TESTE 01 - GEC', 'não utilizar', 'Rua XV de Novembro, 165', 22, NULL, NULL, -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1998', 'TESTE 02 - GEC', 'não utilizar', 'ITAQUERA', 22, NULL, NULL, -23.5396118, -46.4536545, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5396118,
    longitude = -46.4536545;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1999', 'TESTE 03 - GEC', 'não utilizar', 'TUCURUVI', 22, NULL, NULL, -23.473904, -46.6108174, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.473904,
    longitude = -46.6108174;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2000', 'Centro de Educação Infantil - Setor 1903', ' implantação do equipamento educacional Centro de Educação Infantil ', 'Rua Dr. Luís da Fonseca Galvão, 64', 20, NULL, 'Campo Limpo ', -23.6610167, -46.7672321, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6610167,
    longitude = -46.7672321;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2001', 'Habitações de Interesse Social - HIS 41', 'COMPLEMENTAÇÃO E FINALIZAÇÃO DAS HABITAÇÕES DE INTERESSE SOCIAL', 'Rua Hildebrando Siqueira, números 488', 2, NULL, 'Jabaquara ', -23.660303, -46.6405232, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.660303,
    longitude = -46.6405232;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2002', 'Habitações de Interesse Social - HIS 27', 'COMPLEMENTAÇÃO E FINALIZAÇÃO DAS HABITAÇÕES DE INTERESSE SOCIAL', 'Rua Hildebrando Siqueira, números 130', 2, NULL, 'Jabaquara ', -23.660303, -46.6405232, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.660303,
    longitude = -46.6405232;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2003', 'Qualidade - Teste', 'Teste Qualidade', 'ru xv de novembro, 165', 7, NULL, NULL, -23.547778, -46.6341823, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547778,
    longitude = -46.6341823;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2006', 'Autódromo de Interlagos - 2024', 'Obras complementares, instalações permanentes e reforma da pista.', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7033489, -46.7002579, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7033489,
    longitude = -46.7002579;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2007', 'Calçadas - Viaduto do Chá, Entorno Theatro Municipal e Praça do Patriarca', 'Reforma dos pavimentos das calçadas e calçadões, implantação de sinalização turística e ambiental, melhorias no mobiliário urbano e iluminação, drenagem e valas técnicas para Telecom.', 'Viaduto do Chá', 23, NULL, 'SÉ', -23.5467184, -46.6377189, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5467184,
    longitude = -46.6377189;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2008', 'Complexo Viário Ragueb Chohfi', 'IMPLANTAÇÃO COMPLEXO VIÁRIO RAGUEB CHOHFI', 'INTERSECÇÃO ENTRE A AVENIDA ARICANDUVA COM A AV. RAGUEB CHOHFI', 5, NULL, 'São Mateus ', -23.598443, -46.464389, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.598443,
    longitude = -46.464389;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('2009', 'CEU Sete Campos - Construção Novas Unidades CEU', 'Construção Unidade Educacional', 'Estrada do retiro nº 298', 20, NULL, 'Cidade Ademar ', -23.6955436, -46.6439871, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6955436,
    longitude = -46.6439871;