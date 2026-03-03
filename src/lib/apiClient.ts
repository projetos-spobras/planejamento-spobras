export const API_BASE_URL = '/api/sql';
const USERNAME = 'ApiEmpreendimentos';
const PASSWORD = 'Empreendimentos2@26Service';

let cachedToken: string | null = null;
let tokenExpirationTime: number | null = null;

/**
 * Handles authentication and caches the JWT token from the SQL Server API.
 */
export async function getApiToken(): Promise<string> {
    // Return cached token if still valid
    if (cachedToken && tokenExpirationTime && Date.now() < tokenExpirationTime) {
        return cachedToken;
    }

    try {
        const response = await fetch(`${API_BASE_URL}/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario: USERNAME, senha: PASSWORD })
        });

        if (!response.ok) {
            throw new Error(`Falha na autenticação da API: ${response.status}`);
        }

        const data = await response.json();
        cachedToken = data.token || data.Token || data.access_token || data;

        // Set expiration to 55 minutes to be safe (assuming 1 hour expiration from most JWT defaults)
        tokenExpirationTime = Date.now() + 55 * 60 * 1000;

        if (!cachedToken) {
            throw new Error('Token não retornado pela API.');
        }

        return cachedToken;
    } catch (error) {
        console.error('Erro ao obter token da API de Empreendimentos:', error);
        throw error;
    }
}

/**
 * Generic fetch wrapper for the SQL Server API endpoints.
 */
export async function fetchApiData<T>(endpoint: string): Promise<T> {
    const token = await getApiToken();
    const response = await fetch(`${API_BASE_URL}${endpoint}`, {
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
