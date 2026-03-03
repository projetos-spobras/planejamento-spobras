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
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '96'),
    (SELECT id FROM contratos WHERE numero = '141/SIURB/2014')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '96'),
    (SELECT id FROM contratos WHERE numero = '198/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '99'),
    (SELECT id FROM contratos WHERE numero = '098/SIURB/2015')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '99'),
    (SELECT id FROM contratos WHERE numero = '160/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '029/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '040/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '046/SIURB/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '065/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '124/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '100'),
    (SELECT id FROM contratos WHERE numero = '225/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '102'),
    (SELECT id FROM contratos WHERE numero = '028/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '102'),
    (SELECT id FROM contratos WHERE numero = '038/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '102'),
    (SELECT id FROM contratos WHERE numero = '083/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '103'),
    (SELECT id FROM contratos WHERE numero = '029/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '103'),
    (SELECT id FROM contratos WHERE numero = '037/SMIT/2018')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '103'),
    (SELECT id FROM contratos WHERE numero = '091/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '104'),
    (SELECT id FROM contratos WHERE numero = '002/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '104'),
    (SELECT id FROM contratos WHERE numero = '010/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '104'),
    (SELECT id FROM contratos WHERE numero = '013/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '105'),
    (SELECT id FROM contratos WHERE numero = '060/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '105'),
    (SELECT id FROM contratos WHERE numero = '115/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '106'),
    (SELECT id FROM contratos WHERE numero = '051/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '106'),
    (SELECT id FROM contratos WHERE numero = '088/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '106'),
    (SELECT id FROM contratos WHERE numero = '120/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '107'),
    (SELECT id FROM contratos WHERE numero = '046/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '107'),
    (SELECT id FROM contratos WHERE numero = '084/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '107'),
    (SELECT id FROM contratos WHERE numero = '089/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '108'),
    (SELECT id FROM contratos WHERE numero = '049/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '108'),
    (SELECT id FROM contratos WHERE numero = '091/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '109'),
    (SELECT id FROM contratos WHERE numero = '047/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '109'),
    (SELECT id FROM contratos WHERE numero = '085/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '109'),
    (SELECT id FROM contratos WHERE numero = '092/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '110'),
    (SELECT id FROM contratos WHERE numero = '050/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '110'),
    (SELECT id FROM contratos WHERE numero = '095/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '111'),
    (SELECT id FROM contratos WHERE numero = '048/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '112'),
    (SELECT id FROM contratos WHERE numero = '054/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '112'),
    (SELECT id FROM contratos WHERE numero = '093/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '113'),
    (SELECT id FROM contratos WHERE numero = '004/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '113'),
    (SELECT id FROM contratos WHERE numero = '055/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '114'),
    (SELECT id FROM contratos WHERE numero = '056/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '114'),
    (SELECT id FROM contratos WHERE numero = '097/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '115'),
    (SELECT id FROM contratos WHERE numero = '057/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '115'),
    (SELECT id FROM contratos WHERE numero = '078/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '116'),
    (SELECT id FROM contratos WHERE numero = '058/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '116'),
    (SELECT id FROM contratos WHERE numero = '125/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '117'),
    (SELECT id FROM contratos WHERE numero = '059/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '117'),
    (SELECT id FROM contratos WHERE numero = '094/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '118'),
    (SELECT id FROM contratos WHERE numero = '060/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '118'),
    (SELECT id FROM contratos WHERE numero = '135/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '118'),
    (SELECT id FROM contratos WHERE numero = '226/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '119'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '119'),
    (SELECT id FROM contratos WHERE numero = '123/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '120'),
    (SELECT id FROM contratos WHERE numero = '023/SIURB/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '120'),
    (SELECT id FROM contratos WHERE numero = '095/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '121'),
    (SELECT id FROM contratos WHERE numero = '094/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '121'),
    (SELECT id FROM contratos WHERE numero = '138/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = '025/SMSO/2017')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.918/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.920/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.932/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.941/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.942/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.945/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.953/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.959/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.961/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 102.969/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 103.027/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE nº 110.096/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 110.126/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 110.158/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 110.184/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 110.214/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 43.757/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 43.772/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '122'),
    (SELECT id FROM contratos WHERE numero = 'NE Nº 52.294/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '123'),
    (SELECT id FROM contratos WHERE numero = '043/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '123'),
    (SELECT id FROM contratos WHERE numero = '052/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '123'),
    (SELECT id FROM contratos WHERE numero = '053/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '124'),
    (SELECT id FROM contratos WHERE numero = '087/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '125'),
    (SELECT id FROM contratos WHERE numero = '098/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '125'),
    (SELECT id FROM contratos WHERE numero = '103/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '125'),
    (SELECT id FROM contratos WHERE numero = '121/SIURB/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '126'),
    (SELECT id FROM contratos WHERE numero = '001/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '126'),
    (SELECT id FROM contratos WHERE numero = '100/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '127'),
    (SELECT id FROM contratos WHERE numero = '006/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '128'),
    (SELECT id FROM contratos WHERE numero = '125/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '129'),
    (SELECT id FROM contratos WHERE numero = '022/SMIT/2021')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '129'),
    (SELECT id FROM contratos WHERE numero = '059/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '129'),
    (SELECT id FROM contratos WHERE numero = '124/SMIT/2019')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '003/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '030/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '030/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '054/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '059/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '143/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '195/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '215/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '228/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '237/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '249/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '131'),
    (SELECT id FROM contratos WHERE numero = '284/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '009/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '031/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '090/SPOBRAS/2024')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '104/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '147/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '251/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '134'),
    (SELECT id FROM contratos WHERE numero = '282/SPOBRAS/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '136'),
    (SELECT id FROM contratos WHERE numero = ' 009/SIURB/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '136'),
    (SELECT id FROM contratos WHERE numero = '024/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '137'),
    (SELECT id FROM contratos WHERE numero = '031/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '137'),
    (SELECT id FROM contratos WHERE numero = '090/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '137'),
    (SELECT id FROM contratos WHERE numero = '096/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '137'),
    (SELECT id FROM contratos WHERE numero = '105/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '138'),
    (SELECT id FROM contratos WHERE numero = '031/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '139'),
    (SELECT id FROM contratos WHERE numero = '018/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '139'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '140'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '140'),
    (SELECT id FROM contratos WHERE numero = '225/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '141'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '141'),
    (SELECT id FROM contratos WHERE numero = '229/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '142'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '142'),
    (SELECT id FROM contratos WHERE numero = '105/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '143'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '143'),
    (SELECT id FROM contratos WHERE numero = '204/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '144'),
    (SELECT id FROM contratos WHERE numero = '061/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '144'),
    (SELECT id FROM contratos WHERE numero = '229/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '145'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '146'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '147'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '147'),
    (SELECT id FROM contratos WHERE numero = '126/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '148'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '148'),
    (SELECT id FROM contratos WHERE numero = '132/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '149'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '150'),
    (SELECT id FROM contratos WHERE numero = '062/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '150'),
    (SELECT id FROM contratos WHERE numero = '127/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '151'),
    (SELECT id FROM contratos WHERE numero = '063/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '151'),
    (SELECT id FROM contratos WHERE numero = '148/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '152'),
    (SELECT id FROM contratos WHERE numero = '041/SIURB/2023')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '152'),
    (SELECT id FROM contratos WHERE numero = '063/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '153'),
    (SELECT id FROM contratos WHERE numero = '019/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '153'),
    (SELECT id FROM contratos WHERE numero = '063/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '154'),
    (SELECT id FROM contratos WHERE numero = '027/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '154'),
    (SELECT id FROM contratos WHERE numero = '063/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '154'),
    (SELECT id FROM contratos WHERE numero = '130/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '155'),
    (SELECT id FROM contratos WHERE numero = '063/SIURB/2020')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '155'),
    (SELECT id FROM contratos WHERE numero = '148/SIURB/2022')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = '156'),
    (SELECT id FROM contratos WHERE numero = '022/SPOBRAS/2025')
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;