
require('dotenv').config({ path: '.env.local' });
const sql = require('mssql');
const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

// Configuração do Supabase
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || supabaseKey;

if (!supabaseUrl || !supabaseServiceKey) {
    console.error('Erro: Variáveis de ambiente do Supabase não configuradas.');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

// Configuração do SQL Server
const sqlConfig = {
    user: process.env.SQL_USER,
    password: process.env.SQL_PASSWORD,
    server: process.env.SQL_SERVER,
    database: process.env.SQL_DATABASE,
    port: parseInt(process.env.SQL_PORT || '1433'),
    options: {
        encrypt: false, // Internal network usually requires this
        trustServerCertificate: true
    }
};

// Helper: Deterministic UUID from string
function generateUUID(str) {
    if (!str) return null;
    const hash = crypto.createHash('md5').update(str).digest('hex');
    return `${hash.substr(0, 8)}-${hash.substr(8, 4)}-4${hash.substr(13, 3)}-8${hash.substr(17, 3)}-${hash.substr(20, 12)}`;
}

async function sync() {
    console.log('Iniciando sincronização...');
    let pool;
    try {
        pool = await sql.connect(sqlConfig);
        console.log('Conectado ao SQL Server.');

        // --- 1. EMPREENDIMENTOS ---
        console.log('Buscando Empreendimentos...');
        // Schema: empreendimentos.TB_EMPREENDIMENTOS
        const empResult = await pool.request().query(`
            SELECT 
                idEmpreendimento, 
                nmEmpreendimento, 
                nmCodigoEmpreendimento, 
                nmDescricao,
                nmEndereco, 
                idFase, 
                idPrograma,
                idDistrito,
                idGestor,
                vlEstimado
            FROM [empreendimentos].[TB_EMPREENDIMENTOS]
        `);

        console.log(`Encontrados ${empResult.recordset.length} empreendimentos.`);

        const empUpsertBatch = [];
        const programasSet = new Set();
        const distritosSet = new Set();
        const gerenciasSet = new Set(); // IDs de gerencia para fallback
        const fasesSet = new Set();

        for (const row of empResult.recordset) {
            const uuid = generateUUID(`empreendimento-${row.idEmpreendimento}`);

            empUpsertBatch.push({
                id: uuid,
                nome: row.nmEmpreendimento,
                codigo: row.idEmpreendimento ? row.idEmpreendimento.toString() : null,
                descricao: row.nmDescricao ? row.nmDescricao.trim() : null,
                localizacao: row.nmEndereco ? row.nmEndereco.trim() : null,
                status: row.idFase ? row.idFase.toString() : null,
                valor_total: row.vlEstimado || 0,
                id_programa: row.idPrograma,
                id_distrito: row.idDistrito,
                programa: null,
                subprefeitura: null,
                gerencia: row.idGestor ? row.idGestor.toString() : null,
                updated_at: new Date().toISOString()
            });

            if (row.idPrograma) programasSet.add(row.idPrograma);
            if (row.idDistrito) distritosSet.add(row.idDistrito);
            if (row.idGestor) gerenciasSet.add(row.idGestor);
            if (row.idFase) fasesSet.add(row.idFase);
        }

        // Helper to upsert lookups
        const upsertLookup = async (table, data) => {
            if (!data || data.length === 0) return;
            const { error } = await supabase.from(table).upsert(data, { onConflict: 'id' });
            if (error) console.error(`Erro upsert ${table}:`, error.message);
            else console.log(`Populated ${table}: ${data.length} rows.`);
        };

        // Fetch Lookups via View
        try {
            console.log('Buscando Programas e Fases via View...');
            const viewP = await sql.query(`
                SELECT DISTINCT "Id Programas" as id, "Programas" as nome 
                FROM [empreendimentos].[VW_EMPREENDIMENTOS] 
                WHERE "Id Programas" IS NOT NULL
            `);
            await upsertLookup('programas', viewP.recordset);

            const viewF = await sql.query(`
                SELECT DISTINCT "idFase" as id, "Fase" as nome 
                FROM [empreendimentos].[VW_EMPREENDIMENTOS] 
                WHERE "idFase" IS NOT NULL
            `);
            await upsertLookup('empreendimento_fases', viewF.recordset);
        } catch (err) { console.error('Error fetching from VW_EMPREENDIMENTOS:', err.message); }

        try {
            console.log('Buscando Distritos via View...');
            const viewL = await sql.query(`
                SELECT DISTINCT idDistrito as id, Distrito as nome, Subprefeitura as subprefeitura_nome 
                FROM [empreendimentos].[VW_EMPREENDIMENTO_LOCALIZACAO] 
                WHERE idDistrito IS NOT NULL
            `);
            await upsertLookup('distritos', viewL.recordset);
        } catch (err) { console.error('Error fetching from VW_EMPREENDIMENTO_LOCALIZACAO:', err.message); }

        // --- NOVO: Buscando Gerências (Setor Gestor) via View VW_CONTRATOS ---
        try {
            console.log('Buscando Gerências via VW_CONTRATOS...');
            const viewG = await sql.query(`
                SELECT DISTINCT idSetorGestor as id, nmSetorGestor as nome
                FROM [contratos].[VW_CONTRATOS]
                WHERE idSetorGestor IS NOT NULL
            `);
            console.log(`Gerencias found via view: ${viewG.recordset.length}`);
            if (viewG.recordset.length > 0) console.log('Sample Gerencia:', viewG.recordset[0]);

            await upsertLookup('gerencias', viewG.recordset);
        } catch (err) { console.error('Error fetching Gerencias from VW_CONTRATOS:', err.message); }


        const upsertFallback = async (table, set) => {
            if (set.size === 0) return;
            // Apenas insere se não existir (ignoreDuplicates: true), para não sobrescrever o nome correto com NULL
            const data = Array.from(set).map(id => ({ id, nome: null }));
            const { error } = await supabase.from(table).upsert(data, { onConflict: 'id', ignoreDuplicates: true });
            if (error) console.error(`Erro upsert fallback ${table}:`, error.message);
        };

        await upsertFallback('programas', programasSet);
        await upsertFallback('distritos', distritosSet);
        await upsertFallback('gerencias', gerenciasSet);
        await upsertFallback('empreendimento_fases', fasesSet);

        console.log('Lookups via View e Fallback finalizados.');

        for (let i = 0; i < empUpsertBatch.length; i += 100) {
            const chunk = empUpsertBatch.slice(i, i + 100);
            const { error } = await supabase.from('empreendimentos').upsert(chunk, { onConflict: 'id' });
            if (error) console.error('Erro batch upsert empreendimentos:', error.message);
        }
        console.log('Empreendimentos sincronizados (Batch).');

        // --- 2. LOOKUPS ADICIONAIS ---
        // Status Map
        const statusMap = new Map();
        try {
            const statusResult = await pool.request().query('SELECT idStatus, nmStatus FROM [contratos].[TB_STATUS]');
            statusResult.recordset.forEach(r => statusMap.set(r.idStatus, r.nmStatus));
            console.log(`Carregados ${statusMap.size} status.`);
        } catch (e) { console.log('TB_STATUS not found or accessible.'); }

        // --- 3. CONTRATOS (TB_CONTRATOS_SECRETARIA) ---
        console.log('Buscando Contratos (TB_CONTRATOS_SECRETARIA)...');
        // JOIN com TB_CONTRATADA removido pois o usuário não tem permissão de leitura em [escola].[TB_CONTRATADA]
        const contResult = await pool.request().query(`
            SELECT 
                c.idContratoSecretaria,
                c.nmContrato,
                c.nmObjeto,
                c.idContratada,
                c.idStatus,
                c.idTipo,
                c.vlContrato,
                c.dtInicioVigencia,
                c.dtTerminoVigencia,
                c.idEmpreendimento
            FROM [contratos].[TB_CONTRATOS_SECRETARIA] c
            WHERE c.nmContrato IS NOT NULL
        `);

        console.log(`Encontrados ${contResult.recordset.length} contratos.`);

        const contUpsertBatch = [];
        const contratoIdToNumMap = new Map(); // idSecretaria (int) -> nmContrato (string)

        for (const row of contResult.recordset) {
            const num = row.nmContrato.trim();
            const idInt = row.idContratoSecretaria;
            contratoIdToNumMap.set(idInt, num);

            // Use 'contrato-{num}' seed to match previous version logic if possible, 
            // ensuring consistency if number is unique.
            const uuid = generateUUID(`contrato-${num}`);

            const statusName = statusMap.get(row.idStatus) || (row.idStatus ? row.idStatus.toString() : null);

            // Fallback para ID pois não temos acesso ao nome da contratada
            let nomeContratada = row.idContratada ? `ID: ${row.idContratada}` : null;

            contUpsertBatch.push({
                id: uuid,
                numero: num,
                tipo: row.idTipo ? row.idTipo.toString() : null, // Todo: Lookup ID type
                objeto: row.nmObjeto,
                contratada: nomeContratada,
                status: statusName,
                valor_total: row.vlContrato || 0,
                data_inicio: row.dtInicioVigencia,
                data_fim: row.dtTerminoVigencia,
                updated_at: new Date().toISOString()
            });
        }

        for (let i = 0; i < contUpsertBatch.length; i += 100) {
            const chunk = contUpsertBatch.slice(i, i + 100);
            const { error } = await supabase.from('contratos').upsert(chunk, { onConflict: 'id' });
            if (error) console.error('Erro batch upsert contratos:', error.message);
        }
        console.log('Contratos sincronizados.');

        // --- 4. LINKS ---
        console.log('Buscando Vínculos (Diretos + Tabela de Associação)...');

        const linksBatch = [];
        const seenLinks = new Set();

        // 4.1 Direct links from TB_CONTRATOS_SECRETARIA
        for (const [idSecretaria, num] of contratoIdToNumMap) {
            const row = contResult.recordset.find(r => r.idContratoSecretaria === idSecretaria);
            if (row && row.idEmpreendimento) {
                const empId = row.idEmpreendimento;
                const contractUuid = generateUUID(`contrato-${num}`);
                const empUuid = generateUUID(`empreendimento-${empId}`);

                const linkKey = `${empUuid}-${contractUuid}`;
                if (!seenLinks.has(linkKey)) {
                    seenLinks.add(linkKey);
                    linksBatch.push({
                        empreendimento_id: empUuid,
                        contrato_id: contractUuid
                    });
                }
            }
        }

        // 4.2 Indirect links from TB_CONTRATO_EMPREENDIMENTOS
        const linkResult = await pool.request().query(`
            SELECT idContrato, idEmpreendimento
            FROM [contratos].[TB_CONTRATO_EMPREENDIMENTOS]
        `);

        for (const row of linkResult.recordset) {
            const contractNum = contratoIdToNumMap.get(row.idContrato);
            if (!contractNum) continue;

            const empId = row.idEmpreendimento;
            // Note: idEmpreendimento in junction table might refer to same EMP ID space? Yes.
            if (!empId) continue;

            const contractUuid = generateUUID(`contrato-${contractNum}`);
            const empUuid = generateUUID(`empreendimento-${empId}`);

            const linkKey = `${empUuid}-${contractUuid}`;
            if (seenLinks.has(linkKey)) continue;
            seenLinks.add(linkKey);

            linksBatch.push({
                empreendimento_id: empUuid,
                contrato_id: contractUuid
            });
        }

        console.log(`Inserindo ${linksBatch.length} vínculos...`);
        for (let i = 0; i < linksBatch.length; i += 100) {
            const chunk = linksBatch.slice(i, i + 100);
            const { error } = await supabase.from('empreendimentos_contratos').upsert(chunk, { onConflict: 'empreendimento_id,contrato_id', ignoreDuplicates: true });
            if (error) console.error('Erro batch insert links:', error.message);
        }

        console.log('Vínculos sincronizados.');

    } catch (err) {
        console.error('Erro fatal:', err);
    } finally {
        if (pool) await pool.close();
        process.exit(0);
    }
}

sync();
