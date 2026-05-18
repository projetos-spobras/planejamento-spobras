
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

    const res = await fetch(`${baseUrl}/api/ContratoEmpreendimentos/por-contrato/811`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const data = await res.json();
    console.log("IDs for contract 811:", data.map(l => l.idEmpreendimento));
}

test().catch(console.error);
