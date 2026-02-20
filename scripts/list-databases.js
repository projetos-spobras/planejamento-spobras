
const sql = require('mssql');

const config = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    port: 1433,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function listDatabases() {
    try {
        await sql.connect(config);
        const result = await sql.query`SELECT name FROM sys.databases`;
        console.log('Databases:', result.recordset.map(r => r.name).join(', '));
    } catch (err) {
        console.error('Connection failed:', err);
    } finally {
        await sql.close();
    }
}

listDatabases();
