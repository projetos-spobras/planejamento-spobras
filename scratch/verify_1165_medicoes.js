
const dotenv = require('dotenv');
dotenv.config({ path: '.env.local' });

async function test() {
    const baseUrl = process.env.SPOBRAS_API_URL;
    const username = process.env.SPOBRAS_API_USER;
    const password = process.env.SPOBRAS_API_PASSWORD;

    const authRes = await fetch(`${baseUrl}/api/Login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ usuario: username, senha: password }),
    });
    const tokenData = await authRes.json();
    const token = tokenData.token || tokenData.access_token || tokenData;

    const targetUrl = `${baseUrl}/api/Contratos/1165/Medicoes`;
    const res = await fetch(targetUrl, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const data = await res.json();
    
    const empIds = new Set();
    data.forEach(m => {
        empIds.add(m.idEmpreendimento);
    });

    console.log("Unique idEmpreendimento in 1165 Medicoes:", Array.from(empIds));

    for (const id of Array.from(empIds).slice(0, 5)) {
        const eRes = await fetch(`${baseUrl}/api/Empreendimentos/${id}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (eRes.ok) {
            const eData = await eRes.json();
            console.log(`ID ${id} Name: ${eData.nmEmpreendimento}`);
        }
    }
}

test().catch(console.error);
