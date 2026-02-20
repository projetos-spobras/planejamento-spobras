
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

async function debugLink() {
    console.log('Connecting...');
    let pool;
    try {
        pool = await sql.connect(sqlConfig);

        const contractNum = '251/SIURB/2023';
        const empName = 'Chucri Zaidan - FASE 2';

        console.log(`Searching for Contract: ${contractNum}`);
        const cont = await pool.request().query(`
            SELECT idContratoSecretaria, nmContrato, idEmpreendimento 
            FROM [contratos].[TB_CONTRATOS_SECRETARIA] 
            WHERE nmContrato = '${contractNum}'
        `);
        console.log('Contract found:', cont.recordset);

        console.log(`Searching for Empreendimento: ${empName}`);
        const emp = await pool.request().query(`
            SELECT idEmpreendimento, nmEmpreendimento 
            FROM [empreendimentos].[TB_EMPREENDIMENTOS] 
            WHERE nmEmpreendimento = '${empName}'
        `);
        console.log('Empreendimento found:', emp.recordset);

        if (cont.recordset.length > 0 && emp.recordset.length > 0) {
            const idContrato = cont.recordset[0].idContratoSecretaria;
            const idEmpreendimento = emp.recordset[0].idEmpreendimento;

            console.log(`Checking link for Contrato ID ${idContrato} and Empreendimento ID ${idEmpreendimento}...`);

            const link = await pool.request().query(`
                SELECT * 
                FROM [contratos].[TB_CONTRATO_EMPREENDIMENTOS] 
                WHERE idContrato = ${idContrato} AND idEmpreendimento = ${idEmpreendimento}
            `);
            console.log('Link found:', link.recordset);
        }

    } catch (err) {
        console.error(err);
    } finally {
        if (pool) pool.close();
    }
}

debugLink();
