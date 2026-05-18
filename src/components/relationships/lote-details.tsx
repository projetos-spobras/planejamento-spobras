"use client"

import { useState, useMemo, useEffect, useCallback } from "react"
import { ExternalLink, ChevronDown, AlertTriangle, Info } from "lucide-react"
import Link from "next/link"
import { Skeleton } from "@/components/ui/skeleton"
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/components/ui/accordion"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Badge } from "@/components/ui/badge"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"

import { AssignLoteDialog } from "@/components/relationships/assign-lote-dialog"
import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"
import { RelatedMedicoesList, RelatedMedicao } from "@/components/relationships/related-medicoes-list"
import { fetchEmpenhosByContrato, fetchMedicoesCompletas, fetchMedicoesRescue } from "@/app/actions/lote-details-data"
import { ServicosTabContent } from "@/components/relationships/servicos-tab-content"
import { AditamentosTabContent } from "@/components/aditamentos/aditamentos-tab-content"
import { type Aditamento } from "@/app/actions/aditamentos"
import { Servico } from "@/types"
import { legacyIdToUUID } from "@/lib/legacy-id-utils"

interface LoteDetailsProps {
    lote: { id: string, nome: string, tipo: 'GERAL' | 'OAE' | 'ESCOLA' | null, descricao: string | null, contrato_id: string | null }
    contrato: { 
        id: string
        numero: string
        contratada: string
        valor_original?: number | null
        valor_aditamento?: number | null
        valor_total?: number | null
    } | null
    empreendimentosDoContrato: { id: string, nome: string, codigo: string | null, lote_id: string | null, apiId?: number | null }[]
    empenhos?: RelatedEmpenho[]
    avancosPorEmp?: { id: string, percentualExecutado: number, valorMedidoTotal: number }[]
    servicos?: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    contratos?: { id: string, numero: string, contratada: string | null, tipo?: string | null, valor_total?: number | null }[]
    aditamentos?: Aditamento[]
    contratosComOriginalId?: { id: string; numero: string; _originalId: string | number }[]
    globalNamesMap?: Record<string, string>
}

export function LoteDetailsComponent({
    lote,
    contrato,
    empreendimentosDoContrato,
    empenhos: empenhosProp = [],
    avancosPorEmp = [],
    servicos = [],
    contratos = [],
    contratosComOriginalId = [],
    aditamentos: aditamentosProp = [],
    globalNamesMap = {},
}: LoteDetailsProps) {
    const [dialogAberto, setDialogAberto] = useState(false)

    // Empreendimentos deste lote — já vêm filtrados por lote_id do page.tsx
    // e com apiId correto (ID legado da API ContratoEmpreendimentos)
    const assignedEmps = useMemo(
        () => empreendimentosDoContrato.filter(e => e.lote_id === lote.id),
        // eslint-disable-next-line react-hooks/exhaustive-deps
        [JSON.stringify(empreendimentosDoContrato), lote.id]
    )

    // Estabiliza contratosComOriginalId caso venha do pai de forma instável
    const memoizedContratosComOriginalId = useMemo(
        () => contratosComOriginalId,
        // eslint-disable-next-line react-hooks/exhaustive-deps
        [JSON.stringify(contratosComOriginalId)]
    )

    // ── Lazy-load state para dados pesados das tabs (Padrão API-First) ──
    const [empenhos, setEmpenhos] = useState<RelatedEmpenho[]>([])
    const [medicoes, setMedicoes] = useState<RelatedMedicao[]>([])
    const [aditamentos, setAditamentos] = useState<Aditamento[]>([])
    const [empenhosLoading, setEmpenhosLoading] = useState(false)
    const [medicoesLoading, setMedicoesLoading] = useState(false)
    const [aditamentosLoading, setAditamentosLoading] = useState(false)
    const [empenhosLoaded, setEmpenhosLoaded] = useState(false)
    const [medicoesLoaded, setMedicoesLoaded] = useState(false)
    const [aditamentosLoaded, setAditamentosLoaded] = useState(false)
    const [empenhosError, setEmpenhosError] = useState<string | null>(null)
    const [medicoesError, setMedicoesError] = useState<string | null>(null)
    const [aditamentosError, setAditamentosError] = useState<string | null>(null)

    // Empreendimentos com apiId normalizado (Fonte da Verdade: API Legada)
    const assignedEmpsEnriched = useMemo(() => {
        return assignedEmps.map(emp => ({
            ...emp,
            apiId: emp.apiId ? String(emp.apiId).trim() : null
        }))
    }, [assignedEmps])

    // Carrega empenhos — VIA API (Baseado no ID Legado do Contrato)
    const loadEmpenhos = useCallback(async () => {
        if (empenhosLoaded || empenhosLoading || memoizedContratosComOriginalId.length === 0) return
        setEmpenhosLoading(true)
        try {
            console.log('[LoteDetails] Carregando empenhos para:', memoizedContratosComOriginalId.map(c => c._originalId))
            const results = await Promise.all(
                memoizedContratosComOriginalId.map(c => fetchEmpenhosByContrato(String(c._originalId)))
            )
            const allEmpenhos = results.flatMap(r => r.data || [])
            
            // Enriquece com o número do contrato para o agrupamento na lista
            const enrichedEmpenhos = allEmpenhos.map(e => {
                const c = memoizedContratosComOriginalId.find(c => String(c._originalId) === String((e as any)._contratoOriginalId))
                return {
                    ...e,
                    contrato_numero: c?.numero || e.contrato_numero || "Empenhos Diretos"
                }
            })

            console.log('[LoteDetails] Empenhos carregados:', enrichedEmpenhos.length)
            setEmpenhos(enrichedEmpenhos)
            setEmpenhosLoaded(true)
        } catch (err: any) {
            console.error('[loadEmpenhos] erro:', err)
            setEmpenhosError(err.message)
        } finally {
            setEmpenhosLoading(false)
        }
    }, [empenhosLoaded, empenhosLoading, memoizedContratosComOriginalId])

    const loadMedicoes = useCallback(async () => {
        if (medicoesLoaded || medicoesLoading || memoizedContratosComOriginalId.length === 0) return
        setMedicoesLoading(true)
        setMedicoesError(null)
        try {
            const results = await Promise.all(
                memoizedContratosComOriginalId.map(c => fetchMedicoesCompletas(String(c._originalId)))
            )

            const hasError = results.some(r => r.error)
            if (hasError) {
                const errMsgs = results.filter(r => r.error).map(r => r.error).join('; ')
                throw new Error(errMsgs)
            }

            let allMedicoes = results.flatMap(r => r.data || [])

            // Rescue Flow (fallback se contrato retornar vazio)
            if (allMedicoes.length === 0 && assignedEmpsEnriched.length > 0) {
                const rescueIds = assignedEmpsEnriched
                    .map(e => e.apiId)
                    .filter((id): id is string => id != null)

                if (rescueIds.length > 0) {
                    const rescueResult = await fetchMedicoesRescue(rescueIds)
                    if (rescueResult.data && rescueResult.data.length > 0) {
                        allMedicoes = rescueResult.data.map((m: any) => ({
                            ...m,
                            idEmpreendimento: String(m.idEmpreendimento || '').trim(),
                        }))
                    }
                }
            }

            const seen = new Set<string>()
            const dedupedMedicoes = allMedicoes.filter((m: any) => {
                const empId = String(m.idEmpreendimento || '').trim()
                const medId = String(m._originalId || m.idMedicao || m.id || '').trim()
                const key = `${empId}::${medId}`
                if (seen.has(key)) return false
                seen.add(key)
                return true
            })

            // Mapa de nomes local: apiId → nome (já resolvidos pela API no page.tsx)
            const loteNamesMap = new Map<string, string>()
            assignedEmpsEnriched.forEach(e => {
                if (e.apiId) loteNamesMap.set(String(e.apiId).trim(), e.nome)
            })
            const loteApiIds = new Set(loteNamesMap.keys())

            // Aplica nomes corretos 
            // 1. Tenta usar o loteNamesMap (atribuídos ao lote)
            // 2. Se não achar, usa o globalNamesMap (nome oficial da API para aquele ID)
            const enrichedMedicoes = dedupedMedicoes.map((m: any) => {
                const mId = String(m.idEmpreendimento || '').trim()
                
                let resolvedName = loteNamesMap.get(mId)
                if (!resolvedName && globalNamesMap[mId]) {
                    resolvedName = globalNamesMap[mId]
                }

                const isScopeMatch = loteApiIds.has(mId)

                if (resolvedName) {
                    return { 
                        ...m, 
                        nmEmpreendimento: resolvedName, 
                        empreendimento_nome: resolvedName,
                        _isScopeMatch: isScopeMatch 
                    }
                }
                return { ...m, _isScopeMatch: isScopeMatch }
            })

            console.log('[loadMedicoes] Medições processadas:', enrichedMedicoes.length, 'Divergências:', enrichedMedicoes.filter(m => !m._isScopeMatch).length)
            setMedicoes(enrichedMedicoes)
            setMedicoesLoaded(true)
        } catch (err: any) {
            console.error('[loadMedicoes] erro:', err)
            setMedicoesError(err.message || 'Erro ao carregar medições')
        } finally {
            setMedicoesLoading(false)
        }
    }, [medicoesLoaded, medicoesLoading, memoizedContratosComOriginalId, assignedEmpsEnriched])

    // Carrega aditamentos da API (Fonte da Verdade)
    const loadAditamentos = useCallback(async () => {
        if (aditamentosLoaded || aditamentosLoading || memoizedContratosComOriginalId.length === 0) return
        setAditamentosLoading(true)
        setAditamentosError(null)
        try {
            const { fetchAditamentosByContrato } = await import("@/app/actions/lote-details-data")
            const results = await Promise.all(
                memoizedContratosComOriginalId.map(c => fetchAditamentosByContrato(String(c._originalId)))
            )
            const allAditamentos = results.flatMap(r => r.data || [])
            setAditamentos(allAditamentos)
            setAditamentosLoaded(true)
        } catch (err: any) {
            console.error('[loadAditamentos] erro:', err)
            setAditamentosError(err.message || 'Erro ao carregar aditamentos')
        } finally {
            setAditamentosLoading(false)
        }
    }, [aditamentosLoaded, aditamentosLoading, memoizedContratosComOriginalId])

    useEffect(() => {
        const medTimer = setTimeout(() => loadMedicoes(), 1500)
        const empTimer = setTimeout(() => loadEmpenhos(), 500)
        const aditTimer = setTimeout(() => loadAditamentos(), 1000)

        return () => {
            clearTimeout(medTimer)
            clearTimeout(empTimer)
            clearTimeout(aditTimer)
        }
    }, [memoizedContratosComOriginalId.length, loadMedicoes, loadEmpenhos, loadAditamentos])

    // ── Consolidação de Empreendimentos (Usa API ID como chave, mas preserva UUID para links) ──
    const allObras = useMemo(() => {
        const map = new Map<string, { id: string, nome: string, codigo: string | null, is_assigned: boolean, apiId: string }>()
        
        // 1. Empreendimentos vinculados ao Lote (via Supabase)
        assignedEmpsEnriched.forEach(e => {
            const legacyId = String(e.apiId || e.codigo || '').trim()
            if (legacyId) {
                map.set(legacyId, { 
                    id: e.id, // PRESERVA O UUID DO SUPABASE
                    nome: e.nome, 
                    codigo: legacyId, 
                    apiId: legacyId,
                    is_assigned: true 
                })
            }
        })

        // 2. Descobertos via Medições (API Legada)
        medicoes.forEach(m => {
            const legacyId = String(m.idEmpreendimento || '').trim()
            if (legacyId && !map.has(legacyId)) {
                map.set(legacyId, {
                    id: legacyId, // Se não tem no Supabase, o ID é o legado
                    nome: m.nmEmpreendimento || `Obra ${legacyId}`,
                    codigo: legacyId,
                    apiId: legacyId,
                    is_assigned: false
                })
            }
        })

        // 3. Descobertos via Empenhos (API Legada)
        empenhos.forEach(e => {
            const legacyId = String((e as any).idEmpreendimento || (e as any).empreendimento_id || '').trim()
            if (legacyId && legacyId !== 'undefined' && !map.has(legacyId)) {
                map.set(legacyId, {
                    id: legacyId,
                    nome: (e as any).nmEmpreendimento || `Obra ${legacyId}`,
                    codigo: legacyId,
                    apiId: legacyId,
                    is_assigned: false
                })
            }
        })

        return Array.from(map.values()).sort((a, b) => {
            if (a.is_assigned && !b.is_assigned) return -1
            if (!a.is_assigned && b.is_assigned) return 1
            return a.nome.localeCompare(b.nome)
        })
    }, [assignedEmpsEnriched, medicoes, empenhos])

    // Detecta se há medições vinculadas a IDs que não estão no lote (Camada de Proteção)
    const hasIdMismatch = useMemo(() => {
        if (medicoes.length === 0) return false
        const mismatches = medicoes.filter((m: any) => m._isScopeMatch === false)
        return mismatches.length > 0
    }, [medicoes])

    // Detecta se há empenhos vinculadas a IDs que não estão no lote
    const hasEmpenhoMismatch = useMemo(() => {
        const loteApiIds = new Set(assignedEmpsEnriched.map(e => e.apiId))
        return empenhos.some((e: any) => {
            const eId = String(e.idEmpreendimento || e.empreendimento_id || '').trim()
            return eId && eId !== 'undefined' && !loteApiIds.has(eId)
        })
    }, [empenhos, assignedEmpsEnriched])

    // Agrupa medições por nmNumeroMedicao para exibição no Lote
    const medicoesAgrupadas = useMemo(() => {
        type GrupoMedicao = {
            nmNumeroMedicao: string
            itens: {
                nomeEmpreendimento: string
                vlP0: number
                vlReajuste: number
                vlGerenciamento: number
                vlRepasse: number
                total: number
            }[]
            totalP0: number
            totalReajuste: number
            totalGeral: number
            dataInicio: string | null
            dataFim: string | null
        }

        const grupos = new Map<string, GrupoMedicao>()

        for (const m of medicoes as any[]) {
            const chave = m.nmNumeroMedicao ?? m.numero ?? 'S/N'
            if (!grupos.has(chave)) {
                grupos.set(chave, {
                    nmNumeroMedicao: chave,
                    itens: [],
                    totalP0: 0,
                    totalReajuste: 0,
                    totalGeral: 0,
                    dataInicio: m.data_inicio ?? null,
                    dataFim: m.data_fim ?? null,
                })
            }
            const grupo = grupos.get(chave)!
            const p0 = Number(m.vlP0 ?? m.valor_p0) || 0
            const reajuste = Number(m.vlReajuste ?? m.valor_reajuste) || 0
            const gerenc = Number(m.vlGerenciamento ?? m.valor_gerenciamento) || 0
            const repasse = Number(m.vlRepasse ?? m.valor_repasse) || 0
            grupo.itens.push({
                nomeEmpreendimento: m.nomeEmpreendimento ?? m.empreendimento_nome ?? `ID ${m.idEmpreendimento}`,
                vlP0: p0,
                vlReajuste: reajuste,
                vlGerenciamento: gerenc,
                vlRepasse: repasse,
                total: p0 + reajuste,
            })
            grupo.totalP0 += p0
            grupo.totalReajuste += reajuste
            grupo.totalGeral += p0 + reajuste
            // Mantemos a data do primeiro item
            if (!grupo.dataFim && m.data_fim) grupo.dataFim = m.data_fim
            if (!grupo.dataInicio && m.data_inicio) grupo.dataInicio = m.data_inicio
        }

        return Array.from(grupos.values()).sort((a, b) =>
            a.nmNumeroMedicao.localeCompare(b.nmNumeroMedicao)
        )
    }, [medicoes])

    const formatCurrency = (val: number) =>
        new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val)

    // Valor contratado = original + aditamentos
    const valorContratado = useMemo(() => {
        const original = Number(contrato?.valor_original) || 0
        const aditamento = Number(contrato?.valor_aditamento) || 0
        // fallback para valor_total se original não estiver disponível
        return original + aditamento || Number(contrato?.valor_total) || 0
    }, [contrato])

    // Totais das medições (Consolidado do Contrato)
    const totaisMedicoes = useMemo(() => {
        const medicoesList = medicoes
        const totalP0 = medicoesList.reduce(
            (acc, m) => acc + (Number(m.valor_p0) || 0), 0
        )
        const totalReajuste = medicoesList.reduce(
            (acc, m) => acc + (Number(m.valor_reajuste) || 0), 0
        )
        const totalP0R = totalP0 + totalReajuste

        const pctP0 = valorContratado > 0
            ? Math.min((totalP0 / valorContratado) * 100, 100)
            : 0
        const pctP0R = valorContratado > 0
            ? Math.min((totalP0R / valorContratado) * 100, 100)
            : 0

        return { totalP0, totalReajuste, totalP0R, pctP0, pctP0R }
    }, [medicoes, valorContratado])

    const TIPO_BADGE: Record<string, string> = {
        GERAL: "bg-blue-100 text-blue-800 border border-blue-200",
        OAE: "bg-amber-100 text-amber-800 border border-amber-200",
        ESCOLA: "bg-green-100 text-green-800 border border-green-200",
    }
    const tipoBadgeClass = lote.tipo ? (TIPO_BADGE[lote.tipo] ?? "bg-muted text-muted-foreground") : ""

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <div>
                    <div className="flex items-center gap-3">
                        <h2 className="text-3xl font-bold tracking-tight">Lote {lote.nome}</h2>
                        {lote.tipo && (
                            <span className={`text-xs font-semibold px-2.5 py-0.5 rounded-full ${tipoBadgeClass}`}>
                                {lote.tipo}
                            </span>
                        )}
                    </div>
                    {contrato ? (
                        <Link href={`/contratos/${contrato.id}`} className="text-muted-foreground hover:underline flex items-center">
                            Contrato: {contrato.numero}
                            <ExternalLink className="ml-1 h-3 w-3" />
                        </Link>
                    ) : (
                        <span className="text-muted-foreground text-sm italic">Sem contrato vinculado</span>
                    )}
                </div>
            </div>

            {/* Camada de Proteção: Alerta de Inconsistência de IDs */}
            {(hasIdMismatch || hasEmpenhoMismatch) && (
                <div className="bg-destructive/10 border-l-4 border-destructive p-4 rounded shadow-sm animate-in fade-in slide-in-from-top-4 duration-500">
                    <div className="flex items-start">
                        <div className="flex-shrink-0">
                            <AlertTriangle className="h-5 w-5 text-destructive" aria-hidden="true" />
                        </div>
                        <div className="ml-3">
                            <h3 className="text-sm font-bold text-destructive">
                                Divergência de Dados Financeiros Detectada
                            </h3>
                            <div className="mt-1 text-sm text-destructive/90 space-y-2">
                                <p>
                                    As medições abaixo apresentam divergência de empreendimentos, favor contatar o suporte do sistema.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            )}

            <div className="grid gap-4 md:grid-cols-3">
                <Card>
                    <CardHeader>
                        <CardTitle>Descrição</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <p>{lote.descricao || "Sem descrição."}</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Empreendimentos no Lote</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{assignedEmps.length}</div>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">
                            Avanço Financeiro do Lote
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-3">
                        {medicoesLoading ? (
                            <div className="space-y-2">
                                <Skeleton className="h-5 w-24" />
                                <Skeleton className="h-3 w-full" />
                                <Skeleton className="h-3 w-3/4" />
                            </div>
                        ) : (
                            <>
                                {/* Valor principal: P0+R */}
                                <div className="flex items-baseline gap-2">
                                    <span className="text-2xl font-bold tabular-nums">
                                        {totaisMedicoes.pctP0R.toFixed(1)}%
                                    </span>
                                    <span className="text-xs text-muted-foreground">
                                        medido (P0+R)
                                    </span>
                                </div>

                                {/* Barra dupla */}
                                <div className="relative h-3 w-full overflow-hidden rounded-full bg-muted">
                                    {/* Barra verde: P0 + Reajuste (fundo) */}
                                    <div
                                        className="absolute inset-y-0 left-0 rounded-full bg-emerald-500 transition-all duration-700"
                                        style={{ width: `${totaisMedicoes.pctP0R}%` }}
                                    />
                                    {/* Barra azul: somente P0 (sobreposição) */}
                                    <div
                                        className="absolute inset-y-0 left-0 rounded-full bg-blue-500 transition-all duration-700"
                                        style={{ width: `${totaisMedicoes.pctP0}%` }}
                                    />
                                </div>

                                {/* Legenda */}
                                <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-muted-foreground">
                                    <span className="flex items-center gap-1">
                                        <span className="inline-block h-2 w-2 rounded-full bg-blue-500" />
                                        P0: {new Intl.NumberFormat('pt-BR', {
                                            style: 'currency', currency: 'BRL',
                                            notation: 'compact', maximumFractionDigits: 1
                                        }).format(totaisMedicoes.totalP0)}
                                    </span>
                                    <span className="flex items-center gap-1">
                                        <span className="inline-block h-2 w-2 rounded-full bg-emerald-500" />
                                        P0+R: {new Intl.NumberFormat('pt-BR', {
                                            style: 'currency', currency: 'BRL',
                                            notation: 'compact', maximumFractionDigits: 1
                                        }).format(totaisMedicoes.totalP0R)}
                                    </span>
                                </div>

                                {/* Valor contratado de referência */}
                                {valorContratado > 0 && (
                                    <p className="text-xs text-muted-foreground border-t pt-2">
                                        Contratado:{' '}
                                        <span className="font-medium text-foreground">
                                            {new Intl.NumberFormat('pt-BR', {
                                                style: 'currency', currency: 'BRL'
                                            }).format(valorContratado)}
                                        </span>
                                    </p>
                                )}
                            </>
                        )}
                    </CardContent>
                </Card>
            </div>

            <Tabs defaultValue="empreendimentos" className="space-y-4" onValueChange={(val) => {
                if (val === 'empenhos') loadEmpenhos()
                if (val === 'medicoes') loadMedicoes()
            }}>
                <TabsList>
                    <TabsTrigger value="empreendimentos">Empreendimentos</TabsTrigger>
                    <TabsTrigger value="servicos">Serviços</TabsTrigger>
                    <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                    <TabsTrigger value="medicoes">Medições</TabsTrigger>
                    <TabsTrigger value="aditamentos">Aditamentos</TabsTrigger>
                </TabsList>

                <TabsContent value="empreendimentos">
                    <Card>
                        <CardHeader className="flex flex-row items-center justify-between">
                            <div>
                                <CardTitle>Empreendimentos no Contrato ({assignedEmpsEnriched.length})</CardTitle>
                                <CardDescription>
                                    Obras vinculadas oficialmente a este contrato e lote.
                                </CardDescription>
                            </div>
                            <Button onClick={() => setDialogAberto(true)}>
                                Gerenciar Atribuições
                            </Button>
                        </CardHeader>
                        <CardContent>
                            <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                                {assignedEmpsEnriched.length === 0 ? (
                                    <div className="col-span-full h-32 flex items-center justify-center text-muted-foreground border rounded-md border-dashed">
                                        Nenhum empreendimento vinculado oficialmente.
                                    </div>
                                ) : (
                                    assignedEmpsEnriched.map((emp) => (
                                        <Card key={emp.id}>
                                            <CardHeader className="pb-2">
                                                <div className="flex justify-between items-start">
                                                    <CardTitle className="text-sm font-bold line-clamp-2 min-h-[2.5rem]">
                                                        {emp.nome}
                                                    </CardTitle>
                                                </div>
                                                <CardDescription className="font-mono text-[10px] flex justify-between items-center mt-1">
                                                    <span>ID Legado: {emp.codigo || emp.apiId || "-"}</span>
                                                    <span className="text-emerald-600 font-bold">Atribuído</span>
                                                </CardDescription>
                                            </CardHeader>
                                            <CardContent className="pt-2">
                                                <div className="flex justify-between items-center">
                                                    <Button variant="ghost" size="sm" asChild className="h-7 text-[10px] px-2">
                                                        <Link href={`/empreendimentos/${emp.id}`}>
                                                            Ver Detalhes <ExternalLink className="ml-1 h-3 w-3" />
                                                        </Link>
                                                    </Button>
                                                </div>
                                            </CardContent>
                                        </Card>
                                    ))
                                )}
                            </div>
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="servicos">
                    {assignedEmps.length === 0 ? (
                        <div className="rounded-md border p-6 text-center text-muted-foreground">
                            Nenhum empreendimento atribuído a este lote. Atribua empreendimentos primeiro para gerenciar serviços.
                        </div>
                    ) : (
                        <ServicosTabContent
                            servicos={servicos}
                            contratos={contratos}
                            empreendimentoId={assignedEmps[0].id}
                        />
                    )}
                </TabsContent>

                <TabsContent value="empenhos">
                    <Card>
                        <CardHeader>
                            <CardTitle>Empenhos ({empenhos.length})</CardTitle>
                            <CardDescription>
                                Notas de empenho vinculadas ao contrato deste lote.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            {empenhosLoading ? (
                                <div className="space-y-2">
                                    <Skeleton className="h-10 w-full" />
                                    <Skeleton className="h-10 w-full" />
                                </div>
                            ) : empenhosError ? (
                                <div className="text-sm text-red-500">Erro ao carregar empenhos.</div>
                            ) : (
                                <RelatedEmpenhosList empenhos={empenhos} entityType="Lote" />
                            )}
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="medicoes">
                    <Card>
                        <CardHeader>
                            <CardTitle>Medições ({medicoesAgrupadas.length})</CardTitle>
                            <CardDescription>
                                Resumo das medições faturadas para este lote, agrupadas por número de medição.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            {medicoesLoading ? (
                                <div className="space-y-4">
                                    <Skeleton className="h-20 w-full" />
                                    <Skeleton className="h-20 w-full" />
                                </div>
                            ) : medicoesError ? (
                                <div className="text-destructive text-sm p-4 border border-destructive/20 rounded-md bg-destructive/5">
                                    Erro ao carregar medições: {medicoesError}
                                </div>
                            ) : medicoesAgrupadas.length === 0 ? (
                                <div className="text-center py-8 text-muted-foreground border rounded-md border-dashed">
                                    Nenhuma medição encontrada para os empreendimentos deste lote.
                                </div>
                            ) : (
                                <div className="space-y-4">
                                    {hasIdMismatch && (
                                        <div className="flex items-center gap-2 p-3 text-xs bg-destructive/5 text-destructive border border-destructive/20 rounded-md">
                                            <AlertTriangle className="h-4 w-4" />
                                            As medições abaixo apresentam divergência de empreendimentos, favor contatar o suporte do sistema.
                                        </div>
                                    )}
                                    {medicoesAgrupadas.map(grupo => (
                                        <Accordion key={grupo.nmNumeroMedicao} type="single" collapsible>
                                            <AccordionItem value={grupo.nmNumeroMedicao} className="border rounded-md overflow-hidden shadow-sm">
                                                <AccordionTrigger className="hover:no-underline px-4 py-3 bg-card hover:bg-muted/50 [&[data-state=open]]:border-b">
                                                    <div className="flex flex-col sm:flex-row sm:items-center gap-4 w-full pr-2 text-left">
                                                        <div className="flex items-center gap-3">
                                                            <div className="p-1.5 rounded-full bg-emerald-100 text-emerald-700">
                                                                <ChevronDown className="h-4 w-4" />
                                                            </div>
                                                            <div>
                                                                <p className="font-semibold text-base">Medição {grupo.nmNumeroMedicao}</p>
                                                                <p className="text-xs text-muted-foreground">
                                                                    {grupo.itens.length} empreendimento(s)
                                                                    {grupo.dataFim ? ` • ref: ${grupo.dataFim.split('T')[0].split('-').reverse().join('/')}` : ''}
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div className="flex flex-wrap gap-x-6 gap-y-1 sm:ml-auto text-sm">
                                                            <div className="flex flex-col">
                                                                <span className="text-[10px] uppercase tracking-wider text-muted-foreground font-semibold">Medido P0</span>
                                                                <span className="font-bold tabular-nums">{formatCurrency(grupo.totalP0)}</span>
                                                            </div>
                                                            <div className="flex flex-col border-l pl-4">
                                                                <span className="text-[10px] uppercase tracking-wider text-blue-600 font-semibold">Reajuste</span>
                                                                <span className="font-bold tabular-nums text-blue-600">{formatCurrency(grupo.totalReajuste)}</span>
                                                            </div>
                                                            <div className="flex flex-col border-l pl-4">
                                                                <span className="text-[10px] uppercase tracking-wider text-emerald-600 font-semibold">Total</span>
                                                                <span className="font-bold tabular-nums text-emerald-600">{formatCurrency(grupo.totalGeral)}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </AccordionTrigger>
                                                <AccordionContent className="p-0">
                                                    <Table>
                                                        <TableHeader className="bg-muted/30">
                                                            <TableRow>
                                                                <TableHead className="pl-6">Empreendimento</TableHead>
                                                                <TableHead className="text-right">Medido P0</TableHead>
                                                                <TableHead className="text-right">Reajuste</TableHead>
                                                                <TableHead className="text-right">Gerenciamento</TableHead>
                                                                <TableHead className="text-right">Repasse</TableHead>
                                                                <TableHead className="text-right pr-6">Total</TableHead>
                                                            </TableRow>
                                                        </TableHeader>
                                                        <TableBody>
                                                                    {grupo.itens.map((item, i) => (
                                                                <TableRow key={i} className="hover:bg-muted/40">
                                                                    <TableCell className="pl-6 font-medium text-sm">
                                                                        <div className="flex items-center gap-2">
                                                                            {item.nomeEmpreendimento}
                                                                            {!(item as any)._isScopeMatch && (
                                                                                <Badge variant="outline" className="text-[9px] bg-amber-50 text-amber-600 border-amber-200 py-0 h-4">
                                                                                    ID Externo
                                                                                </Badge>
                                                                            )}
                                                                        </div>
                                                                    </TableCell>
                                                                    <TableCell className="text-right font-mono text-xs">{formatCurrency(item.vlP0)}</TableCell>
                                                                    <TableCell className="text-right font-mono text-xs text-blue-600">{formatCurrency(item.vlReajuste)}</TableCell>
                                                                    <TableCell className="text-right font-mono text-xs">{formatCurrency(item.vlGerenciamento)}</TableCell>
                                                                    <TableCell className="text-right font-mono text-xs">{formatCurrency(item.vlRepasse)}</TableCell>
                                                                    <TableCell className="text-right font-mono text-xs text-emerald-600 font-semibold pr-6">{formatCurrency(item.total)}</TableCell>
                                                                </TableRow>
                                                            ))}
                                                        </TableBody>
                                                    </Table>
                                                </AccordionContent>
                                            </AccordionItem>
                                        </Accordion>
                                    ))}
                                </div>
                            )}
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="aditamentos">
                    {aditamentosLoading ? (
                        <Card>
                            <CardContent className="pt-6">
                                <div className="space-y-2">
                                    <Skeleton className="h-10 w-full" />
                                    <Skeleton className="h-10 w-full" />
                                </div>
                            </CardContent>
                        </Card>
                    ) : aditamentosError ? (
                        <div className="text-sm text-red-500">Erro ao carregar aditamentos.</div>
                    ) : (
                        <AditamentosTabContent
                            aditamentos={aditamentos}
                            tipoVinculo="lote"
                            loteId={lote.id}
                            empreendimentos={assignedEmps.map(e => ({ id: e.id, nome: e.nome }))}
                            contratos={contrato ? [{ id: contrato.id, numero: contrato.numero, contratada: (contrato as any).contratada || null }] : []}
                            defaultContratoId={contrato?.id}
                            defaultEmpreendimentoId={assignedEmps.length > 0 ? assignedEmps[0].id : undefined}
                            revalidatePaths={[`/lotes/${lote.id}`]}
                        />
                    )}
                </TabsContent>
            </Tabs>

            <AssignLoteDialog
                open={dialogAberto}
                onOpenChange={setDialogAberto}
                loteId={lote.id}
                contratoId={contrato?.id || ""}
                empreendimentosVinculados={empreendimentosDoContrato}
            />
        </div>
    )
}
