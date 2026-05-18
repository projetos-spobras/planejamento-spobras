
import dotenv from 'dotenv';
import fs from 'fs';
import fetch from 'node-fetch';

dotenv.config({ path: '.env.local' });

async function getLegacyToken() {
    const baseUrl = process.env.SPOBRAS_API_URL;
    const username = process.env.SPOBRAS_API_USER;
    const password = process.env.SPOBRAS_API_PASSWORD;

    if (!baseUrl || !username || !password) {
        throw new Error('Configurações da API SPObras ausentes.');
    }

    const res = await fetch(`${baseUrl}/api/Login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ usuario: username, senha: password }),
    });

    if (!res.ok) {
        throw new Error(`Falha na autenticação da API legado: ${res.status}`);
    }

    const data: any = await res.json();
    const tokenStr = typeof data === 'string' ? data : data.token || data.access_token;

    if (!tokenStr) {
        throw new Error('Token não encontrado na resposta.');
    }

    return tokenStr;
}

async function test() {
    try {
        console.log("Authenticating...");
        const token = await getLegacyToken();
        const baseUrl = process.env.SPOBRAS_API_URL;
        const path = '/api/ContratoEmpreendimentos/por-contrato/1165';
        const targetUrl = `${baseUrl}${path}`;

        console.log(`Fetching ${targetUrl}...`);
        const res = await fetch(targetUrl, {
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json',
            }
        });

        if (!res.ok) {
            throw new Error(`API Error: ${res.status}`);
        }

        const data = await res.json();
        console.log(`Found ${Array.isArray(data) ? data.length : 0} records.`);
        fs.writeFileSync('api_response_1165.json', JSON.stringify(data, null, 2));
        console.log("Written to api_response_1165.json");
    } catch (err) {
        console.error("Error:", err);
    }
}

test();
