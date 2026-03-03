import sql from 'mssql';
import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import path from 'path';
import crypto from 'crypto';

// Load .env from current directory
dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
// Prefer Service Role Key for Admin tasks to bypass RLS
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error('Missing Supabase credentials in .env');
    console.log('SUPABASE_URL:', SUPABASE_URL);
    console.log('SUPABASE_KEY length:', SUPABASE_KEY ? SUPABASE_KEY.length : 0);
    process.exit(1);
} else {
    console.log('SUPABASE_URL:', SUPABASE_URL);
    console.log('SUPABASE_KEY loaded (length):', SUPABASE_KEY.length);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY, {
    auth: {
        autoRefreshToken: false,
        persistSession: false
    }
});

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

// Helper: Parse DD/MM/YYYY to YYYY-MM-DD
function parseDate(dateStr) {
    if (!dateStr || typeof dateStr !== 'string') return null;
    const parts = dateStr.trim().split('/');
    if (parts.length !== 3) return null;
    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

// Helper: Fetch ALL rows from a table (handling pagination)
async function fetchAll(table, columns = '*') {
    let allData = [];
    let page = 0;
    const pageSize = 1000;

    while (true) {
        const { data, error } = await supabase
            .from(table)
            .select(columns)
            .range(page * pageSize, (page + 1) * pageSize - 1);

        if (error) throw error;
        if (!data || data.length === 0) break;

        allData = allData.concat(data);
        if (data.length < pageSize) break;
        page++;
    }
    return allData;
}

async function sync() {
    try {
        console.log('🔌 Connecting to SQL Server...');
        await sql.connect(sqlConfig);
        console.log('✅ Connected.');

        // 0. LOAD LOOKUP DATA (Distritos, Programas, Existing Projects)
        console.log('📥 Fetching lookup data from Supabase...');

        const distritos = await fetchAll('distritos', 'id, nome');
        const distritoMap = new Map();
        distritos.forEach(d => distritoMap.set(d.nome.trim().toUpperCase(), d.id));

        const existingProjects = await fetchAll('empreendimentos');
        const legacyProjectsMap = new Map(); // Key: codigo (SQL ID)
        existingProjects.forEach(p => {
            // Map by 'codigo' (Legacy ID) if present
            if (p.codigo) legacyProjectsMap.set(String(p.codigo), p);
        });

        // 1. Fetch Projects (Empreendimentos) from SQL
        console.log('📥 Fetching Projects from SQL Server...');
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
                t.dsEmpreendimento AS descricao,
                t.dsLocalizacao AS localizacao
            FROM empreendimentos.TB_EMPREENDIMENTOS t
            LEFT JOIN empreendimentos.VW_EMPREENDIMENTOS v ON t.idEmpreendimento = v.[Id Empreendimentos]
            LEFT JOIN empreendimentos.vwEmpreendimento ve ON t.idEmpreendimento = ve.idEmpreendimento
        `;

        const sqlProjectPayloads = [];

        for (const p of projectsResult.recordset) {
            const codigo = String(p.idEmpreendimento);
            const existing = legacyProjectsMap.get(codigo);

            // Resolve Distrito ID
            let idDistrito = null;
            if (p.nmDistrito) {
                const normalizedDistrito = p.nmDistrito.trim().toUpperCase();
                idDistrito = distritoMap.get(normalizedDistrito) || null;
            }

            // PRESERVE LAT/LON from Supabase if SQL is null/zero
            let lat = p.Latitude;
            let lon = p.Longitude;

            // Simple check for valid SQL coords (sometimes they are 0 or null)
            const isSqlCoordValid = (val) => val !== null && val !== 0;

            if (!isSqlCoordValid(lat) && existing?.latitude) {
                lat = existing.latitude;
            }
            if (!isSqlCoordValid(lon) && existing?.longitude) {
                lon = existing.longitude;
            }

            sqlProjectPayloads.push({
                codigo: codigo,
                nome: p.Empreendimentos,
                descricao: p.descricao,
                localizacao: p.localizacao,
                id_programa: p.idPrograma, // Direct map (assuming IDs match)
                id_distrito: idDistrito,
                subprefeitura: p.nmSubPrefeitura,
                latitude: lat,
                longitude: lon,
                // Prioritize existing priority flag if set, otherwise default to false (or SQL logic if needed)
                prioritario: existing?.prioritario || false,
                // Note: We do NOT send 'id' here to allow upsert by 'codigo' to maintain existing ID.
                // If we send 'id', we must send the correct existing UUID.
                id: existing?.id // If undefined, Supabase creates new UUID.
            });
        }

        console.log(`📊 Validated ${sqlProjectPayloads.length} projects for upsert.`);

        // 2. Fetch Contracts from SQL
        console.log('📥 Fetching Contracts from SQL Server...');
        const contractsResult = await sql.query`
            WITH CTE AS (
                SELECT 
                    ce.[Id Empreendimento ] AS id_empreendimento,
                    ce.[Nr. Contrato] AS nr_contrato,
                    ce.[Tipo de Contrato] AS tipo_contrato_dash,
                    ce.Status AS andamento_concluido,
                    vc.[Valor Contratual P0] AS valor_atual,
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

        // 3. UPSERT PROJECTS
        console.log('📤 Upserting Projects to Supabase...');
        // We upsert based on 'codigo'.
        const projectUuidMap = new Map(); // Codigo -> UUID

        for (let i = 0; i < sqlProjectPayloads.length; i += 100) {
            const batch = sqlProjectPayloads.slice(i, i + 100);
            const { data, error } = await supabase
                .from('empreendimentos')
                .upsert(batch, { onConflict: 'codigo' })
                .select('id, codigo');

            if (error) {
                console.error('❌ Error upserting projects:', error);
            } else if (data) {
                process.stdout.write('.');
                data.forEach(row => projectUuidMap.set(String(row.codigo), row.id));
            }
        }
        console.log('\n✅ Projects upserted.');


        // 4. PREPARE CONTRACTS
        // We encounter a challenge: Contracts table has unique ID (UUID).
        // It typically has a natural key 'numero'.
        // We will upsert by 'numero'.

        const contractPayloads = [];
        const linksPayloads = [];
        const seenContracts = new Set();

        for (const c of contractsResult.recordset) {
            if (!c.nr_contrato) continue;

            // Deduplicate contracts by Number (if multiple projects share same contract number? Possible?)
            // Usually valid.
            if (!seenContracts.has(c.nr_contrato)) {
                contractPayloads.push({
                    numero: c.nr_contrato,
                    tipo: c.tipo_contrato_dash,
                    status: c.andamento_concluido,
                    valor_total: c.valor_atual,
                    data_inicio: parseDate(c.execucao_data_inicio),
                    data_fim: parseDate(c.execucao_data_fim)
                });
                seenContracts.add(c.nr_contrato);
            }
        }

        console.log(`📤 Upserting ${contractPayloads.length} Contracts...`);

        // Upsert Contracts and get UUIDs
        const contractUuidMap = new Map(); // Numero -> UUID

        for (let i = 0; i < contractPayloads.length; i += 100) {
            const batch = contractPayloads.slice(i, i + 100);
            const { data, error } = await supabase
                .from('contratos')
                .upsert(batch, { onConflict: 'numero' })
                .select('id, numero');

            if (error) {
                console.error('❌ Error upserting contracts:', error);
            } else if (data) {
                process.stdout.write('.');
                data.forEach(row => contractUuidMap.set(row.numero, row.id));
            }
        }
        console.log('\n✅ Contracts upserted.');

        // 5. LINKING (empreendimentos_contratos)
        console.log('🔗 preparing links...');

        // We iterate through original SQL results to find Project-Contract pairs
        const links = [];
        const seenLinks = new Set();

        for (const c of contractsResult.recordset) {
            const projId = projectUuidMap.get(String(c.id_empreendimento));
            const contId = contractUuidMap.get(c.nr_contrato);

            if (projId && contId) {
                const key = `${projId}_${contId}`;
                if (!seenLinks.has(key)) {
                    links.push({
                        empreendimento_id: projId,
                        contrato_id: contId
                    });
                    seenLinks.add(key);
                }
            }
        }

        console.log(`🔗 Upserting ${links.length} Links...`);

        // Note: empreendimentos_contratos usually has composite PK (empreendimento_id, contrato_id)
        for (let i = 0; i < links.length; i += 100) {
            const batch = links.slice(i, i + 100);
            const { error } = await supabase
                .from('empreendimentos_contratos')
                .upsert(batch, { onConflict: 'empreendimento_id,contrato_id' });

            if (error) console.error('Error linking:', error);
            else process.stdout.write('.');
        }
        console.log('\n✅ Links done.');


        console.log('✨ Sync execution finished successfully.');
        await sql.close();
        process.exit(0);

    } catch (err) {
        console.error('❌ Error during sync:', err);
        try { await sql.close(); } catch { }
        process.exit(1);
    }
}

sync();
