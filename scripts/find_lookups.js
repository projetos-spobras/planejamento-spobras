
require('dotenv').config({ path: '.env.local' });
const sql = require('mssql');

const sqlConfig = {
    user: process.env.SQL_USER,
    password: process.env.SQL_PASSWORD,
    server: process.env.SQL_SERVER,
    port: parseInt(process.env.SQL_PORT || '1433'),
    database: process.env.SQL_DATABASE,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function findLookups() {
    try {
        await sql.connect(sqlConfig);

        // 1. List ALL tables and views
        const tablesQuery = `
            SELECT TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE
            FROM INFORMATION_SCHEMA.TABLES
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `;
        const tables = await sql.query(tablesQuery);
        console.log("=== ALL TABLES AND VIEWS ===");
        const allObjects = tables.recordset;

        // Filter for potential candidates
        const candidates = allObjects.filter(obj => {
            const name = obj.TABLE_NAME.toLowerCase();
            return name.includes('prog') ||
                name.includes('dist') ||
                name.includes('ger') ||
                name.includes('fase') ||
                name.includes('admistr') ||
                name.includes('sub') ||
                name.includes('regio') ||
                name.includes('status') ||
                name.includes('dominio') ||
                name.includes('aux');
        });

        console.table(candidates);

        const query = `
            SELECT TOP 1 * FROM [empreendimentos].[vwEmpreendimento]
        `;
        const result = await sql.query(query);
        console.log("=== vwEmpreendimento SAMPLE ===");
        console.log(JSON.stringify(result.recordset[0], null, 2));

        // 2. Look for specific columns in ALL tables
        const columnsQuery = `
            SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE COLUMN_NAME LIKE '%Programa%' 
               OR COLUMN_NAME LIKE '%Distrito%'
               OR COLUMN_NAME LIKE '%Gerencia%'
               OR COLUMN_NAME LIKE '%Gestor%'
               OR COLUMN_NAME LIKE '%Fase%'
               OR COLUMN_NAME LIKE '%Subprefeitura%'
               OR COLUMN_NAME LIKE '%Descricao%'
               OR COLUMN_NAME LIKE '%Nome%'
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `;
        const columns = await sql.query(columnsQuery);
        console.log("\n=== RELEVANT COLUMNS ===");

        const fileContent = columns.recordset.map(row => `${row.TABLE_SCHEMA}.${row.TABLE_NAME}: ${row.COLUMN_NAME}`).join('\n');
        console.log(fileContent);

        // Also check if we can select from the top candidates
        const viewsToCheck = columns.recordset
            .filter(r => r.COLUMN_NAME.includes('nmPrograma') || r.COLUMN_NAME.includes('nmDistrito'))
            .map(r => `${r.TABLE_SCHEMA}.${r.TABLE_NAME}`);

        const uniqueViews = [...new Set(viewsToCheck)];
        console.log('\n=== POTENTIAL VIEWS/TABLES WITH NAMES ===');
        console.log(uniqueViews.join('\n'));

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

findLookups();
