
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

    const ids = [2022, 2023, 232];
    for (const id of ids) {
        const path = `/api/Empreendimentos/${id}/Medicoes`;
        console.log(`Fetching ${path}...`);
        const res = await fetch(`${baseUrl}${path}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (res.ok) {
            const data = await res.json();
            console.log(`Medicoes for project ${id}: ${data.length}`);
            if (data.length > 0) {
                console.log("First Medicao:", JSON.stringify(data[0], null, 2));
            }
        } else {
            console.log(`Failed for ${id}: ${res.status}`);
        }
    }
}

test().catch(console.error);
