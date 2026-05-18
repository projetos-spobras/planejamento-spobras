
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

    const res1 = await fetch(`${baseUrl}/api/ContratoEmpreendimentos/por-contrato/1165`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const links = await res1.json();
    console.log("ContratoEmpreendimentos IDs:", links.map(l => l.idEmpreendimento));

    const res2 = await fetch(`${baseUrl}/api/Contratos/1165/Medicoes`, {
        headers: { 'Authorization': `Bearer ${token}` }
    });
    const medicoes = await res2.json();
    const medEmpIds = Array.from(new Set(medicoes.map(m => m.idEmpreendimento))).sort((a, b) => a - b);
    console.log("Unique Medicoes idEmpreendimento:", medEmpIds);
}

test().catch(console.error);
