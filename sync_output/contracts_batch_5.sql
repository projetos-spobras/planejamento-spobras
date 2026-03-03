INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('087/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 22196.7, '2023-04-26', '2023-05-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('168/SPOBRAS/2023', 'OBRAS', 'EM TRÂMITE - ADITIVO', 10749956.88, '2023-08-03', '2024-07-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('015/SIURB/2024', 'RECEITA', 'VIGENTE', 15306141.6, '2024-10-02', '2026-09-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('089/SIURB/2024', 'OBRAS', 'EM TRÂMITE - ADITIVO', 166605193.86, '2024-06-21', '2026-05-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('227/SIURB/2022', 'RECEITA', 'CONCLUÍDO', 187644.77, '2023-06-28', '2023-12-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF n°0302232100', 'SERVIÇOS', 'ENCERRADO / TRD', 30378.76, '2022-08-02', '2022-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('211/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 4082680.27, '2023-09-25', '2024-03-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('270/SPOBRAS/2023 ', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1943384.53, '2023-11-28', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('008/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 3354899.29, '2025-02-18', '2025-11-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('271/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1314373.12, '2023-11-21', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('184/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 10128978.89, '2023-08-21', '2024-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('036/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4272248.81, '2025-08-18', '2026-05-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('140/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 11100410.23, '2023-07-14', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('142/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9829389.1, '2023-07-17', '2024-01-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('152/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 11203714.73, '2023-08-02', '2024-02-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('153/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10642102.85, '2023-08-01', '2024-02-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('185/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 2943890.04, '2023-08-21', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('187/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9304850.6, '2023-08-21', '2025-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('188/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8887698.37, '2023-08-21', '2024-02-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('163/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7799383.41, '2023-08-08', '2024-02-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('155/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4835316.1, '2023-08-01', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('201/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7000885.86, '2023-09-11', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('134/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 5883401.59, '2023-07-03', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('189/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6859822.09, '2023-08-28', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('015/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 16022.74, '2023-02-07', '2023-05-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('012/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'CONCLUÍDO', 96553.48, '2023-02-06', '2023-05-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('039/SPOBRAS/2024', 'PROJETOS', 'RESCINDIDO', 96313.74, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('247/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 95440, '2024-07-01', '2024-07-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('243/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 8580.07, '2023-10-30', '2024-01-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('297/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22000, '2024-01-02', '2024-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('045/SPOBRAS/2024', 'PROJETOS', 'EM TRÂMITE - ADITIVO', 78802.15, '2024-02-21', '2024-04-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('042/SPOBRAS/2024', 'PROJETOS', 'CONCLUÍDO', 78802.15, '2024-02-21', '2025-09-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('099/SPOBRAS/2023', 'SERVIÇOS', 'CONCLUÍDO', 72189.91, '2023-04-28', '2023-06-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('073/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'CONCLUÍDO', 8011.37, '2023-04-12', '2023-07-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('033/SPOBRAS/2025', 'PROJETOS', 'VIGENTE', 2411033.62, '2025-08-25', '2026-08-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('175/SIURB/2024', 'RECEITA', 'VIGENTE', 2645611.66, '2025-02-18', '2026-02-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('210/SIURB/2022', 'RECEITA', 'CONCLUÍDO', 248886.67, '2022-10-19', '2023-04-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('014/SIURB/2024', 'RECEITA', 'CONCLUÍDO', 91756.09, '2024-02-21', '2024-07-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('095/SIURB/2024', 'RECEITA', 'VIGENTE', 1873118.56, '2024-11-01', '2025-11-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('164/SIURB/2022', 'OBRAS', 'RESCISÃO EM TRÂMITE', 3578000, '2023-03-08', '2023-07-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('144/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 123979.17, '2023-11-16', '2024-04-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('019/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 118726.87, '2023-07-03', '2023-11-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('040/SIURB/2024', 'RECEITA', 'VIGENTE', 80987.5, '2024-06-05', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('020/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 118726.87, '2023-07-03', '2023-12-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('064/SIURB/2024', 'RECEITA', 'VIGENTE', 5917721.51, '2024-08-29', '2025-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('106/SPOBRAS/2024', 'OBRAS', 'VIGENTE', 4765537.32, '2024-10-01', '2025-04-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 118726.87, '2023-07-03', '2023-11-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('093/SIURB/2024', 'RECEITA', 'CONCLUÍDO', 48281.91, '2024-09-27', '2024-10-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('154/SIURB/2023', 'RECEITA', 'VIGENTE', 126979.17, '2023-11-16', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('018/SIURB/2023', 'RECEITA', 'RESCINDIDO', 187644.77, '2023-06-23', '2025-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('068/SIURB/2024', 'RECEITA', 'CONCLUÍDO', 149668.49, '2024-07-12', '2024-09-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('103/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 119145.93, '2024-08-09', '2024-09-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('291/SIURB/2022', 'RECEITA', 'CONCLUÍDO', 83967.01, '2022-12-29', '2023-05-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('043/SIURB/2025', 'RECEITA', 'VIGENTE', 109316.28, '2025-08-28', '2026-08-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('292/SIURB/2022', 'RECEITA', 'CONCLUÍDO', 81093.42, '2022-12-29', '2023-05-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('070/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 39696.67, '2023-03-28', '2023-06-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('288/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22350, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('041/SPOBRAS/2024', 'PROJETOS', 'CONCLUÍDO', 78802.15, '2024-02-21', '2025-09-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('105/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 18251.26, '2024-09-10', '2024-11-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('071/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 50402.54, '2023-04-12', '2023-07-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('293/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22350, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('300/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22350, '2024-01-02', '2024-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('294/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22250, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('289/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 22450, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('072/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 19645.6, '2023-04-12', '2023-07-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('164/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 9170339.76, '2023-08-10', '2024-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('170/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7609821.38, '2023-08-07', '2024-02-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('023/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 8246559.61, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('191/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8974215.26, '2023-08-28', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('132/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 10387095, '2023-06-29', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('193/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9428558.72, '2023-08-28', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('157/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10437722.52, '2023-08-01', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('224/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 10061147.64, '2023-10-04', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('181/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10704600.93, '2023-08-21', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('047/SMADS/2023', 'RECEITA', 'CONCLUÍDO', 592802.72, '2023-06-21', '2023-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('207/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 95000, '2023-10-11', '2023-12-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('209/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 93700, '2023-09-15', '2023-10-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('236/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 96462.92, '2023-10-11', '2023-12-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('070/SMADS/2023', 'RECEITA', 'CONCLUÍDO', 219201.27, '2023-08-15', '2024-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('048/SMADS/2023', 'RECEITA', 'CONCLUÍDO', 548590.7, '2023-06-21', '2023-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('206/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 83700, '2023-09-15', '2023-10-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('242/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 92000, '2023-10-11', '2023-12-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('177/SPOBRAS/2023', 'SERVIÇOS', 'CONCLUÍDO', 98100, '2023-08-11', '2023-10-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('148/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 95950, '2023-07-19', '2023-09-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('039/SPOBRAS/2025', 'SERVIÇOS TOPOGRAFIA', 'VENCIDO', 423145.46, '2025-09-01', '2025-11-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('149/SPOBRAS/2023', 'SERVIÇOS AMBIENTAIS', 'CONCLUÍDO', 93300, '2023-07-28', '2023-09-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('150/SPOBRAS/2023', 'SERVIÇOS', 'CONCLUÍDO', 92900, '2023-07-28', '2023-09-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('266/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 76508, '2023-11-09', '2023-12-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('186/SPOBRAS/2023', 'SERVIÇOS AMBIENTAIS', 'VIGENTE', 90800, '2023-08-17', '2023-10-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('151/SPOBRAS/2023', 'SERVIÇOS', 'CONCLUÍDO', 93100, '2023-07-28', '2023-09-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('020/SEGES/2023', 'RECEITA', 'CONCLUÍDO', 65337.69, '2023-09-26', '2023-10-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('008/SPOBRAS/2024', 'PROJETOS', 'ENCERRADO / TRD', 8580.07, '2024-01-23', '2024-04-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('026/SEGES/2023', 'RECEITA', 'CONCLUÍDO', 185826.63, '2023-12-19', '2024-12-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('100/SIURB/2025', 'RECEITA', 'NÃO INICIADO', 77714.56, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('155/SIURB/2023', 'RECEITA', 'RESCINDIDO', 14030976.15, '2023-08-09', '2025-02-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('033/SIURB/2024', 'RECEITA', 'VIGENTE', 1860560526.61, '2024-02-26', '2024-03-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('197/SIURB/2023', 'RECEITA', 'VIGENTE', 107945.98, '2023-11-14', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('237/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 4722757.75, '2023-10-16', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('212/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6609275.09, '2023-09-25', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('143/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10159915.97, '2023-07-17', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('166/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 8227994.08, '2023-08-14', '2025-10-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('141/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9308956.45, '2023-07-13', '2024-01-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('144/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9717320.87, '2023-07-17', '2025-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('024/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 8561143.8, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('135/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 10271333.66, '2023-07-03', '2024-01-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('156/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 9717000.89, '2023-08-02', '2024-02-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('139/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9833669.44, '2023-07-13', '2024-01-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('190/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10150846.07, '2023-08-21', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('169/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 9566546.01, '2023-08-02', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('192/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9943996.55, '2023-08-28', '2024-10-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('220/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1746010.23, '2023-10-04', '2024-04-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('056/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 42430.77, '2023-05-02', '2023-08-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('099/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 50344972.6, '2023-05-31', '2023-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('123/SPOBRAS/2023', 'OBRAS', 'CONCLUÍDO', 45971634.14, '2023-06-07', '2023-12-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('148/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 101638.13, '2023-08-09', '2023-12-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('196/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 24381135.12, '2023-09-15', '2025-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('226/SPOBRAS/2023', 'OBRAS', 'ENCERRADO / TRD', 22417567.4, '2023-09-19', '2025-03-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('222/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 8965423.23, '2023-10-04', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('273/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8822518.68, '2023-11-28', '2024-05-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('006/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7120181.97, '2024-01-22', '2024-07-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('231/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7489482.46, '2023-10-18', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('272/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6961692.05, '2023-11-21', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('230/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 8929315.46, '2023-10-30', '2025-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('299/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8445760.64, '2023-12-05', '2024-06-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('274/SPOBRAS/2023 ', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 8281256.25, '2023-11-27', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('284/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7383466.88, '2023-11-29', '2025-12-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('233/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7823962.74, '2023-10-18', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('010/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8040216.27, '2024-02-19', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('019/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4272206.51, '2024-02-15', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6735031.44, '2024-01-22', '2025-11-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('265/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 7063612.18, '2023-11-21', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('240/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8865103.67, '2023-10-23', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('241/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6275282.98, '2023-10-19', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('042/SIURB/2023', 'RECEITA', 'ENCERRADO / TRD', 240509.07, '2023-03-22', '2023-09-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('136/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 18226549.79, '2023-07-17', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('146/SIURB/2023', 'RECEITA', 'EM TRÂMITE - ADITIVO', 19800098.28, '2023-07-07', '2025-07-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('196/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 97100, '2023-08-24', '2023-10-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('235/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 70728, '2023-10-03', '2023-11-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('041/SPOBRAS/2025', 'SERVIÇOS TOPOGRAFIA', 'VIGENTE', 63864.52, '2025-09-10', '2025-10-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('197/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 97300, '2023-08-28', '2023-10-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('034/SPOBRAS/2024', 'PROJETOS', 'TRD EM TRAMITAÇÃO', 97100, '2024-12-09', '2025-02-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('159/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 41741.31, '2023-07-28', '2023-08-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('172/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 38248.77, '2023-08-03', '2023-09-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('174/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 39560, '2023-08-03', '2023-09-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('276/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 98300, '2023-11-24', '2024-01-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('173/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 39495.69, '2023-08-08', '2023-09-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('175/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 37042.12, '2023-08-10', '2023-09-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('260/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 98000, '2023-11-17', '2024-01-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('176/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 37956.24, '2023-08-07', '2023-09-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('280/SPOBRAS/2023 ', 'PROJETOS', 'ENCERRADO / TRD', 98100, '2023-11-24', '2024-01-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('179/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 38920.11, '2023-08-14', '2023-09-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('291/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 98300, '2023-12-05', '2024-02-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('016/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 3333367.47, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('200/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 1371678.89, '2023-09-13', '2024-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('029/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9510671.58, '2025-05-23', '2026-02-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('017/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 1871856.01, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('035/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10597022.36, '2025-08-18', '2026-05-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('014/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 4868518.25, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('202/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 2789317.03, '2023-09-11', '2024-03-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('208/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 96900, '2023-09-20', '2023-11-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('262/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 97200, '2023-11-17', '2024-01-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('286/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 23800, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('245/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 21450, '2023-10-23', '2023-11-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('298/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 98000, '2023-12-15', '2025-01-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('259/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 97900, '2023-11-21', '2024-01-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('279/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 22500, '2023-11-24', '2024-01-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('203/SPOBRAS/2023', 'PROJETOS', 'CONCLUÍDO', 97250, '2023-09-06', '2023-11-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('244/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 21450, '2023-10-23', '2023-11-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('278/SPOBRAS/2023 ', 'PROJETOS', 'ENCERRADO / TRD', 98300, '2023-12-01', '2024-01-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('038/SPOBRAS/2024', 'PROJETOS', 'RESCINDIDO', 87557.94, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('275/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 27532.34, '2023-11-24', '2024-02-24')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('263/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 97500, '2023-11-21', '2024-01-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('281/SPOBRAS/2023 ', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 24000, '2023-12-04', '2024-01-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('238/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 40678.4, '2023-10-16', '2024-01-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('290/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 98500, '2023-12-05', '2024-02-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('040/SPOBRAS/2024', 'PROJETOS', 'CONCLUÍDO', 96313.74, '2024-02-21', '2025-09-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('305/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 6794262.55, '2024-01-11', '2024-07-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('027/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 7313282.94, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('048/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 10213810.13, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('047/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 6339915.39, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('050/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 9919866.73, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('001/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1196512.99, '2024-01-11', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('296/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8757875.13, '2023-12-11', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('012/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 8382543.11, '2024-02-06', '2024-08-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('302/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9343758.89, '2024-01-02', '2024-07-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('308/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 7558815.58, '2024-01-18', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('003/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8527212.07, '2024-01-30', '2024-07-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('005/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4669845.85, '2024-01-31', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('015/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9784589.79, '2024-02-15', '2024-08-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('307/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 5280076.85, '2024-01-15', '2024-07-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('303/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9317196.16, '2024-01-02', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('013/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 80000, '2023-02-07', '2023-04-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('015/SIURB/2025', 'RECEITA', 'VIGENTE', 31152061, '2025-04-24', '2026-12-24')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('056/SIURB/2024', 'RECEITA', 'EM TRÂMITE - ADITIVO', 2791610.54, '2024-07-10', '2026-07-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('059/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 98900, '2023-03-29', '2023-05-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('061/SPOBRAS/2022', 'APOIO', 'VIGENTE', 16627111, '2022-11-01', '2026-10-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('086/SIURB/2025', 'RECEITA', 'VIGENTE', 829691.29, '2025-10-16', '2026-05-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('095/SPOBRAS/2024', 'APOIO', 'SUSPENSO', 24497385.6, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('096/SPOBRAS/2024', 'APOIO', 'SUSPENSO', 23465849.99, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('097/SPOBRAS/2024', 'APOIO', 'SUSPENSO', 14463895.02, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;