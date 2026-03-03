
import { serve } from "https://deno.land/std@0.168.0/http/server.ts"

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

serve(async (req) => {
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        // 0. Parse Request Body
        let program: string | undefined;
        try {
            const body = await req.json();
            program = body.program;
        } catch (e) {
            // Body might be empty, which is fine
        }

        // 1. Get Secrets
        // Note: In a real deployment, these should be environment variables.
        // For this implementation, we use the provided values or environment variables if set.
        const clientId = Deno.env.get('POWERBI_CLIENT_ID') || 'your_client_id_here';
        const clientSecret = Deno.env.get('POWERBI_CLIENT_SECRET') || 'your_client_secret_here';
        const tenantId = Deno.env.get('POWERBI_TENANT_ID') || 'your_tenant_id_here';

        // Constants
        const groupId = '472e36a5-fae3-4968-ae62-b40c9fbb7850';

        // Report Logic
        const DEFAULT_REPORT_ID = 'c78b5381-4483-4e75-92b4-322369accb91'; // Painel de Gestão (Padrao)
        const ESCOLAS_REPORT_ID = 'a3b76b4f-3ed5-4374-9109-e50bb40cb443'; // Painel ESCOLAS (Updated)

        // Determine Report ID based on Program
        let reportId = DEFAULT_REPORT_ID;

        // Normalize checking logic
        const normalize = (str: string) => str ? str.trim().normalize('NFD').replace(/[\u0300-\u036f]/g, '').toUpperCase() : '';
        const pName = normalize(program || '');
        const isEscolas = pName === 'ESCOLAS' || pName.includes('ESCOLA') || pName.includes('EDUCACAO');

        if (isEscolas) {
            console.log(`Program detected as ESCOLAS (raw: "${program}"). Switching to ESCOLAS Report.`);
            reportId = ESCOLAS_REPORT_ID;
        }

        const authorityUrl = `https://login.microsoftonline.com/${tenantId}/oauth2/v2.0/token`;
        const scope = 'https://analysis.windows.net/powerbi/api/.default';

        // 2. Get Access Token from Azure AD
        console.log("Fetching Azure AD Access Token...");
        const adBody = new URLSearchParams({
            client_id: clientId,
            client_secret: clientSecret,
            scope: scope,
            grant_type: 'client_credentials'
        });

        const adResponse = await fetch(authorityUrl, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: adBody
        });

        if (!adResponse.ok) {
            const errorText = await adResponse.text();
            console.error("AD Error:", errorText);
            throw new Error(`Failed to get AD token: ${errorText}`);
        }

        const adData = await adResponse.json();
        const accessToken = adData.access_token;

        // 3. Get Embed Token from Power BI API
        console.log(`Fetching Power BI Embed Token for Report: ${reportId} ...`);
        const embedTokenUrl = `https://api.powerbi.com/v1.0/myorg/groups/${groupId}/reports/${reportId}/GenerateToken`;

        const embedTokenResponse = await fetch(embedTokenUrl, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${accessToken}`
            },
            body: JSON.stringify({
                accessLevel: 'View'
            })
        });

        if (!embedTokenResponse.ok) {
            const errorText = await embedTokenResponse.text();
            console.error("PowerBI Error:", errorText);
            throw new Error(`Failed to get Embed token: ${errorText}`);
        }

        const embedTokenData = await embedTokenResponse.json();

        // 4. Return Data
        const result = {
            accessToken: embedTokenData.token, // This is the embed token
            embedUrl: `https://app.powerbi.com/reportEmbed?reportId=${reportId}&groupId=${groupId}`,
            reportId: reportId
        };

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })

    } catch (error) {
        console.error("Function Error:", error.message);
        // Return 200 but with error field so client can read IT
        return new Response(JSON.stringify({ error: `Server Error: ${error.message}` }), {
            status: 200,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
