
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

async function inspectResolved() {
    try {
        await sql.connect(config);

        // Find schema for TB_EMPREENDIMENTOS
        const r1 = await sql.query`SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TB_EMPREENDIMENTOS'`;
        if (r1.recordset.length > 0) {
            const schema = r1.recordset[0].TABLE_SCHEMA;
            const table = r1.recordset[0].TABLE_NAME;
            console.log(`Found ${schema}.${table}`);
            const data = await sql.query(`SELECT TOP 1 * FROM [${schema}].[${table}]`);
            console.log('Sample Row:', data.recordset[0]);
        } else {
            console.log('TB_EMPREENDIMENTOS not found in any schema.');
        }

        // Find schema for VW_CONTRATOS
        const r2 = await sql.query`SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME = 'VW_CONTRATOS'`;
        if (r2.recordset.length > 0) {
            const schema = r2.recordset[0].TABLE_SCHEMA;
            const table = r2.recordset[0].TABLE_NAME;
            console.log(`\nFound ${schema}.${table}`);
            const data = await sql.query(`SELECT TOP 1 * FROM [${schema}].[${table}]`);
            console.log('Sample Row:', data.recordset[0]);
        } else {
            console.log('\nVW_CONTRATOS not found in any schema.');
        }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectResolved();
