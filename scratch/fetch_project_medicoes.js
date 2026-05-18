
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

    const ids = [2022, 2023, 2024, 2025, 2051];
    for (const id of ids) {
        console.log(`Fetching /api/Medicoes?idEmpreendimento=${id}...`);
        // The API might use /api/Empreendimentos/{id}/Medicoes or query param
        const res = await fetch(`${baseUrl}/api/Medicoes?idEmpreendimento=${id}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (res.ok) {
            const data = await res.json();
            const items = data.itens || data;
            console.log(`Medicoes for project ${id}: ${Array.isArray(items) ? items.length : 0}`);
            if (Array.isArray(items) && items.length > 0) {
                console.log("First Medicao:", JSON.stringify(items[0], null, 2));
            }
        } else {
            console.log(`Failed for ${id}: ${res.status}`);
        }
    }
}

test().catch(console.error);
