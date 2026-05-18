import { useState, useEffect, useMemo, useRef } from 'react'
import { getAditamentosDoLote } from '@/app/actions/aditamentos'

export interface MedicaoAgrupada {
    empreendimento_id: string
    empreendimento_nome: string
    empreendimento_codigo: string
    medicoes: any[]
    total_medido: number
}

function agruparMedicoesPorEmpreendimento(medicoes: any[]): MedicaoAgrupada[] {
    const grupos = new Map<string, MedicaoAgrupada>()

    for (const medicao of medicoes) {
        const key = medicao.empreendimento_id || medicao.idEmpreendimento?.toString() || 'sem-empreendimento'
        
        if (!grupos.has(key)) {
            grupos.set(key, {
                empreendimento_id: key,
                empreendimento_nome: medicao.empreendimentos?.nome ?? medicao.nmEmpreendimento ?? 'Empreendimento não identificado',
                empreendimento_codigo: medicao.empreendimentos?.codigo ?? '',
                medicoes: [],
                total_medido: 0,
            })
        }

        const grupo = grupos.get(key)!
        grupo.medicoes.push(medicao)
        grupo.total_medido += (Number(medicao.valor_medido || medicao.valor_total || medicao.vlTotal) || 0)
    }

    return Array.from(grupos.values())
}

export function useLoteDetalhe(
    loteId: string,
    contratosComOriginalId: { id: string; numero: string; _originalId: string | number }[] = [], 
    assignedEmps: { id: string, codigo?: string | null, nome?: string }[] = []
) {
    const [empenhos, setEmpenhos] = useState<{ data: any[], isLoading: boolean, error: any }>({ data: [], isLoading: false, error: null })
    const [medicoes, setMedicoes] = useState<{ data: any[], isLoading: boolean, error: any }>({ data: [], isLoading: false, error: null })
    const [aditamentos, setAditamentos] = useState<{ data: any[], isLoading: boolean, error: any }>({ data: [], isLoading: false, error: null })

    // Chaves de dependência extremamente estáveis
    const assignedEmpsKey = useMemo(
        () => (assignedEmps || []).map(e => e.id).sort().join(','),
        [JSON.stringify(assignedEmps)]
    )
    const contratosKey = useMemo(
        () => (contratosComOriginalId || []).map(c => String(c._originalId)).sort().join(','),
        [JSON.stringify(contratosComOriginalId)]
    )

    const lastFetchedKeyRef = useRef<string>("")

    useEffect(() => {
        if (!contratosKey) return;

        let isMounted = true;

        const loadData = async () => {
            console.log('[useLoteDetalhe] iniciando fetch', { loteId, contratosKey, assignedEmpsKey })
            
            setEmpenhos(prev => ({ ...prev, isLoading: true }))
            setMedicoes(prev => ({ ...prev, isLoading: true }))
            setAditamentos(prev => ({ ...prev, isLoading: true }))

            try {
                // Monta todas as requisições em paralelo
                const fetchPromises = contratosComOriginalId.flatMap(c => [
                    fetch(`/api/contrato-financeiro?contratoOriginalId=${c._originalId}&tipo=empenhos`)
                        .then(r => {
                            if (!r.ok) throw new Error(`Empenhos ${c._originalId}: ${r.status}`)
                            return r.json()
                        })
                        .then(j => (j.data || []).map((e: any) => ({ ...e, contrato_numero: c.numero }))),
                    fetch(`/api/contrato-financeiro?contratoOriginalId=${c._originalId}&tipo=medicoes`)
                        .then(r => {
                            if (!r.ok) throw new Error(`Medições ${c._originalId}: ${r.status}`)
                            return r.json()
                        })
                        .then(j => (j.data || []).map((m: any) => ({ ...m, contrato_numero: c.numero }))),
                ])

                const aditamentosPromise = getAditamentosDoLote(loteId)

                const [fetchResults, aditamentosData] = await Promise.all([
                    Promise.all(fetchPromises),
                    aditamentosPromise,
                ])

                if (isMounted) {
                    const allEmpenhos = fetchResults.filter((_, i) => i % 2 === 0).flat()
                    const allMedicoes = fetchResults.filter((_, i) => i % 2 !== 0).flat()

                    console.log('[useLoteDetalhe] raw counts', { empenhos: allEmpenhos.length, medicoes: allMedicoes.length })

                    const filtrarPorEmpreendimentosDoLote = (itens: any[]) => {
                        if (assignedEmps.length === 0) return itens;
                        
                        const validIds = new Set(assignedEmps.map(e => String(e.id)));
                        const validCodigos = new Set(assignedEmps.filter(e => e.codigo).map(e => String(e.codigo)));
                        const validNomes = new Set(assignedEmps.filter(e => e.nome).map(e => String(e.nome).trim().toLowerCase()));

                        return itens.filter(item => {
                            const itemId = String(item.idEmpreendimento || item.empreendimento_id || '');
                            const itemNome = String(item.empreendimentos?.nome || item.nmEmpreendimento || '').trim().toLowerCase();
                            
                            if (itemId && (validIds.has(itemId) || validCodigos.has(itemId))) return true;
                            if (itemNome && validNomes.has(itemNome)) return true;
                            return false;
                        });
                    }

                    const filteredEmpenhos = filtrarPorEmpreendimentosDoLote(allEmpenhos);
                    const filteredMedicoes = filtrarPorEmpreendimentosDoLote(allMedicoes);
                    
                    console.log('[useLoteDetalhe] filtered counts', { empenhos: filteredEmpenhos.length, medicoes: filteredMedicoes.length })

                    setEmpenhos({ data: filteredEmpenhos, isLoading: false, error: null })
                    setMedicoes({ data: filteredMedicoes, isLoading: false, error: null })
                    
                    const filteredAditamentos = aditamentosData ? filtrarPorEmpreendimentosDoLote(aditamentosData) : [];
                    const aplicarFiltroAditamentos = aditamentosData && aditamentosData.length > 0 && 
                        (aditamentosData[0].idEmpreendimento || aditamentosData[0].empreendimento_id);
                        
                    setAditamentos({ 
                        data: aplicarFiltroAditamentos ? filteredAditamentos : aditamentosData, 
                        isLoading: false, 
                        error: null 
                    })
                }
            } catch (err: any) {
                console.error('[useLoteDetalhe] erro:', err)
                if (isMounted) {
                    setEmpenhos(prev => ({ ...prev, isLoading: false, error: err.message }))
                    setMedicoes(prev => ({ ...prev, isLoading: false, error: err.message }))
                    setAditamentos(prev => ({ ...prev, isLoading: false, error: err.message }))
                }
            }
        }

        loadData()

        return () => {
            isMounted = false
        }
    }, [loteId, contratosKey, assignedEmpsKey])

    const medicoesAgrupadas = useMemo(
        () => agruparMedicoesPorEmpreendimento(medicoes.data),
        [medicoes.data]
    )



    return { 
        empenhos, 
        medicoes, 
        medicoesAgrupadas, 
        aditamentos 
    }
}
