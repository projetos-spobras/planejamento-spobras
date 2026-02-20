
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

async function inspectSchema() {
    try {
        await sql.connect(config);

        console.log('--- P_DB_EMPREENDIMENTOS ---');
        // Inspect linking table
        const linkTable = 'TB_CONTRATO_EMPREENDIMENTOS';
        console.log(`\nColumns for ${linkTable}:`);
        try {
            const cols = await sql.query(`SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '${linkTable}'`);
            cols.recordset.forEach(c => console.log(` - ${c.COLUMN_NAME} (${c.DATA_TYPE})`));
        } catch (e) { console.log('Table not found'); }

        await sql.close();

        // Check P_DB_PROJETOS
        console.log('\n--- P_DB_PROJETOS ---');
        try {
            const configProjetos = { ...config, database: 'P_DB_PROJETOS' };
            await sql.connect(configProjetos);
            const resultProjetos = await sql.query`
                SELECT TABLE_NAME 
                FROM INFORMATION_SCHEMA.TABLES 
                WHERE TABLE_TYPE = 'BASE TABLE' 
                AND (TABLE_NAME LIKE '%Contrat%')
                ORDER BY TABLE_NAME
            `;
            const tablesProjetos = resultProjetos.recordset.map(r => r.TABLE_NAME);
            console.log('Found Tables in P_DB_PROJETOS:');
            tablesProjetos.forEach(t => console.log(` - ${t}`));
        } catch (e) { console.log('Failed to access P_DB_PROJETOS: ' + e.message); }

        await sql.close();

        // Check P_DB_GPS
        console.log('\n--- P_DB_GPS ---');
        try {
            const configGPS = { ...config, database: 'P_DB_GPS' };
            await sql.connect(configGPS);
            const resultGPS = await sql.query`
                SELECT TABLE_NAME 
                FROM INFORMATION_SCHEMA.TABLES 
                WHERE TABLE_TYPE = 'BASE TABLE' 
                AND (TABLE_NAME LIKE '%Contrat%')
                ORDER BY TABLE_NAME
            `;
            const tablesGPS = resultGPS.recordset.map(r => r.TABLE_NAME);
            console.log('Found Tables in P_DB_GPS:');
            tablesGPS.forEach(t => console.log(` - ${t}`));

            const contTable = tablesGPS.find(t => t === 'TB_CONTRATO' || t === 'TB_CONTRATOS' || t === 'Contratos');
            if (contTable) {
                console.log(`\nColumns for ${contTable} in P_DB_GPS:`);
                const cols = await sql.query(`SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '${contTable}'`);
                cols.recordset.forEach(c => console.log(` - ${c.COLUMN_NAME} (${c.DATA_TYPE})`));
            }

        } catch (e) { console.log('Failed to access P_DB_GPS: ' + e.message); }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspectSchema();
