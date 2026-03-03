import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const dataPath = path.join(__dirname, '../public/data/data.json');
const rawData = fs.readFileSync(dataPath, 'utf-8');
const data = JSON.parse(rawData);

let sql = '';

data.projects.forEach(p => {
    if (p.latitude && p.longitude && p.id_empreendimento) {
        sql += `UPDATE empreendimentos SET latitude = ${p.latitude}, longitude = ${p.longitude} WHERE codigo = '${p.id_empreendimento}';\n`;
    }
});

fs.writeFileSync(path.join(__dirname, '../migration.sql'), sql);
console.log('Migration SQL generated at migration.sql');
