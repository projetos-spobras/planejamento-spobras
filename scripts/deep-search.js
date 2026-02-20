
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

        console.log('\n--- Searching for relevant columns ---');
        const res = await sql.query(`
            SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE 
               COLUMN_NAME LIKE '%Razao%' 
               OR COLUMN_NAME LIKE '%Fantasia%' 
               OR (COLUMN_NAME LIKE '%nm%' AND COLUMN_NAME LIKE '%Contratada%')
               OR (COLUMN_NAME LIKE '%nm%' AND COLUMN_NAME LIKE '%Empresa%')
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `);

        const lines = res.recordset.map(r => `[${r.TABLE_SCHEMA}].[${r.TABLE_NAME}].[${r.COLUMN_NAME}]`);
        fs.writeFileSync('cols.txt', lines.join('\n'));
        console.log(`Found ${lines.length} columns. Written to cols.txt`);

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
