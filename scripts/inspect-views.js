
require('dotenv').config({ path: '.env.local' });
const sql = require('mssql');
const fs = require('fs');

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

        let output = '';

        const appendCols = async (schema, table) => {
            output += `\n--- Columns of [${schema}].[${table}] ---\n`;
            const cols = await sql.query(`
                SELECT COLUMN_NAME 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME = '${table}' AND TABLE_SCHEMA = '${schema}'
            `);
            output += cols.recordset.map(r => r.COLUMN_NAME).join('\n') + '\n';
        };

        await appendCols('contratos', 'VW_CONTRATOS');
        await appendCols('empreendimentos', 'VW_EMPREENDIMENTOS');

        fs.writeFileSync('views.txt', output);
        console.log('Views written to views.txt');

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
