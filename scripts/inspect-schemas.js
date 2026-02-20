
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

async function inspectSchemas() {
    try {
        await sql.connect(config);
        const result = await sql.query`SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' ORDER BY TABLE_NAME`;
        console.log('Tables with Schema:');
        result.recordset.forEach(r => console.log(`[${r.TABLE_SCHEMA}].[${r.TABLE_NAME}]`));

        const views = await sql.query`SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS ORDER BY TABLE_NAME`;
        console.log('\nViews with Schema:');
        views.recordset.forEach(r => console.log(`[${r.TABLE_SCHEMA}].[${r.TABLE_NAME}]`));

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectSchemas();
