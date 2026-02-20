
const sql = require('mssql');

const config = {
    user: process.env.SQL_USER || 'empreendimentoBI_PMO',
    password: process.env.SQL_PASSWORD || 'BI_28052@21',
    server: process.env.SQL_SERVER || 'SPOBRAS03',
    database: process.env.SQL_DATABASE || 'P_DB_EMPREENDIMENTOS',
    port: 1433,
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function inspectSample() {
    try {
        await sql.connect(config);

        console.log('\n--- [escola].[TB_CONTRATOS_SECRETARIA] ---');
        try {
            const table = '[escola].[TB_CONTRATOS_SECRETARIA]';
            const cols = await sql.query(`SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'TB_CONTRATOS_SECRETARIA' AND TABLE_SCHEMA = 'escola'`);
            console.log('Columns:', cols.recordset.map(c => c.COLUMN_NAME).join(', '));

            const r = await sql.query(`SELECT TOP 1 * FROM ${table}`);
            console.log('Sample:', r.recordset[0]);
        } catch (e) { console.log('Error TB_CONTRATOS_SECRETARIA:', e.message); }

        console.log('\n--- [escola].[TB_CONTRATADA] ---');
        try {
            const table = '[escola].[TB_CONTRATADA]';
            const cols = await sql.query(`SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'TB_CONTRATADA' AND TABLE_SCHEMA = 'escola'`);
            console.log('Columns:', cols.recordset.map(c => c.COLUMN_NAME).join(', '));

            const r = await sql.query(`SELECT TOP 1 * FROM ${table}`);
            console.log('Sample:', r.recordset[0]);
        } catch (e) { console.log('Error TB_CONTRATADA:', e.message); }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectSample();
