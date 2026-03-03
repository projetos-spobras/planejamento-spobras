import { supabase } from "@/integrations/supabase/client";

const SUPABASE_FUNCTIONS_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co/functions/v1";

let cachedToken: string | null = null;
let tokenExpirationTime: number | null = null;
let cachedApiBaseUrl: string | null = null;

/**
 * Fetches the SQL API token via the Supabase Edge Function `get-api-token`.
 * 
 * Credentials (username, password, API URL) are stored securely as Supabase secrets.
 * This Edge Function is JWT-protected — only authenticated users can call it.
 * Works both locally and in production since Supabase is always reachable.
 */
export async function getApiToken(): Promise<{ token: string; apiBaseUrl: string }> {
    // Return cached token if still valid (avoids repeated Edge Function calls)
    if (cachedToken && cachedApiBaseUrl && tokenExpirationTime && Date.now() < tokenExpirationTime) {
        return { token: cachedToken, apiBaseUrl: cachedApiBaseUrl };
    }

    const { data: sessionData } = await supabase.auth.getSession();
    const accessToken = sessionData?.session?.access_token;

    if (!accessToken) {
        throw new Error("Sessão não autenticada. Faça login para continuar.");
    }

    const response = await fetch(`${SUPABASE_FUNCTIONS_URL}/get-api-token`, {
        method: 'GET',
        headers: {
            Authorization: `Bearer ${accessToken}`,
            'Content-Type': 'application/json',
        },
    });

    if (!response.ok) {
        const errorText = await response.text().catch(() => '');
        throw new Error(`Edge Function get-api-token retornou erro ${response.status}: ${errorText}`);
    }

    const data = await response.json();
    cachedToken = data.token;
    cachedApiBaseUrl = data.apiBaseUrl;

    if (!cachedToken || !cachedApiBaseUrl) {
        throw new Error('Resposta inválida da Edge Function (token ou URL ausente).');
    }

    // Cache for 55 minutes
    tokenExpirationTime = Date.now() + 55 * 60 * 1000;

    return { token: cachedToken, apiBaseUrl: cachedApiBaseUrl };
}

/**
 * Generic fetch wrapper for the SQL Server API endpoints.
 */
export async function fetchApiData<T>(endpoint: string): Promise<T> {
    const { token, apiBaseUrl } = await getApiToken();
    const response = await fetch(`${apiBaseUrl}${endpoint}`, {
        method: 'GET',
        headers: {
            'Authorization': `Bearer ${token}`,
            'Content-Type': 'application/json'
        }
    });

    if (!response.ok) {
        throw new Error(`Falha ao buscar dados em ${endpoint} (Status: ${response.status})`);
    }

    return response.json();
}
