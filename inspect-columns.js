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

async function inspectTables() {
    try {
        console.log('Connecting...');
        await sql.connect(config);

        const tables = ['TB_EMPREENDIMENTOS', 'TB_CONTRATOS_EMPREENDIMENTOS', 'contratos_TB_Status'];

        for (const table of tables) {
            console.log(`\n--- Structure of ${table} ---`);
            const result = await sql.query`
                SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
                FROM INFORMATION_SCHEMA.COLUMNS
                WHERE TABLE_NAME = ${table}
                ORDER BY ORDINAL_POSITION
            `;
            console.table(result.recordset);
        }

        await sql.close();
    } catch (err) {
        console.error('Error:', err);
    }
}

inspectTables();
