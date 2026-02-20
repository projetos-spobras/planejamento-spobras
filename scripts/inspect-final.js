
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

        const showCols = async (schema, table) => {
            console.log(`\n--- Columns of [${schema}].[${table}] ---`);
            const cols = await sql.query(`
                SELECT COLUMN_NAME 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME = '${table}' AND TABLE_SCHEMA = '${schema}'
            `);
            console.log(cols.recordset.map(r => r.COLUMN_NAME));
        };

        // Check Contratada
        await showCols('escola', 'TB_CONTRATADA');

        // Check for Gestor/Gerencia tables
        const res = await sql.query(`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_NAME LIKE '%GESTOR%' OR TABLE_NAME LIKE '%GERENCIA%'
        `);
        const tables = res.recordset;
        console.log('\nPotential Management Tables:', tables.map(t => `[${t.TABLE_SCHEMA}].[${t.TABLE_NAME}]`));

        for (const t of tables) {
            await showCols(t.TABLE_SCHEMA, t.TABLE_NAME);
        }

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
