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

        // Check for Programs table
        const tablesResult = await sql.query`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_NAME LIKE '%PROGRAMA%'
        `;
        console.log("Program tables:", tablesResult.recordset.map(t => `${t.TABLE_SCHEMA}.${t.TABLE_NAME}`));

        const tables = [
            { schema: 'contratos', name: 'VW_CONTRATOS' }
        ];

        if (tablesResult.recordset.length > 0) {
            tables.push({ schema: tablesResult.recordset[0].TABLE_SCHEMA, name: tablesResult.recordset[0].TABLE_NAME });
        }

        for (const t of tables) {
            console.log(`\n*** Columns for ${t.schema}.${t.name} ***`);
            const cols = await sql.query(`
                SELECT COLUMN_NAME, DATA_TYPE
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_NAME = '${t.name}' AND TABLE_SCHEMA = '${t.schema}'
            `);
            console.log(JSON.stringify(cols.recordset, null, 2));
        }

        await sql.close();
    } catch (err) {
        console.error('Error:', err);
    }
}

inspect();
