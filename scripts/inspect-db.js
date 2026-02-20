
const sql = require('mssql');

const config = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    port: 1433,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function listTables() {
    try {
        await sql.connect(config);
        const result = await sql.query`SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND (TABLE_NAME LIKE '%Empreend%' OR TABLE_NAME LIKE '%Contrat%')`;
        console.log('Matching Tables:', result.recordset.map(r => r.TABLE_NAME).join(', '));

        if (result.recordset.length === 0) {
            console.log("No matching tables found in P_DB_EMPREENDIMENTOS. Checking P_DB_OBRAS...");
            // You'd need to reconnect or query cross-db if allowed. simpler to just print hint.
        } else {
            // Pick the first one to inspect columns
            const firstTable = result.recordset[0].TABLE_NAME;
            console.log(`Inspecting columns for ${firstTable}:`);
            const cols = await sql.query(`SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '${firstTable}'`);
            console.log('Columns:', cols.recordset.map(c => c.COLUMN_NAME).join(', '));
        }

    } catch (err) {
        console.error('Connection failed:', err);
    } finally {
        await sql.close();
    }
}

listTables();
