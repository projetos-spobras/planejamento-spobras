
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

    const targetUrl = `${baseUrl}/api/EmpreendimentosContratos/api/EmpreendimentosContratos/por-contrato/1165`;
    // Wait, the path might be different. 
    // Let's try /api/EmpreendimentosContratos/1165
    const paths = [
        '/api/EmpreendimentosContratos/1165',
        '/api/EmpreendimentoContratos/por-contrato/1165',
        '/api/EmpreendimentoContratos/1165'
    ];

    for (const path of paths) {
        console.log(`Trying ${path}...`);
        const res = await fetch(`${baseUrl}${path}`, {
            headers: { 'Authorization': `Bearer ${token}` }
        });
        if (res.ok) {
            const data = await res.json();
            console.log(`Success for ${path}! First record:`, JSON.stringify(Array.isArray(data) ? data[0] : data, null, 2).slice(0, 500));
        } else {
            console.log(`Failed for ${path}: ${res.status}`);
        }
    }
}

test().catch(console.error);
