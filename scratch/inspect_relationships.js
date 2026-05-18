
const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';

async function getSPObrasToken() {
    const payload = { usuario: 'ApiEmpreendimentos', senha: 'Empreendimentos2@26Service' };
    const response = await fetch(`${SPOBRAS_API_URL}/api/Login`, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(payload) });
    const data = await response.json();
    return data.token;
}

async function inspect() {
    const token = await getSPObrasToken();
    const res = await fetch(`${SPOBRAS_API_URL}/api/ContratoEmpreendimentos`, { headers: { 'Authorization': `Bearer ${token}` } });
    if (res.ok) {
        const data = await res.json();
        console.log(`Fetched ${data.length} relationships.`);
        console.log("Sample relationship:", JSON.stringify(data[0], null, 2));
        
        // Group by contract to see which ones have multiple projects
        const counts = {};
        data.forEach(link => {
            const cid = link.idContrato || link.IdContrato;
            counts[cid] = (counts[cid] || 0) + 1;
        });
        
        const multiples = Object.entries(counts).filter(([id, count]) => count > 1);
        console.log(`Found ${multiples.length} contracts with multiple projects.`);
        console.log("Example contract ID with multiple projects:", multiples[0]);
        
        // Let's see the projects for one of such contracts
        const sampleCid = parseInt(multiples[0][0]);
        const details = data.filter(link => (link.idContrato || link.IdContrato) === sampleCid);
        console.log(`Links for contract ${sampleCid}:`, JSON.stringify(details, null, 2));
    } else {
        console.log("Failed to fetch relationships.", res.status);
    }
}

inspect().catch(console.error);
