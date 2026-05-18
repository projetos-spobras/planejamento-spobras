
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

    console.log("Fetching ALL ContratoEmpreendimentos for contract 1165 (no path, just filter)...");
    // Some APIs use query params on the root endpoint
    const res = await fetch(`${baseUrl}/api/ContratoEmpreendimentos?idContrato=1165&quantidade=1000`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    if (res.ok) {
        const data = await res.json();
        const items = data.itens || data;
        console.log(`Found ${items.length} links for contract 1165.`);
        console.log("Project IDs:", items.map(i => i.idEmpreendimento));
    }
}

test().catch(console.error);
