
const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';

async function getSPObrasToken() {
    const payload = { usuario: 'ApiEmpreendimentos', senha: 'Empreendimentos2@26Service' };
    const response = await fetch(`${SPOBRAS_API_URL}/api/Login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload)
    });
    const data = await response.json();
    return data.token;
}

async function inspect() {
    const token = await getSPObrasToken();
    const contractsRes = await fetch(`${SPOBRAS_API_URL}/api/Contratos`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const contracts = await contractsRes.json();
    
    // Pick any contract and check empenhos
    const c = contracts.find(c => c.nmContrato.includes("072/SPOBRAS/2022") || c.idContrato === 1165);
    if (!c) {
        console.log("No test contract found.");
        return;
    }

    console.log(`Checking empenhos for contract ${c.nmContrato} (ID ${c.idContrato})...`);
    const res = await fetch(`${SPOBRAS_API_URL}/api/Contratos/${c.idContrato}/Empenhos`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    
    if (res.ok) {
        const emps = await res.json();
        if (emps && emps.length > 0) {
            console.log("Sample Empenho Keys:", Object.keys(emps[0]));
            if (emps[0].idEmpreendimento || emps[0].IdEmpreendimento) {
                console.log("FOUND idEmpreendimento in empenho!");
                console.log("Value:", emps[0].idEmpreendimento || emps[0].IdEmpreendimento);
            } else {
                console.log("No project ID found in empenho.");
            }
        } else {
            console.log("No empenhos found for this contract.");
        }
    }
}

inspect().catch(console.error);
