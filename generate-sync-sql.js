import sql from 'mssql';
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config();

// Configuration
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

const OUTPUT_DIR = './sync_output';
if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR);
}

// Helpers
function parseDate(dateStr) {
    if (!dateStr || typeof dateStr !== 'string') return null;
    const parts = dateStr.trim().split('/');
    if (parts.length !== 3) return null;
    // YYYY-MM-DD
    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

function escapeSql(val) {
    if (val === null || val === undefined) return 'NULL';
    if (typeof val === 'boolean') return val ? 'TRUE' : 'FALSE';
    if (typeof val === 'number') return val;
    // Escape single quotes
    return `'${String(val).replace(/'/g, "''")}'`;
}

async function run() {
    try {
        console.log('🔌 Connecting to SQL Server...');
        await sql.connect(sqlConfig);
        console.log('✅ Connected.');

        // 1. Load Existing Data & Lookups
        console.log('📂 Loading existing data...');
        let existingProjects = [];
        try {
            const raw = fs.readFileSync('existing_data.json', 'utf8');
            existingProjects = JSON.parse(raw);
        } catch (e) {
            console.warn('⚠️ Could not load existing_data.json, proceeding without merge:', e.message);
        }

        const legacyMap = new Map();
        existingProjects.forEach(p => {
            if (p.codigo) legacyMap.set(String(p.codigo), p);
        });

        let distritos = [];
        const distritoMap = new Map();
        try {
            distritos = JSON.parse(fs.readFileSync('distritos.json', 'utf8'));
            distritos.forEach(d => distritoMap.set(d.nome.trim().toUpperCase(), d.id));
        } catch (e) {
            console.warn('⚠️ Could not load distritos.json:', e.message);
        }

        // 2. Fetch Projects
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

        // 3. Generate Project SQL
        console.log(`📝 Generating SQL for ${projectsResult.recordset.length} projects...`);
        let projectStatements = [];

        for (const p of projectsResult.recordset) {
            const codigo = String(p.idEmpreendimento);
            const existing = legacyMap.get(codigo);

            // Merge logic
            let lat = p.Latitude;
            let lon = p.Longitude;
            const isSqlCoordValid = (val) => val !== null && val !== 0;

            if (!isSqlCoordValid(lat) && existing?.latitude) lat = existing.latitude;
            if (!isSqlCoordValid(lon) && existing?.longitude) lon = existing.longitude;

            // Resolve Distrito
            let idDistrito = 'NULL';
            if (p.nmDistrito) {
                const norm = p.nmDistrito.trim().toUpperCase();
                if (distritoMap.has(norm)) {
                    idDistrito = distritoMap.get(norm);
                }
            }

            // Columns to insert
            // codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim
            const valCodigo = escapeSql(codigo);
            const valNome = escapeSql(p.Empreendimentos);
            const valDesc = escapeSql(p.descricao);
            const valLoc = escapeSql(p.localizacao);
            const valProg = p.idPrograma ? p.idPrograma : 'NULL';
            const valSub = escapeSql(p.nmSubPrefeitura);
            const valLat = lat ? lat : 'NULL';
            const valLon = lon ? lon : 'NULL';
            const valPrio = existing?.prioritario ? 'TRUE' : 'FALSE'; // Default FALSE if new
            const valDtIni = p.dtInicio ? escapeSql(p.dtInicio.toISOString().split('T')[0]) : 'NULL';
            const valDtFim = p.dtFim ? escapeSql(p.dtFim.toISOString().split('T')[0]) : 'NULL';

            // UPSERT
            // We use INSERT ... ON CONFLICT (codigo) DO UPDATE ...
            // Exclude prioritario data_inicio data_fim from update? No, existing script updated data_inicio/fim? 
            // Wait, existing script did not explicitly update those.
            // But we should update them if SQL has new data.
            // Only prioritario and coords should be preserved if user edited them?
            // Coords are merged above.
            // Prioritario: If we don't update it in 'DO UPDATE', then existing value remains. Correct.

            const stmt = `
INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario, data_inicio, data_fim)
VALUES (${valCodigo}, ${valNome}, ${valDesc}, ${valLoc}, ${valProg}, ${idDistrito}, ${valSub}, ${valLat}, ${valLon}, ${valPrio}, ${valDtIni}, ${valDtFim})
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = ${escapeSql(lat ? lat : null)}, -- Use merged value
    longitude = ${escapeSql(lon ? lon : null)}, -- Use merged value
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
`;
            projectStatements.push(stmt.trim());
        }

        // Batch write projects
        writeBatches('projects', projectStatements);

        // 4. Fetch Contracts
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

        // 5. Generate Contract SQL & Links
        console.log(`📝 Generating SQL for ${contractsResult.recordset.length} contract references...`);
        const contractStatements = [];
        const linkStatements = [];
        const seenContracts = new Set();
        const seenLinks = new Set();

        for (const c of contractsResult.recordset) {
            if (!c.nr_contrato) continue;

            // Contracts
            if (!seenContracts.has(c.nr_contrato)) {
                // Parse dates (DD/MM/YYYY)
                const dIni = parseDate(c.execucao_data_inicio);
                const dFim = parseDate(c.execucao_data_fim);

                const valNum = escapeSql(c.nr_contrato);
                const valTipo = escapeSql(c.tipo_contrato_dash);
                const valStatus = escapeSql(c.andamento_concluido);
                const valValor = c.valor_current ? c.valor_current : 'NULL'; // Numeric
                const valDtIni = escapeSql(dIni);
                const valDtFim = escapeSql(dFim);

                const stmt = `
INSERT INTO contratos (numero, tipo, status, valor_total, data_inicio, data_fim)
VALUES (${valNum}, ${valTipo}, ${valStatus}, ${valValor}, ${valDtIni}, ${valDtFim})
ON CONFLICT (numero) DO UPDATE SET
    tipo = EXCLUDED.tipo,
    status = EXCLUDED.status,
    valor_total = EXCLUDED.valor_total,
    data_inicio = EXCLUDED.data_inicio,
    data_fim = EXCLUDED.data_fim;
`;
                contractStatements.push(stmt.trim());
                seenContracts.add(c.nr_contrato);
            }

            // Links
            // empreendimento_id = (SELECT id FROM empreendimentos WHERE codigo = ...), contrato_id = (SELECT id FROM contratos WHERE numero = ...)
            const projCodigo = String(c.id_empreendimento);
            const contNumero = c.nr_contrato;
            const linkKey = `${projCodigo}_${contNumero}`;

            if (!seenLinks.has(linkKey)) {
                const stmt = `
INSERT INTO empreendimentos_contratos (empreendimento_id, contrato_id)
VALUES (
    (SELECT id FROM empreendimentos WHERE codigo = ${escapeSql(projCodigo)}),
    (SELECT id FROM contratos WHERE numero = ${escapeSql(contNumero)})
)
ON CONFLICT (empreendimento_id, contrato_id) DO NOTHING;
`;
                linkStatements.push(stmt.trim());
                seenLinks.add(linkKey);
            }
        }

        writeBatches('contracts', contractStatements);
        writeBatches('links', linkStatements);

        console.log('✨ Done.');
        process.exit(0);

    } catch (e) {
        console.error('❌ Error:', e);
        process.exit(1);
    }
}

function writeBatches(name, statements) {
    const BATCH_SIZE = 200; // Safe size for MCP execute_sql
    let batchNum = 1;
    for (let i = 0; i < statements.length; i += BATCH_SIZE) {
        const chunk = statements.slice(i, i + BATCH_SIZE);
        const fileName = `${name}_batch_${batchNum}.sql`;
        const filePath = path.join(OUTPUT_DIR, fileName);
        fs.writeFileSync(filePath, chunk.join('\n'));
        console.log(`Saved ${filePath} (${chunk.length} stmts)`);
        batchNum++;
    }
}

run();
