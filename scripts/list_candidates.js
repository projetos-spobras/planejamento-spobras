
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

async function listCandidates() {
    try {
        await sql.connect(sqlConfig);

        // Test access to VW_EMPREENDIMENTOS (plural)
        try {
            const queryP = 'SELECT TOP 1 * FROM [empreendimentos].[VW_EMPREENDIMENTOS]';
            const resP = await sql.query(queryP);
            console.log("\n=== VW_EMPREENDIMENTOS COLUMNS ===");
            console.log(Object.keys(resP.recordset[0]));
        } catch (err) {
            console.log("\nVW_EMPREENDIMENTOS Access Denied/Error:", err.message);
        }

        // Test access to VW_EMPREENDIMENTO_LOCALIZACAO
        try {
            const queryL = 'SELECT TOP 1 * FROM [empreendimentos].[VW_EMPREENDIMENTO_LOCALIZACAO]';
            const resL = await sql.query(queryL);
            console.log("=== VW_EMPREENDIMENTO_LOCALIZACAO SAMPLE ===");
            console.log(JSON.stringify(resL.recordset[0], null, 2));
        } catch (err) {
            console.log("VW_EMPREENDIMENTO_LOCALIZACAO Access Denied or Error:", err.message);
        }

        // Log column names for them if accessible (or via Info Schema if allowed)
        const colsQuery = `
            SELECT TABLE_NAME, COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME IN ('VW_EMPREENDIMENTOS', 'VW_EMPREENDIMENTO_LOCALIZACAO')
        `;
        try {
            const resCols = await sql.query(colsQuery);
            // console.log("=== COLUMNS IN VIEWS ==="); // Removed
            // console.table(resCols.recordset); // Removed
        } catch (err) { }

        // Check Gestor vs DiretoriaRegional overlap
        try {
            const query = `
                SELECT 
                    COUNT(DISTINCT e.idGestor) as UniqueGestores,
                    COUNT(DISTINCT l.idDiretoriaRegional) as UniqueDREs,
                    COUNT(CASE WHEN e.idGestor = l.idDiretoriaRegional THEN 1 END) as Matches
                FROM [empreendimentos].[TB_EMPREENDIMENTOS] e
                JOIN [empreendimentos].[VW_EMPREENDIMENTO_LOCALIZACAO] l ON e.idEmpreendimento = l.idEmpreendimento
            `;
            const res = await sql.query(query);
            console.log("\n=== GESTOR OVERLAP ===");
            console.table(res.recordset);
        } catch (err) { console.log(err.message); }

        // Try direct select from potential Gestor tables
        const gestorTables = [
            '[gestor].[TB_GESTOR]',
            '[empreendimentos].[TB_GESTOR]',
            '[dbo].[TB_GESTOR]',
            '[gestor].[TB_GERENCIA]',
            '[empreendimentos].[TB_GERENCIA]'
        ];

        for (const table of gestorTables) {
            try {
                const q = `SELECT TOP 1 * FROM ${table}`;
                const r = await sql.query(q);
                console.log(`\n=== FOUND ${table} ===`);
                console.log(JSON.stringify(r.recordset[0]));
            } catch (e) {
                // console.log(`${table} not found or denied.`);
            }
        }

        // List ALL tables to file
        const query = `
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `;

        const result = await sql.query(query);
        const fs = require('fs');
        const lines = result.recordset.map(row => `[${row.TABLE_SCHEMA}].[${row.TABLE_NAME}]`).join('\n');
        fs.writeFileSync('all_tables_list.txt', lines);
        console.log(`Written ${result.recordset.length} tables to all_tables_list.txt`);

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await sql.close();
    }
}

listCandidates();
