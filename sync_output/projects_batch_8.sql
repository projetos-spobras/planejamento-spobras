INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1752', 'CEU - Tremembé - Maria Firmina dos Reis', 'Manutenção Unidades Educacionais', 'R. Adauto Bezerra Delgado, 94 - Parque Casa de Pedra, São Paulo - SP, 02320-110', 20, NULL, 'Jaçanã / Tremembé', -23.4501244, -46.596707, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4501244, -- Use merged value
    longitude = -46.596707, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1753', 'CEU - Vila Alpina - Professora Virginia Leone Bicudo', 'Manutenção Unidades Educacionais', 'Rua João Pedro Lecór, 144 - Vila Alpina, São Paulo - SP, 03227-190', 20, NULL, 'Vila Prudente ', -23.58415, -46.56739, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.58415, -- Use merged value
    longitude = -46.56739, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1754', 'EMEF -  Marechal Deodoro da Fonseca', 'Manutenção Unidades Educacionais', 'Praca Imprensa Paulista, 30 - Caxingui, São Paulo - SP, 05517-020', 20, NULL, 'Butantã ', -23.5826748, -46.7242985, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5826748, -- Use merged value
    longitude = -46.7242985, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1755', 'EMEF - Artur Neiva', 'Manutenção Unidades Educacionais', 'Av. Nossa Sra. de Guadalupe, 212 - Jardim Helena, São Paulo - SP, 08420-130', 20, NULL, NULL, -23.5394239, -46.4282876, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5394239, -- Use merged value
    longitude = -46.4282876, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1756', 'EMEF - Recanto dos Humildes', 'Manutenção Unidades Educacionais', 'R. Argélia, S/N - Jardim da Conquista (Zona Oeste), São Paulo - SP, 05212-020', 20, NULL, 'Perus ', -23.4174589, -46.7485366, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4174589, -- Use merged value
    longitude = -46.7485366, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1758', 'EMEI - Jose Bonifacio de Andrada e Silva', 'Manutenção Unidades Educacionais', 'R. Dr. César, 581 - Santana, São Paulo - SP, 02013-002', 20, NULL, 'Santana / Tucuruvi', -23.5030556, -46.6316575, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5030556, -- Use merged value
    longitude = -46.6316575, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1759', 'EMEI - Professora Rosa Maira Dogo de Resende', 'Manutenção Unidades Educacionais', 'R. Zike Tuma, 640 - Jardim Ubirajara (Zona Sul), São Paulo - SP, 04458-000', 20, NULL, 'Santo Amaro ', -23.6895534, -46.6723126, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6895534, -- Use merged value
    longitude = -46.6723126, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1760', 'CEI -  Rua Conde de Itaguai X Br de Castro Lima  - Setor Educacional 5404', 'Manutenção Unidades Educacionais', 'Rua Conde de Itaguai X Br de Castro Lima, 478- Real Parque, São Paulo- SP, 05685-040', 20, NULL, 'Butantã ', -23.6086362, -46.7039941, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6086362, -- Use merged value
    longitude = -46.7039941, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1761', 'CEI -  Rua Major José Mariotto Ferreira (Antiga EMEF -  Casarão)  - Setor Educacional 8302', 'Manutenção Unidades Educacionais', 'R. Maj. José Marioto Ferreira, 101 - Escola Casarao, São Paulo - SP, 05662-020', 20, NULL, 'Campo Limpo ', -23.6128736, -46.7228233, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6128736, -- Use merged value
    longitude = -46.7228233, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1762', 'CEI -  Ponte Pequena - Setor Educacional 0901', 'Manutenção Unidades Educacionais', 'Av. Santos Dumont, 843 - Bom Retiro, São Paulo - SP, 01101-000', 20, NULL, 'SÉ', -23.5204917, -46.632013, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5204917, -- Use merged value
    longitude = -46.632013, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1763', 'CEI - Rua Julio Colaço - Setor Educacional 9101', 'Manutenção Unidades Educacionais', 'R. Júlio Colaço, 559-447 - Vila Matilde, São Paulo - SP, 03502-050', 20, NULL, 'Penha ', -23.538024, -46.542813, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.538024, -- Use merged value
    longitude = -46.542813, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1764', 'CEMEI - Rua das Três Marias   - Setor Educacional 4301', 'Manutenção Unidades Educacionais', 'Rua das Três Marias, 6 - Jardim Turquesa, São Paulo - SP, 05874-180', 20, NULL, 'M´Boi Mirim', -23.7017881, -46.784212, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7017881, -- Use merged value
    longitude = -46.784212, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1765', 'CEMEI - Tremembé (EE Phylomena Bailão)  - Setor Educacional 8103', 'Manutenção Unidades Educacionais', 'Av. Cel. Sezefredo Fagundes, 14666 - Tucuruvi, São Paulo - SP, 02368-000', 20, NULL, 'Jaçanã / Tremembé', -23.4175499, -46.5842285, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4175499, -- Use merged value
    longitude = -46.5842285, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1766', 'EMEF - KM 28,AV SAPOPEMBA-ESTR RIO CLARO - Setor Educacional 7505', 'Manutenção Unidades Educacionais', 'Av. Sapopemba, 16856-17158 - São Rafael, São Paulo - SP, 08330-180', 20, NULL, 'São Mateus ', -23.6232916, -46.4453286, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6232916, -- Use merged value
    longitude = -46.4453286, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1767', 'EMEF - Rua das Três Marias  - Setor Educacional 4301', 'Manutenção Unidades Educacionais', 'Rua das Três Marias, 6 - Jardim Turquesa, São Paulo - SP, 05874-180', 20, NULL, 'M´Boi Mirim', -23.7017881, -46.784212, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7017881, -- Use merged value
    longitude = -46.784212, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1768', 'EMEI -  Rua Frederico Rene de Jaegher 1631   - Setor Educacional 2307', 'Manutenção Unidades Educacionais', 'R. Frederico René de Jaegher, 1631 - Rio BonitoSão Paulo - SP, 04826-010', 20, NULL, 'Capela do Socorro ', -23.7253238, -46.7117247, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7253238, -- Use merged value
    longitude = -46.7117247, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1769', 'EMEI -  Rua Henry Fuselli - Setor Educacional 7602', 'Manutenção Unidades Educacionais', 'Rua Henry Fuseli, 367 - Parque dos Bancarios, São Paulo - SP, 03923-030', 20, NULL, 'Sapopemba', -23.5919539, -46.512369, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5919539, -- Use merged value
    longitude = -46.512369, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1770', 'EMEI -  Rua Sessenta e Três X Rua Sessenta e Seis - Setor Educacional 3307', 'Manutenção Unidades Educacionais', 'Conj. Promorar Rio Claro, São Paulo - SP, 02851-180', 20, NULL, 'São Mateus ', -23.6211998, -46.4546079, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6211998, -- Use merged value
    longitude = -46.4546079, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1771', 'EMEI - Av Cangaiba x José da Penha x Rua São José do Campestre - Setor Educacional 1801 / 1802', 'Manutenção Unidades Educacionais', 'R. São José do Campestre, 842 - Jardim Danfer, São Paulo - SP, 03728-000', 20, NULL, 'Penha ', -23.504493, -46.5070339, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.504493, -- Use merged value
    longitude = -46.5070339, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1772', 'EMEI - Av Elisio Teixeira Leite x Rua Monte Azul Paulista - Setor Educacional 4208', 'Manutenção Unidades Educacionais', 'Av. Elísio Teixeira Leite, 7367 - Sítio Morro Grande, São Paulo - SP, 02810-000', 20, NULL, 'Pirituba / Jaraguá', -23.4398709, -46.717008, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4398709, -- Use merged value
    longitude = -46.717008, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1773', 'EMEI  - Av. Dona Belmira Marin 3411  - Setor Educacional 3010', 'Manutenção Unidades Educacionais', 'Av. Dona Belmira Marin, 3411 - Parque Brasil, São Paulo - SP, 04846-000', 20, NULL, 'Capela do Socorro ', -23.7524625, -46.682996, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7524625, -- Use merged value
    longitude = -46.682996, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1774', 'EMEI - Av. Mauro Marques da Silva x Av. João José Gomes   - Setor Educacional 6703', 'Manutenção Unidades Educacionais', 'Av. João José Gomes, 234 - Vila Antonio, São Paulo - SP, 05376-100', 20, NULL, 'Butantã ', -23.5810028, -46.768375, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5810028, -- Use merged value
    longitude = -46.768375, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1775', 'EMEI - Ilha da Vitória', 'Manutenção Unidades Educacionais', 'R. Ilha da Vitoria, 58 - Vila Perus, São Paulo - SP, 05209-295', 20, NULL, 'Perus ', -23.4194382, -46.7492003, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4194382, -- Use merged value
    longitude = -46.7492003, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1776', 'EMEI - Rua Dom Mateus - Setor Educacional 7505', 'Manutenção Unidades Educacionais', 'R. Dom Mateus, 139 - Vila Monumento, São Paulo - SP, 01548-030', 20, NULL, 'Ipiranga ', -23.5759864, -46.6134343, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5759864, -- Use merged value
    longitude = -46.6134343, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1777', 'CEI - Diret Jardim Campos', 'Manutenção Unidades Educacionais', 'R. Ilha de Maruí, 32 - Jardim Campos, São Paulo - SP, 08151-710', 20, NULL, 'Itaim Paulista ', -23.510356, -46.4066536, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.510356, -- Use merged value
    longitude = -46.4066536, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1778', 'CEI - Diret Jardim Colorado', 'Manutenção Unidades Educacionais', 'R. José de Araújo Viêira, 30 - Jardim Rodolfo Pirani, São Paulo - SP, 08310-240', 20, NULL, 'São Mateus ', -23.6272922, -46.462829, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6272922, -- Use merged value
    longitude = -46.462829, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1779', 'CEI - Diret Jardim Eliana', 'Manutenção Unidades Educacionais', 'Rua Henry Arthur Jones, 88 - Jardim Edi, São Paulo - SP, 04851-002', 20, NULL, 'Capela do Socorro ', -23.7531706, -46.6720403, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7531706, -- Use merged value
    longitude = -46.6720403, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1780', 'CEI - Diret Jardim Ipanema', 'Manutenção Unidades Educacionais', 'R. Virgínia Galilei, 107 - Jardim Ipanema(Zona Oeste), São Paulo - SP, 05187-060', 20, NULL, 'Pirituba / Jaraguá', -23.4438605, -46.7499879, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4438605, -- Use merged value
    longitude = -46.7499879, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1781', 'CEI - Diret Jardim Miliunas', 'Manutenção Unidades Educacionais', 'R. Sargaço, 437 - Jardim Meliunas, São Paulo - SP, 08111-370', 20, NULL, 'Itaim Paulista ', -23.4983028, -46.3719401, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4983028, -- Use merged value
    longitude = -46.3719401, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1782', 'CEI - Diret Jardim Rincão', 'Manutenção Unidades Educacionais', 'R. Xavier dos Passaros, 100 - Jardim Rincão - São Paulo - SP, 02991100', 20, NULL, 'Pirituba / Jaraguá', -23.4380591, -46.7284175, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4380591, -- Use merged value
    longitude = -46.7284175, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1783', 'CEI - Diret Jardim Rodolfo Pirani', 'Manutenção Unidades Educacionais', 'R. Cinira Polonio, 20 - Conj.Promorar Rio Claro - São Paulo - SP, 08395320', 20, NULL, 'São Mateus ', -23.6197103, -46.456412, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6197103, -- Use merged value
    longitude = -46.456412, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1784', 'CEI - Diret Jardim Rosely', 'Manutenção Unidades Educacionais', 'R. José de Lima, 80 - Jardim Roseli, São Paulo - SP, 08380-054', 20, NULL, 'São Mateus ', -23.6196709, -46.4563262, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6196709, -- Use merged value
    longitude = -46.4563262, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1785', 'CEI - Diret Jocelyne Guimarães Fernandes De Mello', 'Manutenção Unidades Educacionais', 'R. Utaro Kanai, 286 - Conj. Hab. Juscelino Kubitschek, São Paulo - SP, 08465-000', 20, NULL, 'Guaianazes ', -23.565708, -46.399138, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.565708, -- Use merged value
    longitude = -46.399138, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1786', 'CEI - Diret Parque Boturussu', 'Manutenção Unidades Educacionais', 'R. João Antônio Andrade, 495 - Parque Boturussu, São Paulo - SP, 03805-070', 20, NULL, 'Ermelino Matarazzo ', -23.5029562, -46.4811582, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5029562, -- Use merged value
    longitude = -46.4811582, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1787', 'CEI - Diret Paulo Cesar Fontelles De Lima', 'Manutenção Unidades Educacionais', 'Av. João Neri de Carvalho, 781 - São Miguel Paulista, São Paulo - SP, 08021-010', 20, NULL, 'São Miguel Paulista ', -23.497053, -46.433696, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.497053, -- Use merged value
    longitude = -46.433696, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1788', 'CEI - Diret José Ozi Prof.', 'Manutenção Unidades Educacionais', 'Rua Bartolomeo Veneto, 200 - Vila Tiradentes, São Paulo - SP, 05364-030', 20, NULL, 'Butantã ', -23.57213, -46.75137, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.57213, -- Use merged value
    longitude = -46.75137, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1789', 'CEI - Diret Mario Pereira Costa Profº', 'Manutenção Unidades Educacionais', ' R. Arroio Arapongas, 159 - Conj. Hab. Santa Etelvina III, São Paulo - SP, 08485-440', 20, NULL, 'Cidade Tiradentes ', -23.5841715, -46.4133492, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5841715, -- Use merged value
    longitude = -46.4133492, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1790', 'CEI - Diret Maria Augusta De Paula Profª', 'Manutenção Unidades Educacionais', 'R. dos Pedreiros, 135 - Cidade Tiradentes, São Paulo - SP, 08471-330', 20, NULL, 'Cidade Tiradentes ', -23.6048397, -46.3995842, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6048397, -- Use merged value
    longitude = -46.3995842, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1791', 'CEI - Diret Pedro Brasil Bandecchi Ver.', 'Manutenção Unidades Educacionais', 'R. Maria Amélia de Assunção, 185 - Jardim Etelvina, São Paulo - SP, 08430-560', 20, NULL, 'Guaianazes ', -23.5291194, -46.4212699, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5291194, -- Use merged value
    longitude = -46.4212699, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1792', 'CEI - Diret Vila Carmosina', 'Manutenção Unidades Educacionais', 'Rua Waldemar Mancini, 666 - Itaquera, São Paulo - SP, 08295-290', 20, NULL, 'Itaquera ', -23.5500745, -46.4561367, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5500745, -- Use merged value
    longitude = -46.4561367, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1793', 'CEI - Indiret Jardim Ipanema I', 'Manutenção Unidades Educacionais', 'R. Alfredo Vasconcelos, 86 - Jardim Arize, São Paulo - SP, 03573-150', 20, NULL, 'Itaquera ', -23.5610597, -46.5073529, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5610597, -- Use merged value
    longitude = -46.5073529, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1794', 'CEI - Indiret Paulo Francisco Seckler Pucca', 'Manutenção Unidades Educacionais', 'Av. Dona Belmira Marin, 2500 – Parque Brasil, São Paulo – SP, 04846-000', 20, NULL, 'Capela do Socorro ', -23.7529368, -46.6888195, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7529368, -- Use merged value
    longitude = -46.6888195, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1795', 'CEI - Indret Cohab Educandário', 'Manutenção Unidades Educacionais', 'R. José Porfírio de Souza, S/N - Jardim Raposo Tavares, São Paulo - SP, 05563-090', 20, NULL, 'Butantã ', -23.5991539, -46.7835527, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5991539, -- Use merged value
    longitude = -46.7835527, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1796', 'CEI - Diret Angela Maria Fernandes', 'Manutenção Unidades Educacionais', 'R. Cabo Alfredo Clemente, 200 - Jardim Sul Sao Paulo, São Paulo - SP, 04413-070', 20, NULL, 'Jabaquara ', -23.6714445, -46.6368243, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6714445, -- Use merged value
    longitude = -46.6368243, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1797', 'CEI - Diret Araucárias', 'Manutenção Unidades Educacionais', 'Rua Alberto Fink, S/N - Conj. Res. José Bonifácio, São Paulo - SP, 08255-040', 20, NULL, 'Itaquera ', -23.5564268, -46.4345132, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5564268, -- Use merged value
    longitude = -46.4345132, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1798', 'CEI - Diret Brigadeiro Cohab Faria Lima', 'Manutenção Unidades Educacionais', 'R. Aparecida D''oeste, 145 - Conj. Hab. Brg. Faria Lima, São Paulo - SP, 04840-280', 20, NULL, 'Capela do Socorro ', -23.7563002, -46.6837459, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7563002, -- Use merged value
    longitude = -46.6837459, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1799', 'CEI - Diret Casa Verde - Walter Abrahão', 'Manutenção Unidades Educacionais', 'R. Brazelisa Alves de Carvalho, 500 - Casa Verde, São Paulo - SP, 02510-030', 20, NULL, 'Casa Verde ', -23.5111134, -46.6507431, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5111134, -- Use merged value
    longitude = -46.6507431, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1800', 'CEI - Diret Domingos Rufino De Souza', 'Manutenção Unidades Educacionais', 'R. Navarra, 260 - Vila Santa Catarina, São Paulo - SP, 04374-020', 20, NULL, 'Jabaquara ', -23.6512486, -46.6537341, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6512486, -- Use merged value
    longitude = -46.6537341, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1801', 'CEI - Diret Dorothy Stang', 'Manutenção Unidades Educacionais', 'Rua Joaquim Antônio de Souza, 61 - Cidade Líder, São Paulo - SP, 08285-190', 20, NULL, 'Itaquera ', -23.5557503, -46.4757051, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5557503, -- Use merged value
    longitude = -46.4757051, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1802', 'CEI - Diret Antônio João Abdalla Dr. ', 'Manutenção Unidades Educacionais', 'R. Ângelo Aparecido dos Santos Dias, 257 - Jardim São Jorge, São Paulo - SP, 05568-090', 20, NULL, 'Butantã ', -23.5917657, -46.7833355, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5917657, -- Use merged value
    longitude = -46.7833355, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1803', 'CEI - Diret Goiti', 'Manutenção Unidades Educacionais', 'R. dos Lírios, 1 - Cidade Antônio Estêvão de Carvalho, São Paulo - SP, 08220-152', 20, NULL, 'Itaquera ', -23.539194, -46.468252, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.539194, -- Use merged value
    longitude = -46.468252, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1804', 'CEI - Diret Helena Iracy Junqueira', 'Manutenção Unidades Educacionais', 'R. Eudora, 56 - Vila do Encontro, São Paulo - SP, 04324-240', 20, NULL, 'Jabaquara ', -23.6569078, -46.6381474, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6569078, -- Use merged value
    longitude = -46.6381474, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1805', 'CEI - Diret Inocoop Ipiranga', 'Manutenção Unidades Educacionais', 'R. Barbinos, S/N - São João Climaco, São Paulo - SP, 04240-110', 20, NULL, 'Ipiranga ', -23.6216161, -46.5837957, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6216161, -- Use merged value
    longitude = -46.5837957, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1806', 'CEI - Diret Jacarandá', 'Manutenção Unidades Educacionais', 'Rua Augusto Cavalcanti, 198 - Conj. Res. José Bonifácio, São Paulo - SP, 08253-110', 20, NULL, 'Itaquera ', -23.5441808, -46.4364618, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5441808, -- Use merged value
    longitude = -46.4364618, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1807', 'CEI - Diret Jardim Das Pedras', 'Manutenção Unidades Educacionais', 'R. Eng. Antônio de Tolêdo, 338 - Jardim das Pedras, São Paulo - SP, 02367-010', 20, NULL, 'Jaçanã / Tremembé', -23.4192796, -46.590997, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4192796, -- Use merged value
    longitude = -46.590997, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1808', 'CEI - Diret Jardim Helena', 'Manutenção Unidades Educacionais', 'R. Almeida Falcão, 95 - Jardim Helena, São Paulo - SP, 08371-190', 20, NULL, 'São Mateus ', -23.5963995, -46.4510559, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5963995, -- Use merged value
    longitude = -46.4510559, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1809', 'CEI - Diret Jardim Primavera I', 'Manutenção Unidades Educacionais', 'R. Crisólia, 526 - Jardim Primavera, São Paulo - SP, 02756-000', 20, NULL, 'Casa Verde ', -23.4859322, -46.6804055, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4859322, -- Use merged value
    longitude = -46.6804055, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1810', 'CEI - Diret Jardim São Luiz I', 'Manutenção Unidades Educacionais', 'Rua Arquiteto Roberto Patrão Assis, 36 - Conj. Promorar Sao Luis, São Paulo - SP, 05846-100', 20, NULL, 'M´Boi Mirim', -23.6579819, -46.7434154, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6579819, -- Use merged value
    longitude = -46.7434154, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1811', 'CEI - Diret Jardim São Martinho', 'Manutenção Unidades Educacionais', 'R. Erva do Sereno, 31 - Jardim Maia, São Paulo - SP, 08180-010', 20, NULL, 'São Miguel Paulista ', -23.4839038, -46.41846, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4839038, -- Use merged value
    longitude = -46.41846, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1812', 'CEI - Diret Madre Paulina', 'Manutenção Unidades Educacionais', 'R. Alexandre Davidenko, 801 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-592', 20, NULL, 'Cidade Tiradentes ', -23.5887471, -46.3899862, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5887471, -- Use merged value
    longitude = -46.3899862, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1813', 'CEI - Diret Maria Aparecida Dos Santos', 'Manutenção Unidades Educacionais', 'R. Estevão Pinheiro, 217 - Jardim Elza, São Paulo - SP, 08121-360', 20, NULL, 'Itaim Paulista ', -23.5056782, -46.3836562, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5056782, -- Use merged value
    longitude = -46.3836562, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1814', 'CEI - Diret Neide Ketelhut', 'Manutenção Unidades Educacionais', 'Av. Cláudio da Costa, 312 - Jardim Aurora, São Paulo - SP, 08431-160', 20, NULL, 'Guaianazes ', -23.5372402, -46.4195409, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5372402, -- Use merged value
    longitude = -46.4195409, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1815', 'CEI - Diret O Pequeno Seareiro', 'Manutenção Unidades Educacionais', 'R. Dr. Vitor Eugênio do Sacramento, 328 - Jardim Oriental, São Paulo - SP, 04348-020', 20, NULL, 'Jabaquara ', -23.6463385, -46.6506477, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6463385, -- Use merged value
    longitude = -46.6506477, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1816', 'CEI - Diret Parada Xv De Novembro', 'Manutenção Unidades Educacionais', 'R. Ibiajara, 111 - Parada XV de Novembro, São Paulo - SP, 08246-100', 20, NULL, 'Itaquera ', -23.5271033, -46.4357578, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5271033, -- Use merged value
    longitude = -46.4357578, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1817', 'CEI - Diret Parque Cocaia', 'Manutenção Unidades Educacionais', 'R. Tavarede, 84 - Parque Cocaia, São Paulo - SP, 04850-080', 20, NULL, 'Capela do Socorro ', -23.7476307, -46.6775759, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7476307, -- Use merged value
    longitude = -46.6775759, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1818', 'CEI - Diret Piqueri - Sao Francisco', 'Manutenção Unidades Educacionais', 'R. Olímpio Tomás Fernandes, 1 - Piqueri, São Paulo - SP, 02912-080', 20, NULL, 'Pirituba / Jaraguá', -23.5068966, -46.7100039, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5068966, -- Use merged value
    longitude = -46.7100039, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1819', 'CEI - Diret Shangri - La - Maria Pedroza De Oliveira Profa', 'Manutenção Unidades Educacionais', 'R. Salvador de Albuquerque, 124 - Jardim Shangrila (Zona Norte), São Paulo - SP, 02990-050', 20, NULL, 'Pirituba / Jaraguá', -23.4258191, -46.7254829, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4258191, -- Use merged value
    longitude = -46.7254829, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1820', 'CEI - Diret Tancredo De Almeida Neves Pres.', 'Manutenção Unidades Educacionais', 'Rua Jacques Le Mercier, S/N - Jardim Mariane, São Paulo - SP, 05866-050', 20, NULL, 'M´Boi Mirim', -23.6795604, -46.7673999, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6795604, -- Use merged value
    longitude = -46.7673999, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1821', 'CEI - Diret Laercio Corte Ver.', 'Manutenção Unidades Educacionais', 'Rua Belarmino Prestes, 44 - Jardim Jaragua (Sao Domingos), São Paulo - SP, 05158-340', 20, NULL, 'Pirituba / Jaraguá', -23.4888506, -46.7588815, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4888506, -- Use merged value
    longitude = -46.7588815, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1822', 'CEI - Diret Raul Tabajara Vidigal Leitão Ver.', 'Manutenção Unidades Educacionais', 'Av. José Estevão de Magalhães, 356 - Vila Campestre, São Paulo - SP, 04332-050', 20, NULL, 'Jabaquara ', -23.6587349, -46.6502891, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6587349, -- Use merged value
    longitude = -46.6502891, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1823', 'CEI - Diret Roberto Gomes Pedrosa Ver. ', 'Manutenção Unidades Educacionais', 'R. Borges de Medeiros, 79 - Vila Fatima, São Paulo - SP, 03920-010', 20, NULL, 'Sapopemba', -23.5960425, -46.5186567, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5960425, -- Use merged value
    longitude = -46.5186567, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1824', 'CEI - Indiret Aparecida Das Gracas Silva Roseira', 'Manutenção Unidades Educacionais', 'Rua Luigi Alamanni, 96 - São João Climaco, São Paulo - SP, 04240-020', 20, NULL, 'Ipiranga ', -23.621247, -46.5909511, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.621247, -- Use merged value
    longitude = -46.5909511, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1825', 'CEI - Indiret Camelias', 'Manutenção Unidades Educacionais', 'Rua Cangica, 70 - Jardim das Camelias, São Paulo - SP, 08050-390', 20, NULL, 'São Miguel Paulista ', -23.5110967, -46.458455, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5110967, -- Use merged value
    longitude = -46.458455, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1826', 'CEI - Indiret Cardeal Motta', 'Manutenção Unidades Educacionais', 'R. Eng. José Bueno Bicalho, 387 - Jardim Vergueiro, São Paulo - SP, 04176-260', 20, NULL, 'Ipiranga ', -23.6324235, -46.6035894, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6324235, -- Use merged value
    longitude = -46.6035894, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1827', 'CEI - Indiret Carrão II', 'Manutenção Unidades Educacionais', 'Av. Conselheiro Carrão, 143 - Vila Carrao, São Paulo - SP, 03403-000', 20, NULL, 'Aricanduva ', -23.5369274, -46.5562971, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5369274, -- Use merged value
    longitude = -46.5562971, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1828', 'CEI - Indiret Conjunto Habitacional Baltazar Cisneros', 'Manutenção Unidades Educacionais', 'Rua Balandia, 33 - Jardim Moreno, São Paulo - SP, 08430-860', 20, NULL, 'Guaianazes ', -23.5331829, -46.4226969, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5331829, -- Use merged value
    longitude = -46.4226969, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1829', 'CEI - Indiret Erik Gunnar Eriksson', 'Manutenção Unidades Educacionais', 'R. Saquarema, 59 - Vila Prudente, São Paulo - SP, 03125-090', 20, NULL, 'Vila Prudente ', -23.5824392, -46.5899368, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5824392, -- Use merged value
    longitude = -46.5899368, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1830', 'CEI - Indiret Esperança', 'Manutenção Unidades Educacionais', 'Av. do Progresso, 490 - Jardim Marilu, São Paulo - SP, 08371-410', 20, NULL, 'São Mateus ', -23.5960931, -46.4207726, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5960931, -- Use merged value
    longitude = -46.4207726, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1831', 'CEI - Indiret Frank Duff', 'Manutenção Unidades Educacionais', 'R. Freguesia de São Romão, 565  - Jardim HelenaSão Paulo - SP, 08180-150', 20, NULL, 'São Miguel Paulista ', -23.4855608, -46.40861, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4855608, -- Use merged value
    longitude = -46.40861, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1832', 'CEI - Indiret Gleba São Francisco', 'Manutenção Unidades Educacionais', 'R. Elsa Morante, 62 - Jardim Sao Francisco, São Paulo - SP, 08390-324', 20, NULL, 'São Mateus ', -23.6321935, -46.4480354, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6321935, -- Use merged value
    longitude = -46.4480354, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1833', 'CEI - Indiret Ilha Da Juventude', 'Manutenção Unidades Educacionais', 'R. Ilha da Juventude, 88 - Brasilândia, São Paulo - SP', 20, NULL, 'Pirituba / Jaraguá', -23.449252, -46.716495, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.449252, -- Use merged value
    longitude = -46.716495, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1834', 'CEI - Indiret Italo Brasil Portieri', 'Manutenção Unidades Educacionais', 'Rua Pedro de Toledo, 1809 - Vila Clementino, São Paulo - SP, 04039-000', 20, NULL, 'Vila Mariana ', -23.5974684, -46.6551549, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5974684, -- Use merged value
    longitude = -46.6551549, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1835', 'CEI - Indiret Itaquera B', 'Manutenção Unidades Educacionais', 'R. Augustin Luberti, 602 - Fazenda da Juta, São Paulo - SP, 03977-409', 20, NULL, 'Sapopemba', -23.6182372, -46.48766, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6182372, -- Use merged value
    longitude = -46.48766, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1836', 'CEI - Indiret Jaguare', 'Manutenção Unidades Educacionais', 'Av. Gen. Mac Arthur, 50 - Vila Lageado, São Paulo - SP, 05338-000', 20, NULL, 'Lapa ', -23.556693, -46.749747, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.556693, -- Use merged value
    longitude = -46.749747, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1837', 'CEI - Indiret Jaraguá I', 'Manutenção Unidades Educacionais', 'Rua Angelo da Silva, 1790 - Parque Nações Unidas, São Paulo - SP, 02675-031', 20, NULL, 'Pirituba / Jaraguá', -23.444119, -46.732933, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.444119, -- Use merged value
    longitude = -46.732933, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1838', 'CEI - Indiret Jardim São Carlos II', 'Manutenção Unidades Educacionais', 'Rua São Pedro do Jequitinhonha, 27 - Jardim Sao Carlos (Zona Leste), São Paulo - SP, 08062-300', 20, NULL, 'São Miguel Paulista ', -23.5134087, -46.47597, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5134087, -- Use merged value
    longitude = -46.47597, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1839', 'CEI - Indiret Paola', 'Manutenção Unidades Educacionais', 'R. Paola, 185 - Recanto Marisa, São Paulo - SP, 04851-103', 20, NULL, 'Capela do Socorro ', -23.7521007, -46.6704132, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7521007, -- Use merged value
    longitude = -46.6704132, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1840', 'CEI - Indiret São Luis Gonzaga', 'Manutenção Unidades Educacionais', 'R. Gertrudes Cunha, 30 - Jardim Ester Yolanda, São Paulo - SP, 05374-050', 20, NULL, 'Butantã ', -23.5711828, -46.7574277, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5711828, -- Use merged value
    longitude = -46.7574277, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1841', 'CEI - Indiret Sitio Conceição CEI', 'Manutenção Unidades Educacionais', 'R. Wilson Fernando São Carvalho, 215 - Conj. Hab. Sitio Conceicao, São Paulo - SP, 08473-000', 20, NULL, 'Cidade Tiradentes ', -23.578218, -46.3924915, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.578218, -- Use merged value
    longitude = -46.3924915, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1842', 'CEI - Indiret Teotonio Vilela II', 'Manutenção Unidades Educacionais', 'R. Francesco Usper, 650 - Conj. Hab. Teotonio Vilela, São Paulo - SP, 03928-235', 20, NULL, 'Sapopemba', -23.6061996, -46.4970383, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6061996, -- Use merged value
    longitude = -46.4970383, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1843', 'CEI - Indiret Vila Nova Cachoeirinha', 'Manutenção Unidades Educacionais', 'Av. General Penha Brasil, 61 - Vila Nova Cachoeirinha, São Paulo - SP, 02673-000', 20, NULL, 'Casa Verde ', -23.4702213, -46.6661419, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4702213, -- Use merged value
    longitude = -46.6661419, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1844', 'EMEBS - Lucie Bray Me', 'Manutenção Unidades Educacionais', 'R. São Geraldino, 236 - Vila Constança, São Paulo - SP, 02258-220', 20, NULL, 'Jaçanã / Tremembé', -23.475146, -46.5813819, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.475146, -- Use merged value
    longitude = -46.5813819, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1845', 'EMEF - Almirante Ary Parreiras', 'Manutenção Unidades Educacionais', 'R. Ipaobi, 142 - Vila Babilonia, São Paulo - SP, 04351-050', 20, NULL, 'Jabaquara ', -23.6439067, -46.6559591, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6439067, -- Use merged value
    longitude = -46.6559591, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1846', 'EMEF - Antônio Carlos De Andrada E Silva', 'Manutenção Unidades Educacionais', 'Av. Baltazar Santana, 365 - Jardim Planalto, São Paulo - SP, 08040-420', 20, NULL, 'São Miguel Paulista ', -23.508541, -46.4474109, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.508541, -- Use merged value
    longitude = -46.4474109, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1847', 'EMEF - Desembargador Francisco Meirelles', 'Manutenção Unidades Educacionais', 'R. Campante, 357 - Vila Independencia, São Paulo - SP, 04224-010', 20, NULL, 'Ipiranga ', -23.5970383, -46.5929288, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5970383, -- Use merged value
    longitude = -46.5929288, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1848', 'EMEF - Edgard Cavaleiro', 'Manutenção Unidades Educacionais', 'R. Porto da Glória, 342 - Vila Mesquita, São Paulo - SP, 03714-050', 20, NULL, 'Penha ', -23.5073627, -46.5416645, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5073627, -- Use merged value
    longitude = -46.5416645, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1849', 'EMEF - Frei Francisco Mont''Alverne', 'Manutenção Unidades Educacionais', 'R. São Celso, 365 - Vila Domitila, São Paulo - SP, 03626-000', 20, NULL, 'Ermelino Matarazzo ', -23.5136957, -46.5076053, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5136957, -- Use merged value
    longitude = -46.5076053, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1850', 'EMEF - Jardim Montebelo', 'Manutenção Unidades Educacionais', 'R. Palmeirópolis, S/N - Jardim Monte Belo, São Paulo - SP, 05272-005', 20, NULL, 'Perus ', -23.4431776, -46.8015868, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4431776, -- Use merged value
    longitude = -46.8015868, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1851', 'EMEF - João Domingues Sampaio', 'Manutenção Unidades Educacionais', 'R. Gastão Madeira, 386 - Vila Maria Alta, São Paulo - SP, 02131-080', 20, NULL, 'Vila Maria / Vila Guilherme', -23.505986, -46.5848752, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.505986, -- Use merged value
    longitude = -46.5848752, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1852', 'EMEF - João Gualberto Do Amaral Carvalho', 'Manutenção Unidades Educacionais', 'R. João Franco Oliveira, 150 - Campininha, São Paulo - SP, 04678-100', 20, NULL, 'Santo Amaro ', -23.6712532, -46.6815862, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6712532, -- Use merged value
    longitude = -46.6815862, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1853', 'EMEF - José Bonifácio', 'Manutenção Unidades Educacionais', 'R. Dr. Frederico Brotero, 134 - Cidade Patriarca, São Paulo - SP, 03552-080', 20, NULL, 'Penha ', -23.5365057, -46.5044605, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5365057, -- Use merged value
    longitude = -46.5044605, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1854', 'EMEF - Mauricio Goulart', 'Manutenção Unidades Educacionais', 'R. René de Toledo, 700 - Cidade Tiradentes, São Paulo - SP, 08471-740', 20, NULL, 'Cidade Tiradentes ', -23.6028135, -46.4048317, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6028135, -- Use merged value
    longitude = -46.4048317, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1855', 'EMEF - José Carlos De Figueiredo Ferraz Pref. ', 'Manutenção Unidades Educacionais', 'R. Alexander Bain, 89 - Jardim Nordeste, São Paulo - SP, 03690-060', 20, NULL, 'Penha ', -23.5281131, -46.4795028, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5281131, -- Use merged value
    longitude = -46.4795028, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1856', 'EMEF - Tenente Alipio Andrada Serpa', 'Manutenção Unidades Educacionais', 'R. Nicolau Copérnico, 165 - Jardim Bataglia, São Paulo - SP, 05546-000', 20, NULL, 'Butantã ', -23.5882405, -46.7728438, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5882405, -- Use merged value
    longitude = -46.7728438, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1857', 'EMEF - Aclamado', 'Manutenção Unidades Educacionais', 'R. Curumatim, 390 - Parque Boa Esperança, São Paulo - SP, 08341-240', 20, NULL, 'São Mateus ', -23.6031293, -46.4479257, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6031293, -- Use merged value
    longitude = -46.4479257, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1858', 'EMEF - Amadeu Amaral', 'Manutenção Unidades Educacionais', 'Praça Dr. Toloza de Oliveira, 37 - Jardim Três Marias, São Paulo - SP, 03676-090', 20, NULL, 'Ermelino Matarazzo ', -23.5193064, -46.4940531, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5193064, -- Use merged value
    longitude = -46.4940531, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1859', 'EMEF - Arquiteto Luis Saia ', 'Manutenção Unidades Educacionais', 'R. Américo Gomes da Costa, 93 - Vila Americana, São Paulo - SP, 08010-120', 20, NULL, 'São Miguel Paulista ', -23.4945769, -46.4406072, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4945769, -- Use merged value
    longitude = -46.4406072, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1860', 'EMEF - Barão De Mauá', 'Manutenção Unidades Educacionais', 'R. Madrid, 550 - Parque Sevilha, São Paulo - SP, 03157-010', 20, NULL, 'Mooca ', -23.5756078, -46.5701936, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5756078, -- Use merged value
    longitude = -46.5701936, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1861', 'EMEF - Capistrano De Abreu', 'Manutenção Unidades Educacionais', 'Rua Cachoeira Mangaval - 120 - Vila Itaim, São Paulo - SP, 08190-350', 20, NULL, 'São Miguel Paulista ', -23.4901004, -46.3944085, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4901004, -- Use merged value
    longitude = -46.3944085, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1862', 'EMEF - Coelho Neto', 'Manutenção Unidades Educacionais', 'R. Diogo Garcia, 128 - Parque Boa Esperança, São Paulo - SP, 08370-030', 20, NULL, 'São Mateus ', -23.5984124, -46.4538062, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5984124, -- Use merged value
    longitude = -46.4538062, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1863', 'EMEF - Dom Henrique Infante', 'Manutenção Unidades Educacionais', 'R. Teodoro Mascarenhas, 133 - Vila Matilde, São Paulo - SP, 03515-010', 20, NULL, 'Penha ', -23.5419618, -46.5318171, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5419618, -- Use merged value
    longitude = -46.5318171, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1864', 'EMEF - Emiliano Di Cavalcanti', 'Manutenção Unidades Educacionais', 'R. Alm. Alexandrino, 541 - Vila Invernada, São Paulo - SP, 03350-010', 20, NULL, 'Mooca ', -23.5700586, -46.5682361, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5700586, -- Use merged value
    longitude = -46.5682361, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1865', 'EMEF - Juarez Távora Mal. ', 'Manutenção Unidades Educacionais', 'R. Japaraiquara, 679 - Vila Rio Branco, São Paulo - SP, 03744-060', 20, NULL, 'Ermelino Matarazzo ', -23.5072325, -46.4927898, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5072325, -- Use merged value
    longitude = -46.4927898, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1866', 'EMEF - Mururés', 'Manutenção Unidades Educacionais', 'R. dos Mururés, 434 - Jardim Helena, São Paulo - SP, 08090-580', 20, NULL, 'São Miguel Paulista ', -23.4765535, -46.4186484, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4765535, -- Use merged value
    longitude = -46.4186484, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1867', 'EMEF - Oliveira Viana', 'Manutenção Unidades Educacionais', 'R. Prof. Barroso do Amaral, 694 - Vila Santa Lucia, São Paulo - SP, 04937-010', 20, NULL, 'M´Boi Mirim', -23.686767, -46.7634642, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.686767, -- Use merged value
    longitude = -46.7634642, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1868', 'EMEF - Padre Chico Falconi ', 'Manutenção Unidades Educacionais', 'R. Brilho do Sol, 96 - Jardim Bartira, São Paulo - SP, 08152-110', 20, NULL, 'Itaim Paulista ', -23.5136298, -46.4030569, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5136298, -- Use merged value
    longitude = -46.4030569, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1869', 'EMEF - Padre José De Anchieta ', 'Manutenção Unidades Educacionais', 'Av. Inajá-Guaçu, 13 - Vila Progresso (Zona Leste), São Paulo - SP, 08041-410', 20, NULL, 'São Miguel Paulista ', -23.5187987, -46.4396413, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5187987, -- Use merged value
    longitude = -46.4396413, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1870', 'EMEF - Padre Serafin Martinez Gutierre', 'Manutenção Unidades Educacionais', 'Av. Waldemar Tietz, 1521 - Artur Alvim, São Paulo - SP, 03589-001', 20, NULL, 'Penha ', -23.5512665, -46.4822405, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5512665, -- Use merged value
    longitude = -46.4822405, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1871', 'EMEF - Plinio De Queiroz', 'Manutenção Unidades Educacionais', 'R. Manuel Henriques de Paiva, S/N - Parque Boa Esperança, São Paulo - SP, 08341-080', 20, NULL, 'São Mateus ', -23.601813, -46.4529096, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.601813, -- Use merged value
    longitude = -46.4529096, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1872', 'EMEF - Wladimir De Toledo Piza Pref. ', 'Manutenção Unidades Educacionais', 'Rua Giovanni Mosel, 73 - Recanto Verde do Sol, São Paulo - SP, 08381-855', 20, NULL, 'São Mateus ', -23.6141872, -46.416951, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6141872, -- Use merged value
    longitude = -46.416951, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1873', 'EMEF - Epitácio Pessoa Pres. ', 'Manutenção Unidades Educacionais', 'R. Líbero Ancona Lopez, 169 - Parque Cruzeiro do Sul, São Paulo - SP, 08070-280', 20, NULL, 'São Miguel Paulista ', -23.4967021, -46.4611025, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4967021, -- Use merged value
    longitude = -46.4611025, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1874', 'EMEF - Proessor Felicio Pagliuso', 'Manutenção Unidades Educacionais', 'R. Abner Ribeiro Borges, 224 - Jardim Roseli, São Paulo - SP, 08380-045', 20, NULL, 'São Mateus ', -23.5962611, -46.4415843, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5962611, -- Use merged value
    longitude = -46.4415843, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1875', 'EMEF - Rivadavia Marques Junior Profº', 'Manutenção Unidades Educacionais', 'Rua Dr. Paulo Queiroz - Jardim Nove de Julho, São Paulo - SP, 03951-090', 20, NULL, 'São Mateus ', -23.5892918, -46.4867012, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5892918, -- Use merged value
    longitude = -46.4867012, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1876', 'EMEF - Dirce Genesio Dos Santos Profª', 'Manutenção Unidades Educacionais', 'R. Oscar Muller, 135 - Jardim Iguatemi, São Paulo - SP, 08380-200', 20, NULL, 'São Mateus ', -23.5985493, -46.4426103, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5985493, -- Use merged value
    longitude = -46.4426103, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1877', 'EMEF - Maria Aparecida Vilasboas Profª', 'Manutenção Unidades Educacionais', 'Parque das Flores, São Paulo - SP, 65918-625', 20, NULL, 'São Mateus ', -23.640078, -46.446009, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.640078, -- Use merged value
    longitude = -46.446009, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1878', 'EMEF - Rodrigo Mello Franco De Andrade', 'Manutenção Unidades Educacionais', 'Av. José Velho Barreto, 371 - Parque Colonial, São Paulo - SP, 03968-080', 20, NULL, 'São Mateus ', -23.6051681, -46.4716408, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6051681, -- Use merged value
    longitude = -46.4716408, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1879', 'EMEF - Moisés Elias De Souza Ten. ', 'Manutenção Unidades Educacionais', 'Av. Dep. Cantídio Sampaio, 6590 - Vila Souza, São Paulo - SP, 02860-001', 20, NULL, 'Pirituba / Jaraguá', -23.4345956, -46.7167604, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4345956, -- Use merged value
    longitude = -46.7167604, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1880', 'EMEF - Vinicius De Moraes', 'Manutenção Unidades Educacionais', 'R. Brás Pires, 345 - Jardim Tiete, São Paulo - SP, 03943-090', 20, NULL, 'Sapopemba', -23.598716, -46.498385, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.598716, -- Use merged value
    longitude = -46.498385, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1881', 'EMEF - Vinte E Cinco De Janeiro', 'Manutenção Unidades Educacionais', 'R. Carnaíba, 58 - Vila Diva, São Paulo - SP, 03351-037', 20, NULL, 'Guaianazes ', -23.544533, -46.409681, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.544533, -- Use merged value
    longitude = -46.409681, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1882', 'EMEF - Visconde De Cairu', 'Manutenção Unidades Educacionais', 'Praça Araruva, 199 - Cidade Patriarca, São Paulo - SP, 03552-010', 20, NULL, 'Penha ', -23.5350315, -46.5004864, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5350315, -- Use merged value
    longitude = -46.5004864, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1883', 'EMEI - Arthur Etzel', 'Manutenção Unidades Educacionais', 'Parque Domingos Luís, 20 - Jardim São Paulo, São Paulo - SP, 02043-080', 20, NULL, 'Santana / Tucuruvi', -23.4901185, -46.617691, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4901185, -- Use merged value
    longitude = -46.617691, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1884', 'EMEI - Carlos Gomes', 'Manutenção Unidades Educacionais', 'Pr. Pres. Jânio da Silva Quadros, 316 - Jardim Japao, São Paulo - SP, 02132-000', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5000037, -46.5830922, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5000037, -- Use merged value
    longitude = -46.5830922, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1885', 'EMEI - Mário Alves De Carvalho Dr.', 'Manutenção Unidades Educacionais', 'Parque Dom Pedro I - Vila Invernada, São Paulo - SP, 03351-125', 20, NULL, 'Mooca ', -23.5704027, -46.564749, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5704027, -- Use merged value
    longitude = -46.564749, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1886', 'EMEI - Felipe Doliveira', 'Manutenção Unidades Educacionais', 'R. Antônio Pavão, 65 - Parque Boa Esperança, São Paulo - SP, 08341-070', 20, NULL, 'São Mateus ', -23.6018242, -46.4536616, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6018242, -- Use merged value
    longitude = -46.4536616, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1887', 'EMEI - Fernando Sabino', 'Manutenção Unidades Educacionais', 'R. Olho D''Água do Borges, 290 - Vila Silvia, São Paulo - SP, 03820-000', 20, NULL, 'Penha ', -23.4969211, -46.5061605, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4969211, -- Use merged value
    longitude = -46.5061605, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1888', 'EMEI - Tito Mal.', 'Manutenção Unidades Educacionais', 'Avenida Marechal Tito, 6620 - Jardim Miragaia, São Paulo - SP, 08115-000', 20, NULL, 'Itaim Paulista ', -23.4894034, -46.385302, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4894034, -- Use merged value
    longitude = -46.385302, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1889', 'EMEI - Maria José Dupré', 'Manutenção Unidades Educacionais', 'R. Pastor João Grecchi, 84 - Jardim Santa Fe (Zona Oeste), São Paulo - SP, 05271-290', 20, NULL, 'Perus ', -23.428775, -46.7960202, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.428775, -- Use merged value
    longitude = -46.7960202, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1890', 'EMEI - Pedro Brasil Bandecchi', 'Manutenção Unidades Educacionais', 'Av. Waldemar Tietz, 950 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-000', 20, NULL, 'Penha ', -23.5489858, -46.4857898, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5489858, -- Use merged value
    longitude = -46.4857898, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1891', 'EMEI - Pedro De Toledo', 'Manutenção Unidades Educacionais', 'Rua Paúva, 677 - Vila Jaguara, São Paulo - SP, 05116-001', 20, NULL, 'Lapa ', -23.5134682, -46.7465179, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5134682, -- Use merged value
    longitude = -46.7465179, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1892', 'EMEI - Raul Nemenz Profº', 'Manutenção Unidades Educacionais', 'R. Alfonso Asturaro, 451 - Conj. Hab. Barro Branco II, São Paulo - SP, 08473-591', 20, NULL, 'Cidade Tiradentes ', -23.5848448, -46.3921083, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5848448, -- Use merged value
    longitude = -46.3921083, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1893', 'EMEI - Dinah Galvão Profª', 'Manutenção Unidades Educacionais', 'R. Jan Land, 47 - Vila Nova Teresa, São Paulo - SP, 03823-100', 20, NULL, 'Ermelino Matarazzo ', -23.4850684, -46.4928177, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4850684, -- Use merged value
    longitude = -46.4928177, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1894', 'EMEI - Neusa ConCEIção Stinchi Profª', 'Manutenção Unidades Educacionais', 'Praça Cel. Ezequiel, 10 - Jardim Danfer, São Paulo - SP, 03728-100', 20, NULL, 'Penha ', -23.5021245, -46.5109466, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5021245, -- Use merged value
    longitude = -46.5109466, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1895', 'EMEI - Vicente De Carvalho', 'Manutenção Unidades Educacionais', 'Rua Victória Marconato Zonta, 60 - Vila Sapopemba, São Paulo - SP, 03975-090', 20, NULL, 'Sapopemba', -23.6100108, -46.4931936, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6100108, -- Use merged value
    longitude = -46.4931936, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1896', 'EMEI - 9 De Julho', 'Manutenção Unidades Educacionais', 'Rua dos Mártires Armênios, 934 - Barro Branco (Zona Norte), São Paulo - SP, 02345-000', 20, NULL, 'Santana / Tucuruvi', -23.4677494, -46.6106912, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4677494, -- Use merged value
    longitude = -46.6106912, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1897', 'EMEI - Afrânio Peixoto', 'Manutenção Unidades Educacionais', 'Av. Maria Santana, 230 - Vila Jacuí, São Paulo - SP, 08050-130', 20, NULL, 'São Miguel Paulista ', -23.510163, -46.445973, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.510163, -- Use merged value
    longitude = -46.445973, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1898', 'EMEI - Alfredo Volpi', 'Manutenção Unidades Educacionais', 'Rua George Bekesy, 16 - Fazenda da Juta, São Paulo - SP, 03977-015', 20, NULL, 'Sapopemba', -23.6175105, -46.4857987, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6175105, -- Use merged value
    longitude = -46.4857987, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1899', 'EMEI - Aluísio De Azevedo', 'Manutenção Unidades Educacionais', 'R. Farol Paulistano, 250 - Jardim Italia, São Paulo - SP, 03192-060', 20, NULL, 'Mooca ', -23.5717258, -46.5759262, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5717258, -- Use merged value
    longitude = -46.5759262, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1900', 'EMEI - Antonio Carlos Brasileiro De Almeida Jobim - Tom Jobim', 'Manutenção Unidades Educacionais', 'Rua Giovanni Alberoni, 132 - Vila Cardoso Franco, São Paulo - SP, 03978-060', 20, NULL, 'Sapopemba', -23.6187415, -46.5044508, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6187415, -- Use merged value
    longitude = -46.5044508, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1901', 'EMEI - Augusto Froebel', 'Manutenção Unidades Educacionais', 'R. Fábio José Bezerra, 643 - Parque Boturussu, São Paulo - SP, 03805-000', 20, NULL, 'Ermelino Matarazzo ', -23.5059464, -46.4819815, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5059464, -- Use merged value
    longitude = -46.4819815, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1902', 'EMEI - Cornélio Pires', 'Manutenção Unidades Educacionais', 'Praça Manoel de Mesquita, 15 - Vila Invernada, São Paulo - SP, 03350-040', 20, NULL, 'Mooca ', -23.5702845, -46.5682005, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5702845, -- Use merged value
    longitude = -46.5682005, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1903', 'EMEI - Adalberto Panzan Dr. ', 'Manutenção Unidades Educacionais', 'Rua Luisa Sarazim, 29 - Jardim Bandeirante (Sao Rafael), São Paulo - SP, 08372-100', 20, NULL, 'São Mateus ', -23.6050763, -46.4349446, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6050763, -- Use merged value
    longitude = -46.4349446, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1904', 'EMEI - Gina De Martino Dr. ', 'Manutenção Unidades Educacionais', 'Praça Dona Joana, 111 - Vila Vitorio Mazzei, São Paulo - SP, 02409-040', 20, NULL, 'Santana / Tucuruvi', -23.4778204, -46.626763, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4778204, -- Use merged value
    longitude = -46.626763, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1905', 'EMEI - Guilherme Rudge', 'Manutenção Unidades Educacionais', 'Praça Maj. Guilherme Rudge, 128 - Belenzinho, São Paulo - SP, 03014-020', 20, NULL, 'Mooca ', -23.5377545, -46.5891154, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5377545, -- Use merged value
    longitude = -46.5891154, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1906', 'EMEI - Iguatemi', 'Manutenção Unidades Educacionais', 'R. Tauro, 1 - Terceira Divisão de Interlagos, São Paulo - SP, 08381-770', 20, NULL, 'São Mateus ', -23.6125326, -46.4232948, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6125326, -- Use merged value
    longitude = -46.4232948, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1907', 'EMEI - Leila Diniz', 'Manutenção Unidades Educacionais', 'Rua Peroba-Rosa, 13 - Jardim Miragaia, São Paulo - SP, 08161-310', 20, NULL, 'Itaim Paulista ', -23.5055345, -46.4165169, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5055345, -- Use merged value
    longitude = -46.4165169, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1908', 'EMEI - Margareth De Fatima Marques De Azevedo', 'Manutenção Unidades Educacionais', 'R. Augusto Rodrigues, 262 - Jardim Fontalis, São Paulo - SP, 02360-010', 20, NULL, 'Jaçanã / Tremembé', -23.4379266, -46.5770638, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4379266, -- Use merged value
    longitude = -46.5770638, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1909', 'EMEI - Margarida Maria Alves', 'Manutenção Unidades Educacionais', 'Rua Santo Rizzo, 10 - Cidade Tiradentes, São Paulo - SP, 08470-250', 20, NULL, 'Cidade Tiradentes ', -23.5909391, -46.4073578, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5909391, -- Use merged value
    longitude = -46.4073578, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1910', 'EMEI - Oduvaldo Viana Filho', 'Manutenção Unidades Educacionais', 'R. Utaro Kanai, 202 - Conj. Hab. Juscelino Kubitschek, São Paulo - SP, 08465-000', 20, NULL, 'Guaianazes ', -23.5658611, -46.3995407, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5658611, -- Use merged value
    longitude = -46.3995407, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1911', 'EMEI - Padre Anchieta', 'Manutenção Unidades Educacionais', 'R. Maria Cândida, 1592 - Vila Guilherme, São Paulo - SP, 02071-002', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5070925, -46.6001304, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5070925, -- Use merged value
    longitude = -46.6001304, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1912', 'EMEI - Parque Santa Rita I', 'Manutenção Unidades Educacionais', 'Av. Fernando Figueiredo Lins, S/N - Parque Santa Rita, São Paulo - SP, 08150-040', 20, NULL, 'Itaim Paulista ', -23.5108324, -46.4173899, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5108324, -- Use merged value
    longitude = -46.4173899, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1913', 'EMEI - Janio Quadros Pres. ', 'Manutenção Unidades Educacionais', 'R. Canto do Engenho, 240 - Parque Casa de Pedra, São Paulo - SP, 02322-210', 20, NULL, 'Jaçanã / Tremembé', -23.4481311, -46.5966713, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4481311, -- Use merged value
    longitude = -46.5966713, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1914', 'EMEI - Lourenco Filho Profº', 'Manutenção Unidades Educacionais', 'R. Dom Luís Felipe de Orleans, 1062 - Vila Maria Baixa, São Paulo - SP, 02118-001', 20, NULL, 'Vila Maria / Vila Guilherme', -23.5191096, -46.5864853, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5191096, -- Use merged value
    longitude = -46.5864853, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1915', 'EMEI - Doracil Dina Benício Profª', 'Manutenção Unidades Educacionais', 'R. Big Boys, 365 - Jardim Bartira, São Paulo - SP, 08152-100', 20, NULL, 'Itaim Paulista ', -23.5129623, -46.402838, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5129623, -- Use merged value
    longitude = -46.402838, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1916', 'EMEI - Eudoxia De Barros Profª', 'Manutenção Unidades Educacionais', 'Rua Sônia Margy, 246 - Parque Casa de Pedra, São Paulo - SP, 02351-000', 20, NULL, 'Jaçanã / Tremembé', -23.4551173, -46.6001776, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4551173, -- Use merged value
    longitude = -46.6001776, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1917', 'EMEI - Sarita Camargo Profª', 'Manutenção Unidades Educacionais', 'R. Caiapós, 148 - Vila Anastácio, São Paulo - SP, 05094-000', 20, NULL, 'Lapa ', -23.5116798, -46.7198276, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5116798, -- Use merged value
    longitude = -46.7198276, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1918', 'EMEI - Roberto Victor Cordeiro', 'Manutenção Unidades Educacionais', 'Av. Sylvio Torres, 349 - Cohab Padre Jose de Anchieta, São Paulo - SP, 03589-010', 20, NULL, 'Penha ', -23.5523149, -46.487211, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5523149, -- Use merged value
    longitude = -46.487211, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1919', 'EMEI - Santos Dumont', 'Manutenção Unidades Educacionais', 'R. Diana, 250 - Pompeia, São Paulo - SP, 05019-000', 20, NULL, 'Lapa ', -23.5306425, -46.6798595, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5306425, -- Use merged value
    longitude = -46.6798595, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1920', 'EMEI - Silvio Romero', 'Manutenção Unidades Educacionais', 'São José, 1 - Maranhão, São Paulo - SP, 03089-010', 20, NULL, 'Mooca ', -23.5288951, -46.5589404, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5288951, -- Use merged value
    longitude = -46.5589404, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1921', 'EMEI - Wilson Reis Santos', 'Manutenção Unidades Educacionais', 'Rua Francisco de Soutomaior, 14 - Jardim Lourdes, São Paulo - SP, 08452-430', 20, NULL, 'Guaianazes ', -23.5276354, -46.3928941, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5276354, -- Use merged value
    longitude = -46.3928941, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1922', 'EMEI - Zélia Gattai', 'Manutenção Unidades Educacionais', 'Rua Henrique Salvatori, 21 - Conj. City Jaragua, São Paulo - SP, 02998-260', 20, NULL, 'Pirituba / Jaraguá', -23.4368137, -46.7366821, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4368137, -- Use merged value
    longitude = -46.7366821, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1923', 'Gerenciamento - Programa Educação', 'Serviços de Gerenciamento do Programa Educação (inclui contratos não passíveis de separar por empreendimentos)', 'rua quinze de novembro', 20, NULL, 'SÉ', -23.547776, -46.634216, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.547776, -- Use merged value
    longitude = -46.634216, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1924', 'CEI - Indireta Santa Monica', 'manutenção Unidades Educacionais', 'Rua Santa Albina, S/N - Jardim Santa Monica, 05171-140', 20, NULL, 'Pirituba / Jaraguá', -23.48021, -46.748631, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.48021, -- Use merged value
    longitude = -46.748631, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1925', 'CEI - Direta Vereador Cid Franco', 'manutenção Unidades Educacionais', 'AURELIO BELOTTI JUNIOR, 80 JARDIM SAMARA. 05759-210', 20, NULL, 'Campo Limpo ', -23.631472, -46.763046, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.631472, -- Use merged value
    longitude = -46.763046, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1926', 'CEI - Direta Jardim Souza', 'manutenção Unidades Educacionais', 'FRANCISCO SOBREIRA DA SILVA, S/N JARDIM SOUZA. 04917-120', 20, NULL, 'M´Boi Mirim', -23.689281, -46.746822, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.689281, -- Use merged value
    longitude = -46.746822, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1927', 'EMEF - Jornalista Millor Fernandes', 'manutenção Unidades Educacionais', 'R. Francisco Soares, 487 - Parque Regina, 05774-300', 20, NULL, 'Campo Limpo ', -23.634252, -46.749004, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.634252, -- Use merged value
    longitude = -46.749004, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1928', 'CEI - Direta Parque Santa Margarida', 'manutenção Unidades Educacionais', 'R. Capão Redondo, 80 - Jardim Santa Margarida, 04931-100', 20, NULL, 'M´Boi Mirim', -23.683106, -46.756742, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.683106, -- Use merged value
    longitude = -46.756742, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1929', 'EMEF - Terezinha Mota de Figueiredo', 'manutenção Unidades Educacionais', 'R. Cantorias Paulistas, 20 - Conj. Hab. Jardim Sao Bento, 05886-490', 20, NULL, 'Campo Limpo ', -23.680442, -46.795019, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.680442, -- Use merged value
    longitude = -46.795019, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1930', 'CEI - Indireta Conjunto Habitacional Itaquera IV', 'manutenção Unidades Educacionais', 'CASA NO CAMPO, 10 AO LADO DA EMEF AGUA. CONJUNTO RESIDENCIAL JOSE BONIFACIO. 08257-050', 20, NULL, 'Itaquera ', -23.554308, -46.430019, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.554308, -- Use merged value
    longitude = -46.430019, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1931', 'CEI - Direta Padre Elias Pereira De Melo', 'manutenção Unidades Educacionais', 'MANDASSAIA, 95 CIDADE ANTONIO ESTEVAO DE CARVALHO. 08223-120', 20, NULL, 'Itaquera ', -23.534318, -46.471961, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.534318, -- Use merged value
    longitude = -46.471961, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1932', 'CEI - Direta Jardim São Pedro', 'manutenção Unidades Educacionais', 'LUIS MATEUS, 820 JARDIM SAO PEDRO. 08420-750', 20, NULL, 'Itaquera ', -23.54953, -46.426067, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.54953, -- Use merged value
    longitude = -46.426067, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1933', 'CEI - Direta Maria Aparecida Siqueira Campos', 'manutenção Unidades Educacionais', 'ANTONIO LOMBARDO, 56 JARDIM SANTA TEREZINHA ZONA LESTE. 03572-230', 20, NULL, 'Itaquera ', -23.573482, -46.500018, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.573482, -- Use merged value
    longitude = -46.500018, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1934', 'CEI - Direta Sao Jorge Arpoador', 'manutenção Unidades Educacionais', 'EUDORO LINCOLN BERLINCK, 114 JARDIM ARPOADOR. 05565-200', 20, NULL, 'Butantã ', -23.595185, -46.790125, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.595185, -- Use merged value
    longitude = -46.790125, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1935', 'EMEI - Aurelio Buarque de Holanda Ferreira', 'manutenção Unidades Educacionais', 'DOUTOR ARMANDO FAJARDO, 400 JARDIM SAO BERNARDO. 04844-590', 20, NULL, NULL, -23.756329, -46.702929, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.756329, -- Use merged value
    longitude = -46.702929, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1939', 'EMEF - Bartolomeu Campos de Queiros', 'manutenção Unidades Educacionais', 'ARQUITETO VILANOVA ARTIGAS, 1471 PREDIO ESCOLAR PROPR. CONJUNTO HABITACIONAL TEOTONIO VILELA. 03928-', 20, NULL, NULL, -23.6022437, -46.5032556, FALSE, NULL, NULL)
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
VALUES ('1941', 'CEI - Indireta Cidade A e Carvalho II', 'manutenção Unidades Educacionais', 'RAIMUNDO GONCALVES FERREIRA, 140 JARDIM AURORA ZONA LESTE. 08225-410', 20, NULL, 'Itaquera ', -23.5308139, -46.4648065, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5308139, -- Use merged value
    longitude = -46.4648065, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1942', 'CEI - Indireta Conjunto Habitacional Padre Manoel de Paiva', 'manutenção Unidades Educacionais', 'ESTEFANO FILIPINI, 105 CONJUNTO HABITACIONAL PADRE MANOEL DE PA. 03591-150', 20, NULL, 'Penha ', -23.5520318, -46.4817896, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5520318, -- Use merged value
    longitude = -46.4817896, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1943', 'CEI - Indireta Marta Terezinha Godinho', 'manutenção Unidades Educacionais', 'BATUIRA DO CAMPO, 49 ERMELINO MATARAZZO. 03828-000', 20, NULL, 'Penha ', -23.4844128, -46.4983205, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4844128, -- Use merged value
    longitude = -46.4983205, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1944', 'CEI - Direta Balneario Mar Paulista', 'manutenção Unidades Educacionais', 'R. Matsuichi Wada, S/N - Balneário Mar Paulista, 04463-060', 20, NULL, 'Cidade Ademar ', -23.6960914, -46.661711, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6960914, -- Use merged value
    longitude = -46.661711, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1945', 'CIEJA - Professor Francisco Hernani Alverne Facundo Leite', 'manutenção Unidades Educacionais', 'R. Francisco Ramos, R. ,132 - Jardim Consorcio, 04437-060', 20, NULL, 'Santo Amaro ', -23.6716408, -46.675901, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6716408, -- Use merged value
    longitude = -46.675901, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1946', 'EMEF - Marcilio Dias', 'manutenção Unidades Educacionais', 'Rua RIBEIRO JUNQUEIRA, 259', 20, NULL, 'Casa Verde ', -23.478894, -46.653984, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.478894, -- Use merged value
    longitude = -46.653984, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1947', 'EMEI - Luiz Grassman – Setor 4601', 'Construção Unidade Educacional', 'Rua Luis Grassman', 20, NULL, 'M´Boi Mirim', -23.644492, -46.732259, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644492, -- Use merged value
    longitude = -46.732259, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1948', 'EMEF - Luiz Grassman – Setor 4601', 'Construção Unidade Educacional', 'Rua Luis Grassman', 20, NULL, 'M´Boi Mirim', -23.644492, -46.732259, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.644492, -- Use merged value
    longitude = -46.732259, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1949', 'CEI - Cesar Pena Ramos', 'Manutenção Unidades Educacionais', 'Rua César Penna Ramos', 20, NULL, 'Casa Verde ', -23.4895959, -46.6669747, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4895959, -- Use merged value
    longitude = -46.6669747, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1950', 'CEI Ind - Adhemar Ferreira Castilho, Prof', 'Manutenção Unidades Educacionais', 'R. Serra Verde, 215 - Vila Silvia, São Paulo - SP, 03821-230', 20, NULL, 'Penha ', -23.4923412, -46.5024164, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.4923412, -- Use merged value
    longitude = -46.5024164, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1951', 'EMEF - Campo Belo - Rua Adão Cabral Neto, 38', 'Manutenção Unidades Educacionais', 'R. Adão Cabral Neto, 38 - Recanto Campo Belo, São Paulo - SP, 04880-275', 20, NULL, 'Parelheiros ', -23.7952872, -46.7404123, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.7952872, -- Use merged value
    longitude = -46.7404123, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1952', 'EMEI - Aluisio De Almeida', 'Manutenção Unidades Educacionais', 'Rua Noronha Santos, 252 - Jardim Monte Alegre, São Paulo - SP, 05546-050', 20, NULL, 'Butantã ', -23.5870798, -46.7680368, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5870798, -- Use merged value
    longitude = -46.7680368, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1953', 'CEI DIRET - Anibal Di Francia', 'Manutenção Unidades Educacionais', 'R. Cap. Francisco Teixeira Nogueira, 383 - Água Branca, São Paulo - SP, 05037-030', 20, NULL, 'Lapa ', -23.5114854, -46.6863483, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5114854, -- Use merged value
    longitude = -46.6863483, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1954', 'CEI DIRET - Anton Meroth, Pe', 'Manutenção Unidades Educacionais', 'R. Ganímedes, 27 - Cidade Satelite Santa Barbara, São Paulo - SP, 08330-385', 20, NULL, 'São Mateus ', -23.6074926, -46.4594707, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.6074926, -- Use merged value
    longitude = -46.4594707, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1955', 'CEI Ind - Arca do Saber', 'Manutenção Unidades Educacionais', 'R. Arraial de Santa Bárbara, 1018 - Jardim Pedro José Nunes, São Paulo - SP, 08061-360', 20, NULL, 'São Miguel Paulista ', -23.5041177, -46.4706951, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5041177, -- Use merged value
    longitude = -46.4706951, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES ('1956', 'CEI Ind - Bela Vista', 'Manutenção Unidades Educacionais', 'R. Humaitá, 500 - Bela Vista, São Paulo - SP, 01321-010', 20, NULL, 'SÉ', -23.5572022, -46.642004, FALSE, NULL, NULL)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = -23.5572022, -- Use merged value
    longitude = -46.642004, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;