
import dotenv from 'dotenv';
dotenv.config({ path: '.env.local' });

import { getContratoEmpreendimentosPorContrato } from '../src/lib/api-client';
import fs from 'fs';

async function test() {
    try {
        console.log("Fetching for contract 1165...");
        // Ensure NEXT_PUBLIC_APP_URL is set or falls back to localhost:3005
        // But the proxy must be running! 
        // Wait, fetchFromProxy calls its own API. 
        // If the dev server is not running, it will fail.
        
        // Let's try to bypass the proxy and call the legacy API directly if possible,
        // or just rely on the fact that I'm on the same network?
        // No, the legacy API requires auth too.
        
        const data = await getContratoEmpreendimentosPorContrato(1165);
        console.log(`Found ${data.length} records.`);
        fs.writeFileSync('api_response_1165.json', JSON.stringify(data, null, 2));
        console.log("Written to api_response_1165.json");
    } catch (err) {
        console.error("Error:", err);
    }
}

test();
