
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

async function checkColumns() {
    console.log('Connecting to SQL Server...');
    let pool;
    try {
        pool = await sql.connect(sqlConfig);
        console.log('Connected.');

        const tableName = 'TB_CONTRATOS_SECRETARIA';
        console.log(`\nChecking columns for ${tableName}...`);

        const result = await pool.request().query(`
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = '${tableName}'
            ORDER BY COLUMN_NAME
        `);

        if (result.recordset.length === 0) {
            console.log('No columns found (check table name).');
        } else {
            console.log('Columns:');
            result.recordset.forEach(r => console.log(r.COLUMN_NAME));
        }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        if (pool) await pool.close();
    }
}

checkColumns();
