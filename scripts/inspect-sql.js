
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

        const res = await sql.query(`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `);

        const content = res.recordset.map(r => `[${r.TABLE_SCHEMA}].[${r.TABLE_NAME}]`).join('\n');
        fs.writeFileSync('tables.txt', content);
        console.log('Tables written to tables.txt');

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
