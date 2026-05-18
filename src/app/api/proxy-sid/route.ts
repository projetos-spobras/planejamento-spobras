import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

let legacyToken: { value: string; expiresAt: number } | null = null

const ALLOWED_PATHS = [
    '/api/Empreendimentos',
    '/api/Contratos',
    '/api/ContratoEmpreendimentos',
    '/api/Login',
    '/api/Programas',
    '/api/Empenhos',
    '/api/EmpenhoContratos',
    '/api/ContratoEmpenhos',
    '/api/ContratoMedicoes',
    '/api/Medicoes',
]

async function getLegacyToken() {
    if (legacyToken && legacyToken.expiresAt > Date.now() + 60000) {
        return legacyToken.value
    }

    const baseUrl = process.env.SPOBRAS_API_URL
    const username = process.env.SPOBRAS_API_USER
    const password = process.env.SPOBRAS_API_PASSWORD

    if (!baseUrl || !username || !password) {
        throw new Error('Configurações da API SPObras ausentes.')
    }

    const res = await fetch(`${baseUrl}/api/Login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ usuario: username, senha: password }),
    })

    if (!res.ok) {
        throw new Error(`Falha na autenticação da API legado: ${res.status}`)
    }

    const data = await res.json()
    const tokenStr = typeof data === 'string' ? data : data.token || data.access_token

    if (!tokenStr) {
        throw new Error('Token não encontrado na resposta.')
    }

    // Decode JWT exp claim
    const parts = tokenStr.split('.')
    if (parts.length !== 3) {
        throw new Error('Formato JWT inválido.')
    }

    const payloadRaw = Buffer.from(parts[1], 'base64').toString('utf8')
    const payload = JSON.parse(payloadRaw)

    // JWT exp is in seconds
    const exp = payload.exp ? payload.exp * 1000 : Date.now() + 3600000

    legacyToken = { value: tokenStr, expiresAt: exp }
    return legacyToken.value
}

export async function GET(request: Request) {
    return handleProxyRequest(request)
}

export async function POST(request: Request) {
    return handleProxyRequest(request)
}

async function handleProxyRequest(request: Request) {
    try {
        const url = new URL(request.url)
        const path = url.searchParams.get('path')

        // 1. Check for internal authentication (Service Role Key)
        const internalKey = request.headers.get('x-internal-key')
        const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY
        
        let isAuthenticated = false

        if (internalKey && serviceRoleKey && internalKey === serviceRoleKey) {
            isAuthenticated = true
        } else {
            // 2. Fall back to standard Supabase user authentication
            const supabase = await createClient()
            const { data: { user }, error: authError } = await supabase.auth.getUser()
            if (!authError && user) {
                isAuthenticated = true
            }
        }

        if (!isAuthenticated) {
            return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), {
                status: 401,
                headers: {
                    'Content-Type': 'application/json',
                    'X-Content-Type-Options': 'nosniff',
                    'Cache-Control': 'no-store',
                },
            })
        }

        // Security: check path prefix against whitelist (split on '?' to ignore query params)
        const pathWithoutQuery = path ? path.split('?')[0] : ''
        const isAllowed = ALLOWED_PATHS.some(allowed => pathWithoutQuery.startsWith(allowed))
        if (!path || !isAllowed) {
            return NextResponse.json({ error: 'Path not allowed' }, { status: 403 })
        }

        const token = await getLegacyToken()

        // Construct the target URL — path already includes query params decoded by searchParams.get()
        const targetUrl = `${process.env.SPOBRAS_API_URL}${path}`

        const controller = new AbortController()
        const timeoutId = setTimeout(() => controller.abort(), 30000) // 30s for large paginated responses

        const fetchOptions: RequestInit = {
            method: request.method,
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json',
            },
            signal: controller.signal,
        }

        if (request.method !== 'GET' && request.method !== 'HEAD') {
            const body = await request.text()
            if (body) fetchOptions.body = body
        }

        let legacyRes: Response
        try {
            legacyRes = await fetch(targetUrl, fetchOptions)
        } catch (error: any) {
            if (error.name === 'AbortError') {
                return new NextResponse(
                    JSON.stringify({ error: 'API SPObras temporariamente indisponível' }),
                    {
                        status: 503,
                        headers: {
                            'Content-Type': 'application/json',
                            'X-Content-Type-Options': 'nosniff',
                            'Cache-Control': 'no-store',
                        },
                    }
                )
            }
            throw error
        } finally {
            clearTimeout(timeoutId)
        }

        const responseText = await legacyRes.text()
        const statusCode = legacyRes.status

        if (!legacyRes.ok) {
            console.error(`[proxy-sid] Legacy API returned ${legacyRes.status} for ${path}`)
            return new NextResponse(
                JSON.stringify({ error: 'Erro na comunicação com o sistema legado.' }),
                {
                    status: statusCode,
                    headers: {
                        'Content-Type': 'application/json',
                        'X-Content-Type-Options': 'nosniff',
                        'Cache-Control': 'no-store',
                    },
                }
            )
        }

        return new NextResponse(responseText, {
            status: statusCode,
            headers: {
                'Content-Type': 'application/json',
                'X-Content-Type-Options': 'nosniff',
                'Cache-Control': 'no-store',
            },
        })
    } catch (error) {
        console.error('[proxy-sid] Internal Server Error:', error)
        return new NextResponse(
            JSON.stringify({ error: 'API SPObras temporariamente indisponível' }),
            {
                status: 503,
                headers: {
                    'Content-Type': 'application/json',
                    'X-Content-Type-Options': 'nosniff',
                    'Cache-Control': 'no-store',
                },
            }
        )
    }
}
