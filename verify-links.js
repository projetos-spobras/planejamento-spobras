import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import path from 'path';

// Load .env from current directory
dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
const SUPABASE_KEY = process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error('Missing Supabase credentials in .env');
    process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

async function verify() {
    console.log('🔍 Starting Data Integrity Check...');

    try {
        // 1. Fetch ALL Contracts Staging
        const { data: contracts, error: cErr } = await supabase
            .from('contratos_staging')
            .select('*')
            .range(0, 5000);

        if (cErr) throw cErr;

        // 2. Fetch ALL Projects Staging (just IDs)
        const { data: projects, error: pErr } = await supabase
            .from('empreendimentos_staging')
            .select('id_empreendimento, empreendimentos')
            .range(0, 5000);

        if (pErr) throw pErr;

        const projectMap = new Map();
        projects.forEach(p => projectMap.set(p.id_empreendimento, p.empreendimentos));

        console.log(`📊 Loaded ${projects.length} projects and ${contracts.length} contracts from Staging.`);

        // 3. Find Orphans
        const orphans = [];
        const validLinks = [];

        contracts.forEach(c => {
            if (projectMap.has(c.id_empreendimento)) {
                validLinks.push({
                    contract: c.nr_contrato,
                    project: projectMap.get(c.id_empreendimento),
                    projectId: c.id_empreendimento
                });
            } else {
                orphans.push(c);
            }
        });

        console.log('---------------------------------------------------');
        if (orphans.length === 0) {
            console.log('✅ PASS: No Orphan Contracts found. All contracts are linked to valid projects.');
        } else {
            console.error(`❌ FAIL: Found ${orphans.length} Orphan Contracts!`);
            orphans.forEach(o => console.log(`   - Contract ${o.nr_contrato} references ProjectID ${o.id_empreendimento} (Not Found)`));
        }

        // 4. Sample Data
        console.log('---------------------------------------------------');
        console.log('📝 Sample Links (First 5):');
        validLinks.slice(0, 5).forEach(item => {
            console.log(`   🔗 Contract [${item.contract}] linked to Project: "${item.project}" (ID: ${item.projectId})`);
        });

        console.log('---------------------------------------------------');
        console.log('✨ Verification Complete.');

    } catch (e) {
        console.error('❌ Error during verification:', e);
    }
}

verify();
