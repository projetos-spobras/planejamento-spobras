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

        // 1. Find exact table names
        console.log("Searching for tables...");
        const tablesResult = await sql.query`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_NAME LIKE '%EMPREENDIMENTOS%' OR TABLE_NAME LIKE '%CONTRATO%' OR TABLE_NAME LIKE '%Status%'
        `;
        const tables = tablesResult.recordset;
        console.log("Found tables:", tables.map(t => `${t.TABLE_SCHEMA}.${t.TABLE_NAME}`));

        // 2. Inspect columns for likely candidates
        // We will target exactly what the user suggested if found, otherwise everything close.
        const targets = ['TB_EMPREENDIMENTOS', 'TB_CONTRATOS_EMPREENDIMENTOS', 'contratos_TB_Status'];

        for (const t of tables) {
            if (targets.some(target => t.TABLE_NAME.includes(target) || target.includes(t.TABLE_NAME))) {
                console.log(`\n*** Columns for ${t.TABLE_SCHEMA}.${t.TABLE_NAME} ***`);
                const cols = await sql.query(`
                    SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
                    FROM INFORMATION_SCHEMA.COLUMNS
                    WHERE TABLE_NAME = '${t.TABLE_NAME}' AND TABLE_SCHEMA = '${t.TABLE_SCHEMA}'
                `);
                console.log(JSON.stringify(cols.recordset, null, 2));
            }
        }

        await sql.close();
    } catch (err) {
        console.error('Error:', err);
    }
}

inspect();
