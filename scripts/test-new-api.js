
const http = require('http');

const url = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos/';

http.get(url, (res) => {
    let data = '';
    res.on('data', (chunk) => {
        data += chunk;
        if (data.length > 10000) {
            // Close after getting some data
            res.destroy();
        }
    });

    res.on('end', () => {
        try {
            const json = JSON.parse(data.substring(0, data.lastIndexOf('}') + 1) + ']');
            // Note: the substring is a bit hacky because we destroyed the stream
            // but let's try to just print the first 2000 chars if it's not valid JSON
            console.log('Sample Data:', data.substring(0, 5000));
        } catch (e) {
            console.log('Raw Data (partial):', data.substring(0, 5000));
        }
    });
}).on('error', (err) => {
    console.error('Error:', err.message);
});
