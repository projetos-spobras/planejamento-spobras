
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';
dotenv.config({ path: '.env.production' });
const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function verifyMapping() {
    console.log('--- Verifying Mapping Logic (Direct vs Indirect) ---');
    
    // 1. Get links
    const { data: links, error: linkError } = await supabase.from('empreendimentos_contratos').select('empreendimento_id, contrato_id');
    if (linkError || !links) {
        console.error('Error fetching links:', linkError);
        return;
    }
    const contractToEmps = {};
    links.forEach(l => {
        if (!contractToEmps[l.contrato_id]) contractToEmps[l.contrato_id] = [];
        contractToEmps[l.contrato_id].push(l.empreendimento_id);
    });
    console.log(`Loaded ${links.length} total links.`);

    // 2. Get some services that HAVE contrato_id but MIGHT NOT have empreendimento_id
    const { data: servicos } = await supabase.from('servicos').select('id, tipo, contrato_id, empreendimento_id').range(0, 5000);
    
    let totalDirect = 0;
    let totalIndirectOnly = 0;
    let projectsWithIndirectOnly = new Set();
    let desapropCount = 0;
    let ambiCount = 0;

    const mappedProjects = new Set();

    servicos.forEach(s => {
        let isDirect = !!s.empreendimento_id;
        let isIndirect = s.contrato_id && contractToEmps[s.contrato_id];
        
        if (isDirect) {
            totalDirect++;
            mappedProjects.add(s.empreendimento_id);
        }
        
        if (isIndirect && !isDirect) {
            totalIndirectOnly++;
            contractToEmps[s.contrato_id].forEach(pId => {
                projectsWithIndirectOnly.add(pId);
                mappedProjects.add(pId);
            });
        }

        // Count special types (matches my logic in api-client.ts)
        const isDesaprop = s.tipo?.toLowerCase().includes('desaprop') || s.tipo?.toLowerCase().includes('expropri');
        const isAmbi = s.tipo?.toLowerCase().includes('ambi');

        if (isDesaprop) desapropCount++;
        if (isAmbi) ambiCount++;
    });

    console.log(`--- Results ---`);
    console.log(`Directly linked services: ${totalDirect}`);
    console.log(`Services linked ONLY via contracts (Indirect): ${totalIndirectOnly}`);
    console.log(`Additional projects found via indirect links: ${projectsWithIndirectOnly.size}`);
    console.log(`Total projects mapped to at least one service: ${mappedProjects.size}`);
    console.log(`Total Desaprop services in sample: ${desapropCount}`);
    console.log(`Total Ambiental services in sample: ${ambiCount}`);
}

verifyMapping().catch(console.error);
