const http = require('http');
const fs = require('fs');

const url = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos/61';

console.log('Fetching from:', url);

http.get(url, (res) => {
    let data = '';
    res.on('data', (chunk) => {
        data += chunk;
    });

    res.on('end', () => {
        fs.writeFileSync('api_sample_61.json', data);
        console.log('Successfully saved to api_sample_61.json');
        console.log('Size:', data.length, 'bytes');
    });
}).on('error', (err) => {
    console.error('Error:', err.message);
});
