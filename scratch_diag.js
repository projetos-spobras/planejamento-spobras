const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const path = require('path');
const md5 = require('md5');

dotenv.config({ path: path.join(__dirname, '.env.local') });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const sb = createClient(supabaseUrl, supabaseKey);

function generateUUID(str) {
    if (!str) return '';
    const hash = md5(str);
    return `${hash.substring(0, 8)}-${hash.substring(8, 12)}-4${hash.substring(13, 16)}-8${hash.substring(17, 20)}-${hash.substring(20, 32)}`;
}

function mapEmpreendimento(row) {
    const idEmp = row.idEmpreendimento ?? row.IdEmpreendimento;
    const nome = row.nmEmpreendimento ?? row.NmEmpreendimento;
    const idFase = row.idFase ?? row.IdFase;
    const nmFase = row.nmFase ?? row.NmFase;
    return {
        id: generateUUID(`empreendimento-${idEmp}`),
        nome: nome,
        codigo: idEmp ? idEmp.toString() : null,
        status: idFase ? idFase.toString() : null,
        status_nome: nmFase ? nmFase.trim() : null,
    }
}

async function test() {
    try {
        // 1. Fetch de Empreendimentos no Supabase
        const { data: localData, error: localErr } = await sb.from('empreendimentos').select('*').limit(5000);
        console.log('Local Empreendimentos count:', localData ? localData.length : 0, 'Error:', localErr);

        // 2. Fetch de Empreendimentos na API legado (usando fetchAllPages lógica simplificada)
        // Primeiro obtemos o token
        const baseUrl = process.env.SPOBRAS_API_URL;
        const username = process.env.SPOBRAS_API_USER;
        const password = process.env.SPOBRAS_API_PASSWORD;

        const resLogin = await fetch(`${baseUrl}/api/Login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario: username, senha: password }),
        });
        const tokenData = await resLogin.json();
        const token = typeof tokenData === 'string' ? tokenData : tokenData.token || tokenData.access_token;

        // Fetch
        const fetchPage = async (page) => {
            const url = `${baseUrl}/api/Empreendimentos?pagina=${page}&quantidade=1000`;
            const r = await fetch(url, {
                headers: { 'Authorization': `Bearer ${token}` }
            });
            return r.json();
        }

        const page1 = await fetchPage(1);
        const apiItems = page1.itens || page1.value || page1.data || page1.Itens || page1;
        const allItems = [...apiItems];

        // Se tem total
        const total = page1.total || page1.count || page1.totalItens || page1.totalRegistros;
        if (total) {
            const totalPages = Math.ceil(total / 1000);
            for (let p = 2; p <= totalPages; p++) {
                const pageRes = await fetchPage(p);
                const items = pageRes.itens || pageRes.value || pageRes.data || pageRes.Itens || pageRes;
                allItems.push(...items);
            }
        }
        console.log('API Empreendimentos count:', allItems.length, 'Total reported by API:', total);

        const apiEmps = allItems.map(mapEmpreendimento);
        const localEmps = localData || [];

        const mergedMap = new Map();
        const apiByCodeMap = new Map();

        apiEmps.forEach((e) => {
            if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;
            mergedMap.set(e.id, e);
            if (e.codigo) apiByCodeMap.set(String(e.codigo), e);
        });

        console.log('MergedMap after API population:', mergedMap.size);

        let mergedCount = 0;
        let fallbackCount = 0;
        let notFoundButCodeFoundCount = 0;

        localEmps.forEach((e) => {
            if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;

            let existing = mergedMap.get(e.id);
            if (!existing && e.codigo) {
                const apiE = apiByCodeMap.get(String(e.codigo));
                if (apiE) {
                    mergedMap.delete(apiE.id);
                    existing = apiE;
                    mergedMap.set(e.id, existing);
                    notFoundButCodeFoundCount++;
                }
            }

            if (existing) {
                mergedCount++;
            } else {
                fallbackCount++;
                mergedMap.set(e.id, e);
            }
        });

        console.log('After merge:');
        console.log('- Total final map size:', mergedMap.size);
        console.log('- Existing merged count:', mergedCount);
        console.log('- Fallback local-only count:', fallbackCount);
        console.log('- Re-keyed by code count:', notFoundButCodeFoundCount);

    } catch (e) {
        console.error(e);
    }
}

test();
