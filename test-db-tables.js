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

async function listTables() {
    try {
        console.log('Connecting to P_DB_EMPREENDIMENTOS...');
        await sql.connect(config);

        const result = await sql.query`
            SELECT TABLE_SCHEMA, TABLE_NAME 
            FROM INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE'
            ORDER BY TABLE_SCHEMA, TABLE_NAME
        `;

        console.log('Tables found:');
        console.table(result.recordset);

        await sql.close();
    } catch (err) {
        console.error('Error:', err);
    }
}

listTables();
