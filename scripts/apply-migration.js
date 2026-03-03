import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase URL or Key');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

const dataPath = path.join(__dirname, '../public/data/data.json');
const rawData = fs.readFileSync(dataPath, 'utf-8');
const data = JSON.parse(rawData);

async function migrate() {
    console.log(`Starting migration of ${data.projects.length} projects...`);
    let count = 0;

    for (const p of data.projects) {
        if (p.latitude && p.longitude && p.id_empreendimento) {
            const { error } = await supabase.rpc('update_project_location', {
                p_codigo: String(p.id_empreendimento),
                p_lat: p.latitude,
                p_lon: p.longitude
            });

            if (error) {
                console.error(`Error updating project ${p.id_empreendimento}:`, error);
            } else {
                // console.log(`Updated ${p.id_empreendimento}`);
                count++;
            }
        }
        if (count % 50 === 0) console.log(`Processed ${count} projects...`);
    }
    console.log(`Migration complete. Updated ${count} projects.`);
}

migrate();
