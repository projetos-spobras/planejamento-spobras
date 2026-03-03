
const sql = require('mssql');
require('dotenv').config();

const config = {
    user: process.env.DB_USER || 'empreendimentoBI_PMO',
    password: process.env.DB_PASSWORD || 'BI_28052@21',
    server: process.env.DB_SERVER || 'SPOBRAS03',
    database: process.env.DB_DATABASE || 'P_DB_EMPREENDIMENTOS',
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function findColumns() {
    try {
        await sql.connect(config);
        console.log("Connected to SQL Server.");

        const query = `
            SELECT TABLE_NAME, COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE COLUMN_NAME LIKE '%Subprefeitura%' 
               OR COLUMN_NAME LIKE '%Distrito%' 
               OR COLUMN_NAME LIKE '%Regional%'
            ORDER BY TABLE_NAME, COLUMN_NAME;
        `;

        const result = await sql.query(query);

        console.log("\nFOUND COLUMNS:");
        result.recordset.forEach(row => {
            console.log(`${row.TABLE_NAME}.${row.COLUMN_NAME}`);
        });

    } catch (err) {
        console.error("Error:", err);
    } finally {
        await sql.close();
    }
}

findColumns();
