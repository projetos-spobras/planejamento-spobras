import sql from 'mssql';
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const sqlConfig = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

const OUTPUT_DIR = './sql_batches';
if (fs.existsSync(OUTPUT_DIR)) {
    fs.rmSync(OUTPUT_DIR, { recursive: true, force: true });
}
fs.mkdirSync(OUTPUT_DIR);

function parseDate(dateStr) {
    if (!dateStr || typeof dateStr !== 'string') return null;
    const parts = dateStr.trim().split('/');
    if (parts.length !== 3) return null;
    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

function escapeSql(val) {
    if (val === null || val === undefined) return 'NULL';
    if (typeof val === 'boolean') return val ? 'TRUE' : 'FALSE';
    if (typeof val === 'number') return val;
    return `'${String(val).replace(/'/g, "''")}'`;
}

async function run() {
    try {
        console.log('🔌 Connecting to SQL Server...');
        await sql.connect(sqlConfig);
        console.log('✅ Connected.');

        // Load existing data for lat/long preservation
        let existingProjects = [];
        try {
            const raw = fs.readFileSync('existing_data.json', 'utf8');
            existingProjects = JSON.parse(raw);
        } catch (e) { }
        const legacyMap = new Map();
        existingProjects.forEach(p => {
            if (p.codigo) legacyMap.set(String(p.codigo), p);
        });

        // Load distritos map
        const distritoMap = new Map();
        try {
            const ds = JSON.parse(fs.readFileSync('distritos.json', 'utf8'));
            ds.forEach(d => distritoMap.set(d.nome.trim().toUpperCase(), d.id));
        } catch (e) { }

        // --- PROJECTS ---
        console.log('📥 Querying Projects...');
        const projectsResult = await sql.query`
            SELECT 
                t.idEmpreendimento,
                t.nmEmpreendimento AS Empreendimentos,
                t.idPrograma,
                v.Programas,
                t.nrLatitude AS Latitude,
                t.nrLongitude AS Longitude,
                t.ckFichaTecnica AS prioritario,
                t.idGestor,
                ve.nmSubPrefeitura,
                ve.nmDistrito,
                t.nmDescricao AS descricao,
                t.nmEndereco AS localizacao
            FROM empreendimentos.TB_EMPREENDIMENTOS t
            LEFT JOIN empreendimentos.VW_EMPREENDIMENTOS v ON t.idEmpreendimento = v.[Id Empreendimentos]
            LEFT JOIN empreendimentos.vwEmpreendimento ve ON t.idEmpreendimento = ve.idEmpreendimento
        `;

        const projectStmts = [];
        for (const p of projectsResult.recordset) {
            const codigo = String(p.idEmpreendimento);
            const existing = legacyMap.get(codigo);

            let lat = p.Latitude;
            let lon = p.Longitude;
            if ((lat === null || lat === 0) && existing?.latitude) lat = existing.latitude;
            if ((lon === null || lon === 0) && existing?.longitude) lon = existing.longitude;

            let idDistrito = 'NULL';
            if (p.nmDistrito) {
                const norm = p.nmDistrito.trim().toUpperCase();
                if (distritoMap.has(norm)) idDistrito = distritoMap.get(norm);
            }

            const valCodigo = escapeSql(codigo);
            const valNome = escapeSql(p.Empreendimentos);
            const valDesc = escapeSql(p.descricao);
            const valLoc = escapeSql(p.localizacao);
            const valProg = p.idPrograma ? p.idPrograma : 'NULL';
            const valSub = escapeSql(p.nmSubPrefeitura);
            const valLat = lat ? lat : 'NULL';
            const valLon = lon ? lon : 'NULL';
            const valPrio = existing?.prioritario ? 'TRUE' : 'FALSE';

            projectStmts.push(`
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES (${valCodigo}, ${valNome}, ${valDesc}, ${valLoc}, ${valProg}, ${idDistrito}, ${valSub}, ${valLat}, ${valLon}, ${valPrio})
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = ${escapeSql(lat ? lat : null)},
    longitude = ${escapeSql(lon ? lon : null)};
`.trim());
        }

        // --- CONTRACTS & LINKS ---
        console.log('📥 Querying Contracts...');
        const contractsResult = await sql.query`
            WITH CTE AS (
                SELECT 
                    ce.[Id Empreendimento ] AS id_empreendimento,
                    ce.[Nr. Contrato] AS nr_contrato,
                    ce.[Tipo de Contrato] AS tipo_contrato_dash,
                    ce.Status AS andamento_concluido,
                    vc.[Valor Contratual P0] AS valor_current,
                    vc.[Execução Data de Início] AS execucao_data_inicio,
                    vc.[Execução Data Fim] AS execucao_data_fim,
                    ROW_NUMBER() OVER (
                        PARTITION BY ce.[Id Empreendimento ], ce.[Nr. Contrato] 
                        ORDER BY vc.[id Contrato] DESC
                    ) as rn
                FROM empreendimentos.VW_CONTRATOS_EMPREENDIMENTOS ce
                LEFT JOIN contratos.VW_CONTRATOS vc ON ce.[Id Contrato] = vc.[id Contrato]
            )
            SELECT * FROM CTE WHERE rn = 1
        `;

        const contractStmts = [];
        const linkStmts = [];
        const seenContracts = new Set();
        const seenLinks = new Set();

        for (const c of contractsResult.recordset) {
            if (!c.nr_contrato) continue;

            if (!seenContracts.has(c.nr_contrato)) {
                const dIni = parseDate(c.execucao_data_inicio);
                const dFim = parseDate(c.execucao_data_fim);

                contractStmts.push(`
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES (${escapeSql(c.nr_contrato)}, ${escapeSql(c.tipo_contrato_dash)}, ${escapeSql(c.andamento_concluido)}, ${c.valor_current || 'NULL'}, ${escapeSql(dIni)}, ${escapeSql(dFim)})
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
`.trim());
                seenContracts.add(c.nr_contrato);
            }

            const pCode = String(c.id_empreendimento);
            const cNum = c.nr_contrato;
            const linkKey = `${pCode}_${cNum}`;

            if (!seenLinks.has(linkKey)) {
                linkStmts.push(`
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = ${escapeSql(pCode)}),
    (SELECT id FROM contratos WHERE numero = ${escapeSql(cNum)})
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
`.trim());
                seenLinks.add(linkKey);
            }
        }

        // Write batches
        writeBatch(projectStmts, '01_projects', 50);
        writeBatch(contractStmts, '02_contracts', 50);
        writeBatch(linkStmts, '03_links', 50);

        console.log('✅ Generated SQL batches.');
        process.exit(0);

    } catch (e) {
        console.error('❌ Error:', e);
        process.exit(1);
    }
}

function writeBatch(stmts, prefix, size) {
    let count = 1;
    for (let i = 0; i < stmts.length; i += size) {
        const chunk = stmts.slice(i, i + size);
        // Padding for sort order: 01_projects_001.sql
        const num = String(count).padStart(3, '0');
        const fname = `${prefix}_${num}.sql`;
        fs.writeFileSync(path.join(OUTPUT_DIR, fname), chunk.join('\n'));
        count++;
    }
}

run();
