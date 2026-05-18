
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

    const ids = [2022, 1625, 1626];
    for (const id of ids) {
        console.log(`Fetching /api/Empreendimentos/${id}...`);
        const res = await fetch(`${baseUrl}/api/Empreendimentos/${id}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (res.ok) {
            const data = await res.json();
            console.log(`Name for ${id}: ${data.nmEmpreendimento || data.NmEmpreendimento}`);
        } else {
            console.log(`Failed for ${id}: ${res.status}`);
        }
    }
}

test().catch(console.error);
