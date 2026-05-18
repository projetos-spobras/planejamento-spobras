const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';

async function getSPObrasToken() {
    const payload = {
        usuario: 'ApiEmpreendimentos',
        senha: 'Empreendimentos2@26Service'
    };

    const response = await fetch(`${SPOBRAS_API_URL}/api/Login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload)
    });

    const data = await response.json();
    return data.token;
}

async function run() {
    try {
        const token = await getSPObrasToken();
        console.log('Token acquired.');

        const endpoints = ['/api/Empreendimentos', '/api/Contratos'];
        
        for (const ep of endpoints) {
            console.log(`Testing ${ep}...`);
            const res = await fetch(`${SPOBRAS_API_URL}${ep}`, {
                headers: { 'Authorization': `Bearer ${token}` }
            });
            
            if (!res.ok) {
                console.log(`Error ${ep}: ${res.status} ${res.statusText}`);
                continue;
            }

            const data = await res.json();
            console.log(`${ep} Result:`, Array.isArray(data) ? `Array size ${data.length}` : typeof data);
            if (Array.isArray(data) && data.length > 0) {
                console.log(`First item keys for ${ep}:`, Object.keys(data[0]));
                console.log(`First item sample:`, JSON.stringify(data[0]).substring(0, 200));
            } else {
                console.log(`Empty or non-array result for ${ep}.`);
                console.log(`Raw data slice:`, JSON.stringify(data).substring(0, 500));
            }
        }
    } catch (e) {
        console.error('Test failed:', e);
    }
}

run();
