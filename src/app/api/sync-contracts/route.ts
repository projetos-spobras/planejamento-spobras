import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import fs from 'fs';

export async function GET(req: Request) {
    try {
        const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
        const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
        const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || supabaseKey;
        
        const supabase = createClient(supabaseUrl, serviceKey);

        const { searchParams } = new URL(req.url);
        const enterpriseId = searchParams.get('id') || '61';
        
        console.log(`Inspecting enterprise ${enterpriseId} via proxy...`);
        
        const { data, error: apiError } = await (supabase.functions.invoke as any)('proxy_empreendimentos', {
            body: { 
                url: `http://187.44.105.2:8080/ApiEmpreendimentosContratos/${enterpriseId}`,
                method: 'GET'
            }
        });

        if (apiError) {
            console.error('API Error via proxy:', apiError);
            return NextResponse.json({ success: false, error: apiError }, { status: 500 });
        }
        
        const rawRows = data || [];
        
        // Use a relative path for debug file
        const debugPath = './api_debug_61.json';
        fs.writeFileSync(debugPath, JSON.stringify(rawRows, null, 2));

        return NextResponse.json({ 
            success: true,
            enterpriseId,
            count: rawRows.length,
            sample: rawRows[0] || {}
        });
    } catch (e: any) {
        console.error('Debug route failed:', e);
        return NextResponse.json({ success: false, error: e.message }, { status: 500 });
    }
}
