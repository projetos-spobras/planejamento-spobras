
const sql = require('mssql');

const config = {
    user: process.env.SQL_USER || 'empreendimentoBI_PMO',
    password: process.env.SQL_PASSWORD || 'BI_28052@21',
    server: process.env.SQL_SERVER || 'SPOBRAS03',
    database: process.env.SQL_DATABASE || 'P_DB_EMPREENDIMENTOS',
    port: 1433,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function listAllTables() {
    try {
        await sql.connect(config);
        const result = await sql.query`SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' ORDER BY TABLE_NAME`;
        console.log(`Found ${result.recordset.length} tables:`);
        // Print all table names
        console.log(result.recordset.map(r => r.TABLE_NAME).join(', '));
    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

listAllTables();
