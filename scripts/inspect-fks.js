
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
        try {
            const fases = await sql.query("SELECT * FROM [empreendimentos].[TB_FASE]");
            console.log('--- TB_FASE ---');
            console.log(JSON.stringify(fases.recordset, null, 2));
        } catch (e) { console.log('TB_FASE not found/accessible'); }

        const counts = await sql.query(`
            SELECT 
                COUNT(DISTINCT idPrograma) as programs,
                COUNT(DISTINCT idDistrito) as distritos,
                COUNT(DISTINCT idGestor) as gestores,
                COUNT(DISTINCT idFase) as fases
            FROM [empreendimentos].[TB_EMPREENDIMENTOS]
        `);
        console.log('--- COUNTS ---');
        console.log(JSON.stringify(counts.recordset, null, 2));

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

inspect();
