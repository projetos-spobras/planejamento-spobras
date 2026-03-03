import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
    'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
};

// Cache the SQL API auth token to avoid re-authenticating on every request
let cachedSqlToken: string | null = null;
let tokenExpiresAt = 0;

async function getSqlToken(apiBaseUrl: string, username: string, password: string): Promise<string> {
    if (cachedSqlToken && Date.now() < tokenExpiresAt) {
        return cachedSqlToken;
    }

    const res = await fetch(`${apiBaseUrl}/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ usuario: username, senha: password }),
    });

    if (!res.ok) {
        throw new Error(`SQL API login failed: ${res.status}`);
    }

    const data = await res.json();
    const token = data.token || data.Token || data.access_token;
    if (!token) throw new Error('No token returned by SQL API');

    cachedSqlToken = token;
    tokenExpiresAt = Date.now() + 55 * 60 * 1000; // 55 minutes
    return token;
}

serve(async (req) => {
    if (req.method === 'OPTIONS') {
        return new Response(null, { headers: corsHeaders });
    }

    try {
        const username = Deno.env.get('API_SQL_USERNAME');
        const password = Deno.env.get('API_SQL_PASSWORD');
        const apiBaseUrl = Deno.env.get('API_SQL_BASE_URL');

        if (!username || !password || !apiBaseUrl) {
            return new Response(
                JSON.stringify({ error: 'SQL API credentials not configured' }),
                { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
            );
        }

        // Extract the path to forward (e.g. "/Empreendimentos")
        const url = new URL(req.url);
        const path = url.searchParams.get('path') || url.pathname.replace(/^\/functions\/v1\/proxy-sql-api/, '');

        if (!path || path === '/') {
            return new Response(
                JSON.stringify({ error: 'Missing path parameter. Use ?path=/Empreendimentos' }),
                { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
            );
        }

        const sqlToken = await getSqlToken(apiBaseUrl, username, password);

        // Proxy the request to the SQL API
        const targetUrl = `${apiBaseUrl}${path}`;
        const sqlResponse = await fetch(targetUrl, {
            method: req.method === 'POST' ? 'POST' : 'GET',
            headers: {
                'Authorization': `Bearer ${sqlToken}`,
                'Content-Type': 'application/json',
            },
            body: req.method === 'POST' ? await req.text() : undefined,
        });

        const responseBody = await sqlResponse.text();

        return new Response(responseBody, {
            status: sqlResponse.status,
            headers: {
                ...corsHeaders,
                'Content-Type': sqlResponse.headers.get('Content-Type') || 'application/json',
            },
        });

    } catch (error) {
        console.error('Error in proxy-sql-api:', error);
        return new Response(
            JSON.stringify({ error: 'Proxy error', details: String(error) }),
            { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );
    }
});
