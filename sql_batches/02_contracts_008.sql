INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('251/SIURB/2023', 'RECEITA', 'VIGENTE', 174591.95, '2023-12-29', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('282/SPOBRAS/2023', 'SERVIÇOS AMBIENTAIS', 'SUSPENSO', 2150654.32, '2024-01-03', '2025-11-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES (' 009/SIURB/2025', 'OAE - PROJETOS E INSPEÇÕES', 'EM TRÂMITE - ADITIVO', 4652959.71, '2025-04-25', '2025-12-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('024/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 205231.82, '2020-03-05', '2020-08-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('031/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 110970.87, '2020-07-27', '2020-09-24')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('090/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 8213346.04, '2023-05-31', '2024-11-08')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('096/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'CONCLUÍDO', 1256203.41, '2020-11-26', '2023-01-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('105/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 213016.29, '2021-05-03', '2021-07-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('018/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'VIGENTE', 30495336.39, '2025-04-15', '2026-10-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('061/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 2013458.06, '2020-09-25', '2022-11-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('225/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 4499000, '2023-10-23', '2025-06-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('229/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 5153459.5, '2023-10-23', '2024-08-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('105/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 5891200.16, '2023-06-22', '2024-10-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('204/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'TRP ASSINADO', 6011268.92, '2023-10-24', '2024-11-23')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('062/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 1964978.88, '2020-09-25', '2023-02-03')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('126/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 9897109.09, '2022-08-15', '2023-09-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('132/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'TRP ASSINADO', 4197788.42, '2022-08-15', '2024-08-12')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('127/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 1855702.48, '2022-08-15', '2023-11-11')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('063/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 2074530.25, '2021-09-30', '2022-11-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('148/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'TRP ASSINADO', 2123309.13, '2022-08-23', '2024-09-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('041/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 5748741.15, '2023-06-22', '2025-05-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('019/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 16467136.85, '2025-04-15', '2025-12-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('027/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'VIGENTE', 11766409.66, '2025-05-20', '2026-05-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('130/SIURB/2022', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 4247883.05, '2022-08-15', '2023-11-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('022/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'VIGENTE', 13031568.52, '2025-04-15', '2026-04-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('104/SPOBRAS/2024', 'SERVIÇOS TOPOGRAFIA', 'ENCERRADO / TRD', 56253.93, '2024-08-21', '2024-10-19')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('070/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 447320.29, '2020-10-26', '2021-06-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('077/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'CONCLUÍDO', 1199670.06, '2020-11-19', '2023-03-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('071/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 566835.68, '2020-10-26', '2021-06-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('086/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'VIGENTE', 1198443.02, '2020-11-19', '2023-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('072/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 236936.97, '2020-10-26', '2021-05-28')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('073/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 516127.64, '2020-10-26', '2021-06-01')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('066/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 322411.3, '2020-11-09', '2021-08-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('067/SIURB/2020', 'OAE - RECUPERAÇÕES / OBRAS', 'ENCERRADO / TRD', 344157.32, '2020-11-09', '2021-08-05')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('079/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 883684.73, '2020-11-10', '2023-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('137/SPOBRAS/2023', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 267786.11, '2023-07-10', '2023-11-10')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('017/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'VIGENTE', 11544765.66, '2025-04-15', '2026-03-15')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('080/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 1095091.33, '2020-11-10', '2023-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('207/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'TRP ASSINADO', 5866467.51, '2023-10-23', '2025-07-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('209/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 9513801.44, '2023-09-25', '2024-11-24')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('012/SIURB/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 6727058.75, '2025-05-05', '2026-01-04')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('025/SPOBRAS/2025', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 20682615.67, '2025-05-13', '2026-05-13')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('081/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 906013.11, '2020-11-10', '2023-01-09')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('193/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 12329228.57, '2023-09-18', '2024-09-17')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('439/SIURB/2023', 'RECEITA', 'NÃO INICIADO', 584862.26, '2025-07-01', '2025-12-31')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('208/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'VENCIDO', 2474995.64, '2023-10-23', '2025-10-22')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('082/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'ENCERRADO / TRD', 1182126.7, '2020-11-10', '2023-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('083/SIURB/2020', 'OAE - PROJETOS E INSPEÇÕES', 'CONCLUÍDO', 1088361.67, '2020-11-10', '2023-02-20')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('212/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'EM TRÂMITE - ADITIVO', 3318442, '2023-11-21', '2024-05-21')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES ('216/SIURB/2023', 'OAE - RECUPERAÇÕES / OBRAS', 'CONCLUÍDO', 7612978.07, '2023-10-30', '2025-09-29')
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;