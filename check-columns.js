import sql from 'mssql';
import dotenv from 'dotenv';
dotenv.config();

const sqlConfig = {
    user: 'empreendimentoBI_PMO',
    password: 'BI_28052@21',
    server: 'SPOBRAS03',
    database: 'P_DB_EMPREENDIMENTOS',
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

async function check() {
    try {
        await sql.connect(sqlConfig);
        const result = await sql.query`SELECT TOP 1 * FROM empreendimentos.TB_EMPREENDIMENTOS`;
        if (result.recordset.length > 0) {
            console.log('Columns:');
            Object.keys(result.recordset[0]).sort().forEach(k => console.log(k));
        } else {
            console.log('Table empty or no access');
        }

        await sql.close();
    } catch (e) {
        console.error(e);
        await sql.close();
    }
}
check();
