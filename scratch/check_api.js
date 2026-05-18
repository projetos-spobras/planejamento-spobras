const http = require('http');

const options = {
  hostname: 'localhost',
  port: 3005,
  path: '/api/contrato-financeiro?contratoOriginalId=955&tipo=empenhos',
  method: 'GET',
  headers: {
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1OTg0NzE4NCwiZXhwIjoyMDc1NDIzMTg0fQ.HtyyVQN9QtgKtGfpSsnu7mvMHH8YRzl-Jk3cZvpqFTk'
  }
};

const req = http.request(options, (res) => {
  let data = '';
  res.on('data', (chunk) => { data += chunk; });
  res.on('end', () => {
    console.log('--- EMPENHOS ---');
    console.log(data);
  });
});

req.on('error', (e) => { console.error(`Problem with request: ${e.message}`); });
req.end();
