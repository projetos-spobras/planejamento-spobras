
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

    console.log(`Fetching /api/Contratos/1165...`);
    const res = await fetch(`${baseUrl}/api/Contratos/1165`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    if (res.ok) {
        const data = await res.json();
        console.log("Contract 1165:", JSON.stringify(data, null, 2));
    } else {
        console.log(`Failed for 1165: ${res.status}`);
    }
}

test().catch(console.error);
