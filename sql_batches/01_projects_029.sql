INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1752', 'CEU - Tremembé - Maria Firmina dos Reis', 'Manutenção Unidades Educacionais', 'R. Adauto Bezerra Delgado, 94 - Parque Casa de Pedra, São Paulo - SP, 02320-110', 20, NULL, 'Jaçanã / Tremembé', -23.4501244, -46.596707, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4501244,
    longitude = -46.596707;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1753', 'CEU - Vila Alpina - Professora Virginia Leone Bicudo', 'Manutenção Unidades Educacionais', 'Rua João Pedro Lecór, 144 - Vila Alpina, São Paulo - SP, 03227-190', 20, NULL, 'Vila Prudente ', -23.58415, -46.56739, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58415,
    longitude = -46.56739;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1754', 'EMEF -  Marechal Deodoro da Fonseca', 'Manutenção Unidades Educacionais', 'Praca Imprensa Paulista, 30 - Caxingui, São Paulo - SP, 05517-020', 20, NULL, 'Butantã ', -23.5826748, -46.7242985, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5826748,
    longitude = -46.7242985;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1755', 'EMEF - Artur Neiva', 'Manutenção Unidades Educacionais', 'Av. Nossa Sra. de Guadalupe, 212 - Jardim Helena, São Paulo - SP, 08420-130', 20, NULL, NULL, -23.5394239, -46.4282876, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5394239,
    longitude = -46.4282876;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1756', 'EMEF - Recanto dos Humildes', 'Manutenção Unidades Educacionais', 'R. Argélia, S/N - Jardim da Conquista (Zona Oeste), São Paulo - SP, 05212-020', 20, NULL, 'Perus ', -23.4174589, -46.7485366, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4174589,
    longitude = -46.7485366;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1758', 'EMEI - Jose Bonifacio de Andrada e Silva', 'Manutenção Unidades Educacionais', 'R. Dr. César, 581 - Santana, São Paulo - SP, 02013-002', 20, NULL, 'Santana / Tucuruvi', -23.5030556, -46.6316575, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5030556,
    longitude = -46.6316575;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1759', 'EMEI - Professora Rosa Maira Dogo de Resende', 'Manutenção Unidades Educacionais', 'R. Zike Tuma, 640 - Jardim Ubirajara (Zona Sul), São Paulo - SP, 04458-000', 20, NULL, 'Santo Amaro ', -23.6895534, -46.6723126, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6895534,
    longitude = -46.6723126;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1760', 'CEI -  Rua Conde de Itaguai X Br de Castro Lima  - Setor Educacional 5404', 'Manutenção Unidades Educacionais', 'Rua Conde de Itaguai X Br de Castro Lima, 478- Real Parque, São Paulo- SP, 05685-040', 20, NULL, 'Butantã ', -23.6086362, -46.7039941, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6086362,
    longitude = -46.7039941;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1761', 'CEI -  Rua Major José Mariotto Ferreira (Antiga EMEF -  Casarão)  - Setor Educacional 8302', 'Manutenção Unidades Educacionais', 'R. Maj. José Marioto Ferreira, 101 - Escola Casarao, São Paulo - SP, 05662-020', 20, NULL, 'Campo Limpo ', -23.6128736, -46.7228233, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6128736,
    longitude = -46.7228233;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1762', 'CEI -  Ponte Pequena - Setor Educacional 0901', 'Manutenção Unidades Educacionais', 'Av. Santos Dumont, 843 - Bom Retiro, São Paulo - SP, 01101-000', 20, NULL, 'SÉ', -23.5204917, -46.632013, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5204917,
    longitude = -46.632013;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1763', 'CEI - Rua Julio Colaço - Setor Educacional 9101', 'Manutenção Unidades Educacionais', 'R. Júlio Colaço, 559-447 - Vila Matilde, São Paulo - SP, 03502-050', 20, NULL, 'Penha ', -23.538024, -46.542813, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.538024,
    longitude = -46.542813;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1764', 'CEMEI - Rua das Três Marias   - Setor Educacional 4301', 'Manutenção Unidades Educacionais', 'Rua das Três Marias, 6 - Jardim Turquesa, São Paulo - SP, 05874-180', 20, NULL, 'M´Boi Mirim', -23.7017881, -46.784212, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7017881,
    longitude = -46.784212;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1765', 'CEMEI - Tremembé (EE Phylomena Bailão)  - Setor Educacional 8103', 'Manutenção Unidades Educacionais', 'Av. Cel. Sezefredo Fagundes, 14666 - Tucuruvi, São Paulo - SP, 02368-000', 20, NULL, 'Jaçanã / Tremembé', -23.4175499, -46.5842285, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4175499,
    longitude = -46.5842285;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1766', 'EMEF - KM 28,AV SAPOPEMBA-ESTR RIO CLARO - Setor Educacional 7505', 'Manutenção Unidades Educacionais', 'Av. Sapopemba, 16856-17158 - São Rafael, São Paulo - SP, 08330-180', 20, NULL, 'São Mateus ', -23.6232916, -46.4453286, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6232916,
    longitude = -46.4453286;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1767', 'EMEF - Rua das Três Marias  - Setor Educacional 4301', 'Manutenção Unidades Educacionais', 'Rua das Três Marias, 6 - Jardim Turquesa, São Paulo - SP, 05874-180', 20, NULL, 'M´Boi Mirim', -23.7017881, -46.784212, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7017881,
    longitude = -46.784212;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1768', 'EMEI -  Rua Frederico Rene de Jaegher 1631   - Setor Educacional 2307', 'Manutenção Unidades Educacionais', 'R. Frederico René de Jaegher, 1631 - Rio BonitoSão Paulo - SP, 04826-010', 20, NULL, 'Capela do Socorro ', -23.7253238, -46.7117247, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7253238,
    longitude = -46.7117247;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1769', 'EMEI -  Rua Henry Fuselli - Setor Educacional 7602', 'Manutenção Unidades Educacionais', 'Rua Henry Fuseli, 367 - Parque dos Bancarios, São Paulo - SP, 03923-030', 20, NULL, 'Sapopemba', -23.5919539, -46.512369, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5919539,
    longitude = -46.512369;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1770', 'EMEI -  Rua Sessenta e Três X Rua Sessenta e Seis - Setor Educacional 3307', 'Manutenção Unidades Educacionais', 'Conj. Promorar Rio Claro, São Paulo - SP, 02851-180', 20, NULL, 'São Mateus ', -23.6211998, -46.4546079, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6211998,
    longitude = -46.4546079;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1771', 'EMEI - Av Cangaiba x José da Penha x Rua São José do Campestre - Setor Educacional 1801 / 1802', 'Manutenção Unidades Educacionais', 'R. São José do Campestre, 842 - Jardim Danfer, São Paulo - SP, 03728-000', 20, NULL, 'Penha ', -23.504493, -46.5070339, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.504493,
    longitude = -46.5070339;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1772', 'EMEI - Av Elisio Teixeira Leite x Rua Monte Azul Paulista - Setor Educacional 4208', 'Manutenção Unidades Educacionais', 'Av. Elísio Teixeira Leite, 7367 - Sítio Morro Grande, São Paulo - SP, 02810-000', 20, NULL, 'Pirituba / Jaraguá', -23.4398709, -46.717008, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4398709,
    longitude = -46.717008;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1773', 'EMEI  - Av. Dona Belmira Marin 3411  - Setor Educacional 3010', 'Manutenção Unidades Educacionais', 'Av. Dona Belmira Marin, 3411 - Parque Brasil, São Paulo - SP, 04846-000', 20, NULL, 'Capela do Socorro ', -23.7524625, -46.682996, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7524625,
    longitude = -46.682996;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1774', 'EMEI - Av. Mauro Marques da Silva x Av. João José Gomes   - Setor Educacional 6703', 'Manutenção Unidades Educacionais', 'Av. João José Gomes, 234 - Vila Antonio, São Paulo - SP, 05376-100', 20, NULL, 'Butantã ', -23.5810028, -46.768375, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5810028,
    longitude = -46.768375;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1775', 'EMEI - Ilha da Vitória', 'Manutenção Unidades Educacionais', 'R. Ilha da Vitoria, 58 - Vila Perus, São Paulo - SP, 05209-295', 20, NULL, 'Perus ', -23.4194382, -46.7492003, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4194382,
    longitude = -46.7492003;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1776', 'EMEI - Rua Dom Mateus - Setor Educacional 7505', 'Manutenção Unidades Educacionais', 'R. Dom Mateus, 139 - Vila Monumento, São Paulo - SP, 01548-030', 20, NULL, 'Ipiranga ', -23.5759864, -46.6134343, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5759864,
    longitude = -46.6134343;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1777', 'CEI - Diret Jardim Campos', 'Manutenção Unidades Educacionais', 'R. Ilha de Maruí, 32 - Jardim Campos, São Paulo - SP, 08151-710', 20, NULL, 'Itaim Paulista ', -23.510356, -46.4066536, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.510356,
    longitude = -46.4066536;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1778', 'CEI - Diret Jardim Colorado', 'Manutenção Unidades Educacionais', 'R. José de Araújo Viêira, 30 - Jardim Rodolfo Pirani, São Paulo - SP, 08310-240', 20, NULL, 'São Mateus ', -23.6272922, -46.462829, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6272922,
    longitude = -46.462829;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1779', 'CEI - Diret Jardim Eliana', 'Manutenção Unidades Educacionais', 'Rua Henry Arthur Jones, 88 - Jardim Edi, São Paulo - SP, 04851-002', 20, NULL, 'Capela do Socorro ', -23.7531706, -46.6720403, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7531706,
    longitude = -46.6720403;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1780', 'CEI - Diret Jardim Ipanema', 'Manutenção Unidades Educacionais', 'R. Virgínia Galilei, 107 - Jardim Ipanema(Zona Oeste), São Paulo - SP, 05187-060', 20, NULL, 'Pirituba / Jaraguá', -23.4438605, -46.7499879, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4438605,
    longitude = -46.7499879;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1781', 'CEI - Diret Jardim Miliunas', 'Manutenção Unidades Educacionais', 'R. Sargaço, 437 - Jardim Meliunas, São Paulo - SP, 08111-370', 20, NULL, 'Itaim Paulista ', -23.4983028, -46.3719401, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4983028,
    longitude = -46.3719401;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1782', 'CEI - Diret Jardim Rincão', 'Manutenção Unidades Educacionais', 'R. Xavier dos Passaros, 100 - Jardim Rincão - São Paulo - SP, 02991100', 20, NULL, 'Pirituba / Jaraguá', -23.4380591, -46.7284175, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4380591,
    longitude = -46.7284175;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1783', 'CEI - Diret Jardim Rodolfo Pirani', 'Manutenção Unidades Educacionais', 'R. Cinira Polonio, 20 - Conj.Promorar Rio Claro - São Paulo - SP, 08395320', 20, NULL, 'São Mateus ', -23.6197103, -46.456412, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6197103,
    longitude = -46.456412;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1784', 'CEI - Diret Jardim Rosely', 'Manutenção Unidades Educacionais', 'R. José de Lima, 80 - Jardim Roseli, São Paulo - SP, 08380-054', 20, NULL, 'São Mateus ', -23.6196709, -46.4563262, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6196709,
    longitude = -46.4563262;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1785', 'CEI - Diret Jocelyne Guimarães Fernandes De Mello', 'Manutenção Unidades Educacionais', 'R. Utaro Kanai, 286 - Conj. Hab. Juscelino Kubitschek, São Paulo - SP, 08465-000', 20, NULL, 'Guaianazes ', -23.565708, -46.399138, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.565708,
    longitude = -46.399138;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1786', 'CEI - Diret Parque Boturussu', 'Manutenção Unidades Educacionais', 'R. João Antônio Andrade, 495 - Parque Boturussu, São Paulo - SP, 03805-070', 20, NULL, 'Ermelino Matarazzo ', -23.5029562, -46.4811582, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5029562,
    longitude = -46.4811582;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1787', 'CEI - Diret Paulo Cesar Fontelles De Lima', 'Manutenção Unidades Educacionais', 'Av. João Neri de Carvalho, 781 - São Miguel Paulista, São Paulo - SP, 08021-010', 20, NULL, 'São Miguel Paulista ', -23.497053, -46.433696, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.497053,
    longitude = -46.433696;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1788', 'CEI - Diret José Ozi Prof.', 'Manutenção Unidades Educacionais', 'Rua Bartolomeo Veneto, 200 - Vila Tiradentes, São Paulo - SP, 05364-030', 20, NULL, 'Butantã ', -23.57213, -46.75137, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57213,
    longitude = -46.75137;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1789', 'CEI - Diret Mario Pereira Costa Profº', 'Manutenção Unidades Educacionais', ' R. Arroio Arapongas, 159 - Conj. Hab. Santa Etelvina III, São Paulo - SP, 08485-440', 20, NULL, 'Cidade Tiradentes ', -23.5841715, -46.4133492, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5841715,
    longitude = -46.4133492;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1790', 'CEI - Diret Maria Augusta De Paula Profª', 'Manutenção Unidades Educacionais', 'R. dos Pedreiros, 135 - Cidade Tiradentes, São Paulo - SP, 08471-330', 20, NULL, 'Cidade Tiradentes ', -23.6048397, -46.3995842, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6048397,
    longitude = -46.3995842;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1791', 'CEI - Diret Pedro Brasil Bandecchi Ver.', 'Manutenção Unidades Educacionais', 'R. Maria Amélia de Assunção, 185 - Jardim Etelvina, São Paulo - SP, 08430-560', 20, NULL, 'Guaianazes ', -23.5291194, -46.4212699, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5291194,
    longitude = -46.4212699;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1792', 'CEI - Diret Vila Carmosina', 'Manutenção Unidades Educacionais', 'Rua Waldemar Mancini, 666 - Itaquera, São Paulo - SP, 08295-290', 20, NULL, 'Itaquera ', -23.5500745, -46.4561367, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5500745,
    longitude = -46.4561367;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1793', 'CEI - Indiret Jardim Ipanema I', 'Manutenção Unidades Educacionais', 'R. Alfredo Vasconcelos, 86 - Jardim Arize, São Paulo - SP, 03573-150', 20, NULL, 'Itaquera ', -23.5610597, -46.5073529, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5610597,
    longitude = -46.5073529;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1794', 'CEI - Indiret Paulo Francisco Seckler Pucca', 'Manutenção Unidades Educacionais', 'Av. Dona Belmira Marin, 2500 – Parque Brasil, São Paulo – SP, 04846-000', 20, NULL, 'Capela do Socorro ', -23.7529368, -46.6888195, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7529368,
    longitude = -46.6888195;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1795', 'CEI - Indret Cohab Educandário', 'Manutenção Unidades Educacionais', 'R. José Porfírio de Souza, S/N - Jardim Raposo Tavares, São Paulo - SP, 05563-090', 20, NULL, 'Butantã ', -23.5991539, -46.7835527, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5991539,
    longitude = -46.7835527;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1796', 'CEI - Diret Angela Maria Fernandes', 'Manutenção Unidades Educacionais', 'R. Cabo Alfredo Clemente, 200 - Jardim Sul Sao Paulo, São Paulo - SP, 04413-070', 20, NULL, 'Jabaquara ', -23.6714445, -46.6368243, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6714445,
    longitude = -46.6368243;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1797', 'CEI - Diret Araucárias', 'Manutenção Unidades Educacionais', 'Rua Alberto Fink, S/N - Conj. Res. José Bonifácio, São Paulo - SP, 08255-040', 20, NULL, 'Itaquera ', -23.5564268, -46.4345132, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5564268,
    longitude = -46.4345132;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1798', 'CEI - Diret Brigadeiro Cohab Faria Lima', 'Manutenção Unidades Educacionais', 'R. Aparecida D''oeste, 145 - Conj. Hab. Brg. Faria Lima, São Paulo - SP, 04840-280', 20, NULL, 'Capela do Socorro ', -23.7563002, -46.6837459, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7563002,
    longitude = -46.6837459;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1799', 'CEI - Diret Casa Verde - Walter Abrahão', 'Manutenção Unidades Educacionais', 'R. Brazelisa Alves de Carvalho, 500 - Casa Verde, São Paulo - SP, 02510-030', 20, NULL, 'Casa Verde ', -23.5111134, -46.6507431, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5111134,
    longitude = -46.6507431;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1800', 'CEI - Diret Domingos Rufino De Souza', 'Manutenção Unidades Educacionais', 'R. Navarra, 260 - Vila Santa Catarina, São Paulo - SP, 04374-020', 20, NULL, 'Jabaquara ', -23.6512486, -46.6537341, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6512486,
    longitude = -46.6537341;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1801', 'CEI - Diret Dorothy Stang', 'Manutenção Unidades Educacionais', 'Rua Joaquim Antônio de Souza, 61 - Cidade Líder, São Paulo - SP, 08285-190', 20, NULL, 'Itaquera ', -23.5557503, -46.4757051, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5557503,
    longitude = -46.4757051;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('1802', 'CEI - Diret Antônio João Abdalla Dr. ', 'Manutenção Unidades Educacionais', 'R. Ângelo Aparecido dos Santos Dias, 257 - Jardim São Jorge, São Paulo - SP, 05568-090', 20, NULL, 'Butantã ', -23.5917657, -46.7833355, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5917657,
    longitude = -46.7833355;