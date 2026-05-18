const http = require('http');

async function request(url, options = {}) {
    return new Promise((resolve, reject) => {
        const req = http.request(url, options, (res) => {
            let data = '';
            res.on('data', (chunk) => data += chunk);
            res.on('end', () => {
                if (res.statusCode >= 200 && res.statusCode < 300) {
                    try {
                        resolve(JSON.parse(data));
                    } catch (e) {
                        resolve(data);
                    }
                } else {
                    reject(new Error(`Status ${res.statusCode}: ${data}`));
                }
            });
        });
        req.on('error', reject);
        if (options.body) req.write(options.body);
        req.end();
    });
}

async function test() {
    const baseUrl = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';
    const user = 'spobras_api';
    const pass = 'SPOBRAS@2024';
    
    console.log('--- Auth ---');
    try {
        const token = await request(`${baseUrl}/api/Login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario: user, senha: pass })
        });
        
        const tokenStr = typeof token === 'string' ? token : token.token || token;
        console.log('Token obtained');

        async function call(path) {
            console.log(`\nCalling: ${path}`);
            try {
                const data = await request(`${baseUrl}${path}`, {
                    headers: { 'Authorization': `Bearer ${tokenStr}` }
                });
                const items = data.itens || data.value || (Array.isArray(data) ? data : []);
                console.log(`Count: ${items.length}`);
                if (items.length > 0) {
                    const first = items[0];
                    console.log('First Item ID:', first.idEmpreendimento || first.IdEmpreendimento);
                    console.log('First Item Name:', (first.nmEmpreendimento || first.NmEmpreendimento || '').substring(0, 30));
                }
                return items;
            } catch (e) {
                console.error('Call failed:', e.message);
                return null;
            }
        }

        console.log('\n--- Testing Pagination ---');
        const p1 = await call('/api/Empreendimentos?pagina=1&quantidade=5');
        const p2 = await call('/api/Empreendimentos?pagina=2&quantidade=5');
        const p0 = await call('/api/Empreendimentos?pagina=0&quantidade=5');

        console.log('\n--- Conclusion ---');
        if (p1 && p2 && p1.length > 0 && p2.length > 0) {
            const id1 = p1[0].idEmpreendimento || p1[0].IdEmpreendimento;
            const id2 = p2[0].idEmpreendimento || p2[0].IdEmpreendimento;
            if (id1 === id2) {
                console.log('!!! FAILED: Page 1 and Page 2 are IDENTICAL. Pagination parameter "pagina" might be wrong.');
            } else {
                console.log('SUCCESS: Page 1 and Page 2 are DIFFERENT. "pagina" works.');
            }
        }

        if (p0 && p1 && p0.length > 0 && p1.length > 0) {
            const id0 = p0[0].idEmpreendimento || p0[0].IdEmpreendimento;
            const id1 = p1[0].idEmpreendimento || p1[0].IdEmpreendimento;
            if (id0 === id1) {
                console.log('INFO: Page 0 and Page 1 are IDENTICAL. The API is likely 1-indexed (or 0 and 1 mean the same).');
            } else {
                console.log('INFO: Page 0 and Page 1 are DIFFERENT. The API is likely 0-indexed.');
            }
        }

    } catch (e) {
        console.error('Auth Error:', e.message);
    }
}

test();
