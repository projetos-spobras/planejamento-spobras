
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

        console.log('\n--- View Definition: [contratos].[VW_CONTRATOS] ---');
        const res = await sql.query("sp_helptext '[contratos].[VW_CONTRATOS]'");
        // The result is usually in 'Text' column, split across rows.
        console.log(res.recordset.map(r => r.Text).join(''));

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
