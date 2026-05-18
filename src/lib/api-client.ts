import { SupabaseClient } from '@supabase/supabase-js'
import md5 from 'md5'
import { cache } from 'react'
import { unstable_cache } from 'next/cache'


// TTL de 5 minutos para dados da API externa
const CACHE_TTL_SECONDS = 300

/**
 * Robust helper for calls to the SPObras legacy API via the 'proxy-sid' Edge Function.
 * This function abstracts authentication and isolates service credentials.
 * 
 * @param supabase Authenticated Supabase client.
 * @param path Relative path to the legacy API (e.g., '/api/Empreendimentos').
 * @param options Standard RequestInit options.
 * @returns The JSON response from the legacy API.
 * @throws Error if the proxy call fails or returns an error.
 */
export async function fetchFromProxy(path: string, options?: RequestInit) {
    const method = (options?.method as any) || 'GET';
    const cleanPath = path.startsWith('/') ? path : `/${path}`;

    try {
        // Proxied via Next.js Route Handler (server-side, same network as legacy API)
        // NOTE: The ternary operator precedence fix: wrap the condition correctly so
        // NEXT_PUBLIC_APP_URL takes priority when set, otherwise fall back to localhost.
        const appUrl = process.env.NEXT_PUBLIC_APP_URL
        const baseUrl = appUrl ? appUrl : 'http://localhost:3005';
        const targetUrl = `${baseUrl}/api/proxy-sid?path=${encodeURIComponent(cleanPath)}`;
        
        const internalKey = process.env.SUPABASE_SERVICE_ROLE_KEY || '';
        
        const res = await fetch(targetUrl, {
            method: method,
            headers: { 
                'Content-Type': 'application/json',
                'x-internal-key': internalKey
            },
            body: options?.body
        });

        if (!res.ok) {
            const errBody = await res.text().catch(() => '');
            console.error(`[fetchFromProxy] Error calling proxy-sid for ${cleanPath}:`, res.status, errBody);
            throw new Error(`Proxy error: ${res.statusText || 'Unknown error'}`);
        }

        const data = await res.json();
        return data;
    } catch (err: any) {
        console.error(`[fetchFromProxy] Exception calling proxy-sid for ${cleanPath}:`, err);
        throw err;
    }
}

export function generateUUID(str: string): string {
    if (!str) return '';
    const hash = md5(str);
    return `${hash.substring(0, 8)}-${hash.substring(8, 12)}-4${hash.substring(13, 16)}-8${hash.substring(17, 20)}-${hash.substring(20, 32)}`;
}

// Map SQL Server Empreendimento rows to Frontend Empreendimento type
function mapEmpreendimento(row: any) {
    const idEmp = row.idEmpreendimento ?? row.IdEmpreendimento;
    const nome = row.nmEmpreendimento ?? row.NmEmpreendimento;
    const descricao = row.nmDescricao ?? row.NmDescricao;
    const endereco = row.nmEndereco ?? row.NmEndereco;
    const idFase = row.idFase ?? row.IdFase;
    const vlEstimado = row.vlEstimado ?? row.VlEstimado;
    const idPrograma = row.idPrograma ?? row.IdPrograma;
    const idDistrito = row.idDistrito ?? row.IdDistrito;
    const idGestor = row.idGestor ?? row.IdGestor;
    const nmFase = row.nmFase ?? row.NmFase;

    return {
        id: generateUUID(`empreendimento-${idEmp}`),
        nome: nome,
        codigo: idEmp ? idEmp.toString() : null,
        descricao: descricao ? descricao.trim() : null,
        localizacao: endereco ? endereco.trim() : null,
        status: idFase ? idFase.toString() : null,
        status_nome: nmFase ? nmFase.trim() : null,
        valor_total: vlEstimado || 0,
        id_programa: idPrograma,
        id_distrito: idDistrito,
        gerencia: idGestor ? idGestor.toString() : null,
        gerencia_id: idGestor ?? null,
        programa: null,
        subprefeitura: null,
        data_inicio: null,
        data_fim: null,
        created_at: new Date().toISOString(),
        created_by: null,
        updated_at: new Date().toISOString()
    }
}

/**
 * Mapeamento ultra-leve para listas de seleção
 */
function mapEmpreendimentoSelection(row: any) {
    const idEmp = row.idEmpreendimento ?? row.IdEmpreendimento;
    const nome = row.nmEmpreendimento ?? row.NmEmpreendimento;
    return {
        id: generateUUID(`empreendimento-${idEmp}`),
        nome: nome,
        codigo: idEmp ? idEmp.toString() : null
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Generic pagination utility — handles all legacy API endpoints
// ─────────────────────────────────────────────────────────────────────────────

interface FetchAllPagesOptions {
    /** Query param name for the page number, e.g. 'pagina' */
    pageParam?: string
    /** Query param name for the page size, e.g. 'quantidade' */
    pageSizeParam?: string
    /** Number of items per page — the API hard cap is 1000 */
    pageSize?: number
    /**
     * If the response is a wrapped object, the field that contains the items array.
     * Set to null if the API returns a plain array at the root.
     * Multiple candidates can be listed: the first truthy field wins.
     */
    itemsFields?: string[]
    /** Optional response field that contains the total record count */
    totalField?: string
    /** Safety cap: never fetch more than this many pages (default 50 = 50 000 records) */
    maxPages?: number
}

/**
 * Generic paginator for the SPObras legacy API.
 *
 * Strategy:
 *  - If the API response contains a `totalField`, all remaining pages are fetched
 *    in parallel (fast path).
 *  - Otherwise pages are fetched sequentially until a short page signals the end.
 *  - On any individual page error the records collected so far are returned
 *    (partial is better than empty).
 */
async function fetchAllPages<T = any>(
    basePath: string,
    options: FetchAllPagesOptions = {}
): Promise<T[]> {
    const {
        pageParam     = 'pagina',
        pageSizeParam = 'quantidade',
        pageSize      = 1000,
        itemsFields   = ['itens', 'value', 'data', 'Itens', 'Items', 'Value', 'Data'],
        totalField,
        maxPages      = 50,
    } = options

    /** Extract the items array from whatever shape the response comes in. */
    function extractItems(res: any): T[] {
        if (Array.isArray(res)) return res as T[]
        if (!res) return []
        for (const field of itemsFields) {
            if (Array.isArray(res[field])) return res[field] as T[]
        }
        // If it's a single object that matches the type but isn't an array, 
        // some endpoints might return a single item instead of a list.
        return []
    }

    function buildPath(page: number): string {
        const sep = basePath.includes('?') ? '&' : '?'
        return `${basePath}${sep}${pageParam}=${page}&${pageSizeParam}=${pageSize}`
    }

    const allItems: T[] = []
    const seenHashes = new Set<string>()

    // ── Fetch page 1 ──────────────────────────────────────────────────────────
    let firstRes: any
    try {
        firstRes = await fetchFromProxy(buildPath(1))
    } catch (err) {
        console.error(`[fetchAllPages] ${basePath}: failed to fetch page 1`, err)
        return allItems
    }

    const firstItems = extractItems(firstRes)
    if (firstItems.length > 0) {
        allItems.push(...firstItems)
        const hash = md5(JSON.stringify(firstItems))
        seenHashes.add(hash)
    }

    console.log(`[fetchAllPages] ${basePath}: page 1 — ${firstItems.length} items`)

    if (firstItems.length === 0) {
        return allItems
    }

    // ── Determine remaining pages ─────────────────────────────────────────────
    // Try to find a total count field if not explicitly provided
    const actualTotalField = totalField || ['total', 'count', 'totalItens', 'totalRegistros', '@odata.count'].find(f => firstRes?.[f] != null)

    if (actualTotalField && firstRes?.[actualTotalField] != null) {
        const total = Number(firstRes[actualTotalField])
        const totalPages = Math.min(Math.ceil(total / pageSize), maxPages)
        
        if (totalPages > 1) {
            console.log(`[fetchAllPages] ${basePath}: ${total} total records — fetching pages 2–${totalPages} in parallel`)

            const remaining = await Promise.allSettled(
                Array.from({ length: totalPages - 1 }, (_, i) => fetchFromProxy(buildPath(i + 2)))
            )

            for (let i = 0; i < remaining.length; i++) {
                const result = remaining[i]
                if (result.status === 'fulfilled') {
                    const items = extractItems(result.value)
                    allItems.push(...items)
                } else {
                    console.error(`[fetchAllPages] ${basePath}: page ${i + 2} failed`, result.reason)
                    break
                }
            }
        }
    } else {
        // Sequential path
        let currentPage = 2
        while (currentPage <= maxPages) {
            let res: any
            try {
                res = await fetchFromProxy(buildPath(currentPage))
            } catch (err) {
                console.error(`[fetchAllPages] ${basePath}: page ${currentPage} failed`, err)
                break
            }
            
            const items = extractItems(res)
            if (items.length === 0) break
            
            // Duplicate detection: if the API returns the same data for every page 
            // (common if it doesn't support pagination), stop to avoid infinite loops.
            const hash = md5(JSON.stringify(items))
            if (seenHashes.has(hash)) {
                console.log(`[fetchAllPages] ${basePath}: duplicate items detected on page ${currentPage}, stopping.`)
                break
            }
            seenHashes.add(hash)

            allItems.push(...items)
            console.log(`[fetchAllPages] ${basePath}: page ${currentPage} — ${items.length} items (total: ${allItems.length})`)
            
            if (items.length < (pageSize * 0.5)) {
                // If we get a very small page, it's likely the end, even if not zero.
                // But let's be conservative and only break on 0 as per previous logic.
            }
            
            currentPage++
        }
    }

    console.log(`[fetchAllPages] ${basePath}: complete — ${allItems.length} total records`)
    return allItems
}

// ─────────────────────────────────────────────────────────────────────────────
// Cached internal fetchers
// ─────────────────────────────────────────────────────────────────────────────

const fetchApiEmpreendimentos = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            return await fetchAllPages('/api/Empreendimentos', { pageSize: 1000 })
        } catch (err) {
            console.error('[fetchApiEmpreendimentos] Failed to fetch data from Proxy.', err)
            return []
        }
    },
    ['empreendimentos', 'all', 'v3'],
    { revalidate: 600, tags: ['api-empreendimentos'] }
)

const fetchApiEmpenhosGeral = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            return await fetchAllPages('/api/Empenhos', { pageSize: 1000 })
        } catch (err) {
            console.error('[fetchApiEmpenhosGeral] Failed to fetch from Proxy.', err)
            return []
        }
    },
    ['api-empenhos-geral-v1'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-empenhos'] }
)


const fetchApiContratos = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            return await fetchAllPages('/api/Contratos', { pageSize: 1000 })
        } catch (err) {
            console.error('[fetchApiContratos] Failed to fetch from Proxy.', err)
            return []
        }
    },
    ['api-contratos-v6'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-contratos'] }
)

const fetchApiContratoEmpreendimentos = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            return await fetchAllPages('/api/ContratoEmpreendimentos', { pageSize: 1000 })
        } catch (err) {
            console.warn('[fetchApiContratoEmpreendimentos] Failed to fetch from Proxy.', err)
            return []
        }
    },
    ['api-contrato-empreendimentos-v6'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-contrato-empreendimentos'] }
)

const fetchApiProgramas = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<{ id: number; nome: string }[]> => {
        const { createClient } = await import('@supabase/supabase-js')
        const sb = createClient(supabaseUrl, supabaseKey)
        try {
            const data = await fetchFromProxy('/api/Programas')
            return Array.isArray(data)
                ? data.map((row: any) => ({
                    id: row.idPrograma ?? row.IdPrograma ?? row.id ?? row.Id,
                    nome: (row.nmPrograma ?? row.NmPrograma ?? row.nome ?? row.Nome ?? '').trim()
                }))
                : []
        } catch (err) {
            console.error('[fetchApiProgramas] Failed to fetch from Proxy.', err)
            return []
        }
    },
    ['api-programas-v2'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-programas'] }
)

const fetchMergedEmpreendimentosSelection = unstable_cache(
    async (role: string, supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            const rawData = await fetchApiEmpreendimentos(role, supabaseUrl, supabaseKey)
            const list = Array.isArray(rawData) ? rawData : []
            const apiEmps = list.map(mapEmpreendimentoSelection)
            return apiEmps
                .filter((e: any) => !e.nome?.toUpperCase().includes('TESTE'))
                .sort((a, b) => (a.nome || '').localeCompare(b.nome || ''))
        } catch (err) {
            console.error('[fetchMergedEmpreendimentosSelection] Error:', err)
            return []
        }
    },
    ['api-only-empreendimento-selection-v12'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['empreendimentos', 'api-empreendimentos'] }
)

const fetchMergedEmpreendimentos = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string, role: string): Promise<any[]> => {
        const { createClient } = await import('@supabase/supabase-js')
        const sb = createClient(supabaseUrl, supabaseKey)

        try {
            const [apiResult, localResult] = await Promise.allSettled([
                fetchApiEmpreendimentos(role, supabaseUrl, supabaseKey),
                sb.from('empreendimentos').select('*').limit(5000)
            ])

            const rawData = apiResult.status === 'fulfilled' ? apiResult.value : []
            const localData = (localResult.status === 'fulfilled' && !(localResult.value as any).error) 
                ? (localResult.value as any).data 
                : []

            const apiEmps = Array.isArray(rawData) ? rawData.map(mapEmpreendimento) : []
            const localEmps = localData || []

            const mergedMap = new Map()
            const apiByCodeMap = new Map()
            
            apiEmps.forEach((e: any) => {
                if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;
                mergedMap.set(e.id, e)
                if (e.codigo) apiByCodeMap.set(String(e.codigo), e)
            })
            
            localEmps.forEach((e: any) => {
                if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;
                
                let existing = mergedMap.get(e.id)
                if (!existing && e.codigo) {
                    const apiE = apiByCodeMap.get(String(e.codigo))
                    if (apiE) {
                        // Re-key the API item to use the local DB's UUID
                        mergedMap.delete(apiE.id)
                        existing = apiE
                        mergedMap.set(e.id, existing)
                    }
                }
                
                if (existing) {
                    // FIX D: API data is the source of truth. Enrich with local metadata without overwriting core fields with null/empty.
                    const enriched = { ...existing }
                    for (const key of Object.keys(e)) {
                        if (e[key] !== null && e[key] !== undefined && e[key] !== '') {
                            // Only override if it's explicitly a local metadata field like anotacoes, or if API doesn't have it
                            if (!enriched[key] || ['anotacoes', 'observacoes', 'tags'].includes(key)) {
                                enriched[key] = e[key]
                            }
                        }
                    }
                    mergedMap.set(e.id, enriched)
                } else {
                    // Restore fallback: if item doesn't exist in API, still include it from local DB
                    mergedMap.set(e.id, e)
                }
            })

            return Array.from(mergedMap.values())
        } catch (err) {
            console.error('[fetchMergedEmpreendimentos] Error:', err)
            return []
        }
    },
    ['merged-empreendimentos-list-v12'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['empreendimentos', 'api-empreendimentos'] }
)

const fetchServicosSummary = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<Record<string, { types: string[], subtypes: string[] }>> => {
        const { createClient } = await import('@supabase/supabase-js')
        const sb = createClient(supabaseUrl, supabaseKey)
        
        const { data: links } = await sb.from('empreendimento_contratos').select('empreendimento_id, contrato_id')
        const contractToEmps: Record<string, string[]> = {}
        if (links) {
            links.forEach(l => {
                if (l.contrato_id && l.empreendimento_id) {
                    if (!contractToEmps[l.contrato_id]) contractToEmps[l.contrato_id] = []
                    contractToEmps[l.contrato_id].push(l.empreendimento_id)
                }
            })
        }

        let allData: any[] = []
        let from = 0
        const step = 1000
        let hasMore = true
        
        while (hasMore) {
            const { data, error } = await sb.from('servicos')
                .select('empreendimento_id, contrato_id, tipo, subtipo_ambiental, subtipo_receita')
                .range(from, from + step - 1)
            
            if (error || !data || data.length === 0) {
                hasMore = false
                break
            }
            
            allData = [...allData, ...data]
            if (data.length < step) hasMore = false
            else from += step
        }
        
        const result: Record<string, { types: string[], subtypes: string[] }> = {}
        const addToProject = (empId: string, s: any) => {
            if (!result[empId]) result[empId] = { types: [], subtypes: [] }
            if (s.tipo && !result[empId].types.includes(s.tipo)) result[empId].types.push(s.tipo)
            const subs = [
                ...(Array.isArray(s.subtipo_ambiental) ? s.subtipo_ambiental : []),
                ...(Array.isArray(s.subtipo_receita) ? s.subtipo_receita : [])
            ]
            subs.forEach(sub => {
                if (sub && !result[empId].subtypes.includes(sub)) result[empId].subtypes.push(sub)
            })
        }

        allData.forEach(s => {
            if (s.empreendimento_id) addToProject(s.empreendimento_id, s)
            if (s.contrato_id && contractToEmps[s.contrato_id]) {
                contractToEmps[s.contrato_id].forEach(empId => addToProject(empId, s))
            }
        })
        return result
    },
    ['servicos-summary-v27'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['servicos', 'empreendimentos', 'empreendimento_contratos'] }
)

// ─────────────────────────────────────────────────────────────────────────────
// Funções públicas
// ─────────────────────────────────────────────────────────────────────────────

export const getEmpreendimentos = cache(async (
    supabase: SupabaseClient, 
    options?: { 
        search?: string, 
        status?: string, 
        programa?: string,
        tipo_servico?: string,
        page?: number,
        pageSize?: number
    }
) => {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    let list = await fetchMergedEmpreendimentos(supabaseUrl, supabaseKey, role)
    const servicosMap = await fetchServicosSummary(supabaseUrl, supabaseKey)

    const contratos = await getContratos(supabase)
    const links = await getContratoEmpreendimentos(supabase, list, contratos)
    
    const contratoMap = new Map((contratos || []).map(c => [c.id, c]))
    const linksByEmp = new Map<string, any[]>()
    ;(links || []).forEach(l => {
        const arr = linksByEmp.get(l.empreendimento_id) || []
        arr.push(l)
        linksByEmp.set(l.empreendimento_id, arr)
    })

    list = list.map(e => {
        const empLinks = linksByEmp.get(e.id) || []
        const totalContratos = empLinks.reduce((sum, link) => {
            const c = contratoMap.get(link.contrato_id)
            return sum + (Number(c?.valor_total) || 0)
        }, 0)
        return {
            ...e,
            valor_total: totalContratos > 0 ? totalContratos : e.valor_total
        }
    })

    if (options?.search) {
        const s = options.search.toLowerCase()
        list = list.filter(e => 
            (e.nome && e.nome.toLowerCase().includes(s)) || 
            (e.codigo && e.codigo.toLowerCase().includes(s))
        )
    }

    if (options?.status && options.status !== 'all') list = list.filter(e => e.status === options.status)
    if (options?.programa && options.programa !== 'all') list = list.filter(e => String(e.id_programa) === options.programa)

    const countAmbiental = list.filter(e => {
        const s = servicosMap[e.id]
        return s && s.types.some(t => t?.toLowerCase().includes('ambi'))
    }).length

    const countDesaprop = list.filter(e => {
        const s = servicosMap[e.id]
        const hasDesapropInName = e.nome && e.nome.toLowerCase().includes('desaprop')
        const hasDesapropService = s && (
            s.types.some(t => t?.toLowerCase().includes('desaprop') || t?.toLowerCase().includes('expropri')) || 
            s.subtypes.some(sub => sub?.toLowerCase().includes('desaprop') || sub?.toLowerCase().includes('material exp'))
        )
        return hasDesapropInName || hasDesapropService
    }).length

    if (options?.tipo_servico && options.tipo_servico !== 'all') {
        const selectedTypes = options.tipo_servico.split(',')
        list = list.filter(e => {
            const summary = servicosMap[e.id]
            if (!summary) return false
            return selectedTypes.some(type => {
                const typeLower = type.toLowerCase()
                if (typeLower.includes('ambi')) return summary.types.some(t => t?.toLowerCase().includes('ambi'))
                if (typeLower.includes('desaprop')) {
                    return summary.types.some(t => t?.toLowerCase().includes('desaprop') || t?.toLowerCase().includes('expropri')) || 
                           summary.subtypes.some(s => s?.toLowerCase().includes('desaprop') || s?.toLowerCase().includes('material exp'))
                }
                return summary.types.includes(type)
            })
        })
    }

    list = list.map(e => {
        const summary = servicosMap[e.id]
        return { ...e, tipos_servico: summary?.types || [], subtipos_servico: summary?.subtypes || [] }
    })

    const totalCount = list.length
    const uniquePhasesMap = new Map<string, { id: string, nome: string }>()
    const fullDataset = await fetchMergedEmpreendimentos(supabaseUrl, supabaseKey, role)
    fullDataset.forEach(e => {
        if (e.status && e.status_nome) {
            uniquePhasesMap.set(String(e.status), { id: String(e.status), nome: String(e.status_nome).trim() })
        }
    })
    const fases = Array.from(uniquePhasesMap.values()).sort((a, b) => a.nome.localeCompare(b.nome))

    if (options?.page && options?.pageSize) {
        const from = (options.page - 1) * options.pageSize
        const to = from + options.pageSize
        list = list.slice(from, to)
    }

    return { data: list, count: totalCount, fases, ambientaisCount: countAmbiental, desapropCount: countDesaprop }
})

export const getEmpreendimentosSelectionList = cache(async (supabase: SupabaseClient) => {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
    return fetchMergedEmpreendimentosSelection(role, supabaseUrl, supabaseKey)
})

export async function getEmpreendimentoById(supabase: SupabaseClient, originalId: number | string) {
    try {
        const data = await fetchFromProxy(`/api/Empreendimentos/${originalId}`)
        return data ? mapEmpreendimento(data) : null
    } catch (err) {
        console.warn(`Failed to fetch Empreendimento ${originalId} from Proxy:`, err);
        return null;
    }
}

function mapContrato(row: any) {
    const idContrato = row.idContrato ?? row.IdContrato ?? row.idContratoSecretaria ?? row.IdContratoSecretaria;
    const rawNum = row.nmContrato ?? row.NmContrato;
    const num = (rawNum || '').trim();
    const objeto = row.nmObjeto ?? row.NmObjeto;
    const nmContratada = row.nmContratada ?? row.NmContratada;
    const idContratada = row.idContratada ?? row.IdContratada;
    const nmStatus = row.nmStatus ?? row.NmStatus;
    const idStatus = row.idStatus ?? row.IdStatus;
    const nmTipoContrato = row.nmTipoContrato ?? row.NmTipoContrato;
    const rawVlOriginal = row.vlContrato ?? row.VlContrato ?? row.valorContrato ?? row.vlrContrato ?? row.VlrContrato ?? row.valor_contratual ?? row.valor_original ?? 0;
    const rawVlAditamento = row.vlrAditamento ?? row.VlrAditamento ?? row.vlAditamento ?? row.VlAditamento ?? row.vlAditamentos ?? row.VlAditamentos ?? row.valor_aditamento ?? row.vlrAditado ?? row.vlAditado ?? 0;
    const rawVlTotal = row.vlTotalContrato ?? row.VlTotalContrato ?? row.valorTotalContrato ?? row.vlrTotalContrato ?? row.VlrTotalContrato ?? row.valor_total ?? 0;
    const rawVlReajuste = row.nmReajuste ?? row.NmReajuste ?? row.vlReajuste ?? row.VlReajuste ?? 0;
    const nmIndice = row.nmIndice ?? row.NmIndice ?? null;
    
    const valorOriginal = parseApiValue(rawVlOriginal);
    const valorAditamento = parseApiValue(rawVlAditamento);
    const valorReajuste = parseApiValue(rawVlReajuste);
    const apiValorTotal = parseApiValue(rawVlTotal);

    let valorTotal = valorOriginal + valorAditamento + valorReajuste;
    if (apiValorTotal > valorTotal) valorTotal = apiValorTotal;

    const dtInicio = row.dtInicioVigencia ?? row.DtInicioVigencia;
    const dtFim = row.dtTerminoVigencia ?? row.DtTerminoVigencia;

    return {
        id: generateUUID(`contrato-${num}`),
        _originalId: idContrato,
        numero: num,
        tipo: nmTipoContrato ? nmTipoContrato.trim() : null,
        objeto: objeto,
        contratada: nmContratada ? nmContratada.trim() : (idContratada ? `ID: ${idContratada}` : null),
        status: nmStatus ? nmStatus.trim() : (idStatus ? idStatus.toString() : null),
        valor_total: valorTotal,
        valor_aditamento: valorAditamento,
        valor_reajuste: valorReajuste,
        indice_reajuste: nmIndice,
        percentual_reajuste: nmIndice ? (nmIndice.match(/[\d,.]+%/)?.[0] || null) : null,
        indice_nome: nmIndice ? (nmIndice.replace(/[\d,.]+%\s*/, '').trim() || null) : null,
        valor_original: valorOriginal,
        data_inicio: dtInicio,
        data_fim: dtFim,
        contrato_pai_id: null,
        created_at: new Date().toISOString(),
        created_by: null,
        updated_at: new Date().toISOString()
    }
}

export const getContratos = cache(async (supabase: SupabaseClient) => {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    const [rawData, { data: localData }] = await Promise.all([
        fetchApiContratos(role, supabaseUrl, supabaseKey),
        supabase.from('contratos').select('*').limit(3000)
    ])

    const apiContratos = rawData.map(mapContrato)
    const localContratos = localData || []
    const mergedMap = new Map()
    apiContratos.forEach(c => mergedMap.set(c.id, c))

    localContratos.forEach(c => {
        let existing = mergedMap.get(c.id)
        if (!existing && c.numero) {
            const apiC = apiContratos.find(ac => ac.numero === c.numero)
            if (apiC) { mergedMap.delete(apiC.id); existing = apiC; }
        }
        if (existing) {
            const merged = { ...existing, ...c }
            if (existing.contratada && (!c.contratada || /^ID:\s*\d+$/i.test(c.contratada))) merged.contratada = existing.contratada
            if (existing.status && (!c.status || /^\d+$/.test(c.status))) merged.status = existing.status
            if (existing.tipo && (!c.tipo || /^\d+$/.test(c.tipo))) merged.tipo = existing.tipo
            merged._originalId = merged._originalId || existing._originalId
            mergedMap.set(c.id, merged)
        } else {
            mergedMap.set(c.id, c)
        }
    })
    return Array.from(mergedMap.values())
})

export const getProgramas = cache(async (supabase: SupabaseClient): Promise<{ id: number; nome: string }[]> => {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
    return fetchApiProgramas(role, supabaseUrl, supabaseKey)
})

export async function getContratoById(supabase: SupabaseClient, originalId: number | string) {
    try {
        const data = await fetchFromProxy(`/api/Contratos/${originalId}`)
        return data ? mapContrato(data) : null
    } catch (err) {
        console.warn(`Failed to fetch Contrato ${originalId} from Proxy:`, err);
        return null;
    }
}

export const getContratoEmpreendimentos = cache(async (supabase: SupabaseClient, empreendimentosList?: any[], contratosList?: any[]) => {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    const [rawData, { data: localLinks }] = await Promise.all([
        fetchApiContratoEmpreendimentos(role, supabaseUrl, supabaseKey),
        supabase.from('empreendimentos_contratos').select('*').limit(15000)
    ])

    const links: any[] = []
    const seenKeys = new Set<string>()
    const contratoByOriginalId = contratosList ? new Map(contratosList.map(c => [c._originalId, c.id])) : null

    if (Array.isArray(rawData)) {
        for (const row of rawData) {
            const idEmpreendimento = row.idEmpreendimento ?? row.IdEmpreendimento;
            const idContrato = row.idContrato ?? row.IdContrato;
            const uuidEmp = generateUUID(`empreendimento-${idEmpreendimento}`);
            const uuidContrato = contratoByOriginalId ? contratoByOriginalId.get(idContrato) : generateUUID(`contrato-${idContrato}`);

            if (uuidContrato) {
                const key = `${uuidEmp}::${uuidContrato}`
                seenKeys.add(key)
                links.push({ 
                    empreendimento_id: uuidEmp, 
                    contrato_id: uuidContrato, 
                    id_empreendimento_api: idEmpreendimento, // Adicionado para facilitar resolução em Lotes
                    idOrigem: row.idContratoEmpreendimento ?? row.IdContratoEmpreendimento 
                })
            }
        }
    }

    if (localLinks) {
        for (const link of localLinks) {
            const key = `${link.empreendimento_id}::${link.contrato_id}`
            if (!seenKeys.has(key)) { seenKeys.add(key); links.push(link); }
        }
    }
    return links
})

export async function getContratoAditamentos(supabase: SupabaseClient, contractOriginalId: number | string) {
    try {
        return await fetchAllPages(`/api/Contratos/${contractOriginalId}/Aditamentos`, { pageSize: 1000 })
    } catch (err) {
        console.warn(`Failed to fetch Aditamentos for Contrato ${contractOriginalId} from Proxy:`, err);
        return [];
    }
}

export async function getAllEmpenhos(supabase: SupabaseClient) {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    try {
        const data = await fetchApiEmpenhosGeral(role, supabaseUrl, supabaseKey)
        return data.map((row: any) => {
            const contractId = row.idContrato ?? row.IdContrato ?? row.idContratoOriginal ?? row.IdContratoOriginal ?? row.contratoId ?? row.ContratoId;
            return mapApiEmpenho(row, contractId);
        });
    } catch (err) {
        console.warn(`Failed to fetch all Empenhos from Proxy:`, err);
        return [];
    }
}

export async function getContractEmpenhos(supabase: SupabaseClient, contractOriginalId: number | string) {
    try {
        const data = await fetchAllPages(`/api/Contratos/${contractOriginalId}/Empenhos`, { pageSize: 1000 })
        return data.map((row: any) => mapApiEmpenho(row, contractOriginalId));
    } catch (err) {
        console.warn(`Failed to fetch Empenhos for Contrato ${contractOriginalId} from Proxy:`, err);
        return [];
    }
}

function mapApiEmpenho(row: any, contractOriginalId: number | string) {
    const numero = row.nrEmpenho ?? row.NrEmpenho ?? row.nmEmpenho ?? row.NmEmpenho ?? row.nrNotaEmpenho ?? row.NrNotaEmpenho ?? row.numero ?? row.Numero ?? row.numeroEmpenho ?? row.NumeroEmpenho ?? 'S/N';
    
    // Variations for Empenhado
    let rawValor = row.vlTotalEmpenhado ?? row.VlTotalEmpenhado ?? row.vlEmpenho ?? row.VlEmpenho ?? row.vlMovimento ?? row.VlMovimento ?? row.vlEmpenhado ?? row.VlEmpenhado ?? row.vlValor ?? row.VlValor ?? row.valor ?? row.Valor ?? row.valorEmpenho ?? row.valorEmpenhado ?? row.valor_empenhado ?? row.v1TotalEmpenhado ?? row.v1Empenho ?? row.v1Movimento ?? row.v1Empenhado ?? 0;
    
    // Variations for Liquidado (Sum of Exercicio + Restos)
    const rawPagoExercicio = parseApiValue(row.vlPagoExercicio ?? row.VlPagoExercicio ?? row.v1PagoExercicio ?? row.V1PagoExercicio ?? 0)
    const rawPagoRestos    = parseApiValue(row.vlPagoRestos ?? row.VlPagoRestos ?? row.v1PagoRestos ?? row.V1PagoRestos ?? 0)
    const rawLiquidado     = (rawPagoExercicio + rawPagoRestos) > 0
                               ? (rawPagoExercicio + rawPagoRestos)
                               : parseApiValue(row.vlLiquidado ?? row.VlLiquidado ?? row.vlPago ?? row.VlPago ?? row.v1Liquidado ?? row.V1Liquidado ?? row.v1Pago ?? row.V1Pago ?? row.valorLiquidado ?? row.valor_liquidado ?? row.liquidado ?? row.Liquidado ?? 0)
    
    // Variations for Cancelado
    let rawCancelado = row.vlCancelado ?? row.VlCancelado ?? row.vlEstorno ?? row.VlEstorno ?? row.v1Cancelado ?? row.V1Cancelado ?? row.v1Estorno ?? row.V1Estorno ?? row.valorCancelado ?? row.valor_cancelado ?? row.cancelado ?? row.Cancelado ?? 0;

    const valor = parseApiValue(rawValor);
    const valor_liquidado = parseApiValue(rawLiquidado);
    const valor_cancelado = parseApiValue(rawCancelado);
    const data = row.dtEmpenho ?? row.DtEmpenho ?? row.dtMovimento ?? row.DtMovimento ?? row.dtData ?? row.DtData ?? row.data ?? row.Data ?? row.dtEmissao ?? row.DtEmissao ?? null;
    
    // Calculate saldo and liquid locally if not provided
    const valor_liquido = parseApiValue(row.valorLiquido ?? row.valor_liquido ?? (valor - valor_cancelado));
    const valor_saldo = parseApiValue(row.saldo ?? row.Saldo ?? row.valorSaldo ?? row.valor_saldo ?? (valor_liquido - valor_liquidado));
    
    return {
        id: generateUUID(`empenho-api-${contractOriginalId}-${numero}-${data}`),
        numero: numero.toString(),
        valor: valor,
        valor_cancelado: valor_cancelado,
        valor_liquido: valor_liquido,
        valor_liquidado: valor_liquidado,
        valor_saldo: valor_saldo,
        data_empenho: data,
        tipo_vinculo: 'contrato' as const,
        vinculo_id: null,
        _contratoOriginalId: contractOriginalId,
        medicao_id: null,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
    }
}

export function parseApiValue(val: any): number {
    if (val === null || val === undefined || val === '') return 0;
    if (typeof val === 'number') return isNaN(val) ? 0 : val;
    if (typeof val === 'string') {
        let cleaned = val.replace(/[R$\s]/g, '');
        if (cleaned === '') return 0;
        if (cleaned.includes(',') && cleaned.includes('.')) cleaned = cleaned.replace(/\./g, '').replace(',', '.');
        else if (cleaned.includes(',')) cleaned = cleaned.replace(',', '.');
        const num = parseFloat(cleaned);
        return isNaN(num) ? 0 : num;
    }
    const n = Number(val);
    return isNaN(n) ? 0 : n;
}

export async function getEmpreendimentoNamesMap(): Promise<Record<string, string>> {
    const { getCurrentUserProfile } = await import('./auth-utils')
    const profile = await getCurrentUserProfile()
    const role = profile?.nivel_acesso || 'Analista'
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
    
    const apiData = await fetchApiEmpreendimentos(role, supabaseUrl, supabaseKey)
    const map: Record<string, string> = {}
    if (Array.isArray(apiData)) {
        apiData.forEach(row => {
            const id = row.idEmpreendimento ?? row.IdEmpreendimento
            const nome = row.nmEmpreendimento ?? row.NmEmpreendimento
            if (id && nome) map[id.toString()] = nome
        })
    }
    return map
}

export async function getContractMedicoes(supabase: SupabaseClient, contractOriginalId: number | string, namesMap?: Record<string, string>) {
    try {
        const data = await fetchAllPages(`/api/Contratos/${contractOriginalId}/Medicoes`, { pageSize: 1000 })
        return data.map((row: any) => mapApiMedicao(row, contractOriginalId, namesMap));
    } catch (err) {
        console.warn(`Failed to fetch Medicoes for Contrato ${contractOriginalId} from Proxy:`, err);
        return [];
    }
}

export async function getEmpreendimentoMedicoes(supabase: SupabaseClient, empOriginalId: number | string, namesMap?: Record<string, string>) {
    try {
        const data = await fetchAllPages(`/api/Empreendimentos/${empOriginalId}/Medicoes`, { pageSize: 1000 })
        return data.map((row: any) => mapApiMedicao(row, '0', namesMap)); // '0' as placeholder contract
    } catch (err) {
        console.warn(`Failed to fetch Medicoes for Empreendimento ${empOriginalId} from Proxy:`, err);
        return [];
    }
}


function mapApiMedicao(row: any, contractOriginalId: number | string, namesMap?: Record<string, string>) {
    const idMedicao = row.idMedicao ?? row.IdMedicao;
    const idContrato = row.idContrato ?? row.IdContrato;
    const idEmpreendimento = row.idEmpreendimento ?? row.IdEmpreendimento;
    let nmEmpreendimento = row.nmEmpreendimento ?? row.NmEmpreendimento ?? row.nmObra ?? row.NmObra ?? row.dsEmpreendimento ?? row.DsEmpreendimento ?? null;
    if (!nmEmpreendimento && idEmpreendimento && namesMap) nmEmpreendimento = namesMap[idEmpreendimento.toString()] || null;
    
    // Usar vlTotal da API como fonte primária (valor consolidado oficial)
    const rawTotal = row.vlTotal ?? row.VlTotal ?? row.vlTotalMedicao ?? row.VlTotalMedicao ?? row.v1Total ?? row.V1Total ?? null
    
    const valor = rawTotal !== null && rawTotal !== undefined
      ? parseApiValue(rawTotal)
      : parseApiValue(row.vlP0 ?? row.v1P0 ?? row.VlP0 ?? row.V1P0 ?? 0) 
        + parseApiValue(row.vlReajuste ?? row.v1Reajuste ?? row.VlReajuste ?? row.V1Reajuste ?? 0)
        + parseApiValue(row.vlGerenciamento ?? row.v1Gerenciamento ?? row.VlGerenciamento ?? row.V1Gerenciamento ?? 0)
        + parseApiValue(row.vlRepasse ?? row.v1Repasse ?? row.VlRepasse ?? row.V1Repasse ?? 0)

    const valor_p0 = parseApiValue(row.vlP0 ?? row.v1P0 ?? row.VlP0 ?? row.V1P0 ?? 0)
    const valor_reajuste = parseApiValue(row.vlReajuste ?? row.v1Reajuste ?? row.VlReajuste ?? row.V1Reajuste ?? 0)
    const valor_gerenciamento = parseApiValue(row.vlGerenciamento ?? row.v1Gerenciamento ?? row.VlGerenciamento ?? row.V1Gerenciamento ?? 0)
    const valor_repasse = parseApiValue(row.vlRepasse ?? row.v1Repasse ?? row.VlRepasse ?? row.V1Repasse ?? 0)
    
    return {
        id: generateUUID(`medicao-api-${contractOriginalId}-${idMedicao}`),
        _originalId: idMedicao,
        idContrato,
        idEmpreendimento,
        nmEmpreendimento,
        numero: (row.nmNumeroMedicao ?? row.NmNumeroMedicao ?? row.numeroMedicao ?? 'S/N').toString(),
        valor_p0: valor_p0,
        valor_reajuste: valor_reajuste,
        valor_gerenciamento: valor_gerenciamento,
        valor_repasse: valor_repasse,
        valor_total: valor,
        data_inicio: row.dtInicioMedicao ?? row.DtInicioMedicao ?? null,
        data_fim: row.dtFimMedicao ?? row.DtFimMedicao ?? null,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
    }
}

/**
 * Busca os empreendimentos vinculados a um contrato específico via endpoint dedicado
 */
export async function getContratoEmpreendimentosPorContrato(contractOriginalId: number | string) {
    try {
        const data = await fetchFromProxy(`/api/ContratoEmpreendimentos/por-contrato/${contractOriginalId}`);
        return Array.isArray(data) ? data : [];
    } catch (err) {
        console.warn(`Failed to fetch ContratoEmpreendimentos for Contrato ${contractOriginalId} from Proxy:`, err);
        return [];
    }
}

