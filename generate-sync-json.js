import sql from 'mssql';
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config();

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

const OUTPUT_DIR = './sync_data';
if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR);
}

function parseDate(dateStr) {
    if (!dateStr || typeof dateStr !== 'string') return null;
    const parts = dateStr.trim().split('/');
    if (parts.length !== 3) return null;
    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

async function run() {
    try {
        console.log('🔌 Connecting to SQL Server...');
        await sql.connect(sqlConfig);
        console.log('✅ Connected.');

        // 1. Load Existing Data
        console.log('📂 Loading existing data...');
        let existingProjects = [];
        try {
            const raw = fs.readFileSync('existing_data.json', 'utf8');
            existingProjects = JSON.parse(raw);
        } catch (e) {
            console.warn('⚠️ Could not load existing_data.json:', e.message);
        }

        const legacyMap = new Map();
        existingProjects.forEach(p => {
            if (p.codigo) legacyMap.set(String(p.codigo), p);
        });

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
                t.idDistrito, -- Use ID directly if possible
                t.nmDescricao AS descricao,
                t.nmEndereco AS localizacao
            FROM empreendimentos.TB_EMPREENDIMENTOS t
            LEFT JOIN empreendimentos.VW_EMPREENDIMENTOS v ON t.idEmpreendimento = v.[Id Empreendimentos]
            LEFT JOIN empreendimentos.vwEmpreendimento ve ON t.idEmpreendimento = ve.idEmpreendimento
        `;

        // 3. Generate Project Payloads
        console.log(`📝 Processing ${projectsResult.recordset.length} projects...`);
        const projects = [];

        // Supabase distritos lookup not needed if we trust SQL IDs or use names later?
        // But Supabase 'distritos' table uses IDs 1-101.
        // SQL 't.idDistrito' might match?
        // Let's assume we need to map names if ID isn't reliable or if we want to be safe.
        // But for this JSON, lets check distritos.json from before.
        let distritoMap = new Map();
        try {
            const dRaw = fs.readFileSync('distritos.json', 'utf8');
            JSON.parse(dRaw).forEach(d => distritoMap.set(d.nome.trim().toUpperCase(), d.id));
        } catch (e) { }

        for (const p of projectsResult.recordset) {
            const codigo = String(p.idEmpreendimento);
            const existing = legacyMap.get(codigo);

            let lat = p.Latitude;
            let lon = p.Longitude;
            const isSqlCoordValid = (val) => val !== null && val !== 0;

            if (!isSqlCoordValid(lat) && existing?.latitude) lat = existing.latitude;
            if (!isSqlCoordValid(lon) && existing?.longitude) lon = existing.longitude;

            let idDistrito = p.idDistrito; // Try SQL ID first?
            // Verify if SQL ID is valid? Or prefer name map?
            // sync-staging.js used name map. Let's stick to name map if available.
            if (p.nmDistrito) {
                const norm = p.nmDistrito.trim().toUpperCase();
                if (distritoMap.has(norm)) {
                    idDistrito = distritoMap.get(norm);
                }
            }

            projects.push({
                codigo: codigo,
                nome: p.Empreendimentos,
                descricao: p.descricao,
                localizacao: p.localizacao,
                id_programa: p.idPrograma,
                id_distrito: idDistrito,
                subprefeitura: p.nmSubPrefeitura,
                latitude: lat,
                longitude: lon,
                prioritario: existing?.prioritario || false
                // data_inicio/fim excluded as per previous findings (columns missing/empty in source for projects)
            });
        }

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

        const contracts = [];
        const seenContracts = new Set();
        const links = [];
        const seenLinks = new Set();

        for (const c of contractsResult.recordset) {
            if (!c.nr_contrato) continue;

            if (!seenContracts.has(c.nr_contrato)) {
                contracts.push({
                    numero: c.nr_contrato,
                    tipo: c.tipo_contrato_dash,
                    status: c.andamento_concluido,
                    valor_total: c.valor_current,
                    data_inicio: parseDate(c.execucao_data_inicio),
                    data_fim: parseDate(c.execucao_data_fim)
                });
                seenContracts.add(c.nr_contrato);
            }

            const linkKey = `${c.id_empreendimento}_${c.nr_contrato}`;
            if (!seenLinks.has(linkKey)) {
                links.push({
                    codigo_empreendimento: String(c.id_empreendimento),
                    numero_contrato: c.nr_contrato
                });
                seenLinks.add(linkKey);
            }
        }

        // Write files
        fs.writeFileSync(path.join(OUTPUT_DIR, 'projects.json'), JSON.stringify(projects, null, 2));
        fs.writeFileSync(path.join(OUTPUT_DIR, 'contracts.json'), JSON.stringify(contracts, null, 2));
        fs.writeFileSync(path.join(OUTPUT_DIR, 'links_raw.json'), JSON.stringify(links, null, 2));

        console.log(`✅ Saved:
- ${projects.length} Projects
- ${contracts.length} Contracts
- ${links.length} Links (raw)`);

        process.exit(0);
    } catch (e) {
        console.error('❌ Error:', e);
        process.exit(1);
    }
}

run();
