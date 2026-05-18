/**
 * DEPRECATED: This Edge Function is no longer used in production.
 * The proxy was moved to src/app/api/proxy-sid/route.ts (Next.js Route Handler)
 * because the legacy API at 187.44.105.2 is on a private network inaccessible
 * from Supabase Edge Runtime. Do not redeploy this function.
 * @deprecated since 2026-04-22
 */
import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.7'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos'

const ALLOWED_PATHS = [
  '/api/Empreendimentos',
  '/api/Contratos',
  '/api/ContratoEmpreendimentos',
]

// In-memory cache for the legacy JWT (per-instance)
let cachedToken: string | null = null
let tokenExpiresAt: number = 0

/**
 * Obtém o token da API legado usando credenciais de serviço armazenadas em Secrets.
 */
async function getLegacyToken() {
  if (cachedToken && Date.now() < tokenExpiresAt) {
    return cachedToken
  }

  const user = Deno.env.get('SPOBRAS_API_USER')
  const pass = Deno.env.get('SPOBRAS_API_PASS')

  if (!user || !pass) {
    throw new Error('SPOBRAS_API_USER or SPOBRAS_API_PASS not configured in Supabase Secrets')
  }

  const res = await fetch(`${SPOBRAS_API_URL}/api/Login`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ usuario: user, senha: pass }),
  })

  if (!res.ok) {
    throw new Error(`Legacy API Login failed: ${res.statusText}`)
  }

  const data = await res.json()
  if (!data.token) throw new Error('Legacy API returned success but no token found')

  cachedToken = data.token
  // Expira em 55 minutos para garantir segurança
  tokenExpiresAt = Date.now() + 55 * 60 * 1000

  return cachedToken
}

serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    // 1. Validar Autenticação do Chamador (Supabase JWT)
    const authHeader = req.headers.get('Authorization')
    if (!authHeader) {
      return new Response(JSON.stringify({ error: 'Missing Authorization header' }), {
        status: 401,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      })
    }

    const supabaseClient = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_ANON_KEY') ?? '',
      { global: { headers: { Authorization: authHeader } } }
    )

    const { data: { user }, error: authError } = await supabaseClient.auth.getUser()
    if (authError || !user) {
      console.error('Auth error:', authError)
      return new Response(JSON.stringify({ error: 'Unauthorized caller' }), {
        status: 401,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      })
    }

    // 2. Extrair e Validar Path
    const url = new URL(req.url)
    const path = url.searchParams.get('path')

    if (!path || !ALLOWED_PATHS.some(allowed => path.startsWith(allowed))) {
      return new Response(JSON.stringify({ error: 'Path not allowed or missing' }), {
        status: 403,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      })
    }

    // 3. Obter Token do Legado (Cacheado)
    const legacyToken = await getLegacyToken()

    // 4. Proxy do Request para o Legado
    // Nota: Apenas GET é suportado para estas rotas de listagem por segurança
    const proxyResponse = await fetch(`${SPOBRAS_API_URL}${path}`, {
      method: 'GET',
      headers: {
        'Authorization': `Bearer ${legacyToken}`,
        'Content-Type': 'application/json',
      },
    })

    if (!proxyResponse.ok) {
      console.error(`Legacy API error for ${path}:`, proxyResponse.status)
      return new Response(JSON.stringify({ error: `Legacy API returned ${proxyResponse.status}` }), {
        status: proxyResponse.status,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      })
    }

    // 5. Sanitizar Resposta
    // Retornamos apenas o corpo e o Content-Type, ignorando headers sensíveis do legado
    const responseBody = await proxyResponse.text()
    
    return new Response(responseBody, {
      status: 200,
      headers: {
        ...corsHeaders,
        'Content-Type': 'application/json',
      },
    })

  } catch (err) {
    console.error('Edge Function Error:', err.message)
    return new Response(JSON.stringify({ error: 'Internal Server Error', message: err.message }), {
      status: 500,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    })
  }
})
