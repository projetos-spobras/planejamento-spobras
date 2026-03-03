INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '242'),
    (SELECT id FROM contratos WHERE numero = '076/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '243'),
    (SELECT id FROM contratos WHERE numero = '023/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '243'),
    (SELECT id FROM contratos WHERE numero = '076/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '243'),
    (SELECT id FROM contratos WHERE numero = '130/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '244'),
    (SELECT id FROM contratos WHERE numero = '076/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '244'),
    (SELECT id FROM contratos WHERE numero = '107/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '245'),
    (SELECT id FROM contratos WHERE numero = '023/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '245'),
    (SELECT id FROM contratos WHERE numero = '076/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '246'),
    (SELECT id FROM contratos WHERE numero = '076/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '246'),
    (SELECT id FROM contratos WHERE numero = '105/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '247'),
    (SELECT id FROM contratos WHERE numero = '056/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '247'),
    (SELECT id FROM contratos WHERE numero = '077/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '248'),
    (SELECT id FROM contratos WHERE numero = '077/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '248'),
    (SELECT id FROM contratos WHERE numero = '210/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '249'),
    (SELECT id FROM contratos WHERE numero = '021/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '249'),
    (SELECT id FROM contratos WHERE numero = '077/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '250'),
    (SELECT id FROM contratos WHERE numero = '021/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '250'),
    (SELECT id FROM contratos WHERE numero = '077/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '250'),
    (SELECT id FROM contratos WHERE numero = '103/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '251'),
    (SELECT id FROM contratos WHERE numero = '014/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '257'),
    (SELECT id FROM contratos WHERE numero = '012/SMIT/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '257'),
    (SELECT id FROM contratos WHERE numero = '060/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '258'),
    (SELECT id FROM contratos WHERE numero = '017/SMIT/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '258'),
    (SELECT id FROM contratos WHERE numero = '021/SMIT/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '258'),
    (SELECT id FROM contratos WHERE numero = '116/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '259'),
    (SELECT id FROM contratos WHERE numero = '018/SMIT/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '259'),
    (SELECT id FROM contratos WHERE numero = '020/SMIT/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '259'),
    (SELECT id FROM contratos WHERE numero = '153/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '030/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '035/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '055/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '060/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '087/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '260'),
    (SELECT id FROM contratos WHERE numero = '095/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '261'),
    (SELECT id FROM contratos WHERE numero = '041/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '261'),
    (SELECT id FROM contratos WHERE numero = '052/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '261'),
    (SELECT id FROM contratos WHERE numero = '059/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '262'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '262'),
    (SELECT id FROM contratos WHERE numero = '011/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '262'),
    (SELECT id FROM contratos WHERE numero = '128/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '262'),
    (SELECT id FROM contratos WHERE numero = '145/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '263'),
    (SELECT id FROM contratos WHERE numero = '178/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '264'),
    (SELECT id FROM contratos WHERE numero = '017/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '264'),
    (SELECT id FROM contratos WHERE numero = '053/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '274'),
    (SELECT id FROM contratos WHERE numero = '071/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '275'),
    (SELECT id FROM contratos WHERE numero = '071/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '276'),
    (SELECT id FROM contratos WHERE numero = '005/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '276'),
    (SELECT id FROM contratos WHERE numero = '071/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '277'),
    (SELECT id FROM contratos WHERE numero = '004/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;