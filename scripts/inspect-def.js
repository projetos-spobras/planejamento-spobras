
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

async function inspectDef() {
    try {
        await sql.connect(config);

        const viewName = 'preCadastro.VW_RELATORIO_MEDICOES_CONTRATO';
        console.log(`Reading definition for ${viewName}...`);
        const r = await sql.query`SELECT OBJECT_DEFINITION(OBJECT_ID(${viewName})) as def`;
        console.log(r.recordset[0].def);

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectDef();
