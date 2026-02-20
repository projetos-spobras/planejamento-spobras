
require('dotenv').config({ path: '.env.local' });
const sql = require('mssql');

const sqlConfig = {
    user: process.env.SQL_USER,
    password: process.env.SQL_PASSWORD,
    server: process.env.SQL_SERVER,
    database: process.env.SQL_DATABASE,
    port: parseInt(process.env.SQL_PORT || '1433'),
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function inspect() {
    try {
        await sql.connect(sqlConfig);
        console.log('Connected.');

        console.log('\n--- Checking Setor Gestor from VW_CONTRATOS ---');
        const res = await sql.query(`
            SELECT DISTINCT idSetorGestor, nmSetorGestor 
            FROM [contratos].[VW_CONTRATOS]
            WHERE idSetorGestor IN (2, 7, 40, 48, 52) -- Check some IDs from Empreendimentos
        `);
        console.log(res.recordset);

        console.log('\n--- Checking all Setor Gestor ---');
        const res2 = await sql.query(`
            SELECT DISTINCT TOP 20 idSetorGestor, nmSetorGestor 
            FROM [contratos].[VW_CONTRATOS]
        `);
        console.log(res2.recordset);

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
