
import sql from 'mssql';
import dotenv from 'dotenv';
import path from 'path';

dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const sqlConfig = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function run() {
    try {
        await sql.connect(sqlConfig);
        console.log('Connected.');

        const query = `
            SELECT t.name 
            FROM sys.tables t
            JOIN sys.schemas s ON t.schema_id = s.schema_id
            WHERE s.name = 'empreendimentos'
        `;
        const result = await sql.query(query);
        console.log("Found tables:", result.recordset);

        // Also check columns of the most likely candidates
        for (const row of result.recordset) {
            try {
                const fullTable = `${row.schema_name}.${row.table_name}`;
                console.log(`Checking columns for ${fullTable}...`);
                const colResult = await sql.query(`SELECT TOP 1 * FROM ${fullTable}`);
                if (colResult.recordset.length > 0) {
                    console.log(`keys for ${fullTable}:`, Object.keys(colResult.recordset[0]));
                } else {
                    console.log(`keys for ${fullTable}: (Table Empty, fetching schema via sys.columns)`);
                    // Fallback query for columns
                    const schemaQuery = `
                        SELECT name FROM sys.columns 
                        WHERE object_id = OBJECT_ID('${fullTable}')
                     `;
                    const schemaRes = await sql.query(schemaQuery);
                    console.log(`columns for ${fullTable}:`, schemaRes.recordset.map(r => r.name));
                }
            } catch (e) {
                console.log(`Error checking ${row.table_name}: ${e.message}`);
            }
        }

        await sql.close();
    } catch (err) {
        console.error("Error:", err);
    }
}

run();
