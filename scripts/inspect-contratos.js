
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

async function inspectContratos() {
    try {
        await sql.connect(config);
        
        console.log('--- Inspecting TB_CONTRATOS_SECRETARIA ---');
        const cols = await sql.query(`
            SELECT COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_SCHEMA = 'contratos' AND TABLE_NAME = 'TB_CONTRATOS_SECRETARIA'
            ORDER BY COLUMN_NAME
        `);
        
        if (cols.recordset.length > 0) {
            console.log('Columns:');
            cols.recordset.forEach(c => console.log(c.COLUMN_NAME));
        } else {
            console.log('Table [contratos].[TB_CONTRATOS_SECRETARIA] not found in P_DB_EMPREENDIMENTOS.');
            console.log('Checking alternative databases...');
            // Try P_DB_SPOBRAS
        }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectContratos();
