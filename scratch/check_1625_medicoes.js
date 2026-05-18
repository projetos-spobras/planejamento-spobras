
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

    console.log("Fetching /api/Empreendimentos/1625/Medicoes...");
    const res = await fetch(`${baseUrl}/api/Empreendimentos/1625/Medicoes`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const data = await res.json();
    console.log(`Found ${data.length} measurements for 1625.`);
    if (data.length > 0) {
        const contractIds = new Set(data.map(m => m.idContrato));
        console.log("Linked Contract IDs:", Array.from(contractIds));
    }
}

test().catch(console.error);
