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