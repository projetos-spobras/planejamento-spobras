
"use client"

import { useState, useEffect, useCallback, useMemo } from "react"
import { useParams } from "next/navigation"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Link2, Trash2, ExternalLink, Banknote, CalendarDays, FilePen, Hammer } from "lucide-react"
import { toast } from "sonner"
import Link from "next/link"

import { AvancoFinanceiroCard } from "@/components/empreendimentos/AvancoFinanceiroCard"
import { calcularPercentualMedido } from "@/lib/financial-utils"
import { RelatedMedicoesList, RelatedMedicao } from "@/components/relationships/related-medicoes-list"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import {
    AlertDialog,
    AlertDialogAction,
    AlertDialogCancel,
    AlertDialogContent,
    AlertDialogDescription,
    AlertDialogFooter,
    AlertDialogHeader,
    AlertDialogTitle,
} from "@/components/ui/alert-dialog"

import { Empreendimento, PlanejamentoFase, Servico } from "@/types"
import { LinkContratoDialog } from "@/components/relationships/link-contrato-dialog"
import { unlinkContratoFromEmpreendimento } from "@/app/actions/relationships"
import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"
import { Badge } from "@/components/ui/badge"
import { PlanningTabContent } from "@/components/planning/planning-tab-content"
import { ServicosTabContent } from "@/components/relationships/servicos-tab-content"
import { AnexosTabContent } from "@/components/relationships/anexos-tab-content"
import { AditamentosTabContent } from "@/components/aditamentos/aditamentos-tab-content"
import { type Aditamento, importLegacyAditamentos } from "@/app/actions/aditamentos"

interface EmpreendimentoDetailsProps {
    empreendimento: Empreendimento
    contratosVinculados: {
        id: string
        contrato_id: string
        lote_id: string | null
        contrato: {
            id: string,
            numero: string,
            tipo: string | null,
            contratada: string | null,
            valor_total: number
            valor_aditamento?: number
            valor_reajuste?: number
            indice_reajuste?: string | null
            percentual_reajuste?: string | null
            indice_nome?: string | null
            valor_original?: number
            data_inicio?: string | null
            data_fim?: string | null
        }
        lote?: { id: string, nome: string } | null
    }[]
    allContratos: { id: string, numero: string, tipo: string | null }[]
    allLotes: { id: string, nome: string, contrato_id: string }[]
    empenhos: RelatedEmpenho[]
    fases: PlanejamentoFase[]
    servicos: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    lookups?: {
        programas: { id: number, nome: string }[]
        distritos: { id: number, nome: string }[]
        gerencias: { id: number, nome: string }[]
        fases: { id: number, nome: string }[]
    }
    indicators?: {
        valorTotal: number
        totalEmpenhado: number
        percentualExecucao: number
        valorPlanejadoAno: number
        totalEmpenhadoAno: number
        saldoPlanejado: number
        valorPlanejadoTotal: number
    }
    avancoFisico?: {
        percentualExecutado: number
        valorMedidoTotal: number
        valorContrato: number
        ultimaMedicao: string | null
    }
    medicoes?: RelatedMedicao[]
    tiposServico?: string[]
    anexos?: any[]
    contratosComOriginalId?: { id: string; numero: string; _originalId: string | number }[]
    aditamentos?: Aditamento[]
    valorTotalContratos?: number
    valorMedidoData?: number
    totalPlanejadoObras?: number
    hasAmbiental?: boolean
    hasPendenciaAmbiental?: boolean
}

export function EmpreendimentoDetails({
    empreendimento,
    contratosVinculados,
    allContratos,
    allLotes,
    empenhos: empenhosIniciais,
    fases,
    servicos,
    lookups,
    indicators: indicatorsIniciais,
    avancoFisico,
    medicoes: medicoesIniciais = [],
    tiposServico = [],
    anexos = [],
    contratosComOriginalId = [],
    aditamentos: aditamentosIniciais = [],
    valorTotalContratos,
    valorMedidoData,
    totalPlanejadoObras,
    hasAmbiental = false,
    hasPendenciaAmbiental = false,
}: EmpreendimentoDetailsProps) {
    // ── Lazy-load state para dados pesados das tabs ──────────────────────────
    const [empenhos, setEmpenhos] = useState<RelatedEmpenho[]>(empenhosIniciais)
    const [medicoes, setMedicoes] = useState<RelatedMedicao[]>(medicoesIniciais)
    const [aditamentos, setAditamentos] = useState<Aditamento[]>(aditamentosIniciais)
    const [indicators, setIndicators] = useState(indicatorsIniciais)
    const [empenhosLoading, setEmpenhosLoading] = useState(false)
    const [medicoesLoading, setMedicoesLoading] = useState(false)
    const [empenhosLoaded, setEmpenhosLoaded] = useState(false)
    const [medicoesLoaded, setMedicoesLoaded] = useState(false)
    const [aditamentosLoaded, setAditamentosLoaded] = useState(false)
    const [aditamentosLoading, setAditamentosLoading] = useState(false)


    // Carrega empenhos da API sob demanda (ao abrir a tab)
    const loadEmpenhos = useCallback(async () => {
        if (empenhosLoaded || empenhosLoading || contratosComOriginalId.length === 0) return
        setEmpenhosLoading(true)
        try {
            const results = await Promise.all(
                contratosComOriginalId.map(c =>
                    fetch(`/api/contrato-financeiro?contratoOriginalId=${c._originalId}&tipo=empenhos`)
                        .then(r => r.json())
                        .then(j => (j.data || []).map((e: any) => ({ ...e, contrato_numero: c.numero })))
                        .catch(() => [])
                )
            )
            const flat: RelatedEmpenho[] = results.flat()
            setEmpenhos(prev => {
                const ids = new Set(flat.map((e: any) => e.id))
                const merged = [...prev.filter((e: any) => !ids.has(e.id)), ...flat]
                return merged
            })
            setEmpenhosLoaded(true)
        } finally {
            setEmpenhosLoading(false)
        }
    }, [empenhosLoaded, empenhosLoading, contratosComOriginalId])

    // Carrega medições da API sob demanda (ao abrir a tab)
    const loadMedicoes = useCallback(async () => {
        if (medicoesLoaded || medicoesLoading || contratosComOriginalId.length === 0) return
        setMedicoesLoading(true)
        try {
            const results = await Promise.all(
                contratosComOriginalId.map(c =>
                    fetch(`/api/contrato-financeiro?contratoOriginalId=${c._originalId}&tipo=medicoes`)
                        .then(r => r.json())
                        .then(j => (j.data || []).map((m: any) => ({ ...m, contrato_numero: c.numero })))
                        .catch(() => [])
                )
            )
            const flat: RelatedMedicao[] = results.flat()
            
            // CORREÇÃO: Comparar ID legado com ID legado (não misturar com UUID Supabase)
            const idLegado = String(empreendimento.original_id || empreendimento.codigo || '')
            const filtradas = flat.filter(m => {
                const medIdLegado = String(m.idEmpreendimento || '')
                return medIdLegado === idLegado || medIdLegado === String(empreendimento.id)
            })

            setMedicoes(filtradas)
            setMedicoesLoaded(true)
        } finally {
            setMedicoesLoading(false)
        }
    }, [medicoesLoaded, medicoesLoading, contratosComOriginalId, empreendimento.original_id, empreendimento.codigo, empreendimento.id])

    // Carrega aditamentos da API legada automaticamente ao abrir a tab
    const loadAditamentos = useCallback(async () => {
        if (aditamentosLoaded || aditamentosLoading || contratosVinculados.length === 0) return
        
        setAditamentosLoading(true)
        try {
            const results = await Promise.all(
                contratosVinculados.map(cv => 
                    importLegacyAditamentos(cv.contrato_id, empreendimento.id)
                )
            )
            
            const totalImported = results.reduce((sum, res) => sum + (res.success && typeof (res as any).count === 'number' ? (res as any).count : 0), 0)
            
            if (totalImported > 0) {
                // Como importLegacyAditamentos faz revalidatePath, 
                // para atualizar a UI localmente sem recarregar a página inteira, 
                // idealmente buscaríamos os dados novos, mas o revalidatePath 
                // geralmente cuida disso se usarmos Server Components.
                // Como este é um componente "use client", mostramos um aviso.
                toast.success(`${totalImported} aditamentos importados automaticamente do sistema legado.`)
                // Recarrega a página para atualizar o Server State que alimenta aditamentosIniciais
                window.location.reload()
            }
            setAditamentosLoaded(true)
        } catch (error) {
            console.error("Erro no carregamento automático de aditamentos:", error)
        } finally {
            setAditamentosLoading(false)
        }
    }, [aditamentosLoaded, aditamentosLoading, contratosVinculados, empreendimento.id])

    // REPOSICIONAMENTO: useMemo e useEffect após as declarações das funções (evita erro de inicialização)
    const totalMedidoCalculado = useMemo(() => {
        if (!medicoes || medicoes.length === 0) return null
        return medicoes.reduce((sum, m) => sum + (Number(m.valor_total) || 0), 0)
    }, [medicoes])

    useEffect(() => {
        // Disparar lazy-load das medições (1.5s delay)
        const medTimer = setTimeout(() => {
            if (!medicoesLoaded && !medicoesLoading && contratosComOriginalId.length > 0) {
                loadMedicoes()
            }
        }, 1500)

        // Disparar lazy-load dos empenhos (0.5s delay - prioridade maior que medições)
        const empTimer = setTimeout(() => {
            if (!empenhosLoaded && !empenhosLoading && contratosComOriginalId.length > 0) {
                loadEmpenhos()
            }
        }, 500)

        return () => {
            clearTimeout(medTimer)
            clearTimeout(empTimer)
        }
    }, [
        medicoesLoaded, medicoesLoading, loadMedicoes,
        empenhosLoaded, empenhosLoading, loadEmpenhos,
        contratosComOriginalId.length
    ])
    const [isLinkDialogOpen, setIsLinkDialogOpen] = useState(false)
    const [unlinkId, setUnlinkId] = useState<{ empId: string, contId: string } | null>(null)

    const handleUnlink = async () => {
        if (!unlinkId) return

        const result = await unlinkContratoFromEmpreendimento(unlinkId.empId, unlinkId.contId)
        if (result.success) {
            toast.success("Contrato desvinculado com sucesso")
        } else {
            toast.error("Erro ao desvincular: " + result.error)
        }
        setUnlinkId(null)
    }

    const valorTotalServicos = servicos?.reduce((sum, s) => sum + (Number(s.valor_total) || 0), 0) || 0;
    const contratoIdsComServicos = new Set(servicos.map(s => s.contrato_id).filter(Boolean));
    const valorTotalContratosComServicos = contratosVinculados
        .filter(cv => contratoIdsComServicos.has(cv.contrato_id))
        .reduce((sum, cv) => sum + (Number(cv.contrato?.valor_total) || 0), 0);
    const valorAContratar = servicos
        .filter(s => !s.contrato_id)
        .reduce((sum, s) => sum + (Number(s.valor_total) || 0), 0);

    const contratosComServicos = contratosVinculados.filter(cv => contratoIdsComServicos.has(cv.contrato_id));
    const totalOriginal = contratosComServicos.reduce((sum, cv) => sum + (Number(cv.contrato?.valor_original) || 0), 0);
    const totalAditamentos = contratosComServicos.reduce((sum, cv) => sum + (Number(cv.contrato?.valor_aditamento) || 0), 0);
    const totalReajustes = contratosComServicos.reduce((sum, cv) => sum + (Number(cv.contrato?.valor_reajuste) || 0), 0);
    const totalGlobal = totalOriginal + totalAditamentos + totalReajustes;
    const calculatedValorPlanejadoTotal = useMemo(() => 
        indicators?.valorPlanejadoTotal ?? totalPlanejadoObras ?? 0,
    [indicators, totalPlanejadoObras]);

    // Alias defensivo para evitar ReferenceError caso algum código oculto procure por este nome
    const valorPlanejadoTotal = calculatedValorPlanejadoTotal;

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                <div className="flex flex-col gap-2">
                    <div className="flex flex-wrap items-center gap-2">
                        <h2 className="text-3xl font-bold tracking-tight">{empreendimento.nome}</h2>
                        <div className="flex gap-2">
                            {hasAmbiental && (
                                <Link 
                                    href={`/ambiental?empreendimento=${empreendimento.id}`} 
                                    target="_blank"
                                >
                                    <Badge 
                                        variant="secondary" 
                                        className={cn(
                                            "cursor-pointer flex items-center gap-1 transition-all",
                                            hasPendenciaAmbiental 
                                                ? "bg-amber-100 text-amber-700 hover:bg-amber-200 border-amber-300" 
                                                : "bg-emerald-100 text-emerald-700 hover:bg-emerald-200 border-emerald-300"
                                        )}
                                        title={hasPendenciaAmbiental ? "Possui licenciamento pendente (P)" : "Registros ambientais em dia"}
                                    >
                                        🌿 Ambiental
                                    </Badge>
                                </Link>
                            )}
                            {tiposServico.some(t => t?.toLowerCase().includes("desaprop")) && (
                                <Badge variant="secondary" className="bg-amber-100 text-amber-700 hover:bg-amber-100 border-amber-200">
                                    Desap.
                                </Badge>
                            )}
                        </div>
                    </div>
                    {empreendimento.codigo && (
                        <p className="text-sm text-muted-foreground font-mono">Código: {empreendimento.codigo}</p>
                    )}
                </div>
                <div className="flex items-center space-x-2">
                    {/* Actions if needed */}
                </div>
            </div>

            {/* Helper component for the Empenho Pie Chart */}
            {(() => {
                const totalEmpenhoLiquido = empenhos.reduce((acc, e) => {
                    const liq = (e as any).valor_liquido;
                    const can = (e as any).valor_cancelado || 0;
                    const val = (typeof liq === 'number') ? liq : (e.valor - can);
                    return acc + val;
                }, 0);
                const totalLiquidado = empenhos.reduce((acc, e) => acc + (Number((e as any).valor_liquidado || 0)), 0);
                const saldoEmpenho = Math.max(0, totalEmpenhoLiquido - totalLiquidado);
                
                const PieChart = ({ liquidado, saldo, total }: { liquidado: number, saldo: number, total: number }) => {
                    const radius = 18;
                    const circ = 2 * Math.PI * radius;
                    const liquidadoPct = total > 0 ? (liquidado / total) : 0;
                    
                    return (
                        <div className="relative flex items-center justify-center w-16 h-16">
                            <svg width="64" height="64" viewBox="0 0 50 50" className="transform -rotate-90">
                                {/* Base/Saldo circle */}
                                <circle
                                    cx="25"
                                    cy="25"
                                    r={radius}
                                    fill="transparent"
                                    stroke="currentColor"
                                    strokeWidth="7"
                                    className="text-amber-400/30 dark:text-amber-400/20"
                                />
                                {/* Liquidado segment */}
                                <circle
                                    cx="25"
                                    cy="25"
                                    r={radius}
                                    fill="transparent"
                                    stroke="currentColor"
                                    strokeWidth="7"
                                    strokeDasharray={circ}
                                    strokeDashoffset={circ * (1 - liquidadoPct)}
                                    strokeLinecap="round"
                                    className="text-emerald-500"
                                />
                            </svg>
                            <div className="absolute inset-0 flex items-center justify-center text-[10px] font-bold">
                                {total > 0 ? Math.round((liquidado / total) * 100) : 0}%
                            </div>
                        </div>
                    );
                };

                const valorMedidoP0Reajuste = medicoes.reduce((acc, m) => acc + (Number(m.valor_p0) || 0) + (Number(m.valor_reajuste) || 0), 0);

                return (
                    <div className="grid gap-4 items-stretch" style={{ gridTemplateColumns: '1fr 1fr 1fr 2.5fr' }}>
                        <Card className="h-full flex flex-col">
                            <div className="flex-1 flex flex-col justify-between p-5">
                                <CardHeader className="p-0 flex flex-row items-center justify-between space-y-0 pb-3">
                                    <CardTitle className="text-[13px] font-semibold text-muted-foreground uppercase tracking-wider">Contratos</CardTitle>
                                    <FilePen className="h-5 w-5 text-muted-foreground" />
                                </CardHeader>
                                <div className="flex flex-col gap-1">
                                    <div className="flex items-baseline gap-2">
                                        <div className="text-3xl font-bold tabular-nums">{contratosComServicos.length}</div>
                                        <div className="text-base font-bold text-emerald-600 dark:text-emerald-500 tabular-nums">
                                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalGlobal)}
                                        </div>
                                    </div>
                                </div>
                                <div className="mt-4 space-y-1 border-t pt-3">
                                    <div className="flex justify-between text-[14px]">
                                        <span className="text-muted-foreground">Contratual:</span>
                                        <span className="font-bold text-foreground tabular-nums">
                                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalOriginal)}
                                        </span>
                                    </div>
                                    <div className="flex justify-between text-[14px]">
                                        <span className="text-muted-foreground">Aditado:</span>
                                        <span className="font-bold text-emerald-600 tabular-nums">
                                            + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalAditamentos)}
                                        </span>
                                    </div>
                                    <div className="flex justify-between text-[14px]">
                                        <span className="text-muted-foreground">Reajuste:</span>
                                        <span className="font-bold text-blue-600 tabular-nums">
                                            + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalReajustes)}
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </Card>

                        <Card className="h-full flex flex-col">
                            <div className="flex-1 flex flex-col justify-between p-5">
                                <CardHeader className="p-0 flex flex-row items-center justify-between space-y-0 pb-3">
                                    <CardTitle className="text-[13px] font-semibold text-muted-foreground uppercase tracking-wider">Serviços</CardTitle>
                                    <Hammer className="h-5 w-5 text-muted-foreground" />
                                </CardHeader>
                                <div className="flex justify-between items-end">
                                    <div>
                                        <div className="text-3xl font-bold tabular-nums">{servicos?.length || 0}</div>
                                        <p className="text-[13px] font-medium text-muted-foreground">Total</p>
                                    </div>
                                    <div className="text-right">
                                        <div className="text-3xl font-bold text-amber-600 dark:text-amber-500 tabular-nums">
                                            {servicos?.filter(s => !s.contrato_id).length || 0}
                                        </div>
                                        <p className="text-[13px] font-medium text-muted-foreground">Sem contrato</p>
                                    </div>
                                </div>
                                <div className="mt-4 pt-3 border-t">
                                    <div className="text-[14px] font-bold text-orange-600 dark:text-orange-500 tabular-nums">
                                        A Contratar: {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(valorAContratar)}
                                    </div>
                                    <p className="text-[12px] text-muted-foreground mt-0.5">Estimado s/ contrato</p>
                                </div>
                            </div>
                        </Card>

                        <Card className="h-full flex flex-col">
                            <div className="flex-1 flex flex-col justify-between p-5">
                                <CardHeader className="p-0 flex flex-row items-center justify-between space-y-0 pb-3">
                                    <CardTitle className="text-[13px] font-semibold text-muted-foreground uppercase tracking-wider">Exec. Planejada</CardTitle>
                                    <Banknote className="h-5 w-5 text-muted-foreground" />
                                </CardHeader>
                                <div>
                                    <div className="text-3xl font-bold tabular-nums">
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact", maximumFractionDigits: 1 }).format(valorPlanejadoTotal)}
                                    </div>
                                    <p className="text-[13px] font-medium text-muted-foreground">Valor Total Planejado</p>
                                </div>
                                <div className="mt-4 pt-3 border-t">
                                    <div className="text-[14px] font-bold text-blue-600 dark:text-blue-400 tabular-nums">
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact", maximumFractionDigits: 1 }).format(indicators?.valorPlanejadoAno || 0)}
                                    </div>
                                    <p className="text-[12px] text-muted-foreground mt-0.5">Para o ano de {new Date().getFullYear()}</p>
                                </div>
                            </div>
                        </Card>

                        <AvancoFinanceiroCard
                            totalEmpenhoLiquido={totalEmpenhoLiquido}
                            totalLiquidado={totalLiquidado}
                            saldoEmpenho={saldoEmpenho}
                            valorMedido={valorMedidoP0Reajuste}
                            valorEmpenhado={totalEmpenhoLiquido}
                            valorLiquidado={totalLiquidado}
                            valorPlanejado={valorPlanejadoTotal}
                            pctMedido={calcularPercentualMedido(medicoes, contratosVinculados)}
                            pctEmpenhado={((totalEmpenhoLiquido / (totalGlobal || 1)) * 100)}
                            pctLiquidadoBarra={((totalLiquidado / (totalGlobal || 1)) * 100)}
                            pctPlanejado={valorPlanejadoTotal / (totalGlobal || 1) * 100}
                            isLoading={empenhosLoading || (medicoesLoading && !totalMedidoCalculado)}
                        />
                    </div>
                );
            })()}

            <Tabs id={`empreendimento-tabs-${empreendimento.id}`} defaultValue="detalhes" className="space-y-4" onValueChange={(val) => {
                if (val === 'empenhos') loadEmpenhos()
                if (val === 'medicoes') loadMedicoes()
                if (val === 'aditamentos') loadAditamentos()
            }}>
                <TabsList>
                    <TabsTrigger value="detalhes">Detalhes</TabsTrigger>
                    <TabsTrigger value="servicos">Serviços</TabsTrigger>
                    <TabsTrigger value="contratos">Contratos Vinculados</TabsTrigger>
                    <TabsTrigger value="planejamento">Planejamento</TabsTrigger>
                    <TabsTrigger value="aditamentos">Aditamentos</TabsTrigger>
                    <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                    <TabsTrigger value="medicoes">Medições</TabsTrigger>
                    <TabsTrigger value="anexos">Anexos</TabsTrigger>
                </TabsList>

                <TabsContent value="detalhes" className="space-y-4">
                    <Card>
                        <CardHeader>
                            <CardTitle>Informações Gerais</CardTitle>
                        </CardHeader>
                        <CardContent>
                            <dl className="grid grid-cols-1 gap-4 sm:grid-cols-2">
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Código</dt>
                                    <dd>{empreendimento.codigo}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Status</dt>
                                    <dd>{(lookups?.fases?.find(f => f.id === Number(empreendimento.status))?.nome) || empreendimento.status}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Valor Total Contratos</dt>
                                    <dd>{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(avancoFisico?.valorContrato ?? 0)}
                                        {(avancoFisico?.valorContrato ?? 0) === 0 && (
                                            <span className="text-muted-foreground text-xs ml-1">(nenhum contrato vinculado)</span>
                                        )}
                                    </dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Localização</dt>
                                    <dd>{empreendimento.localizacao || "-"}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Subprefeitura / Distrito</dt>
                                    <dd>
                                        {(lookups?.distritos?.find(d => d.id === empreendimento.id_distrito)?.nome) || empreendimento.subprefeitura || empreendimento.id_distrito || "-"}
                                    </dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Programa</dt>
                                    <dd>
                                        {(lookups?.programas?.find(p => p.id === empreendimento.id_programa)?.nome) || empreendimento.programa || empreendimento.id_programa || "-"}
                                    </dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Gerência</dt>
                                    <dd>
                                        {(lookups?.gerencias?.find(g => g.id === Number(empreendimento.gerencia))?.nome) || empreendimento.gerencia || "-"}
                                    </dd>
                                </div>
                                {/* [F3] Lotes aos quais este empreendimento pertence */}
                                {(() => {
                                    const lotes = contratosVinculados
                                        .filter(cv => cv.lote)
                                        .map(cv => cv.lote!)
                                        .filter((l, i, arr) => arr.findIndex(x => x.id === l.id) === i)
                                    if (lotes.length === 0) return null
                                    return (
                                        <div>
                                            <dt className="text-sm font-medium text-muted-foreground">Lote</dt>
                                            <dd className="flex flex-wrap gap-2 mt-1">
                                                {lotes.map(lote => (
                                                    <Link
                                                        key={lote.id}
                                                        href={`/lotes/${lote.id}`}
                                                        className="inline-flex items-center gap-1 text-sm font-medium text-primary hover:underline"
                                                    >
                                                        Lote {lote.nome}
                                                        <ExternalLink className="h-3 w-3" />
                                                    </Link>
                                                ))}
                                            </dd>
                                        </div>
                                    )
                                })()}
                                <div className="sm:col-span-2">
                                    <dt className="text-sm font-medium text-muted-foreground">Descrição</dt>
                                    <dd>{empreendimento.descricao || "-"}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Última Atualização</dt>
                                    <dd>{format(new Date(empreendimento.updated_at), "PPP", { locale: ptBR })}</dd>
                                </div>
                            </dl>
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="servicos">
                    <ServicosTabContent
                        servicos={servicos || []}
                        contratos={contratosVinculados.map(cv => cv.contrato)}
                        empreendimentoId={empreendimento.id}
                    />
                </TabsContent>

                <TabsContent value="planejamento">
                    {/* Tab de planejamento com variáveis estabilizadas */}
                    <PlanningTabContent
                        empreendimentoId={empreendimento.id}
                        empreendimentoNome={empreendimento.nome}
                        fases={fases}
                        servicos={servicos}
                        avancoFisico={avancoFisico?.percentualExecutado}
                        valorTotalContratos={totalGlobal || 0}
                        valorPlanejadoTotal={valorPlanejadoTotal || 0}
                    />
                </TabsContent>

                <TabsContent value="contratos" className="space-y-4">
                    <div className="flex justify-end">
                        <Button onClick={() => setIsLinkDialogOpen(true)}>
                            <Link2 className="mr-2 h-4 w-4" /> Vincular Contrato
                        </Button>
                    </div>

                    <Card>
                        <CardHeader>
                            <CardTitle>Contratos Associados</CardTitle>
                            <CardDescription>
                                Contratos vinculados para execução, projetos ou serviços desta obra.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            <Table>
                                <TableHeader>
                                    <TableRow>
                                        <TableHead>Número</TableHead>
                                        <TableHead>Tipo</TableHead>
                                        <TableHead>Contratada</TableHead>
                                        <TableHead className="text-right">Valor Global</TableHead>
                                        <TableHead>Lote</TableHead>
                                        <TableHead className="w-[100px]">Ações</TableHead>
                                    </TableRow>
                                </TableHeader>
                                <TableBody>
                                    {contratosVinculados.length === 0 ? (
                                        <TableRow>
                                            <TableCell colSpan={6} className="h-24 text-center">
                                                Nenhum contrato vinculado.
                                            </TableCell>
                                        </TableRow>
                                    ) : (
                                        contratosVinculados.map((link) => (
                                            <TableRow key={link.id}>
                                                <TableCell className="font-medium">
                                                    <Link href={`/contratos/${link.contrato_id}`} className="hover:underline flex items-center">
                                                        {link.contrato.numero}
                                                        <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                    </Link>
                                                </TableCell>
                                                <TableCell>{link.contrato.tipo}</TableCell>
                                                <TableCell>{link.contrato.contratada || "-"}</TableCell>
                                                <TableCell className="text-right">
                                                    <div className="font-bold text-sm">
                                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(link.contrato.valor_total || 0)}
                                                    </div>
                                                    <div className="text-xs text-muted-foreground mt-0.5">
                                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(link.contrato.valor_original || 0)}
                                                    </div>
                                                    <div className="text-xs text-emerald-600 font-medium mt-0.5">
                                                        + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(link.contrato.valor_aditamento || 0)}
                                                    </div>
                                                    <div className="text-xs text-blue-600 font-medium mt-0.5" title="Reajuste">
                                                        <span className="opacity-70 text-[10px]">
                                                            ({link.contrato.percentual_reajuste || (link.contrato.valor_original && link.contrato.valor_original > 0 
                                                                ? ((Number(link.contrato.valor_reajuste) / link.contrato.valor_original) * 100).toFixed(1) + "%" 
                                                                : "0%")}
                                                            {link.contrato.indice_nome && <span className="ml-1 uppercase text-[9px] font-normal">{link.contrato.indice_nome}</span>})
                                                        </span>
                                                    </div>
                                                </TableCell>
                                                <TableCell>{link.lote?.nome || "-"}</TableCell>
                                                <TableCell>
                                                    <Button
                                                        variant="ghost"
                                                        size="icon"
                                                        onClick={() => setUnlinkId({ empId: empreendimento.id, contId: link.contrato_id })}
                                                    >
                                                        <Trash2 className="h-4 w-4 text-red-500" />
                                                    </Button>
                                                </TableCell>
                                            </TableRow>
                                        ))
                                    )}
                                </TableBody>
                            </Table>
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="empenhos" className="mt-4">
                    <div className="space-y-4">
                        <div className="flex items-center justify-between">
                            <h2 className="text-xl font-bold tracking-tight">Consolidado de Empenhos</h2>
                            <p className="text-sm text-muted-foreground">
                                {empenhosLoading ? 'Carregando dados da API...' : 'Notas agrupadas por contrato associado'}
                            </p>
                        </div>
                        {empenhosLoading ? (
                            <div className="flex items-center justify-center h-32 text-muted-foreground">
                                <svg className="animate-spin h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24">
                                    <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"/>
                                    <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8v8z"/>
                                </svg>
                                Carregando empenhos da API...
                            </div>
                        ) : (
                            <RelatedEmpenhosList empenhos={empenhos} entityType="Empreendimento" />
                        )}
                    </div>
                </TabsContent>

                <TabsContent value="medicoes" className="mt-4">
                    <div className="space-y-4">
                        <div className="flex items-center justify-between">
                            <h2 className="text-xl font-bold tracking-tight">Medições Realizadas</h2>
                            <p className="text-sm text-muted-foreground">
                                {medicoesLoading ? 'Carregando dados da API...' : 'Medições agrupadas por contrato e filtradas para este empreendimento'}
                            </p>
                        </div>
                        {medicoesLoading ? (
                            <div className="flex items-center justify-center h-32 text-muted-foreground">
                                <svg className="animate-spin h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24">
                                    <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"/>
                                    <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8v8z"/>
                                </svg>
                                Carregando medições da API...
                            </div>
                        ) : (
                            <RelatedMedicoesList medicoes={medicoes} entityType="Empreendimento" />
                        )}
                    </div>
                </TabsContent>

                <TabsContent value="anexos" className="mt-4">
                    <AnexosTabContent 
                        anexos={anexos} 
                        empreendimentoId={empreendimento.id} 
                        servicos={servicos.filter(s => s.acompanha_fisico).map(s => ({ id: s.id, descricao: s.descricao }))}
                    />
                </TabsContent>

                {/* Aba de Aditamentos do Empreendimento */}
                <TabsContent value="aditamentos" className="mt-4">
                    <AditamentosTabContent
                        aditamentos={aditamentos}
                        tipoVinculo="empreendimento"
                        empreendimentos={[{ id: empreendimento.id, nome: empreendimento.nome }]}
                        contratos={contratosVinculados.map(cv => ({
                            id: cv.contrato_id,
                            numero: cv.contrato.numero,
                            contratada: cv.contrato.contratada || null,
                        }))}
                        defaultEmpreendimentoId={empreendimento.id}
                        defaultContratoId={contratosVinculados.length > 0 ? contratosVinculados[0].contrato_id : undefined}
                        revalidatePaths={[`/empreendimentos/${empreendimento.id}`]}
                    />
                </TabsContent>
            </Tabs>

            <LinkContratoDialog
                open={isLinkDialogOpen}
                onOpenChange={setIsLinkDialogOpen}
                empreendimentoId={empreendimento.id}
                contratos={allContratos}
                lotes={allLotes}
            />

            <AlertDialog open={!!unlinkId} onOpenChange={(open) => !open && setUnlinkId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Desvincular Contrato?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Isso removerá a associação entre o contrato e este empreendimento.
                            Verifique se não há empenhos dependentes desta relação.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleUnlink} className="bg-red-600 hover:bg-red-700">
                            Desvincular
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div>
    )
}
