import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

serve(async (req) => {
    if (req.method === 'OPTIONS') {
        return new Response(null, { headers: corsHeaders });
    }

    try {
        const username = Deno.env.get("API_SQL_USERNAME");
        const password = Deno.env.get("API_SQL_PASSWORD");
        const sqlApiUrl = Deno.env.get("API_SQL_BASE_URL");

        if (!username || !password || !sqlApiUrl) {
            console.error("SQL API credentials not configured in secrets");
            return new Response(
                JSON.stringify({ error: "API credentials not configured" }),
                { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
            );
        }

        // Authenticate with the SQL API
        const loginResponse = await fetch(`${sqlApiUrl}/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario: username, senha: password })
        });

        if (!loginResponse.ok) {
            const errorText = await loginResponse.text();
            console.error(`SQL API login failed (${loginResponse.status}):`, errorText);
            return new Response(
                JSON.stringify({ error: "Failed to authenticate with SQL API" }),
                { status: 502, headers: { ...corsHeaders, "Content-Type": "application/json" } }
            );
        }

        const loginData = await loginResponse.json();
        const token = loginData.token || loginData.Token || loginData.access_token;

        if (!token) {
            return new Response(
                JSON.stringify({ error: "No token returned by SQL API" }),
                { status: 502, headers: { ...corsHeaders, "Content-Type": "application/json" } }
            );
        }

        return new Response(
            JSON.stringify({ token, apiBaseUrl: sqlApiUrl }),
            {
                headers: {
                    ...corsHeaders,
                    "Content-Type": "application/json",
                    "Cache-Control": "private, max-age=3300" // ~55 min
                }
            }
        );

    } catch (error) {
        console.error("Error in get-api-token:", error);
        return new Response(
            JSON.stringify({ error: "Internal server error" }),
            { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
        );
    }
});
