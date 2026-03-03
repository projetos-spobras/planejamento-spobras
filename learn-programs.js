
import sql from 'mssql';
import dotenv from 'dotenv';
import path from 'path';

dotenv.config({ path: path.resolve(process.cwd(), '.env') });

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

async function run() {
    try {
        await sql.connect(sqlConfig);
        console.log('Connected.');

        // Describe mapping
        const query = `
            SELECT t.idPrograma, v.Programas, COUNT(*) as count
            FROM empreendimentos.TB_EMPREENDIMENTOS t
            LEFT JOIN empreendimentos.VW_EMPREENDIMENTOS v ON t.idEmpreendimento = v.[Id Empreendimentos]
            WHERE v.Programas IS NOT NULL
            GROUP BY t.idPrograma, v.Programas
            ORDER BY count DESC
        `;

        const result = await sql.query(query);
        console.log("Program Mapping Found:");
        result.recordset.forEach(r => {
            console.log(`ID: ${r.idPrograma} -> "${r.Programas}" (${r.count} occurrences)`);
        });

        await sql.close();
    } catch (err) {
        console.error("Error:", err);
    }
}

run();
