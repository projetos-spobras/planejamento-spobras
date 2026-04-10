import { SupabaseClient } from '@supabase/supabase-js'
import md5 from 'md5'
import { cache } from 'react'
import { unstable_cache } from 'next/cache'

// TTL de 5 minutos para dados da API externa
const CACHE_TTL_SECONDS = 300

const SPOBRAS_API_URL = 'http://187.44.105.2:8080/ApiEmpreendimentosContratos';

let cachedToken: string | null = null;
let tokenExpiresAt: number = 0;

export async function getSPObrasToken(): Promise<string> {
    if (cachedToken && Date.now() < tokenExpiresAt) {
        return cachedToken;
    }

    const payload = {
        usuario: 'ApiEmpreendimentos',
        senha: 'Empreendimentos2@26Service'
    };

    const response = await fetch(`${SPOBRAS_API_URL}/api/Login`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(payload)
    });

    if (!response.ok) {
        throw new Error(`Failed to get SPObras token: ${response.statusText}`);
    }

    const data = await response.json();
    if (!data.token) {
        throw new Error('SPObras API returned success but no token was found in the response body.');
    }
    
    cachedToken = data.token;
    // O token parece expirar em horas. Usamos 55 minutos (3300s) por segurança
    tokenExpiresAt = Date.now() + 55 * 60 * 1000;

    return cachedToken as string;
}

export async function fetchDirectlyFromSPObras(relativePath: string, options?: RequestInit) {
    const cleanPath = relativePath.startsWith('/') ? relativePath : `/${relativePath}`;
    const token = await getSPObrasToken();

    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 25000);

    try {
        const response = await fetch(`${SPOBRAS_API_URL}${cleanPath}`, {
            ...options,
            headers: {
                ...options?.headers,
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json'
            },
            signal: controller.signal
        });

        if (!response.ok) {
            throw new Error(`Direct SPObras fetch error for ${cleanPath}: ${response.status} ${response.statusText}`);
        }

        const data = await response.json();
        return data;
    } finally {
        clearTimeout(timeoutId);
    }
}

export function generateUUID(str: string): string {
    if (!str) return '';
    const hash = md5(str);
    return `${hash.substring(0, 8)}-${hash.substring(8, 12)}-4${hash.substring(13, 16)}-8${hash.substring(17, 20)}-${hash.substring(20, 32)}`;
}

/**
 * Helper robusto para chamadas à API via Edge Function Proxy.
 * Restaurado para 'proxy-sql-api' para manter a estabilidade do dashboard principal.
 */
export async function fetchFromProxy(supabase: SupabaseClient, relativePath: string, options?: RequestInit) {
    const method = (options?.method as 'GET' | 'POST' | 'PATCH' | 'DELETE' | 'PUT') || 'GET';
    const cleanPath = relativePath.startsWith('/') ? relativePath : `/${relativePath}`;

    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 25000);

    try {
        const { data, error } = await supabase.functions.invoke(`proxy-sql-api?path=${encodeURIComponent(cleanPath)}`, {
            method: method,
            body: options?.body ? JSON.parse(options.body as string) : undefined,
            signal: controller.signal
        })

        if (error) {
            console.error(`[fetchFromProxy] Error calling proxy-sql-api for ${cleanPath}:`, error)
            throw error
        }

        return data
    } catch (err) {
        console.error(`[fetchFromProxy] Error calling proxy-sql-api for ${cleanPath}:`, err)
        throw err
    } finally {
        clearTimeout(timeoutId);
    }
}

/**
 * Helper dedicado para o novo portal SID (uploadsex).
 * Utiliza o 'proxy-sid' com autenticação Bearer automática.
 */
export async function fetchFromSid(supabase: SupabaseClient, relativePath: string, options?: RequestInit) {
    const method = (options?.method as 'GET' | 'POST' | 'PATCH' | 'DELETE' | 'PUT') || 'GET';
    const cleanPath = relativePath.startsWith('/') ? relativePath : `/${relativePath}`;

    try {
        const { data, error } = await supabase.functions.invoke(`proxy-sid?path=${encodeURIComponent(cleanPath)}`, {
            method: method,
            body: options?.body ? JSON.parse(options.body as string) : undefined
        })

        if (error) {
            console.error(`[fetchFromSid] Error calling proxy-sid for ${cleanPath}:`, error)
            throw error
        }

        return data
    } catch (err) {
        console.error(`[fetchFromSid] Error calling proxy-sid for ${cleanPath}:`, err)
        throw err
    }
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

    return {
        id: generateUUID(`empreendimento-${idEmp}`),
        nome: nome,
        codigo: idEmp ? idEmp.toString() : null,
        descricao: descricao ? descricao.trim() : null,
        localizacao: endereco ? endereco.trim() : null,
        status: idFase ? idFase.toString() : null,
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
// Funções internas cacheadas com unstable_cache (persiste entre requests na Vercel)
// Usam apenas dados serializáveis (sem instância do supabase) via URL+key da env
// ─────────────────────────────────────────────────────────────────────────────

const fetchApiEmpreendimentos = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            const data = await fetchDirectlyFromSPObras('/api/Empreendimentos')
            return Array.isArray(data) ? data : []
        } catch (err) {
            console.error('[fetchApiEmpreendimentos] Failed to fetch data.', err)
            throw err
        }
    },
    ['api-empreendimentos-v9'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-empreendimentos'] }
)

/**
 * Busca contratos da API externa com cache persistente de 5 minutos.
 */
const fetchApiContratos = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            const data = await fetchDirectlyFromSPObras('/api/Contratos')
            return Array.isArray(data) ? data : []
        } catch (err) {
            console.error('[fetchApiContratos] Failed to fetch. Returning cached or empty.', err)
            return []
        }
    },
    ['api-contratos-v2'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-contratos'] }
)

/**
 * Busca links contrato-empreendimento da API com cache de 5 minutos.
 */
const fetchApiContratoEmpreendimentos = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            const data = await fetchDirectlyFromSPObras('/api/ContratoEmpreendimentos')
            return Array.isArray(data) ? data : []
        } catch (err) {
            console.warn('[fetchApiContratoEmpreendimentos] Failed to fetch.', err)
            return []
        }
    },
    ['api-contrato-empreendimentos-v2'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-contrato-empreendimentos'] }
)

/**
 * Busca programas da API com cache de 5 minutos.
 */
const fetchApiProgramas = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<{ id: number; nome: string }[]> => {
        try {
            const data = await fetchDirectlyFromSPObras('/api/Programas')
            return Array.isArray(data)
                ? data.map((row: any) => ({
                    id: row.idPrograma ?? row.IdPrograma ?? row.id ?? row.Id,
                    nome: (row.nmPrograma ?? row.NmPrograma ?? row.nome ?? row.Nome ?? '').trim()
                }))
                : []
        } catch (err) {
            console.error('[fetchApiProgramas] Failed to fetch.', err)
            return []
        }
    },
    ['api-programas'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['api-programas'] }
)

const fetchMergedEmpreendimentosSelection = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        try {
            // Reaproveita a busca pesada já cacheada
            const rawData = await fetchApiEmpreendimentos(supabaseUrl, supabaseKey)
            const list = Array.isArray(rawData) ? rawData : []
            
            const apiEmps = list.map(mapEmpreendimentoSelection)
            
            const finalResult = apiEmps
                .filter(e => !e.nome?.toUpperCase().includes('TESTE'))
                .sort((a, b) => (a.nome || '').localeCompare(b.nome || ''))

            return finalResult

        } catch (err) {
            console.error('[fetchMergedEmpreendimentosSelection] Critical error:', err)
            return []
        }
    },
    ['api-only-empreendimento-selection-v9'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['empreendimentos', 'api-empreendimentos'] }
)

const fetchMergedEmpreendimentos = unstable_cache(
    async (supabaseUrl: string, supabaseKey: string): Promise<any[]> => {
        const { createClient } = await import('@supabase/supabase-js')
        const sb = createClient(supabaseUrl, supabaseKey)

        try {
            // Melhorando resiliência: se um falhar, o outro ainda funciona
            const [apiResult, localResult] = await Promise.allSettled([
                fetchApiEmpreendimentos(supabaseUrl, supabaseKey),
                sb.from('empreendimentos').select('*').limit(5000)
            ])

            const rawData = apiResult.status === 'fulfilled' ? apiResult.value : []
            const localData = localResult.status === 'fulfilled' ? localResult.value.data : []

            if (apiResult.status === 'rejected') {
                console.warn('[fetchMergedEmpreendimentos] API Fetch failed during full merge.', apiResult.reason)
            }

            const apiEmps = Array.isArray(rawData) ? rawData.map(mapEmpreendimento) : []
            const localEmps = localData || []

            console.log(`[fetchMergedEmpreendimentos] API: ${apiEmps.length}, Local: ${localEmps.length}`)

            const mergedMap = new Map()
            const apiByCodeMap = new Map()
            
            apiEmps.forEach(e => {
                if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;
                mergedMap.set(e.id, e)
                if (e.codigo) apiByCodeMap.set(String(e.codigo), e)
            })
            
            localEmps.forEach(e => {
                if (e.nome && e.nome.toUpperCase().includes('TESTE')) return;
                let existing = mergedMap.get(e.id)
                if (!existing && e.codigo) {
                    const apiE = apiByCodeMap.get(String(e.codigo))
                    if (apiE) {
                        mergedMap.delete(apiE.id)
                        existing = apiE
                    }
                }
                if (existing) {
                    mergedMap.set(e.id, { ...existing, ...e })
                } else {
                    mergedMap.set(e.id, e)
                }
            })

            const result = Array.from(mergedMap.values())
            console.log(`[fetchMergedEmpreendimentos] Total Result: ${result.length}`)
            return result
        } catch (err) {
            console.error('[fetchMergedEmpreendimentos] Critical error during merge:', err)
            return []
        }
    },
    ['merged-empreendimentos-list-v9'],
    { revalidate: CACHE_TTL_SECONDS, tags: ['empreendimentos', 'api-empreendimentos'] }
)


// ─────────────────────────────────────────────────────────────────────────────
// Funções públicas com React.cache() para deduplicação intra-request
// ─────────────────────────────────────────────────────────────────────────────

export const getEmpreendimentos = cache(async (
    supabase: SupabaseClient, 
    options?: { 
        search?: string, 
        status?: string, 
        programa?: string,
        page?: number,
        pageSize?: number
    }
) => {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    // Obtém a lista completa do cache (super rápido)
    let list = await fetchMergedEmpreendimentos(supabaseUrl, supabaseKey)

    // Aplica filtros em memória (muito mais rápido que busca no banco se já estiver cacheado)
    if (options?.search) {
        const s = options.search.toLowerCase()
        list = list.filter(e => 
            (e.nome && e.nome.toLowerCase().includes(s)) || 
            (e.codigo && e.codigo.toLowerCase().includes(s))
        )
    }

    if (options?.status && options.status !== 'all') {
        list = list.filter(e => e.status === options.status)
    }

    if (options?.programa && options.programa !== 'all') {
        list = list.filter(e => String(e.id_programa) === options.programa)
    }

    // Calcula os indicadores sobre a lista COMPLETA antes da paginação
    const countAmbiental = list.filter(e => e.subtipo_ambiental).length;
    const countDesaprop = list.filter(e => e.nome && e.nome.toLowerCase().includes('desaprop')).length;
    const totalCount = list.length

    // Paginação
    if (options?.page && options?.pageSize) {
        const from = (options.page - 1) * options.pageSize
        const to = from + options.pageSize
        list = list.slice(from, to)
    }

    return {
        data: list,
        count: totalCount,
        ambientaisCount: countAmbiental,
        desapropCount: countDesaprop
    }
})


/**
 * Busca uma lista simplificada de TODOS os empreendimentos (id, nome, codigo)
 * Otimizada para Selects/Comboboxes onde o usuário precisa ver tudo.
 */
export const getEmpreendimentosSelectionList = cache(async (supabase: SupabaseClient) => {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    // Usamos a versão ultra-leve otimizada
    return fetchMergedEmpreendimentosSelection(supabaseUrl, supabaseKey)
})



export async function getEmpreendimentoById(supabase: SupabaseClient, originalId: number | string) {
    // Para buscas individuais, usamos o novo barramento SID direto
    const data = await fetchFromSid(supabase, `/api/Empreendimentos/${originalId}`).catch((err) => {
        console.warn(`Failed to fetch Empreendimento ${originalId} from API SID:`, err);
        return null;
    })
    return data ? mapEmpreendimento(data) : null
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

    // Business rule: Total = Original + Aditamentos + Reajuste
    let valorTotal = valorOriginal + valorAditamento + valorReajuste;
    if (apiValorTotal > valorTotal) {
        valorTotal = apiValorTotal;
    }

    const dtInicio = row.dtInicioVigencia ?? row.DtInicioVigencia;
    const dtFim = row.dtTerminoVigencia ?? row.DtTerminoVigencia;

    const uuid = generateUUID(`contrato-${num}`);

    return {
        id: uuid,
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

/**
 * getContratos — deduplica chamadas dentro do mesmo request com React.cache()
 * e usa unstable_cache para persistir resultado entre requests na Vercel.
 */
export const getContratos = cache(async (supabase: SupabaseClient) => {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    // Parallelize API (cacheada) + Supabase local
    const [rawData, { data: localData }] = await Promise.all([
        fetchApiContratos(supabaseUrl, supabaseKey),
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
            if (apiC) {
                mergedMap.delete(apiC.id)
                existing = apiC
            }
        }

        if (existing) {
            const merged = { ...existing, ...c }
            if (existing.contratada && (!c.contratada || /^ID:\s*\d+$/i.test(c.contratada))) {
                merged.contratada = existing.contratada
            }
            if (existing.status && (!c.status || /^\d+$/.test(c.status))) {
                merged.status = existing.status
            }
            if (existing.tipo && (!c.tipo || /^\d+$/.test(c.tipo))) {
                merged.tipo = existing.tipo
            }
            merged._originalId = merged._originalId || existing._originalId
            mergedMap.set(c.id, merged)
        } else {
            mergedMap.set(c.id, c)
        }
    })

    return Array.from(mergedMap.values())
})

/**
 * getProgramas — com cache persistente via unstable_cache.
 */
export const getProgramas = cache(async (supabase: SupabaseClient): Promise<{ id: number; nome: string }[]> => {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
    return fetchApiProgramas(supabaseUrl, supabaseKey)
})

export async function getContratoById(supabase: SupabaseClient, originalId: number | string) {
    const data = await fetchDirectlyFromSPObras(`/api/Contratos/${originalId}`).catch((err) => {
        console.warn(`Failed to fetch Contrato ${originalId} from API:`, err);
        return null;
    })
    return data ? mapContrato(data) : null
}

/**
 * getContratoEmpreendimentos — deduplica chamadas dentro do mesmo request com React.cache()
 * e usa unstable_cache para persistir resultado entre requests na Vercel.
 */
export const getContratoEmpreendimentos = cache(async (supabase: SupabaseClient, empreendimentosList?: any[], contratosList?: any[]) => {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    // Parallelize API (cacheada) + Supabase local
    const [rawData, { data: localLinks }] = await Promise.all([
        fetchApiContratoEmpreendimentos(supabaseUrl, supabaseKey),
        supabase.from('empreendimentos_contratos').select('*').limit(15000)
    ])

    const links: any[] = []
    const seenKeys = new Set<string>()

    const contratoByOriginalId = contratosList
        ? new Map(contratosList.map(c => [c._originalId, c.id]))
        : null

    if (Array.isArray(rawData) && rawData.length > 0) {
        for (const row of rawData) {
            const idEmpreendimento = row.idEmpreendimento ?? row.IdEmpreendimento;
            const idContrato = row.idContrato ?? row.IdContrato;
            const uuidEmp = generateUUID(`empreendimento-${idEmpreendimento}`);

            const uuidContrato = contratoByOriginalId
                ? (contratoByOriginalId.get(idContrato) ?? null)
                : generateUUID(`contrato-${idContrato}`);

            if (uuidContrato) {
                const key = `${uuidEmp}::${uuidContrato}`
                seenKeys.add(key)
                links.push({
                    empreendimento_id: uuidEmp,
                    contrato_id: uuidContrato,
                    idOrigem: row.idContratoEmpreendimento ?? row.IdContratoEmpreendimento
                })
            }
        }
    }

    if (localLinks && localLinks.length > 0) {
        for (const link of localLinks) {
            const key = `${link.empreendimento_id}::${link.contrato_id}`
            if (!seenKeys.has(key)) {
                seenKeys.add(key)
                links.push(link)
            }
        }
    }

    return links
})

export async function getContratoAditamentos(supabase: SupabaseClient, contractOriginalId: number | string) {
    const data = await fetchDirectlyFromSPObras(`/api/Contratos/${contractOriginalId}/Aditamentos`).catch((err) => {
        console.warn(`Failed to fetch Aditamentos for Contrato ${contractOriginalId} from API:`, err);
        return [];
    })
    
    return Array.isArray(data) ? data : [];
}

export async function getContractEmpenhos(supabase: SupabaseClient, contractOriginalId: number | string) {
    const data = await fetchDirectlyFromSPObras(`/api/Contratos/${contractOriginalId}/Empenhos`).catch((err) => {
        console.warn(`Failed to fetch Empenhos for Contrato ${contractOriginalId} from API:`, err);
        return [];
    })
    
    return Array.isArray(data) ? data.map((row: any) => mapApiEmpenho(row, contractOriginalId)) : [];
}

function mapApiEmpenho(row: any, contractOriginalId: number | string) {
    const numero = row.nrEmpenho ?? row.NrEmpenho ?? row.nmEmpenho ?? row.NmEmpenho ?? 
                   row.nrNotaEmpenho ?? row.NrNotaEmpenho ?? row.numero ?? row.Numero ?? 'S/N';
                   
    let rawValor = row.vlEmpenho ?? row.VlEmpenho ?? row.vlMovimento ?? row.VlMovimento ?? 
                     row.vlEmpenhado ?? row.VlEmpenhado ?? row.vlValor ?? row.VlValor ?? 
                     row.valor ?? row.Valor ?? 0;

    let rawLiquidado = row.vlLiquidado ?? row.VlLiquidado ?? row.vlPago ?? row.VlPago ?? 0;
    
    let rawCancelado = row.vlCancelado ?? row.VlCancelado ?? row.vlEstorno ?? row.VlEstorno ?? 0;

    if (parseApiValue(rawValor) === 0 || parseApiValue(rawLiquidado) === 0 || parseApiValue(rawCancelado) === 0) {
        for (const key in row) {
            const lowerKey = key.toLowerCase();
            const val = row[key];
            if (!val) continue;

            const parsed = parseApiValue(val);
            if (parsed === 0) continue;

            if (rawValor === 0 && (lowerKey.includes('vl') || lowerKey.includes('val') || lowerKey.includes('totalempenhado')) && !lowerKey.includes('liquid') && !lowerKey.includes('canc') && !lowerKey.includes('estorno')) {
                rawValor = parsed;
            }
            if (rawLiquidado === 0 && (lowerKey.includes('liquid') || lowerKey.includes('pago'))) {
                rawLiquidado = parsed;
            }
            if (rawCancelado === 0 && (lowerKey.includes('canc') || lowerKey.includes('estorno'))) {
                rawCancelado = parsed;
            }
        }
    }

    const valor = parseApiValue(rawValor);
    const valor_liquidado = parseApiValue(rawLiquidado);
    const valor_cancelado = parseApiValue(rawCancelado);
    const valor_liquido = valor - valor_cancelado;
    
    const data = row.dtEmpenho ?? row.DtEmpenho ?? row.dtMovimento ?? row.DtMovimento ?? 
                 row.dtData ?? row.DtData ?? row.data ?? row.Data ?? row.dtEmissao ?? row.DtEmissao ?? null;
    
    return {
        id: generateUUID(`empenho-api-${contractOriginalId}-${numero}-${data}`),
        numero: numero.toString(),
        valor: valor,
        valor_cancelado: valor_cancelado,
        valor_liquido: valor_liquido,
        valor_liquidado: valor_liquidado,
        data_empenho: data,
        tipo_vinculo: 'contrato' as const,
        vinculo_id: null,
        medicao_id: null,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
    }
}

export function parseApiValue(val: any): number {
    if (typeof val === 'number') return val;
    if (typeof val === 'string' && val.trim() !== '') {
        let cleaned = val.replace(/[R$\s]/g, '');
        if (cleaned.includes(',') && cleaned.includes('.')) {
            cleaned = cleaned.replace(/\./g, '').replace(',', '.');
        } else if (cleaned.includes(',')) {
            cleaned = cleaned.replace(',', '.');
        }
        const num = parseFloat(cleaned);
        return isNaN(num) ? 0 : num;
    }
    return Number(val) || 0;
}

export async function getContractMedicoes(supabase: SupabaseClient, contractOriginalId: number | string) {
    const data = await fetchDirectlyFromSPObras(`/api/Contratos/${contractOriginalId}/Medicoes`).catch((err) => {
        console.warn(`Failed to fetch Medicoes for Contrato ${contractOriginalId} from API:`, err);
        return [];
    })
    
    return Array.isArray(data) ? data.map((row: any) => mapApiMedicao(row, contractOriginalId)) : [];
}

function mapApiMedicao(row: any, contractOriginalId: number | string) {
    const idMedicao = row.idMedicao ?? row.IdMedicao;
    const idContrato = row.idContrato ?? row.IdContrato;
    const idEmpreendimento = row.idEmpreendimento ?? row.IdEmpreendimento;
    const numero = row.nmNumeroMedicao ?? row.NmNumeroMedicao ?? 'S/N';
    
    const vP0 = parseApiValue(row.vlP0 ?? row.VlP0 ?? row.v1P0 ?? row.V1P0 ?? 0);
    const vReajuste = parseApiValue(row.vlReajuste ?? row.VlReajuste ?? row.v1Reajuste ?? row.V1Reajuste ?? 0);
    const vGerenciamento = parseApiValue(row.vlGerenciamento ?? row.VlGerenciamento ?? row.v1Gerenciamento ?? row.V1Gerenciamento ?? 0);
    const vRepasse = parseApiValue(row.vlRepasse ?? row.VlRepasse ?? row.v1Repasse ?? row.V1Repasse ?? 0);
    
    const valor_total = vP0 + vReajuste + vGerenciamento + vRepasse;
    
    const dataFim = row.dtFimMedicao ?? row.DtFimMedicao ?? row.dtTerminoMedicao ?? row.DtTerminoMedicao ?? 
                    row.dtFim ?? row.DtFim ?? row.dataFim ?? row.DataFim ?? null;
    const dataInicio = row.dtInicioMedicao ?? row.DtInicioMedicao ?? row.dtInicio ?? row.DtInicio ?? 
                       row.dataInicio ?? row.DataInicio ?? null;

    return {
        id: generateUUID(`medicao-api-${contractOriginalId}-${idMedicao}-${numero}`),
        _originalId: idMedicao,
        idContrato,
        idEmpreendimento,
        numero: numero.toString(),
        valor_p0: vP0,
        valor_reajuste: vReajuste,
        valor_gerenciamento: vGerenciamento,
        valor_repasse: vRepasse,
        valor_total: valor_total,
        data_inicio: dataInicio,
        data_fim: dataFim,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
    }
}
