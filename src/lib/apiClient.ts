import { supabase } from "@/integrations/supabase/client";

const SUPABASE_FUNCTIONS_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co/functions/v1";

// Local proxy URL for development (Vite proxy handles CORS)
const LOCAL_API_BASE_URL = '/api/sql';

let cachedToken: string | null = null;
let tokenExpirationTime: number | null = null;
let cachedApiBaseUrl: string | null = null;

function isLocalDev(): boolean {
    return import.meta.env.DEV === true;
}

/**
 * Fetches the SQL API token.
 * - In production: calls the Supabase Edge Function `get-api-token` (JWT-protected, credentials in server secrets)
 * - In development: uses the local Vite proxy (no credentials needed in client)
 */
export async function getApiToken(): Promise<{ token: string; apiBaseUrl: string }> {
    // Return cached token if still valid
    if (cachedToken && cachedApiBaseUrl && tokenExpirationTime && Date.now() < tokenExpirationTime) {
        return { token: cachedToken, apiBaseUrl: cachedApiBaseUrl };
    }

    if (isLocalDev()) {
        // In local dev, the Vite proxy at /api/sql handles auth forwarding.
        // We still call the login directly through the proxy.
        try {
            const response = await fetch(`${LOCAL_API_BASE_URL}/login`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    usuario: import.meta.env.VITE_API_SQL_USERNAME || 'ApiEmpreendimentos',
                    senha: import.meta.env.VITE_API_SQL_PASSWORD || ''
                })
            });

            if (!response.ok) {
                throw new Error(`Falha na autenticação local da API: ${response.status}`);
            }

            const data = await response.json();
            cachedToken = data.token || data.Token || data.access_token || data;
            cachedApiBaseUrl = LOCAL_API_BASE_URL;
            tokenExpirationTime = Date.now() + 55 * 60 * 1000;

            if (!cachedToken) throw new Error('Token não retornado pela API local.');
            return { token: cachedToken, apiBaseUrl: cachedApiBaseUrl };
        } catch (error) {
            console.error('Erro ao obter token da API (dev):', error);
            throw error;
        }
    }

    // Production: fetch token from Supabase Edge Function (credentials stored securely as secrets)
    try {
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
            throw new Error(`Edge Function retornou erro ${response.status}`);
        }

        const data = await response.json();
        cachedToken = data.token;
        cachedApiBaseUrl = data.apiBaseUrl;
        tokenExpirationTime = Date.now() + 55 * 60 * 1000;

        if (!cachedToken || !cachedApiBaseUrl) {
            throw new Error('Resposta inválida da Edge Function.');
        }

        return { token: cachedToken, apiBaseUrl: cachedApiBaseUrl };
    } catch (error) {
        console.error('Erro ao obter token da API (produção):', error);
        throw error;
    }
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
