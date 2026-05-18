
const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';

async function getSPObrasToken() {
    const payload = { usuario: 'ApiEmpreendimentos', senha: 'Empreendimentos2@26Service' };
    const response = await fetch(`${SPOBRAS_API_URL}/api/Login`, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(payload) });
    const data = await response.json();
    return data.token;
}

async function inspect() {
    const token = await getSPObrasToken();
    const contractsRes = await fetch(`${SPOBRAS_API_URL}/api/Contratos`, { headers: { 'Authorization': `Bearer ${token}` } });
    const contracts = await contractsRes.json();
    
    console.log(`Searching 300 contracts for Obra ID 1625...`);
    for (let c of contracts.slice(0, 300)) {
        const id = c.idContrato;
        const res = await fetch(`${SPOBRAS_API_URL}/api/Contratos/${id}/Medicoes`, { headers: { 'Authorization': `Bearer ${token}` } });
        if (res.ok) {
            const meds = await res.json();
            if (Array.isArray(meds)) {
                const match = meds.find(m => (m.idEmpreendimento || m.IdEmpreendimento) == 1625);
                if (match) {
                    console.log(`FOUND Obra 1625 in Contract ${c.nmContrato}`);
                    console.log("Raw object keys:", Object.keys(match));
                    console.log("Raw object data:", JSON.stringify(match, null, 2));
                    return;
                }
            }
        }
    }
    console.log("Obra 1625 not found in the first 300 contracts.");
}

inspect().catch(console.error);
