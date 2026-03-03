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

        const tables = [
            { schema: 'empreendimentos', name: 'VW_EMPREENDIMENTOS' },
            { schema: 'empreendimentos', name: 'VW_CONTRATOS_EMPREENDIMENTOS' }
        ];

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
