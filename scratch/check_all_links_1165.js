
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

    // Check all records for this contract link
    // The endpoint might not be /por-contrato but /api/ContratoEmpreendimentos with filter
    const targetUrl = `${baseUrl}/api/ContratoEmpreendimentos/por-contrato/1165`;
    const res = await fetch(targetUrl, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const data = await res.json();
    console.log("Total records in ContratoEmpreendimentos/1165:", data.length);
    console.log("IDs:", data.map(d => d.idEmpreendimento));
}

test().catch(console.error);
