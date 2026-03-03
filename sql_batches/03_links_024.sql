INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '612'),
    (SELECT id FROM contratos WHERE numero = '038/SMPED/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '612'),
    (SELECT id FROM contratos WHERE numero = '111/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '613'),
    (SELECT id FROM contratos WHERE numero = '002/SMDET/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '613'),
    (SELECT id FROM contratos WHERE numero = '003/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '613'),
    (SELECT id FROM contratos WHERE numero = '015/SMDET/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '613'),
    (SELECT id FROM contratos WHERE numero = '022/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '661'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '661'),
    (SELECT id FROM contratos WHERE numero = '014/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '661'),
    (SELECT id FROM contratos WHERE numero = '125/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '661'),
    (SELECT id FROM contratos WHERE numero = '161/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '001/SMPED/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '002/SMPED/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '074/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '079/SPOBRAS/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '083/SMPED/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '124/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '665'),
    (SELECT id FROM contratos WHERE numero = '264/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '671'),
    (SELECT id FROM contratos WHERE numero = '048/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '672'),
    (SELECT id FROM contratos WHERE numero = '055/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '673'),
    (SELECT id FROM contratos WHERE numero = '050/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '674'),
    (SELECT id FROM contratos WHERE numero = '052/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '006/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '016/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '031/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '032/SPOBRAS/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '054/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '072/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '115/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '675'),
    (SELECT id FROM contratos WHERE numero = '199/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '676'),
    (SELECT id FROM contratos WHERE numero = '056/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '677'),
    (SELECT id FROM contratos WHERE numero = '049/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '678'),
    (SELECT id FROM contratos WHERE numero = '030/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '678'),
    (SELECT id FROM contratos WHERE numero = '047/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '679'),
    (SELECT id FROM contratos WHERE numero = '044/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '679'),
    (SELECT id FROM contratos WHERE numero = '050/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '680'),
    (SELECT id FROM contratos WHERE numero = '043/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '681'),
    (SELECT id FROM contratos WHERE numero = '040/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '682'),
    (SELECT id FROM contratos WHERE numero = '039/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '683'),
    (SELECT id FROM contratos WHERE numero = '037/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '684'),
    (SELECT id FROM contratos WHERE numero = '035/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '685'),
    (SELECT id FROM contratos WHERE numero = '036/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '685'),
    (SELECT id FROM contratos WHERE numero = '130/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '685'),
    (SELECT id FROM contratos WHERE numero = '147/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '686'),
    (SELECT id FROM contratos WHERE numero = '032/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '686'),
    (SELECT id FROM contratos WHERE numero = '033/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '687'),
    (SELECT id FROM contratos WHERE numero = '029/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '687'),
    (SELECT id FROM contratos WHERE numero = '031/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '688'),
    (SELECT id FROM contratos WHERE numero = '041/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '689'),
    (SELECT id FROM contratos WHERE numero = '024/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '689'),
    (SELECT id FROM contratos WHERE numero = '053/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;