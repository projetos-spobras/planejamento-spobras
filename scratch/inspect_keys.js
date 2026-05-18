
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

    const targetUrl = `${baseUrl}/api/ContratoEmpreendimentos/por-contrato/1165`;
    const res = await fetch(targetUrl, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const data = await res.json();
    if (data.length > 0) {
        console.log("Keys in ContratoEmpreendimentos:", Object.keys(data[0]));
        console.log("Sample record:", JSON.stringify(data[0], null, 2));
    } else {
        console.log("No data found.");
    }
}

test().catch(console.error);
