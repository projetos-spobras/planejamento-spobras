import { supabase } from "@/integrations/supabase/client";

const PROXY_FUNCTION_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co/functions/v1/proxy-sql-api";

/**
 * Generic fetch wrapper for the SQL Server API.
 * 
 * All requests are routed through the Supabase Edge Function `proxy-sql-api`,
 * which authenticates with the SQL API server-side (credentials stored as Supabase secrets).
 * This eliminates CORS issues since the browser never directly contacts the SQL Server.
 * Works identically in local development and production.
 */
export async function fetchApiData<T>(endpoint: string): Promise<T> {
    const { data: sessionData } = await supabase.auth.getSession();
    const accessToken = sessionData?.session?.access_token;

    if (!accessToken) {
        throw new Error("Sessão não autenticada. Faça login para continuar.");
    }

    const url = `${PROXY_FUNCTION_URL}?path=${encodeURIComponent(endpoint)}`;

    const response = await fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': `Bearer ${accessToken}`,
            'Content-Type': 'application/json',
        },
    });

    if (!response.ok) {
        const errorText = await response.text().catch(() => '');
        throw new Error(`Falha ao buscar dados em ${endpoint} (Status: ${response.status}): ${errorText}`);
    }

    return response.json();
}
