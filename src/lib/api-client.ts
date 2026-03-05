import { SupabaseClient } from '@supabase/supabase-js'
import md5 from 'md5'

interface CacheEntry<T> {
    data: T;
    timestamp: number;
}
const CACHE_TTL = 1000 * 60 * 5; // 5 minutos de cache

let apiEmpsCache: CacheEntry<any[]> | null = null;
let apiContratosCache: CacheEntry<any[]> | null = null;
let apiLinksCache: CacheEntry<any[]> | null = null;

function generateUUID(str: string): string {
    if (!str) return '';
    const hash = md5(str);
    return `${hash.substring(0, 8)}-${hash.substring(8, 12)}-4${hash.substring(13, 16)}-8${hash.substring(17, 20)}-${hash.substring(20, 32)}`;
}

export async function fetchFromProxy(supabase: SupabaseClient, path: string, options?: RequestInit) {
    const method = options?.method as 'GET' | 'POST' | 'PUT' | 'PATCH' | 'DELETE' | undefined;
    const { data, error } = await supabase.functions.invoke(`proxy-sql-api?path=${encodeURIComponent(path)}`, {
        method: method || 'GET',
        body: options?.body ? JSON.parse(options.body as string) : undefined
    })

    if (error) {
        console.error(`Error calling proxy-sql-api for ${path}:`, error)
        throw error
    }

    return data
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

export async function getEmpreendimentos(supabase: SupabaseClient) {
    let rawData: any[] = [];
    const now = Date.now();

    if (apiEmpsCache && (now - apiEmpsCache.timestamp < CACHE_TTL)) {
        rawData = apiEmpsCache.data;
    } else {
        const result = await fetchFromProxy(supabase, '/Empreendimentos').catch(() => []);
        rawData = Array.isArray(result) ? result : [];
        apiEmpsCache = { data: rawData, timestamp: now };
    }

    const { data: localData } = await supabase.from('empreendimentos').select('*').limit(3000);

    const apiEmps = rawData.map(mapEmpreendimento);
    const localEmps = localData || [];

    const mergedMap = new Map();
    apiEmps.forEach(e => mergedMap.set(e.id, e));
    localEmps.forEach(e => mergedMap.set(e.id, e)); // local overwrites api if collision

    return Array.from(mergedMap.values());
}

export async function getEmpreendimentoById(supabase: SupabaseClient, originalId: number | string) {
    const data = await fetchFromProxy(supabase, `/Empreendimentos/${originalId}`).catch((err) => {
        console.warn(`Failed to fetch Empreendimento ${originalId} from API:`, err);
        return null;
    })
    return data ? mapEmpreendimento(data) : null
}

function mapContrato(row: any) {
    const rawNum = row.nmContrato ?? row.NmContrato;
    const num = (rawNum || '').trim();
    const idSecretaria = row.idContratoSecretaria ?? row.IdContratoSecretaria;
    const objeto = row.nmObjeto ?? row.NmObjeto;
    const idContratada = row.idContratada ?? row.IdContratada;
    const idStatus = row.idStatus ?? row.IdStatus;
    const idTipo = row.idTipo ?? row.IdTipo;
    const vlContrato = row.vlContrato ?? row.VlContrato;
    const dtInicio = row.dtInicioVigencia ?? row.DtInicioVigencia;
    const dtFim = row.dtTerminoVigencia ?? row.DtTerminoVigencia;

    const uuid = generateUUID(`contrato-${num}`);

    return {
        id: uuid,
        _originalId: idSecretaria, // hidden property mapped for lookup
        numero: num,
        tipo: idTipo ? idTipo.toString() : null,
        objeto: objeto,
        contratada: idContratada ? `ID: ${idContratada}` : null,
        status: idStatus ? idStatus.toString() : null,
        valor_total: vlContrato || 0,
        data_inicio: dtInicio,
        data_fim: dtFim,
        contrato_pai_id: null,
        created_at: new Date().toISOString(),
        created_by: null,
        updated_at: new Date().toISOString()
    }
}

export async function getContratos(supabase: SupabaseClient) {
    let rawData: any[] = [];
    const now = Date.now();

    if (apiContratosCache && (now - apiContratosCache.timestamp < CACHE_TTL)) {
        rawData = apiContratosCache.data;
    } else {
        const result = await fetchFromProxy(supabase, `/Contratos`).catch(() => []);
        rawData = Array.isArray(result) ? result : [];
        apiContratosCache = { data: rawData, timestamp: now };
    }

    const { data: localData } = await supabase.from('contratos').select('*').limit(3000);

    const apiContratos = rawData.map(mapContrato);
    const localContratos = localData || [];

    const mergedMap = new Map();
    apiContratos.forEach(c => mergedMap.set(c.id, c));
    localContratos.forEach(c => mergedMap.set(c.id, c));

    return Array.from(mergedMap.values());
}

export async function getContratoById(supabase: SupabaseClient, originalId: number | string) {
    const data = await fetchFromProxy(supabase, `/Contratos/${originalId}`).catch((err) => {
        console.warn(`Failed to fetch Contrato ${originalId} from API:`, err);
        return null;
    })
    return data ? mapContrato(data) : null
}

export async function getContratoEmpreendimentos(supabase: SupabaseClient, empreendimentosList?: any[], contratosList?: any[]) {
    let rawData: any[] = [];
    const now = Date.now();

    if (apiLinksCache && (now - apiLinksCache.timestamp < CACHE_TTL)) {
        rawData = apiLinksCache.data;
    } else {
        try {
            const result = await fetchFromProxy(supabase, '/ContratoEmpreendimentos');
            rawData = Array.isArray(result) ? result : [];
            apiLinksCache = { data: rawData, timestamp: now };
        } catch (err) {
            console.warn('Failed to fetch ContratoEmpreendimentos from API:', err)
        }
    }

    const links = [];

    // Process API data if available
    if (Array.isArray(rawData) && rawData.length > 0) {
        for (const row of rawData) {
            const idEmpreendimento = row.idEmpreendimento ?? row.IdEmpreendimento;
            const idContrato = row.idContrato ?? row.IdContrato;
            const uuidEmp = generateUUID(`empreendimento-${idEmpreendimento}`);

            let uuidContrato = null;
            if (contratosList) {
                const matched = contratosList.find(c => c._originalId === idContrato);
                if (matched) uuidContrato = matched.id;
            } else {
                uuidContrato = generateUUID(`contrato-${idContrato}`);
            }

            if (uuidContrato) {
                links.push({
                    empreendimento_id: uuidEmp,
                    contrato_id: uuidContrato,
                    idOrigem: row.idContratoEmpreendimento ?? row.IdContratoEmpreendimento
                })
            }
        }
    }

    // Always fetch and merge from local Supabase database to ensure we don't lose custom relationships
    const { data: localLinks } = await supabase.from('empreendimentos_contratos').select('*').limit(15000);
    if (localLinks && localLinks.length > 0) {
        for (const link of localLinks) {
            // only push if it doesn't already exist (deduplication)
            const exists = links.some(l => l.empreendimento_id === link.empreendimento_id && l.contrato_id === link.contrato_id);
            if (!exists) {
                links.push(link);
            }
        }
    }

    return links;
}
