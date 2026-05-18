
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

    const endpoints = [
        `/api/Contratos/1165/Empenhos`,
        `/api/EmpenhoContratos/por-contrato/1165`,
        `/api/ContratoEmpenhos/por-contrato/1165`,
        `/api/Empenhos/por-contrato/1165`
    ];

    for (const endpoint of endpoints) {
        console.log(`Testing ${endpoint}...`);
        const res = await fetch(`${baseUrl}${endpoint}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (res.ok) {
            const data = await res.json();
            console.log(`Result: ${data.length} records.`);
            if (data.length > 0) console.log(JSON.stringify(data[0], null, 2));
        } else {
            console.log(`Result: Failed ${res.status}`);
        }
    }
}

test().catch(console.error);
