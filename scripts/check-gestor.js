
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

        console.log('\n--- Sample idGestor values ---');
        const res = await sql.query(`
            SELECT DISTINCT TOP 10 idGestor 
            FROM [empreendimentos].[TB_EMPREENDIMENTOS]
            WHERE idGestor IS NOT NULL
        `);
        console.log(res.recordset);

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
