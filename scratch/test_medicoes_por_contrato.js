
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

    const targetUrl = `${baseUrl}/api/Medicoes/por-contrato/1165`;
    console.log(`Fetching ${targetUrl}...`);
    const res = await fetch(targetUrl, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    if (res.ok) {
        const data = await res.json();
        console.log(`Found ${data.length} records.`);
        console.log(JSON.stringify(data.slice(0, 5), null, 2));
    } else {
        console.log(`Failed: ${res.status}`);
    }
}

test().catch(console.error);
