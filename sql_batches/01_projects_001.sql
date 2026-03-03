INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('13', 'Sampaio Moreira', 'Restauro de edifício histórico da cidade de São Paulo', 'R. Líbero Badaró, 340 - Centro, São Paulo - SP, 01002-010', 24, NULL, 'SÉ', -23.546624, -46.6363537, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.546624,
    longitude = -46.6363537;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('15', 'Chucri Zaidan (Prolongamento) - Fase 1', 'Prolongamento da Av. Chucri Zaidan e Complexo Viário Burle Marx - Ponte Laguna sobre o Rio Pinheiros', 'Av. Dr. Chucri Zaidan, 902 - Vila Cordeiro, São Paulo - SP', 2, NULL, 'Santo Amaro ', -23.6215708, -46.6998594, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6215708,
    longitude = -46.6998594;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('16', 'Corredor Itaquera 2 e Terminal', 'Construção de terminal viário urbano, terminal intermunicipal e/ou rodoviário Itaquera e trecho de corredor', 'Av. Itaquera', 5, NULL, NULL, -23.5537456, -46.4901473, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5537456,
    longitude = -46.4901473;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('17', 'ROMA - Contratos antigos da Av. Roberto Marinho', 'Prolongamento da Av. Jornalista Roberto Marinho até a Rodovia dos Imigrantes, construção de um parque linear e habitações de interesse social', 'Av. Jornalista Roberto Marinho 4000, São Paulo', 2, NULL, 'Santo Amaro ', -23.6376224, -46.663102, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6376224,
    longitude = -46.663102;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('19', 'Parque do chuvisco', 'Execução de um parque no antigo parque de funcionários da Varig', 'R. Ipiranga, 792 - Jardim Aeroporto, São Paulo', 2, NULL, 'Jabaquara ', -23.6363539, -46.6622063, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6363539,
    longitude = -46.6622063;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('20', 'Othon Palace Hotel', 'Reforma e Restauro Ed. Othon Palace Hotel', 'R. Líbero Badaró, 190, Centro', 24, NULL, 'SÉ', -23.5478236, -46.6368128, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5478236,
    longitude = -46.6368128;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('31', 'Corredor Itaquera 1', 'Trecho de 2 km de corredor', 'Av. Itaquera', 5, NULL, NULL, -23.5537513, -46.4898468, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5537513,
    longitude = -46.4898468;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('32', 'Autódromo de Interlagos - 2017', 'Obras complementares, instalações permanentes e reforma da pista para o GP de Fórmula 1', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7064151, -46.7002891, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7064151,
    longitude = -46.7002891;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('33', 'Praça das Artes', 'Elaboração de projetos e execução de obras complementares dos corpos artísticos e praça junto à Rua Formosa', 'Rua Formosa, 357', 3, NULL, 'SÉ', -23.5455165, -46.6372472, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5455165,
    longitude = -46.6372472;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('34', 'Ligação Viária Pirituba-Lapa', '-', 'Av. Raimundo Pereira de Magalhães, 1050', 1, NULL, 'Lapa ', -23.5090995, -46.7151821, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5090995,
    longitude = -46.7151821;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('35', 'Reconversão Urbana Largo da Batata Fase 3', 'Remanescentes Largo do Batata', 'Rua eugenio de medeiros', 4, NULL, 'Pinheiros ', -23.5679403, -46.7004483, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5679403,
    longitude = -46.7004483;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('36', 'Cine Artpalácio', 'A definir', 'Av. São João, 419', 7, NULL, NULL, -23.543823, -46.638757, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543823,
    longitude = -46.638757;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('37', 'Novo Mobiliário Urbano - Abrigos', 'A definir', 'praça do patriarca, 96', 15, NULL, 'SÉ', -23.5472554, -46.636546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472554,
    longitude = -46.636546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('38', 'Descomplica São Miguel', 'Projeto piloto que possibilitará expansão de outras 32 unidades', 'Rua Dona Ana Flora Pinheiro de Sousa, 76 - Vila Jacui, São Paulo - SP, 08060-150', 8, NULL, 'São Miguel Paulista ', -23.5003366, -46.4514877, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5003366,
    longitude = -46.4514877;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('39', 'Auro Soares de Moura Andrade - Viário', 'Prolongamento da Av. Auro Soares de M. Andrade até a Av. Santa Marina', 'Av auro soares de moura andrade, ', 1, NULL, 'Lapa ', -23.525111, -46.67728, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.525111,
    longitude = -46.67728;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('40', 'Área 40 - São Miguel Paulista', 'Urbanização viária do centro de São Miguel Paulista em parceria com a Bloomberg Philanthropies', 'Praça Padre Aleixo Monteiro Mafra, 12 - São Miguel Paulista', 7, NULL, 'São Miguel Paulista ', -23.4921753, -46.4450832, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4921753,
    longitude = -46.4450832;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('43', 'Gasômetro', 'Obras complementares para enterramento da fiação aérea e retirada dos postes da região', 'Rua do Gasômetro', 3, NULL, NULL, -23.543959, -46.6218227, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.543959,
    longitude = -46.6218227;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('45', 'teste', 'teste', 'praça do patriarca 96', 7, NULL, NULL, -23.5472554, -46.636546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472554,
    longitude = -46.636546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('46', 'teste 2', 'teste ', 'praça do patriarca', 7, NULL, NULL, -23.5472873, -46.6367521, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472873,
    longitude = -46.6367521;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('47', 'Ciclopassarela Eusébio Matoso', 'Ponte/Viaduto sobre o rio e marginal pinheiros', 'ponte eusébio matoso', 4, NULL, NULL, -23.5723112, -46.7003722, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5723112,
    longitude = -46.7003722;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('48', 'teste 3', 'teste 3', 'praça do patriarca 96', 7, NULL, NULL, -23.5472554, -46.636546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472554,
    longitude = -46.636546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('49', 'teste plano de ação', 'teste', 'praça do patriarca 96', 7, NULL, NULL, -23.5472554, -46.636546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472554,
    longitude = -46.636546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('50', 'Requalificação Urbana Santo Amaro (JK a Bandeirantes)', 'Melhoramentos Públicos na Avenida Santo Amaro, desde a Avenida Presidente Juscelino Kubitschek até a Avenida dos Bandeirantes', 'Avenida Santo Amaro', 4, NULL, 'Santo Amaro ', -23.617729, -46.6818226, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617729,
    longitude = -46.6818226;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('54', 'Teste BIM', 'Projeto de Implantação do BIM na SPObras', 'Av. São João, 473 20º andar', 7, NULL, NULL, -23.5434188, -46.6388599, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5434188,
    longitude = -46.6388599;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('55', 'Teste Fernando', 'teste', 'praça do patriarca 96', 7, NULL, NULL, -23.5472554, -46.636546, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5472554,
    longitude = -46.636546;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('56', 'Ciclovia Inajar', 'Implantação da Ciclovia Inajar de Souza no trecho compreendido entre a R. Edmundo Krug e Av. Arq. Roberto Aflalo', 'Av Inajar de Souza 100', 5, NULL, 'Freguesia / Brasilândia', -23.458299, -46.674916, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.458299,
    longitude = -46.674916;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('57', 'Corredor Avenida Itapecerica (entre Terminal João Dias e Terminal Capelinha)', 'Implantação de estações para metodologia de cobrança por pré-embarque no Trecho do corredor de ônibus na Estrada de Itapecerica entre o Terminal João Dias e Terminal Capelinha.', 'Estrada de Itapecerica', 5, NULL, 'Campo Limpo ', -23.6436782, -46.7340257, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6436782,
    longitude = -46.7340257;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('58', 'Corredor Capão Redondo / Campo Limpo / Vila Sônia.', 'Implantação de Corredor exclusivo', 'terminal capelinha', 5, NULL, 'Campo Limpo ', -23.6544914, -46.7621691, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6544914,
    longitude = -46.7621691;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('59', 'Obras Complementares de Drenagem das Bacias dos Córregos Água Preta e Sumaré', 'Drenagem Complementar', 'Av Pompeia', 1, NULL, 'Lapa ', -23.526858, -46.682934, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.526858,
    longitude = -46.682934;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('60', 'Corredor Avenida Amador Bueno - Jaime Torres', 'Implantação de Corredor de Ônibus', 'Av. Amador Bueno da Veiga', 5, NULL, 'Penha ', -23.5226565, -46.5241617, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5226565,
    longitude = -46.5241617;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('61', 'Corredor Avenida Imirim', ' Implantação de Corredor de Ônibus', 'Av Imirim', 5, NULL, 'Casa Verde ', -23.4866205, -46.6528885, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4866205,
    longitude = -46.6528885;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('62', 'Corredor Avenida Interlagos - trecho entre Avenidas Washington Luís e Atlântica', 'Implantação de Corredor de Ônibus', 'Av. Interlagos', 5, NULL, 'Santo Amaro ', -23.6825033, -46.689999, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6825033,
    longitude = -46.689999;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('63', 'Requalificação Corredor Av. Santo Amaro (entre Av. Portugal e Term. João Dias)', 'Implantação de Corredor de Ônibus', 'av santo amaro', 5, NULL, 'Santo Amaro ', -23.617729, -46.6818226, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617729,
    longitude = -46.6818226;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('64', 'Corredor Estrada M''Boi Mirim - Trecho entre Morro do Índio e Rua Humberto Marçal', 'Implantação de Corredor de Ônibus', 'Av. M''Boi Mirim', 5, NULL, 'M´Boi Mirim', -23.6983898, -46.7793831, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6983898,
    longitude = -46.7793831;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('65', 'Ciclopassarela "Bernardo Goldfarb"', 'Ciclo Passarela ligando os Distritos de Pinheiros ao Distrito do Butantã, permitindo a realização da travessia segura de pedestres e ciclistas.', 'Ponte Bernardo Goldfarb', 4, NULL, 'Pinheiros ', -23.5717169, -46.7014014, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5717169,
    longitude = -46.7014014;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('66', 'Acesso ao Terminal Pinheiros', 'Criação de uma terceira via, segregada, para acesso seguro ao Terminal de Ônibus e ao Estacionamento Subterrâneo.', 'Av. das Nações Unidas', 4, NULL, 'Pinheiros ', -23.5660233, -46.7027574, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5660233,
    longitude = -46.7027574;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('67', 'Descomplica Campo Limpo', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais', 'Rua nossa senhora do bom conselho, 138', 8, NULL, 'Campo Limpo ', -23.6473177, -46.7563332, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6473177,
    longitude = -46.7563332;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('68', 'Descomplica Butantã', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais ', 'Rua Ulpiano da Costa Manso, 201', 8, NULL, 'Butantã ', -23.5883813, -46.738105, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5883813,
    longitude = -46.738105;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('69', 'Descomplica Santana/ Tucuruvi', 'Expansão do programa Descomplica para as unidades de Prefeituras Regionais ', 'Av. Tucuruvi, 808', 8, NULL, 'Santana / Tucuruvi', -23.4816399, -46.6043374, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4816399,
    longitude = -46.6043374;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('70', 'Autódromo de Interlagos - 2018', 'Obras complementares, instalações permanentes, reforma da pista e contratos diversos para o GP de Fórmula 1', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7032826, -46.7002859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7032826,
    longitude = -46.7002859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('77', 'LARGO DA BATATA - Antigo', 'Largo da Batata', 'LARGO DA BATATA', 4, NULL, 'Pinheiros ', -23.5665817, -46.6943435, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5665817,
    longitude = -46.6943435;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('80', '(TESTE) CORREDOR ITAQUERA', 'IMPLANTAÇÃO DO CORREDOR ITAQUERA', 'AV. Itaquera', 5, NULL, NULL, -23.5537567, -46.4898454, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5537567,
    longitude = -46.4898454;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('81', '(TESTE) Ligação Viária Pirituba Lapa', '-', 'Av. Raimundo Pereira de Magalhães, 1050', 1, NULL, NULL, -23.5090995, -46.7151821, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5090995,
    longitude = -46.7151821;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('82', '(TESTE) ROMA', 'Prolongamento da Av. Jornalista Roberto Marinho até a Rodovia dos Imigrantes, construção de um parque linear e habitações de interesse social', 'Av. Jornalista Roberto Marinho 4000, São Paulo', 2, NULL, 'Santo Amaro ', -23.6377148, -46.6629742, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6377148,
    longitude = -46.6629742;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('84', '(TESTE) CORREDOR SANTO AMARO', 'Implantação de Corredor de ônibus na Av. Santo Amaro', 'Av. Santo Amaro', 4, NULL, NULL, -23.617729, -46.6818226, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.617729,
    longitude = -46.6818226;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('85', 'CORREDOR INAJAR DE SOUZA', 'Implantação de Corredor de Ônibus', 'Av Inajar de Souza', 5, NULL, 'Casa Verde ', -23.4821461, -46.676754, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4821461,
    longitude = -46.676754;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('86', '(TESTE) Chucri Zaidan', 'Prolongamento da Av. Chucri Zaidan e Complexo Viário Burle Marx - Ponte Laguna sobre o Rio Pinheiros', 'Av. Dr. Chucri Zaidan, 902 - Vila Cordeiro, São Paulo - SP', 2, NULL, NULL, -23.6215452, -46.6996642, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6215452,
    longitude = -46.6996642;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('87', '(TESTE) ÁREA 40', 'Urbanização viária em parceria com a Bloomberg Philanthropies', 'SÃO JOÃO', 5, NULL, NULL, 26.109508, -80.351245, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = 26.109508,
    longitude = -80.351245;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('88', '(TESTE) Autódromo de Interlagos', 'Autódromo Municipal - Programa ', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, NULL, -23.7032826, -46.7002859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7032826,
    longitude = -46.7002859;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('89', 'Autódromo de Interlagos - 2019', 'Obras complementares, instalações permanentes e reforma da pista para o GP de Fórmula 1', 'Av. Sen. Teotônio Vilela, 261', 11, NULL, 'Capela do Socorro ', -23.7032826, -46.7002859, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7032826,
    longitude = -46.7002859;