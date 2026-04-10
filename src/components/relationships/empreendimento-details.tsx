
"use client"

import { useState, useEffect, useCallback } from "react"
import { useParams } from "next/navigation"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Link2, Trash2, ExternalLink, Banknote, CalendarDays, FilePen, Hammer } from "lucide-react"
import { toast } from "sonner"
import Link from "next/link"

import { AvancoFisicoCard } from "@/components/medicoes/avanco-fisico-card"
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
}: EmpreendimentoDetailsProps) {
    // ── Lazy-load state para dados pesados das tabs ──────────────────────────
    const [empenhos, setEmpenhos] = useState<RelatedEmpenho[]>(empenhosIniciais)
    const [medicoes, setMedicoes] = useState<RelatedMedicao[]>(medicoesIniciais)
    const [indicators, setIndicators] = useState(indicatorsIniciais)
    const [empenhosLoading, setEmpenhosLoading] = useState(false)
    const [medicoesLoading, setMedicoesLoading] = useState(false)
    const [empenhosLoaded, setEmpenhosLoaded] = useState(false)
    const [medicoesLoaded, setMedicoesLoaded] = useState(false)

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
            setMedicoes(flat)
            setMedicoesLoaded(true)
        } finally {
            setMedicoesLoading(false)
        }
    }, [medicoesLoaded, medicoesLoading, contratosComOriginalId])
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

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                <div className="flex flex-col gap-2">
                    <div className="flex flex-wrap items-center gap-2">
                        <h2 className="text-3xl font-bold tracking-tight">{empreendimento.nome}</h2>
                        <div className="flex gap-2">
                            {tiposServico.includes("Ambiental") && (
                                <Badge variant="secondary" className="bg-emerald-100 text-emerald-700 hover:bg-emerald-100 border-emerald-200">
                                    Ambi.
                                </Badge>
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

                return (
                    <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-5">
                        <Card>
                            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle className="text-sm font-medium">Contratos</CardTitle>
                                <FilePen className="h-4 w-4 text-muted-foreground" />
                            </CardHeader>
                            <CardContent>
                                <div className="flex items-baseline gap-2">
                                    <div className="text-2xl font-bold">{contratosComServicos.length}</div>
                                    <div className="text-sm font-semibold text-emerald-600 dark:text-emerald-500">
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalGlobal)}
                                    </div>
                                </div>
                                <div className="mt-2 space-y-0.5 border-t pt-2">
                                    <div className="flex justify-between text-[10px] text-muted-foreground">
                                        <span>Valor Contratual:</span>
                                        <span className="font-medium text-foreground">
                                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalOriginal)}
                                        </span>
                                    </div>
                                    <div className="flex justify-between text-[10px] text-muted-foreground">
                                        <span>Valor Aditado:</span>
                                        <span className="font-medium text-emerald-600">
                                            + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalAditamentos)}
                                        </span>
                                    </div>
                                    <div className="flex justify-between text-[10px] text-muted-foreground">
                                        <span>Reajuste:</span>
                                        <span className="font-medium text-blue-600">
                                            + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalReajustes)}
                                        </span>
                                    </div>
                                </div>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle className="text-sm font-medium">Serviços</CardTitle>
                                <Hammer className="h-4 w-4 text-muted-foreground" />
                            </CardHeader>
                            <CardContent>
                                <div className="flex justify-between items-end">
                                    <div>
                                        <div className="text-2xl font-bold">{servicos?.length || 0}</div>
                                        <p className="text-xs text-muted-foreground">Total</p>
                                    </div>
                                    <div className="text-right">
                                        <div className="text-2xl font-bold text-amber-600 dark:text-amber-500">
                                            {servicos?.filter(s => !s.contrato_id).length || 0}
                                        </div>
                                        <p className="text-xs text-muted-foreground">Sem contrato</p>
                                    </div>
                                </div>
                                <div className="mt-3 pt-3 border-t">
                                    <div className="text-xs font-semibold text-orange-600 dark:text-orange-500">
                                        A Contratar: {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(valorAContratar)}
                                    </div>
                                    <p className="text-[10px] text-muted-foreground">Valor estimado sem contrato</p>
                                </div>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle className="text-sm font-medium">Exec. Financeira Planejada</CardTitle>
                                <Banknote className="h-4 w-4 text-muted-foreground" />
                            </CardHeader>
                            <CardContent>
                                <div className="text-2xl font-bold">
                                    {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(indicators?.valorPlanejadoTotal || 0)}
                                </div>
                                <div className="mt-3 pt-3 border-t">
                                    <div className="text-xs font-semibold text-blue-600 dark:text-blue-400">
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(indicators?.valorPlanejadoAno || 0)}
                                    </div>
                                    <p className="text-[10px] text-muted-foreground">Planejado para {new Date().getFullYear()}</p>
                                </div>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-1">
                                <CardTitle className="text-sm font-medium">Empenhos</CardTitle>
                                <div className="text-[10px] font-bold text-emerald-600 px-1.5 py-0.5 bg-emerald-100 rounded-full">PIZZA</div>
                            </CardHeader>
                            <CardContent className="pt-0">
                                <div className="flex items-center gap-3">
                                    <PieChart liquidado={totalLiquidado} saldo={saldoEmpenho} total={totalEmpenhoLiquido} />
                                    <div className="flex flex-col gap-1 flex-1">
                                        <div className="flex justify-between items-baseline gap-2">
                                            <span className="text-[9px] text-muted-foreground uppercase font-bold">Líquido</span>
                                            <span className="text-xs font-bold">{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalEmpenhoLiquido)}</span>
                                        </div>
                                        <div className="flex justify-between items-baseline gap-2">
                                            <div className="flex items-center gap-1">
                                                <div className="w-1.5 h-1.5 rounded-full bg-emerald-500" />
                                                <span className="text-[9px] text-muted-foreground uppercase font-bold">Liquidado</span>
                                            </div>
                                            <span className="text-xs font-bold text-emerald-600">{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(totalLiquidado)}</span>
                                        </div>
                                        <div className="flex justify-between items-baseline gap-2">
                                            <div className="flex items-center gap-1">
                                                <div className="w-1.5 h-1.5 rounded-full bg-amber-400" />
                                                <span className="text-[9px] text-muted-foreground uppercase font-bold">Saldo</span>
                                            </div>
                                            <span className="text-xs font-bold text-amber-600">{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(saldoEmpenho)}</span>
                                        </div>
                                    </div>
                                </div>
                            </CardContent>
                        </Card>
                        {avancoFisico && avancoFisico.valorMedidoTotal > 0 && (
                            <AvancoFisicoCard
                                percentualExecutado={avancoFisico.percentualExecutado}
                                valorMedidoTotal={avancoFisico.valorMedidoTotal}
                                valorContrato={avancoFisico.valorContrato}
                                ultimaMedicao={avancoFisico.ultimaMedicao}
                                valorLabel="planejado p/ Exec. de Obras"
                            />
                        )}
                    </div>
                );
            })()}

            <Tabs defaultValue="detalhes" className="space-y-4" onValueChange={(val) => {
                if (val === 'empenhos') loadEmpenhos()
                if (val === 'medicoes') loadMedicoes()
            }}>
                <TabsList>
                    <TabsTrigger value="detalhes">Detalhes</TabsTrigger>
                    <TabsTrigger value="servicos">Serviços</TabsTrigger>
                    <TabsTrigger value="contratos">Contratos Vinculados</TabsTrigger>
                    <TabsTrigger value="planejamento">Planejamento</TabsTrigger>
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
                    <PlanningTabContent
                        empreendimentoId={empreendimento.id}
                        empreendimentoNome={empreendimento.nome}
                        fases={fases}
                        servicos={servicos}
                        avancoFisico={avancoFisico?.percentualExecutado}
                        valorTotalContratos={contratosVinculados.reduce((sum, cv) => sum + (Number(cv.contrato?.valor_total) || 0), 0)}
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
