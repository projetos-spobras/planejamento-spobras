
import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import JSZip from 'jszip';
import { kml } from '@tmcw/togeojson';
import { DOMParser } from 'xmldom';
import dotenv from 'dotenv';
import { fileURLToPath } from 'url';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase credentials in .env');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

function stripZ(geometry) {
    if (!geometry) return geometry;
    const newGeom = JSON.parse(JSON.stringify(geometry));

    function strip(coords) {
        if (!Array.isArray(coords)) return;
        if (coords.length > 0 && typeof coords[0] === 'number') {
            if (coords.length > 2) coords.length = 2;
        } else {
            coords.forEach(strip);
        }
    }

    if (newGeom.coordinates) {
        strip(newGeom.coordinates);
    }
    return newGeom;
}

function normalize(str) {
    return str.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "").trim();
}

async function loadKMZAsGeoJSON(filePath) {
    const buffer = fs.readFileSync(filePath);
    const zip = new JSZip();
    const unzipped = await zip.loadAsync(buffer);
    const kmlFilename = Object.keys(unzipped.files).find(name => name.endsWith('.kml'));
    if (!kmlFilename) throw new Error(`No KML found in ${filePath}`);
    const kmlText = await unzipped.files[kmlFilename].async('string');
    const parser = new DOMParser();
    const kmlDoc = parser.parseFromString(kmlText, 'text/xml');
    return kml(kmlDoc);
}

async function updateDistritos(geojson) {
    console.log(`Updating ${geojson.features.length} distritos...`);

    // Fetch all distritos to build a map
    const { data: distritos, error } = await supabase.from('distritos').select('id, nome');
    if (error) {
        console.error('Error fetching distritos:', error);
        return;
    }

    const dbMap = new Map();
    distritos.forEach(d => {
        if (d.nome) dbMap.set(normalize(d.nome), d.id);
    });

    let updated = 0;

    for (const feature of geojson.features) {
        const nome = feature.properties.ds_nome || feature.properties.Name || feature.properties.name;
        if (!nome) continue;

        const normNome = normalize(nome);
        const dbId = dbMap.get(normNome);

        if (!dbId) {
            console.warn(`No match found for distrito: '${nome}' (normalized: '${normNome}')`);
            continue;
        }

        let geometry = feature.geometry;
        if (geometry.type === 'Polygon') {
            geometry = {
                type: 'MultiPolygon',
                coordinates: [geometry.coordinates]
            };
        }

        geometry = stripZ(geometry);

        if (geometry.type === 'MultiPolygon') {
            const { error: updateError } = await supabase
                .from('distritos')
                .update({ geom: geometry })
                .eq('id', dbId);

            if (updateError) {
                console.error(`Error updating distrito '${nome}':`, updateError.message);
            } else {
                updated++;
            }
        }
    }
    console.log(`Processed ${updated} distritos.`);
}

async function updateSubprefeituras(geojson) {
    console.log(`Updating ${geojson.features.length} subprefeituras...`);
    let updated = 0;

    for (const feature of geojson.features) {
        const nome = feature.properties.sp_nome || feature.properties.Name || feature.properties.name;
        if (!nome) continue;

        let geometry = feature.geometry;
        if (geometry.type === 'Polygon') {
            geometry = {
                type: 'MultiPolygon',
                coordinates: [geometry.coordinates]
            };
        }

        geometry = stripZ(geometry);

        if (geometry.type === 'MultiPolygon') {
            // Upsert functionality
            const { error } = await supabase
                .from('subprefeituras')
                .upsert({
                    nome: nome.trim(),
                    geom: geometry
                }, { onConflict: 'nome' });

            if (error) {
                console.error(`Error updating subprefeitura '${nome}':`, error.message);
            } else {
                updated++;
            }
        }
    }
    console.log(`Processed ${updated} subprefeituras.`);
}

async function main() {
    try {
        const distritosPath = path.join(__dirname, 'public/data/distritos.kmz');
        const subPath = path.join(__dirname, 'public/data/subprefeituras.kmz');

        if (fs.existsSync(distritosPath)) {
            const geojson = await loadKMZAsGeoJSON(distritosPath);
            await updateDistritos(geojson);
        } else {
            console.error('Distritos KMZ not found');
        }

        if (fs.existsSync(subPath)) {
            const geojson = await loadKMZAsGeoJSON(subPath);
            await updateSubprefeituras(geojson);
        } else {
            console.error('Subprefeituras KMZ not found');
        }

        console.log('Done.');

    } catch (err) {
        console.error('Script failed:', err);
    }
}

main();
