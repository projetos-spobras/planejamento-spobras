const BASE_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos/api';
const USERNAME = 'ApiEmpreendimentos';
const PASSWORD = 'Empreendimentos2@26Service';

async function testApi() {
    try {
        const loginRes = await fetch(`${BASE_URL}/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario: USERNAME, senha: PASSWORD })
        });

        const loginData = await loginRes.json();
        const token = loginData.token || loginData.Token || loginData.access_token || loginData;
        const headers = { 'Authorization': `Bearer ${token}` };

        const empRes = await fetch(`${BASE_URL}/ContratoEmpreendimentos`, { headers });
        if (empRes.ok) {
            const empData = await empRes.json();
            console.log('============ CE KEYS ============');
            console.log(Object.keys(empData[0]).join(', '));
            console.log(JSON.stringify(empData[0], null, 2));
        }
    } catch (e) {
        console.error(e);
    }
}
testApi();
