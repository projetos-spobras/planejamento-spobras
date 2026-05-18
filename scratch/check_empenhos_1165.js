
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

    console.log("Fetching Empenhos for contract 1165...");
    const res = await fetch(`${baseUrl}/api/Contratos/1165/Empenhos`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    if (res.ok) {
        const data = await res.json();
        console.log("Empenhos count:", data.length);
        if (data.length > 0) {
            console.log("Sample Empenho:", JSON.stringify(data[0], null, 2));
        }
    }
}

test().catch(console.error);
