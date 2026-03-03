const fs = require('fs');
const path = 'src/data/projects.json'; // Relative to workspace or absolute

try {
    const data = fs.readFileSync('c:/Users/x437719/Downloads/mapaspobras-main-web/src/data/projects.json', 'utf8');
    const projects = JSON.parse(data);

    // We need items 725 to 756 (inclusive, 0-indexed? No, IDs start at 1 usually, wait.
    // My batches used IDs starting at 1.
    // 001 was 1-25.
    // So 725 is the 725th item if IDs are contiguous.
    // The execute_sql calls used 'VALUES (\'725\', ...' which implies ID 725.
    // Let's check IDs in projects.json.
    // Assuming they are in order or have a 'id' or 'codigo' field.

    const startId = 725;
    const endId = 756;

    let sql = '';

    // Filter projects with ID >= 725 and <= 756
    // Or just by index if IDs match index+1.
    // Let's assume ID field exists.

    projects.forEach(p => {
        const id = parseInt(p.codigo || p.id); // Check field name
        if (id >= startId && id <= endId) {
            // Escape single quotes in strings
            const nome = (p.nome || '').replace(/'/g, "''");
            const descricao = (p.descricao || '').replace(/'/g, "''");
            const localizacao = (p.localizacao || '').replace(/'/g, "''");
            const subprefeitura = (p.subprefeitura || '').replace(/'/g, "''");

            // Use provided lat/long if available, else NULL
            const lat = p.latitude || 'NULL';
            const long = p.longitude || 'NULL';

            sql += `INSERT INTO empreendimentos (codigo, nome, descricao, localizacao, id_programa, id_distrito, subprefeitura, latitude, longitude, prioritario)
VALUES ('${id}', '${nome}', '${descricao}', '${localizacao}', 20, NULL, '${subprefeitura}', ${lat}, ${long}, FALSE)
ON CONFLICT (codigo) DO UPDATE SET
    nome = EXCLUDED.nome,
    descricao = EXCLUDED.descricao,
    localizacao = EXCLUDED.localizacao,
    id_programa = EXCLUDED.id_programa,
    id_distrito = EXCLUDED.id_distrito,
    subprefeitura = EXCLUDED.subprefeitura,
    latitude = ${lat},
    longitude = ${long};\n`;
        }
    });

    console.log(sql);
} catch (e) {
    console.error(e);
}
