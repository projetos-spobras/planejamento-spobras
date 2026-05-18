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
    
    console.log('--- Checking Counts for different endpoints ---');

    async function callProxy(apiPath) {
        console.log(`\nCalling: ${apiPath}`);
        try {
            const data = await request(`${baseUrl}?path=${encodeURIComponent(apiPath)}`, {
                headers: { 'x-internal-key': internalKey }
            });
            const items = data.itens || data.value || (Array.isArray(data) ? data : []);
            console.log(`Count: ${items.length}`);
            return items;
        } catch (e) {
            console.error('Failed:', e.message);
            return null;
        }
    }

    await callProxy('/api/Empreendimentos');
    await callProxy('/api/Contratos');
    await callProxy('/api/ContratoEmpreendimentos');
}

test();
