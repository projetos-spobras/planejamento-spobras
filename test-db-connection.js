import sql from 'mssql';

const config = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'master', // Or specific DB if known, usually master is safe for connection test
    options: {
        encrypt: false, // For local/internal servers often false is needed
        trustServerCertificate: true // Self-signed certs are common internally
    }
};

async function testConnection() {
    try {
        console.log('Connecting to SQL Server...');
        await sql.connect(config);
        console.log('Connected successfully!');

        const result = await sql.query`SELECT name FROM sys.databases`;
        console.log('Available Databases:', result.recordset.map(r => r.name));

        await sql.close();
    } catch (err) {
        console.error('Connection failed:', err);
    }
}

testConnection();
