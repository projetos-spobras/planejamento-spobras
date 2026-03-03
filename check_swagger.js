// using native fetch

async function checkSwagger() {
    try {
        const res = await fetch('http://187.44.105.2:8080/ApiEmpreendimentosContratos/swagger/v1/swagger.json');
        if (res.ok) {
            const data = await res.json();
            console.log(Object.keys(data.paths).join('\n'));
        } else {
            console.log('No swagger found at standard path, status:', res.status);
        }
    } catch (e) {
        console.error('Error fetching swagger:', e.message);
    }
}

checkSwagger();
