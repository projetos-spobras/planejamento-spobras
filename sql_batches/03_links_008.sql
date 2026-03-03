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