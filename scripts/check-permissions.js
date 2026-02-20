
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

        const checkTable = async (schema, table) => {
            console.log(`\n--- Checking [${schema}].[${table}] ---`);
            try {
                const res = await sql.query(`SELECT TOP 1 * FROM [${schema}].[${table}]`);
                console.log('Access OK. Columns:', Object.keys(res.recordset[0] || {}));
            } catch (err) {
                console.log('Access ERROR:', err.message);
            }
        };

        await checkTable('escola', 'TB_CONTRATADA_ESCOLAS');
        await checkTable('escola', 'TB_CONTRATADA'); // Confirm error

        // Check if there is any view in contracts regarding contratada
        // Maybe VW_CONTRATOS has it but with a different name?
        // I checked columns before: 'id Contrato', 'Valor Contratual P0', ...
        // No obvious contractor name.

    } catch (err) {
        console.error(err);
    } finally {
        await sql.close();
    }
}

inspect();
