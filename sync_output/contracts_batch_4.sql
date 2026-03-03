INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('061/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 42443.75, '2024-03-07', '2024-05-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('060/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 41299.13, '2024-03-06', '2024-05-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('020/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 4928362.56, '2022-03-03', '2022-09-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('217/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 3390202.77, '2023-10-03', '2024-04-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('186/SIURB/2022', 'OBRAS', 'ENCERRADO / TRD', 11299952.2, '2022-09-28', '2023-04-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('232/SIURB/2022', 'RECEITA', 'CONCLUÍDO', 1100460.31, '2022-11-07', '2023-03-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('035/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 194463.35, '2022-08-31', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('059/SPOBRAS/2022', 'PROJETOS', 'ENCERRADO / TRD', 79800, '2022-10-17', '2022-11-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('038/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 198409.93, '2022-08-31', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('069/SPOBRAS/2022', 'PROJETOS', 'CONCLUÍDO', 85500, '2022-11-29', '2023-01-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('037/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 201090.81, '2022-08-31', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('065/SPOBRAS/2022', 'PROJETOS', 'CONCLUÍDO', 95999.95, '2022-11-22', '2023-01-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('039/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 263897.3, '2022-08-31', '2023-04-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('057/SPOBRAS/2022', 'PROJETOS', 'RESCINDIDO', 99800, '2022-11-22', '2023-08-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF n°0422232100', 'SERVIÇOS', 'ENCERRADO / TRD', 20035.07, '2022-11-08', '2022-12-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('036/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 204964.49, '2022-08-31', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('070/SPOBRAS/2022', 'PROJETOS', 'TRD EM TRAMITAÇÃO', 86900, '2022-11-29', '2023-01-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('040/SMIT/2022', 'RECEITA', 'CONCLUÍDO', 201747.82, '2022-08-31', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('058/SPOBRAS/2022', 'PROJETOS', 'CONCLUÍDO', 90800, '2022-10-13', '2022-12-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('012/SPOBRAS/2025', 'APOIO', 'VIGENTE', 7600221.69, '2025-03-10', '2026-03-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('032/SIURB/2024', 'RECEITA', 'VIGENTE', 27334458.31, '2024-05-09', '2026-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('070/SIURB/2022', 'PROJETOS', 'EM TRÂMITE - ADITIVO', 1072346.44, '2022-07-14', '2025-12-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('084/SPOBRAS/2024', 'OBRAS', 'VIGENTE', 21948580.4, '2024-05-09', '2025-03-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('149/SIURB/2023', 'RECEITA', 'CONCLUÍDO', 140272.98, '2023-08-09', '2024-01-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('224/SIURB/2022', 'RECEITA', 'RESCINDIDO', 290028.88, '2022-10-17', '2023-01-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('108/SIURB/2022', 'PROJETOS', 'CONCLUÍDO', 3000340.48, '2022-07-21', '2023-10-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('023/SPOBRAS/2022', 'PROJETOS', 'ENCERRADO / TRD', 88000, '2022-06-27', '2022-07-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('032/SMPED/2021', 'RECEITA', 'CONCLUÍDO', 499877.6, '2021-12-16', '2025-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('038/SMPED/2022', 'RECEITA', 'CONCLUÍDO', 1231038.48, '2022-12-13', '2024-12-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('111/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 1112243.27, '2023-01-19', '2024-12-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SMDET/2022', 'RECEITA', 'CONCLUÍDO', 249078.16, '2022-04-11', '2022-09-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('003/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 3419865.29, '2023-01-12', '2024-11-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('015/SMDET/2022', 'RECEITA', 'CONCLUÍDO', 4096001.67, '2022-12-30', '2024-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('022/SPOBRAS/2022', 'PROJETOS', 'ENCERRADO / TRD', 94000, '2022-06-07', '2022-07-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('014/SIURB/2025', 'RECEITA', 'VIGENTE', 455158.08, '2025-05-16', '2026-02-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('125/SIURB/2023', 'RECEITA', 'ENCERRADO / TRD', 114270.17, '2023-12-29', '2024-08-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('161/SIURB/2024', 'PROJETOS', 'VIGENTE', 5368118.37, '2025-05-16', '2026-02-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('001/SMPED/2024', 'RECEITA', 'VIGENTE', 54221140.85, '2024-02-26', '2025-04-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SMPED/2022', 'RECEITA', 'CONCLUÍDO', 1544368.8, '2022-04-29', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('074/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 645280, '2023-04-12', '2024-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('079/SPOBRAS/2024', 'OBRAS', 'CONCLUÍDO', 38760838.84, '2024-02-29', '2024-10-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('083/SMPED/2023', 'RECEITA', 'ENCERRADO / TRD', 104250.94, '2023-11-22', '2023-12-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('124/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 84600, '2023-06-02', '2023-06-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('264/SPOBRAS/2023', 'PROJETOS', 'TRD EM TRAMITAÇÃO', 97900, '2023-11-17', '2025-03-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('048/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7761549.82, '2022-09-15', '2023-09-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('055/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 4970896.5, '2022-09-16', '2023-10-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('050/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7168597.2, '2022-09-16', '2024-03-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('052/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 6796262.24, '2022-09-16', '2023-09-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('006/SPOBRAS/2025', 'OBRAS', 'VIGENTE', 23703026.11, '2025-02-17', '2025-08-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('016/SPOBRAS/2025', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 81615.72, '2025-04-01', '2025-05-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('031/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 801462.38, '2023-03-08', '2024-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('032/SPOBRAS/2024', 'PROJETOS', 'VIGENTE', 857248.56, '2024-03-11', '2025-11-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('054/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 7303972.98, '2022-09-16', '2024-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('115/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 43862.1, '2023-05-15', '2023-06-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('199/SPOBRAS/2023', 'PROJETOS', 'ENCERRADO / TRD', 580105.04, '2023-09-11', '2024-10-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('056/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 7405885.35, '2022-09-16', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('049/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 7410326.85, '2022-09-12', '2023-09-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('030/SPOBRAS/2022', 'PROJETOS', 'RESCISÃO EM TRÂMITE', 95350.44, '2022-09-28', '2022-11-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('047/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 6784191.59, '2022-09-14', '2023-08-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('044/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7468502.6, '2022-09-12', '2023-10-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('050/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'VIGENTE', 128102.23, '2026-01-12', '2026-05-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('043/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 6729251.67, '2022-09-12', '2023-08-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('040/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 6979349.7, '2022-09-12', '2023-08-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('039/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 7290972.29, '2022-09-12', '2023-08-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('037/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 6331391.98, '2022-09-12', '2024-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('035/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 6743458.3, '2022-09-12', '2023-08-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('036/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 7031758.42, '2022-09-12', '2023-12-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('130/SPOBRAS/2023', 'PROJETOS', 'TRD EM TRAMITAÇÃO', 89000, '2023-07-03', '2023-10-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('032/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 967902.39, '2023-03-08', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('033/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 7030952.23, '2022-09-09', '2025-10-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('029/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 1399484.33, '2023-03-08', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('031/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 6563236.92, '2022-09-08', '2024-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('041/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 6991586.66, '2022-09-12', '2023-11-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('024/SPOBRAS/2023', 'OBRAS', 'ENCERRADO / TRD', 407492.92, '2023-02-23', '2023-10-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('053/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 6336313.63, '2022-09-12', '2023-09-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('055/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6557477.64, '2023-04-03', '2023-10-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('022/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 10209764.51, '2023-04-10', '2024-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('050/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 11257657.88, '2023-03-23', '2026-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('088/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 5854555.85, '2022-12-06', '2024-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('133/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 5380400.39, '2023-07-03', '2024-01-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('154/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1645668.54, '2023-08-01', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('006/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6438888.84, '2023-02-14', '2024-03-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('001/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 8928239.35, '2023-01-19', '2023-10-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('109/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 6530286.08, '2023-01-03', '2023-12-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('048/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9947575.81, '2023-03-21', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('009/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 5932812.63, '2023-02-17', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('008/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 5533544.8, '2023-01-24', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('052/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 12427459.75, '2023-03-24', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('106/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 10855657.33, '2023-01-03', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('011/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 4765463.39, '2023-01-31', '2023-10-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('044/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 8546512.17, '2023-03-16', '2024-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('087/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 8375287.31, '2022-12-08', '2025-12-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('080/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 1220754.94, '2022-12-05', '2024-06-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('053/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 5255704.23, '2023-03-24', '2023-12-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('104/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6661652.1, '2023-01-03', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('043/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 8812060.83, '2023-03-17', '2025-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('103/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 3128802.94, '2023-01-03', '2023-10-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('110/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 4909950.61, '2023-01-04', '2023-10-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('086/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 981552.29, '2022-12-05', '2025-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('112/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 2530440.61, '2023-01-12', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('052/SPOBRAS/2025', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 1047548.08, '2026-01-12', '2026-07-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('064/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 43326.87, '2024-03-08', '2024-05-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('101/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7205520.47, '2022-12-19', '2024-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('047/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 7361088.43, '2023-03-28', '2024-09-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 2087096.84, '2023-01-24', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('090/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 9846624.96, '2022-12-05', '2023-11-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('083/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4772081.03, '2022-12-07', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('075/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 2646157.97, '2022-11-21', '2023-09-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('084/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 3987621.96, '2022-12-08', '2023-11-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('097/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 10517724.87, '2022-12-19', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('049/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9786830.13, '2023-03-23', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('100/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 6611073.39, '2022-12-19', '2023-09-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('062/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8152650.65, '2023-05-02', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('010/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4053417.77, '2023-02-14', '2023-08-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('056/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 5918205, '2023-03-23', '2024-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('105/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7526986.72, '2023-01-03', '2023-10-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('085/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 7069684.54, '2022-12-05', '2023-11-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('073/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 6575008.93, '2022-12-05', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('076/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7121863.59, '2022-12-06', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('068/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 9548975.08, '2022-11-09', '2024-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('107/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'RESCINDIDO', 1839086.85, '2023-01-11', '2023-07-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('066/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 7990916.57, '2022-11-07', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('255/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 40836.15, '2023-11-09', '2024-01-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('082/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 13500.04, '2023-04-26', '2023-05-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('040/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 42856.05, '2023-03-13', '2023-05-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('167/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 42071.03, '2023-08-01', '2023-09-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('081/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 1533665.89, '2022-12-05', '2023-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('161/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 69250.91, '2023-08-01', '2023-09-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('178/SPOBRAS/2023', 'SERVIÇOS AMBIENTAIS', 'CONCLUÍDO', 44020.91, '2023-08-14', '2023-10-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('254/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 40584.23, '2023-11-07', '2023-12-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('053/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 48591.75, '2024-02-27', '2024-04-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('114/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 43094.52, '2023-05-15', '2023-06-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('079/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9776741.95, '2022-12-07', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('194/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 39678.91, '2023-08-17', '2023-10-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('171/SPOBRAS/2023', 'SERVIÇOS AMBIENTAIS', 'ENCERRADO / TRD', 39137.52, '2023-08-09', '2023-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('101/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 42050.91, '2023-04-28', '2023-06-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('256/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 45860.04, '2023-11-07', '2024-01-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('081/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 13400.64, '2023-04-19', '2023-05-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('084/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 14085.9, '2023-04-26', '2023-05-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('253/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 39537.9, '2023-10-31', '2023-12-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('096/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 41626.44, '2023-04-26', '2023-06-24')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('004/SPOBRAS/2025', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 39394.43, '2025-01-29', '2025-03-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('083/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 13890.26, '2023-04-26', '2023-05-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('252/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 40563.53, '2023-11-07', '2024-01-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('063/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 7151504.35, '2023-03-24', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('057/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 4924039.25, '2023-03-28', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('062/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 5191965.8, '2022-11-07', '2023-11-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('311/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 1258804.09, '2024-01-18', '2024-07-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('093/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 8948397.86, '2022-12-12', '2024-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('102/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 1012325.04, '2023-05-15', '2024-02-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('183/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 5405991.83, '2023-08-21', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('058/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'EM TRÂMITE - ADITIVO', 6519697.55, '2023-04-04', '2024-04-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('082/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 4018020.3, '2022-11-21', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('074/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 9736311.9, '2022-12-05', '2024-07-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('020/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 341681.75, '2023-02-28', '2023-10-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('120/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 637834.69, '2023-05-29', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('108/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 1127260.48, '2023-05-10', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('019/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 9336371.48, '2023-02-28', '2024-08-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('037/SPOBRAS/2023', 'OBRAS', 'VIGENTE', 10771384.63, '2023-03-01', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('195/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 17468.9, '2023-08-18', '2023-09-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF n° 0432232100', 'SERVIÇOS', 'VENCIDO', 39280, '2022-11-08', '2022-11-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('042/SPOBRAS/2023', 'OBRAS', 'VIGENTE', 11088874, '2023-03-16', '2024-01-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('028/SPOBRAS/2023', 'OBRAS', 'CONCLUÍDO', 26403750.17, '2023-03-01', '2025-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('086/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 34978.91, '2023-04-19', '2023-05-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('035/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 12348624.91, '2023-03-01', '2025-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('036/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 9211697.72, '2023-03-09', '2025-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('041/SPOBRAS/2023', 'OBRAS', 'VIGENTE', 9122138.21, '2023-03-16', '2024-01-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('038/SPOBRAS/2023', 'OBRAS', 'ENCERRADO / TRD', 9454439.35, '2023-03-01', '2025-03-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF nº 0412232100', 'SERVIÇOS', 'ENCERRADO / TRD', 24949.69, '2022-10-27', '2022-11-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('094/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10740123.6, '2022-12-12', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF n°0242232500', 'SERVIÇOS', 'ENCERRADO / TRD', 13598.92, '2022-06-10', '2022-06-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('102/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 8981768.82, '2022-12-19', '2025-03-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('092/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9325635.58, '2022-12-07', '2023-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('158/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 10812532.3, '2023-08-02', '2025-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('027/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 10732463.87, '2023-04-10', '2024-10-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('069/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 9837641.04, '2023-04-13', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('080/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRD EM TRAMITAÇÃO', 10583382.68, '2023-04-13', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('026/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 9863015.46, '2023-03-21', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('023/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 10692667.68, '2023-04-10', '2025-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('079/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'CONCLUÍDO', 955468.08, '2023-04-13', '2023-10-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('065/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 991290.02, '2023-04-05', '2023-10-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('105/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'TRP ASSINADO', 1103041.34, '2023-05-02', '2025-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('107/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'SUSPENSO', 949117.74, '2023-05-10', '2024-09-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('106/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'ENCERRADO / TRD', 1057654.47, '2023-05-15', '2024-10-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('145/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 961117.19, '2023-07-17', '2026-02-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('011/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'VIGENTE', 8206424.8, '2024-02-06', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('103/SPOBRAS/2023', 'OBRAS REFORMA/READEQ', 'VIGENTE', 892037.22, '2023-05-29', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('126/SPOBRAS/2023', 'OBRAS', 'EM TRÂMITE - ADITIVO', 30830427.46, '2023-06-19', '2024-05-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('051/SPOBRAS/2022', 'OBRAS REFORMA/READEQ', 'VIGENTE', 6957817.94, '2022-09-12', '2026-01-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('045/SPOBRAS/2023', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 17160.14, '2023-03-14', '2023-06-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('114/SPOBRAS/2022', 'AÇÃO EXPROPRIATÓRIA', 'RESCINDIDO', 5186.1, '2023-01-10', '2023-04-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('118/SPOBRAS/2023', 'OBRAS', 'VIGENTE', 11895195.88, '2023-05-18', '2024-03-18')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('033/SPOBRAS/2023', 'SERVIÇOS TOPOGRAFIA', 'CONCLUÍDO', 25032.91, '2023-03-29', '2023-04-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('225/SPOBRAS/2023', 'OBRAS', 'VIGENTE', 9708958.3, '2024-02-07', '2024-12-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('AF nº 0452232100', 'SERVIÇOS', 'RESCISÃO EM TRÂMITE', 39280, '2022-11-10', '2022-11-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('127/SPOBRAS/2023', 'OBRAS', 'EM TRÂMITE - ADITIVO', 23305061.77, '2023-06-26', '2024-08-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('085/SPOBRAS/2023', 'SERVIÇOS', 'ENCERRADO / TRD', 32318.91, '2023-04-26', '2023-05-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('115/SPOBRAS/2022', 'AÇÃO EXPROPRIATÓRIA', 'ENCERRADO / TRD', 8580.07, '2023-01-10', '2023-04-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('013/SPOBRAS/2024', 'OBRAS REFORMA/READEQ', 'NÃO INICIADO', 3066234.07, NULL, NULL)
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('098/SPOBRAS/2022', 'SERVIÇOS AMBIENTAIS', 'VIGENTE', 11262522.78, '2022-12-12', '2026-01-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;