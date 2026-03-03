import sql from 'mssql';

const config = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function inspect() {
    try {
        await sql.connect(config);

        console.log("Searching for contract/program columns...");
        const result = await sql.query`
            SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME 
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE COLUMN_NAME LIKE '%Contrato%' OR COLUMN_NAME LIKE '%Programa%'
            ORDER BY TABLE_NAME, COLUMN_NAME
        `;

        // Filter to show distinct table references
        const relevant = result.recordset.map(r => `${r.TABLE_SCHEMA}.${r.TABLE_NAME} -> ${r.COLUMN_NAME}`);
        console.log(JSON.stringify(relevant, null, 2));

        await sql.close();
    } catch (err) {
        console.error('Error:', err);
    }
}

inspect();
