INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '010/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '034/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '078/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '085/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '243/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '62'),
    (SELECT id FROM contratos WHERE numero = '293/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '63'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '63'),
    (SELECT id FROM contratos WHERE numero = '122/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '63'),
    (SELECT id FROM contratos WHERE numero = '187/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '64'),
    (SELECT id FROM contratos WHERE numero = '024/SIURB/2016')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '65'),
    (SELECT id FROM contratos WHERE numero = '114/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '65'),
    (SELECT id FROM contratos WHERE numero = '287/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '67'),
    (SELECT id FROM contratos WHERE numero = '022/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '67'),
    (SELECT id FROM contratos WHERE numero = '045/SIURB/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '68'),
    (SELECT id FROM contratos WHERE numero = '011/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '68'),
    (SELECT id FROM contratos WHERE numero = '023/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '68'),
    (SELECT id FROM contratos WHERE numero = '039/SIURB/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '69'),
    (SELECT id FROM contratos WHERE numero = '012/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '69'),
    (SELECT id FROM contratos WHERE numero = '024/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '69'),
    (SELECT id FROM contratos WHERE numero = '038/SIURB/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '70'),
    (SELECT id FROM contratos WHERE numero = '011/SGM/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '70'),
    (SELECT id FROM contratos WHERE numero = '035/SIURB/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '77'),
    (SELECT id FROM contratos WHERE numero = '178/SIURB/2011')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '85'),
    (SELECT id FROM contratos WHERE numero = '050/SIURB/2013')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '89'),
    (SELECT id FROM contratos WHERE numero = '017/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '89'),
    (SELECT id FROM contratos WHERE numero = '103/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '90'),
    (SELECT id FROM contratos WHERE numero = '026/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '90'),
    (SELECT id FROM contratos WHERE numero = '035/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '90'),
    (SELECT id FROM contratos WHERE numero = '086/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '91'),
    (SELECT id FROM contratos WHERE numero = '030/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '91'),
    (SELECT id FROM contratos WHERE numero = '036/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '91'),
    (SELECT id FROM contratos WHERE numero = '089/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '93'),
    (SELECT id FROM contratos WHERE numero = '253/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '94'),
    (SELECT id FROM contratos WHERE numero = '007/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '94'),
    (SELECT id FROM contratos WHERE numero = '044/SIURB/2013')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '94'),
    (SELECT id FROM contratos WHERE numero = '108/SPOBRAS/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '94'),
    (SELECT id FROM contratos WHERE numero = '138/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '013/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '030/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '043/SIURB/2013')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '092/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '104/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '121/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '162/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '95'),
    (SELECT id FROM contratos WHERE numero = '203/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '96'),
    (SELECT id FROM contratos WHERE numero = '025/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '96'),
    (SELECT id FROM contratos WHERE numero = '067/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '96'),
    (SELECT id FROM contratos WHERE numero = '113/SPOBRAS/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;