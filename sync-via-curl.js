import fs from 'fs';
import path from 'path';
import { execSync } from 'child_process';
import dotenv from 'dotenv';

dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error('Missing env vars:');
    if (!SUPABASE_URL) console.error('- VITE_SUPABASE_URL');
    if (!SUPABASE_KEY) console.error('- SUPABASE_SERVICE_ROLE_KEY');
    process.exit(1);
}

const DATA_DIR = './sync_data';
const BATCH_SIZE = 100;

function runCurl(urlPath, method, headers, filePath) {
    const fullUrl = `${SUPABASE_URL}${urlPath}`;
    // -s: Silent, -S: Show error.
    // We capture stdout for response.
    const cmd = `curl -s -S -X ${method} "${fullUrl}" -H "apikey: ${SUPABASE_KEY}" -H "Authorization: Bearer ${SUPABASE_KEY}" -H "Content-Type: application/json" ${headers} -d @${filePath}`;
    try {
        const output = execSync(cmd, { maxBuffer: 1024 * 1024 * 50 }); // 50MB buffer
        const strOutput = output.toString();
        // Check for empty output (204 No Content, etc)
        if (!strOutput.trim()) return null;
        try {
            return JSON.parse(strOutput);
        } catch (jsonErr) {
            console.error('JSON Parse Error of curl output:', jsonErr.message);
            console.log('Raw Output snippet:', strOutput.substring(0, 200));
            return null; // Or throw
        }
    } catch (e) {
        console.error('Curl failed:', e.message);
        if (e.stdout) console.log('Stdout:', e.stdout.toString());
        if (e.stderr) console.log('Stderr:', e.stderr.toString());
        throw e;
    }
}

async function sync() {
    try {
        // 1. PROJECTS
        console.log('🚀 Syncing Projects...');
        const projects = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'projects.json'), 'utf8'));
        const projectMap = new Map(); // codigo -> id

        for (let i = 0; i < projects.length; i += BATCH_SIZE) {
            const batch = projects.slice(i, i + BATCH_SIZE);
            const tempFile = 'temp_projects.json';
            fs.writeFileSync(tempFile, JSON.stringify(batch));

            const res = runCurl(
                '/rest/v1/empreendimentos?on_conflict=codigo',
                'POST',
                '-H "Prefer: resolution=merge-duplicates,return=representation"',
                tempFile
            );

            if (Array.isArray(res)) {
                res.forEach(r => projectMap.set(String(r.codigo), r.id));
                process.stdout.write(`.`);
            } else {
                console.error('\nUnexpected response (Projects):', res);
            }
            if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
        }
        console.log(`\n✅ Projects synced. IDs mapped: ${projectMap.size}`);

        // 2. CONTRACTS
        console.log('🚀 Syncing Contracts...');
        const contracts = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'contracts.json'), 'utf8'));
        const contractMap = new Map(); // numero -> id

        for (let i = 0; i < contracts.length; i += BATCH_SIZE) {
            const batch = contracts.slice(i, i + BATCH_SIZE);
            const tempFile = 'temp_contracts.json';
            fs.writeFileSync(tempFile, JSON.stringify(batch));

            const res = runCurl(
                '/rest/v1/contratos?on_conflict=numero',
                'POST',
                '-H "Prefer: resolution=merge-duplicates,return=representation"',
                tempFile
            );

            if (Array.isArray(res)) {
                res.forEach(r => contractMap.set(r.numero, r.id));
                process.stdout.write(`.`);
            } else {
                console.error('\nUnexpected response (Contracts):', res);
            }
            if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
        }
        console.log(`\n✅ Contracts synced. IDs mapped: ${contractMap.size}`);

        // 3. LINKS
        console.log('🚀 Linking...');
        const rawLinks = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'links_raw.json'), 'utf8'));
        const finalLinks = [];

        let skipped = 0;
        rawLinks.forEach(l => {
            const pId = projectMap.get(String(l.codigo_empreendimento));
            const cId = contractMap.get(l.numero_contrato);
            if (pId && cId) {
                finalLinks.push({
                    empreendimento_id: pId,
                    contrato_id: cId
                });
            } else {
                skipped++;
            }
        });

        console.log(`Prepared ${finalLinks.length} links (Skipped ${skipped} due to missing IDs).`);

        for (let i = 0; i < finalLinks.length; i += BATCH_SIZE) {
            const batch = finalLinks.slice(i, i + BATCH_SIZE);
            const tempFile = 'temp_links.json';
            fs.writeFileSync(tempFile, JSON.stringify(batch));

            // Upsert links (ignore duplicates)
            const res = runCurl(
                '/rest/v1/empreendimentos_contratos?on_conflict=empreendimento_id,contrato_id',
                'POST',
                '-H "Prefer: resolution=ignore-duplicates,return=minimal"',
                tempFile
            );

            process.stdout.write(`.`);
            if (fs.existsSync(tempFile)) fs.unlinkSync(tempFile);
        }
        console.log('\n✅ Links synced.');

    } catch (e) {
        console.error('\n❌ Fatal Error:', e);
        // Clean up
        try { fs.unlinkSync('temp_projects.json'); } catch { }
        try { fs.unlinkSync('temp_contracts.json'); } catch { }
        try { fs.unlinkSync('temp_links.json'); } catch { }
        process.exit(1);
    }
}

sync();
