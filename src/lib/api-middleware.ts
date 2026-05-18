import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'
import { z } from 'zod'

// Simple in-memory rate limiter (Warning: resets on server restart, shared per Vercel instance)
const rateLimitMap = new Map<string, { count: number; resetAt: number }>()
const RATE_LIMIT_MAX = 100
const RATE_LIMIT_WINDOW_MS = 60 * 1000 // 1 minute

export type ApiHandlerConfig<TParams extends z.ZodTypeAny, TBody extends z.ZodTypeAny> = {
    /** Zod schema to validate URL Search Parameters */
    paramsSchema?: TParams
    /** Zod schema to validate JSON request body */
    bodySchema?: TBody
    /** The actual route handler logic */
    handler: (context: {
        req: NextRequest
        user: any // Supabase User type
        params: z.infer<TParams>
        body: z.infer<TBody>
    }) => Promise<NextResponse>
}

/**
 * A Higher-Order wrapper for Next.js Route Handlers to enforce security baselines.
 * 
 * Applies the following rules:
 * 1. Validates the Supabase session -> 401 if unauthenticated.
 * 2. Validates inputs with Zod -> 400 with structured errors.
 * 3. Centralized try/catch to prevent raw database errors leaking -> 500.
 * 4. In-memory Rate Limiting based on IP -> 429.
 * 5. CSRF Protection for mutating ops (POST/PUT/DELETE) via Origin check -> 403.
 */
export function withAuth<
    TParams extends z.ZodTypeAny = z.ZodTypeAny,
    TBody extends z.ZodTypeAny = z.ZodTypeAny
>(config: ApiHandlerConfig<TParams, TBody>) {
    return async function (request: NextRequest): Promise<NextResponse> {
        try {
            // 1. Rate Limiting
            const ip = request.headers.get('x-forwarded-for') || 'unknown'
            const now = Date.now()
            const rateData = rateLimitMap.get(ip)

            if (rateData) {
                if (now > rateData.resetAt) {
                    rateLimitMap.set(ip, { count: 1, resetAt: now + RATE_LIMIT_WINDOW_MS })
                } else {
                    rateData.count++
                    if (rateData.count > RATE_LIMIT_MAX) {
                        return NextResponse.json({ error: 'Too many requests' }, { status: 429 })
                    }
                }
            } else {
                rateLimitMap.set(ip, { count: 1, resetAt: now + RATE_LIMIT_WINDOW_MS })
            }

            // 2. CSRF for mutating ops
            const isMutating = ['POST', 'PUT', 'DELETE', 'PATCH'].includes(request.method)
            if (isMutating) {
                const origin = request.headers.get('origin')
                const host = request.headers.get('host')
                
                // If origin is present, it must include the host
                if (origin && host && !origin.includes(host)) {
                    return NextResponse.json({ error: 'Invalid Origin - CSRF protection' }, { status: 403 })
                }
                // In a stricter scenario, you might require origin to match exactly your NEXT_PUBLIC_SITE_URL
            }

            // 3. Session Validation
            const supabase = await createClient()
            const { data: { user }, error: authError } = await supabase.auth.getUser()

            if (authError || !user) {
                return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
            }

            // 4. Input Validation (Zod)
            let params = {} as any
            if (config.paramsSchema) {
                const searchParams = Object.fromEntries(new URL(request.url).searchParams.entries())
                const parsedParams = config.paramsSchema.safeParse(searchParams)
                if (!parsedParams.success) {
                    return NextResponse.json(
                        { error: 'Invalid query parameters', details: parsedParams.error.flatten() },
                        { status: 400 }
                    )
                }
                params = parsedParams.data
            }

            let body = {} as any
            if (config.bodySchema && isMutating) {
                try {
                    const jsonBody = await request.json()
                    const parsedBody = config.bodySchema.safeParse(jsonBody)
                    if (!parsedBody.success) {
                        return NextResponse.json(
                            { error: 'Invalid request body', details: parsedBody.error.flatten() },
                            { status: 400 }
                        )
                    }
                    body = parsedBody.data
                } catch (e) {
                     return NextResponse.json({ error: 'Invalid JSON body' }, { status: 400 })
                }
            }

            // Execute Handler
            return await config.handler({ req: request, user, params, body })

        } catch (error: any) {
            // 5. Centralized Error Handling
            console.error('[API Error]:', error)
            
            // Never return raw database errors or stack traces to the client
            return NextResponse.json(
                { error: 'An unexpected server error occurred.' },
                { status: 500 }
            )
        }
    }
}
