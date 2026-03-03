
import fs from 'fs';
import path from 'path';
import JSZip from 'jszip';
import { kml } from '@tmcw/togeojson';
import { DOMParser } from 'xmldom';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

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

async function main() {
    try {
        const distritosPath = path.join(__dirname, 'public/data/distritos.kmz');
        const subPath = path.join(__dirname, 'public/data/subprefeituras.kmz');

        let sql = '';

        if (fs.existsSync(distritosPath)) {
            const geojson = await loadKMZAsGeoJSON(distritosPath);
            for (const feature of geojson.features) {
                const nome = feature.properties.ds_nome || feature.properties.Name || feature.properties.name;
                if (!nome) continue;

                let geometry = feature.geometry;
                if (geometry.type === 'Polygon') {
                    geometry = { type: 'MultiPolygon', coordinates: [geometry.coordinates] };
                }

                if (geometry.type === 'MultiPolygon') {
                    sql += `UPDATE distritos SET geom = ST_SetSRID(ST_GeomFromGeoJSON('${JSON.stringify(geometry)}'), 4326) WHERE nome = '${nome.trim()}';\n`;
                }
            }
        }

        if (fs.existsSync(subPath)) {
            const geojson = await loadKMZAsGeoJSON(subPath);
            for (const feature of geojson.features) {
                const nome = feature.properties.sp_nome || feature.properties.Name || feature.properties.name;
                if (!nome) continue;

                let geometry = feature.geometry;
                if (geometry.type === 'Polygon') {
                    geometry = { type: 'MultiPolygon', coordinates: [geometry.coordinates] };
                }

                if (geometry.type === 'MultiPolygon') {
                    sql += `UPDATE subprefeituras SET geom = ST_SetSRID(ST_GeomFromGeoJSON('${JSON.stringify(geometry)}'), 4326) WHERE nome = '${nome.trim()}';\n`;
                }
            }
        }

        fs.writeFileSync(path.join(__dirname, 'update_geom.sql'), sql);
        console.log('SQL generated to update_geom.sql');

    } catch (err) {
        console.error('Error:', err);
    }
}

main();
