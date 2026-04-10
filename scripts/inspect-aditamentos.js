
const sql = require('mssql');

const config = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    port: 1433,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function inspectAditamentos() {
    try {
        await sql.connect(config);
        
        console.log('--- Inspecting [contratos].[VW_ADITAMENTOS] ---');
        const cols = await sql.query(`
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_SCHEMA = 'contratos' AND TABLE_NAME = 'VW_ADITAMENTOS'
            ORDER BY COLUMN_NAME
        `);
        
        if (cols.recordset.length > 0) {
            console.log('Columns:');
            cols.recordset.forEach(c => console.log(c.COLUMN_NAME));
        }

        console.log('\n--- Sample Aditamentos ---');
        const sample = await sql.query(`SELECT TOP 1 * FROM [contratos].[VW_ADITAMENTOS]`);
        console.log('Sample Row:', sample.recordset[0]);

        console.log('\n--- Checking for Reajuste fields in VW_CONTRATOS ---');
        const reajusteCols = await sql.query(`
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_SCHEMA = 'contratos' AND TABLE_NAME = 'VW_CONTRATOS'
            AND (COLUMN_NAME LIKE '%reajuste%' OR COLUMN_NAME LIKE '%indice%' OR COLUMN_NAME LIKE '%base%')
        `);
        console.log('Reajuste Related Columns:', reajusteCols.recordset.map(c => c.COLUMN_NAME));

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectAditamentos();
