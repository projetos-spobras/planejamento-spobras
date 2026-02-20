
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
        const result = await sql.query(`
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'VW_RELATORIO_MEDICOES_CONTRATO' 
            AND TABLE_SCHEMA = 'preCadastro'
            ORDER BY COLUMN_NAME
        `);
        console.log(result.recordset.map(c => c.COLUMN_NAME).join('\n'));
    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
