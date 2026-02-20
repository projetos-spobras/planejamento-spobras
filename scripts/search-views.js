
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

        const views = [
            'VW_ADITAMENTOS',
            'VW_CONTRATOS',
            'VW_EMPENHO_LIQUIDACOES_SOF',
            'VW_EMPENHOS_SOF',
            'VW_MEDICOES',
            'VW_ORDEM_SERVICO'
        ];

        for (const view of views) {
            console.log(`\n--- Checking [contratos].[${view}] ---`);
            const res = await sql.query(`
                SELECT COLUMN_NAME 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME = '${view}' AND TABLE_SCHEMA = 'contratos'
            `);
            const cols = res.recordset.map(r => r.COLUMN_NAME);
            console.log(cols);

            const relevant = cols.filter(c => /contratada|empresa|razao|fantasia/i.test(c));
            if (relevant.length > 0) {
                console.log('FOUND RELEVANT COLS:', relevant);
            }
        }

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
