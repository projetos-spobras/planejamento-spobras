
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

    console.log("Searching for ID 1625 in all ContratoEmpreendimentos...");
    const res = await fetch(`${baseUrl}/api/ContratoEmpreendimentos?quantidade=5000`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    if (res.ok) {
        const data = await res.json();
        const items = data.itens || data;
        const matches = items.filter(e => e.idEmpreendimento == 1625);
        console.log(`Found ${matches.length} matches for 1625.`);
        console.log(JSON.stringify(matches, null, 2));
    }
}

test().catch(console.error);
