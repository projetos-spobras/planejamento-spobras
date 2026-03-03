INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('046/SIURB/2024', 'RECEITA', 'CONCLUÍDO', 113128.34, '2024-07-26', '2025-06-30')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('065/SIURB/2019', 'PROJETOS', 'SUSPENSO', 5990102.62, '2019-07-16', '2025-05-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('124/SIURB/2022', 'PROJETOS', 'VENCIDO', 4164834.48, '2022-08-08', '2025-09-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('225/SIURB/2022', 'RECEITA', 'EM TRÂMITE - ADITIVO', 568603.16, '2023-11-16', '2025-08-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('028/SMIT/2019', 'RECEITA', 'CONCLUÍDO', 234125, '2019-04-16', '2020-01-16')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('038/SMIT/2018', 'RECEITA', 'CONCLUÍDO', 228626.97, '2018-10-11', '2018-12-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('083/SIURB/2019', 'OBRAS', 'ENCERRADO / TRD', 1788631.3, '2019-08-09', '2020-02-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('029/SMIT/2019', 'RECEITA', 'CONCLUÍDO', 204000, '2019-04-23', '2020-01-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('037/SMIT/2018', 'RECEITA', 'CONCLUÍDO', 175650, '2018-10-11', '2018-12-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('091/SIURB/2019', 'OBRAS', 'ENCERRADO / TRD', 1390903.92, '2019-09-16', '2020-03-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('002/SIURB/2019', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 19988547.89, '2018-11-15', '2019-05-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('010/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 2773794.8, '2020-06-01', '2021-07-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('013/SIURB/2019', 'RECEITA', 'CONCLUÍDO', 1925842.92, '2019-01-12', '2019-07-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('060/SIURB/2020', 'PROJETOS', 'SUSPENSO', 993430.66, '2023-02-01', '2023-09-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('115/SIURB/2019', 'OBRAS', 'ENCERRADO / TRD', 3115000, '2019-11-28', '2021-05-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('051/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'CONCLUÍDO', 698871.28, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('088/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'RESCISÃO EM TRÂMITE', 91531.44, '2023-06-07', '2023-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('120/SIURB/2019', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 2544282.33, '2019-05-31', '2019-11-26')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('046/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 530324.39, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('084/SIURB/2019', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 2037644.22, '2019-02-25', '2019-08-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('089/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'RESCINDIDO', 91080, '2023-06-07', '2023-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('049/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 511060.1, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('091/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'RESCINDIDO', 92400, '2023-05-02', '2023-09-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('047/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 534160.43, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('085/SIURB/2019', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 2464958.12, '2019-03-11', '2019-09-06')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('092/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'RESCINDIDO', 95752.8, '2023-06-07', '2023-10-07')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('050/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 821920.3, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('095/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 98437, '2023-04-25', '2023-08-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('048/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 578087.81, '2019-01-23', '2019-05-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('054/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 1289494.32, '2019-01-30', '2019-05-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('093/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 99245, '2023-04-25', '2023-10-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('004/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 3676036.5, '2019-10-31', '2020-04-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('055/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 567980.2, '2019-01-30', '2019-05-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('056/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 586675.22, '2019-01-30', '2019-05-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('097/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'RESCINDIDO', 99363, '2023-05-02', '2023-09-02')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('057/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 450656.64, '2019-01-30', '2019-05-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('078/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'TRD EM TRAMITAÇÃO', 99602.07, '2021-04-15', '2021-07-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('058/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 157561.28, '2019-01-30', '2019-05-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('125/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 2531098.78, '2022-08-23', '2023-08-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('059/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 572988.18, '2019-02-01', '2019-05-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('094/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 97862, '2023-04-25', '2023-08-25')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('060/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'CONCLUÍDO', 948551.5, '2019-02-05', '2019-06-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('135/SIURB/2019', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 11650754.69, '2019-07-01', '2019-12-27')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('226/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 21225513.2, '2024-01-05', '2024-12-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('061/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 417999.1, '2019-02-05', '2019-06-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('123/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 3977428.01, '2022-08-15', '2023-11-14')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('023/SIURB/2021', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 5927664.75, '2021-07-05', '2022-06-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('095/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 905014.57, '2019-04-16', '2019-08-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('094/SIURB/2019', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 1890587.59, '2019-04-16', '2019-08-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('138/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 356439.84, '2023-07-10', '2023-11-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;