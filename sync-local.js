import sql from 'mssql';
import dotenv from 'dotenv';
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Load .env from current directory
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

// Helper: Parse DD/MM/YYYY to YYYY-MM-DD
function parseDate(dateStr) {
    if (!dateStr || typeof dateStr !== 'string') return null;
    const parts = dateStr.trim().split('/');
    if (parts.length !== 3) return null;
    return `${parts[2]}-${parts[1]}-${parts[0]}`;
}

const PROGRAM_MAP = {
    20: "ESCOLAS",
    16: "MANUTENÇÃO DE OBRAS DE ARTE ESPECIAIS",
    5: "VIÁRIO DE MOBILIDADE URBANA",
    8: "DESCOMPLICA",
    18: "DRENAGEM",
    24: "SEDES E PRÉDIOS PRÓPRIOS",
    19: "PLANO AÇÕES SOCIO ASSISTENCIAIS",
    11: "AUTÓDROMO MUNICIPAL JOSÉ CARLOS PACE - INTERLAGOS",
    2: "OPERAÇÃO URBANA ÁGUA ESPRAIADA",
    4: "OPERAÇÃO URBANA FARIA LIMA",
    23: "REQUALIFICAÇÃO DE CALÇADÕES",
    21: "PROGRAMA REENCONTRO",
    1: "OPERAÇÃO URBANA  ÁGUA BRANCA",
    7: "OUTROS",
    15: "MOBILIÁRIO URBANO",
    3: "OPERAÇÃO URBANA CENTRO"
};

async function sync() {
    try {
        console.log('🔌 Connecting to SQL Server...');
        await sql.connect(sqlConfig);
        console.log('✅ Connected.');

        // 1. Fetch Projects (Empreendimentos)
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
                ve.nmDistrito
            FROM empreendimentos.TB_EMPREENDIMENTOS t
            LEFT JOIN empreendimentos.VW_EMPREENDIMENTOS v ON t.idEmpreendimento = v.[Id Empreendimentos]
            LEFT JOIN empreendimentos.vwEmpreendimento ve ON t.idEmpreendimento = ve.idEmpreendimento
        `;

        const projects = projectsResult.recordset.map(p => {
            const programFromId = PROGRAM_MAP[p.idPrograma];
            const resolvedProgram = programFromId || p.Programas || 'N/A';

            return {
                id: crypto.randomUUID(), // New UUID each time, or use deterministic if needed (but acceptable for reload)
                id_empreendimento: p.idEmpreendimento,
                empreendimentos: p.Empreendimentos,
                programas: resolvedProgram,
                latitude: p.Latitude,
                longitude: p.Longitude,
                prioritario: !!p.prioritario,
                gestor: p.idGestor?.toString(),
                subprefeitura: p.nmSubPrefeitura,
                distrito: p.nmDistrito
            };
        });

        console.log(`📊 Found ${projects.length} projects.`);

        // 2. Fetch Contracts
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

        const contracts = contractsResult.recordset.map(c => ({
            id: crypto.randomUUID(),
            id_empreendimento: c.id_empreendimento,
            nr_contrato: c.nr_contrato,
            tipo_contrato_dash: c.tipo_contrato_dash,
            andamento_concluido: c.andamento_concluido,
            valor_atual: c.valor_atual,
            execucao_data_inicio: parseDate(c.execucao_data_inicio),
            execucao_data_fim: parseDate(c.execucao_data_fim)
        })).filter(c => c.id_empreendimento);

        console.log(`📄 Found ${contracts.length} contracts.`);

        // 3. Write to JSON
        const outputDir = path.join(__dirname, 'public', 'data');
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true });
        }

        const outputPath = path.join(outputDir, 'data.json');
        const data = {
            last_updated: new Date().toISOString(),
            projects: projects,
            contracts: contracts
        };

        fs.writeFileSync(outputPath, JSON.stringify(data, null, 2));
        console.log(`💾 Data written to ${outputPath}`);

        await sql.close();
        console.log('✨ Local Sync Complete!');

    } catch (err) {
        console.error('❌ Error during local sync:', err);
        try { await sql.close(); } catch { }
        process.exit(1);
    }
}

sync();
