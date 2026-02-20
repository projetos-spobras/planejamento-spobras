
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

async function inspectViewColumns() {
    try {
        await sql.connect(config);

        // List all columns for VW_RELATORIO_MEDICOES_CONTRATO
        const viewName = 'VW_RELATORIO_MEDICOES_CONTRATO';
        const schema = 'preCadastro';
        console.log(`\nAll columns for [${schema}].[${viewName}]:`);
        const cols = await sql.query(`SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '${viewName}' AND TABLE_SCHEMA = '${schema}'`);
        cols.recordset.forEach(c => console.log(` - ${c.COLUMN_NAME} (${c.DATA_TYPE})`));

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectViewColumns();
