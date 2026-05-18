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
    const internalKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1OTg0NzE4NCwiZXhwIjoyMDc1NDIzMTg0fQ.HtyyVQN9QtgKtGfpSsnu7mvMHH8YRzl-Jk3cZvpqFTk';
    const baseUrl = 'http://localhost:3005/api/proxy-sid';
    
    console.log('--- Testing Internal Proxy Access ---');

    async function callProxy(apiPath) {
        console.log(`\nCalling Proxy for: ${apiPath}`);
        try {
            const data = await request(`${baseUrl}?path=${encodeURIComponent(apiPath)}`, {
                headers: { 'x-internal-key': internalKey }
            });
            const items = data.itens || data.value || (Array.isArray(data) ? data : []);
            console.log(`Count: ${items.length}`);
            if (items.length > 0) {
                const first = items[0];
                console.log('First Item ID:', first.idEmpreendimento || first.IdEmpreendimento || first.idContrato || first.IdContrato);
            }
            return items;
        } catch (e) {
            console.error('Proxy Call failed:', e.message);
            return null;
        }
    }

    const p1 = await callProxy('/api/Empreendimentos?pagina=1&quantidade=5');
    const p2 = await callProxy('/api/Empreendimentos?pagina=2&quantidade=5');

    if (p1 && p2 && p1.length > 0 && p2.length > 0) {
        const id1 = p1[0].idEmpreendimento || p1[0].IdEmpreendimento;
        const id2 = p2[0].idEmpreendimento || p2[0].IdEmpreendimento;
        if (id1 === id2) {
            console.log('\n!!! WARNING: Page 1 and Page 2 are the SAME. Pagination is NOT working in the legacy API.');
        } else {
            console.log('\nSUCCESS: Page 1 and Page 2 are DIFFERENT. Pagination IS working!');
        }
    }
}

test();
