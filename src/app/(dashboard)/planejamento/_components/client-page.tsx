"use client"

import React, { useState } from "react"
import { Plus, Pencil, Trash2, Search, ChevronRight, ChevronDown, BarChart2, Layers, AlertTriangle } from "lucide-react"
import { toast } from "sonner"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip"
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

import { PlanejamentoFase, Empreendimento, Servico, DistribuicaoFinanceira } from "@/types"
import { deletePlanejamento, updatePlanejamentoBatchPesos } from "@/app/(dashboard)/planejamento/actions"
import { saveDistribuicaoFinanceiraBatch } from "@/app/(dashboard)/planejamento/financeiro-actions"
import { syncHistoricalPlanning } from "../import-planejamento-actions"
import { PlanejamentoDialog } from "./planejamento-dialog"
import { FinancialChart } from "./financial-chart"
import { AditamentoDialog } from "./aditamento-dialog"
import { RefreshCw } from "lucide-react"

interface PlanejamentoClientProps {
    servicos: (Servico & { empreendimento_nome: string, fases: PlanejamentoFase[], distribuicao_financeira?: DistribuicaoFinanceira[] })[]
    empreendimentos: { id: string, nome: string }[]
    hideEmpreendimento?: boolean
    totalServicos?: number
}

const mesesNomes = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]

const FONTES_DE_RECURSO = [
    "A Definir",
    "FMSAI",
    "FMSAI - Não Empenhável",
    "FUNDURB",
    "FUNDURB - Não Empenh.",
    "OPC",
    "OPC - Não Empenh",
    "OUCAB",
    "OUCAE",
    "OUCENTRO",
    "OUCFL",
    "PMSP",
    "PMSP - Não Empenh.",
    "PORTARIA SME/SIURB",
    "SPOBRAS"
]

export const formatCurrencyInput = (value: string | number) => {
    if (value === "" || value === undefined || value === null) return ""
    let valStr = String(value)
    if (typeof value === "number") {
        valStr = value.toFixed(2)
    }
    let onlyDigits = valStr.replace(/\D/g, "")
    if (!onlyDigits) return ""
    const number = parseInt(onlyDigits, 10) / 100
    return new Intl.NumberFormat("pt-BR", { minimumFractionDigits: 2, maximumFractionDigits: 2 }).format(number)
}

export const parseCurrencyValue = (value: string) => {
    if (!value) return 0
    const cleanValue = value.replace(/\./g, "").replace(",", ".")
    return parseFloat(cleanValue) || 0
}

export function PlanejamentoClient({ servicos, empreendimentos, hideEmpreendimento = false, totalServicos: totalServicosProp }: PlanejamentoClientProps) {
    const [searchTerm, setSearchTerm] = useState("")
    const [expandedServicos, setExpandedServicos] = useState<Set<string>>(new Set())

    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [planejamentoToEdit, setPlanejamentoToEdit] = useState<PlanejamentoFase | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

    // For aditamento
    const [isAditamentoDialogOpen, setIsAditamentoDialogOpen] = useState(false)
    const [selectedServicoForAditamento, setSelectedServicoForAditamento] = useState<any>(null)

    // For creating subserviços
    const [defaultEmpreendimentoId, setDefaultEmpreendimentoId] = useState<string>("")
    const [defaultServicoId, setDefaultServicoId] = useState<string>("")
    const [defaultServicoTipo, setDefaultServicoTipo] = useState<string>("")
    const [defaultFaseName, setDefaultFaseName] = useState<string>("")
    const [defaultDataInicio, setDefaultDataInicio] = useState<Date | undefined>(undefined)
    const [defaultDataFim, setDefaultDataFim] = useState<Date | undefined>(undefined)

    // For financial drilldown
    const [expandedAnos, setExpandedAnos] = useState<Set<string>>(new Set())
    const [financialValues, setFinancialValues] = useState<Record<string, Array<{ id: string, valor: string, fonte: string }>>>({})
    const [savingFinanceiro, setSavingFinanceiro] = useState(false)
    // For physical drilldown (pesos)
    const [pesoValues, setPesoValues] = useState<Record<string, string>>({})
    const [savingPesos, setSavingPesos] = useState(false)

    // For historical sync
    const [isSyncing, setIsSyncing] = useState(false)

    // For visualization control
    const [filterSource, setFilterSource] = useState<'all' | 'manual' | 'automatic'>('all')
    const [onlyNoContract, setOnlyNoContract] = useState(false)
    const [displayLimit, setDisplayLimit] = useState(20)

    React.useEffect(() => {
        const initialFinanceiro: Record<string, Array<{ id: string, valor: string, fonte: string }>> = {}
        const initialPesos: Record<string, string> = {}
        
        servicos.forEach(s => {
            // First, gather unique fonts for each year for this service
            const yearSources = new Map<number, Set<string>>()
            s.distribuicao_financeira?.forEach(d => {
                const ano = d.ano
                if (!yearSources.has(ano)) yearSources.set(ano, new Set())
                yearSources.get(ano)!.add(d.fonte_recurso || "A Definir")
            })

            // Sort or just array-ify the sources
            const yearSourcesArray = new Map<number, string[]>()
            yearSources.forEach((fontes, ano) => {
                yearSourcesArray.set(ano, Array.from(fontes))
            })

            // Default fallback if no distributions exist but we need to show the UI
            const currentYear = new Date().getFullYear()
            const anosToInit = yearSourcesArray.size > 0 
                ? Array.from(yearSourcesArray.keys()) 
                : [currentYear, currentYear + 1]

            // Now, populate all 12 months mapping the values to the existing sources
            anosToInit.forEach(ano => {
                const fontesArray = yearSourcesArray.get(ano) || ["A Definir"]
                for (let mes = 1; mes <= 12; mes++) {
                    const key = `${s.id}-${ano}-${mes}`
                    const distsForMonth = s.distribuicao_financeira?.filter(d => d.ano === ano && d.mes === mes) || []
                    
                    initialFinanceiro[key] = fontesArray.map(fonte => {
                        const existingDist = distsForMonth.find(d => (d.fonte_recurso || "A Definir") === fonte)
                        return {
                            id: existingDist?.id || Math.random().toString(36).substring(7),
                            valor: existingDist ? formatCurrencyInput(Number(existingDist.valor)) : "",
                            fonte: fonte
                        }
                    })
                }
            })

            s.fases?.forEach(f => {
                initialPesos[f.id] = (f.peso_percentual || 0).toString()
            })
        })
        setFinancialValues(initialFinanceiro)
        setPesoValues(initialPesos)
    }, [servicos])

    const toggleExpandAno = (key: string) => {
        const newSet = new Set(expandedAnos)
        if (newSet.has(key)) newSet.delete(key)
        else newSet.add(key)
        setExpandedAnos(newSet)
    }

    const toggleExpand = (id: string) => {
        const newSet = new Set(expandedServicos)
        if (newSet.has(id)) newSet.delete(id)
        else newSet.add(id)
        setExpandedServicos(newSet)
    }

    const filteredServicos = servicos.filter(s => {
        const searchLower = searchTerm.toLowerCase()
        const matchesSearch = 
            s.descricao?.toLowerCase().includes(searchLower) ||
            s.empreendimento_nome.toLowerCase().includes(searchLower) ||
            s.fases.some(f => f.fase?.toLowerCase().includes(searchLower))
        
        if (!matchesSearch) return false

        // Origem do Planejamento: Manuel vs Automático
        // Consideramos automático se ele foi criado hoje E não tem fonte_recurso preenchida em nenhuma distribuição
        const isAutomatic = s.distribuicao_financeira?.every(d => !d.fonte_recurso) && 
                          new Date(s.created_at || "").toDateString() === new Date().toDateString()
        
        if (filterSource === 'manual' && isAutomatic) return false
        if (filterSource === 'automatic' && !isAutomatic) return false

        // Filtro de Contrato
        if (onlyNoContract && s.contrato_id !== null) return false

        return true
    })

    const paginatedServicos = filteredServicos.slice(0, displayLimit)

    const getProgressInfo = (start?: string | null, endOrDuracao?: string | number | null) => {
        if (!start) return { percent: 0, label: "0%" }
        const startTime = new Date(start).getTime()
        let endTime = startTime
        if (typeof endOrDuracao === "number") {
            endTime = startTime + endOrDuracao * 86400000
        } else if (typeof endOrDuracao === "string") {
            endTime = new Date(endOrDuracao).getTime()
        }
        if (endTime <= startTime) return { percent: 0, label: "0%" }
        const now = Date.now()
        if (now < startTime) return { percent: 0, label: "0%" }
        if (now >= endTime) return { percent: 100, label: "100%" }
        const p = ((now - startTime) / (endTime - startTime)) * 100
        return { percent: p, label: `${p.toFixed(1)}%` }
    }

    const getServicoProgressInfo = (s: any) => {
        if (s.tipo === "Execução de Obras" && s.fases && s.fases.length > 0) {
            let totalPercent = 0
            s.fases.forEach((fase: any) => {
                const peso = parseFloat(pesoValues[fase.id]) || 0
                if (peso > 0 && fase.data_inicio && fase.data_fim) {
                    const prog = getProgressInfo(fase.data_inicio, fase.data_fim)
                    totalPercent += prog.percent * (peso / 100)
                }
            })
            return { percent: Math.min(100, totalPercent), label: `${Math.min(100, totalPercent).toFixed(1)}%` }
        }
        return getProgressInfo(s.data_inicio, s.duracao_dias)
    }

    const getFinancialProgressInfo = (s: any) => {
        let totalValores = 0
        let valorAteAtual = 0

        const now = new Date()
        const currentYear = now.getFullYear()
        const currentMonth = now.getMonth() + 1
        const currentDay = now.getDate()
        const daysInCurrentMonth = new Date(currentYear, currentMonth, 0).getDate()

        Object.keys(financialValues).forEach(key => {
            if (key.startsWith(`${s.id}-`)) {
                const parts = key.split("-")
                if (parts.length >= 3) {
                    const ano = parseInt(parts[parts.length - 2])
                    const mes = parseInt(parts[parts.length - 1])
                    
                    const entries = financialValues[key] || []
                    const val = entries.reduce((sum, entry) => sum + (parseCurrencyValue(entry.valor) || 0), 0)

                    totalValores += val

                    if (ano < currentYear || (ano === currentYear && mes < currentMonth)) {
                        valorAteAtual += val
                    } else if (ano === currentYear && mes === currentMonth) {
                        valorAteAtual += val * (currentDay / daysInCurrentMonth)
                    }
                }
            }
        })

        if (s.fases && s.fases.length > 0) {
            s.fases.forEach((fase: any) => {
                const valPlanejado = Number(fase.valor_planejado || 0)
                if (valPlanejado > 0) {
                    totalValores += valPlanejado
                    if (fase.data_inicio && fase.data_fim) {
                        const p = getProgressInfo(fase.data_inicio, fase.data_fim)
                        valorAteAtual += valPlanejado * (p.percent / 100)
                    } else if (fase.data_inicio && s.duracao_dias) {
                        const p = getProgressInfo(fase.data_inicio, s.duracao_dias)
                        valorAteAtual += valPlanejado * (p.percent / 100)
                    }
                }
            })
        }

        if (totalValores > 0) {
            const percent = (valorAteAtual / totalValores) * 100
            return { percent: Math.min(100, Math.max(0, percent)), label: `${Math.min(100, Math.max(0, percent)).toFixed(1)}%` }
        }

        return getServicoProgressInfo(s)
    }

    const handleDelete = async () => {
        if (!deleteId) return
        const result = await deletePlanejamento(deleteId)
        if (result.success) {
            toast.success("Planejamento excluído com sucesso")
        } else {
            toast.error("Erro ao excluir: " + result.error)
        }
        setDeleteId(null)
    }

    const handleSaveDistribuicao = async (servicoId: string) => {
        setSavingFinanceiro(true)
        const distribuicoes = []
        for (const key in financialValues) {
            if (key.startsWith(`${servicoId}-`)) {
                const parts = key.split("-")
                const ano = parseInt(parts[parts.length - 2])
                const mes = parseInt(parts[parts.length - 1])
                const entries = financialValues[key] || []
                for (const entry of entries) {
                    const valor = parseCurrencyValue(entry.valor) || 0
                    if (valor > 0) {
                        distribuicoes.push({ ano, mes, valor, fonte_recurso: entry.fonte })
                    }
                }
            }
        }
        const res = await saveDistribuicaoFinanceiraBatch(servicoId, distribuicoes)
        if (res.success) {
            toast.success("Distribuição financeira salva com sucesso!")
        } else {
            toast.error("Erro ao salvar: " + (res as any).error)
        }
        setSavingFinanceiro(false)
    }

    const handleSavePesos = async (servicoId: string, fases: PlanejamentoFase[]) => {
        setSavingPesos(true)
        const updates = fases.map(f => ({
            id: f.id,
            peso_percentual: parseFloat(pesoValues[f.id]) || 0,
        }))
        const sum = updates.reduce((acc, curr) => acc + curr.peso_percentual, 0)
        if (Math.abs(sum - 100) > 0.1) {
            toast.warning(`A soma dos pesos (${sum.toFixed(1)}%) deveria ser 100%`)
        }
        const res = await updatePlanejamentoBatchPesos(updates)
        if (res.success) {
            toast.success("Pesos físicos salvos com sucesso!")
        } else {
            toast.error("Erro ao salvar pesos: " + (res as any).error)
        }
        setSavingPesos(false)
    }

    const handleSyncHistory = async () => {
        setIsSyncing(true)
        toast.info("Iniciando sincronização de medições históricas... Isso pode levar alguns minutos.")
        
        try {
            const result = await syncHistoricalPlanning()
            if (result.success) {
                const stats = result.stats
                toast.success(`Sincronização concluída! Serviços: ${stats?.servicosCriados}, Distribuições: ${stats?.distribuicoesCriadas}, Aditamentos: ${stats?.aditamentosAtualizados}`)
            } else {
                toast.error("Erro na sincronização: " + result.error)
            }
        } catch (error) {
            toast.error("Erro inesperado na sincronização")
        } finally {
            setIsSyncing(false)
        }
    }

    const getAnosDoServico = (s: any) => {
        if (s.data_inicio) {
            const startYear = new Date(s.data_inicio).getFullYear()
            const endYear = s.data_fim
                ? new Date(s.data_fim).getFullYear()
                : s.duracao_dias
                    ? (() => { const d = new Date(s.data_inicio); d.setDate(d.getDate() + s.duracao_dias); return d.getFullYear() })()
                    : startYear
            
            // Também considera as fases para determinar o ano final
            let finalYear = endYear;
            if (s.fases && s.fases.length > 0) {
                s.fases.forEach((f: any) => {
                    if (f.data_fim) {
                        const fYear = new Date(f.data_fim).getFullYear();
                        if (fYear > finalYear) finalYear = fYear;
                    }
                });
            }
            
            if (s.aditamento_anos) {
                finalYear += s.aditamento_anos;
            }
            
            return Array.from({ length: finalYear - startYear + 1 }, (_, i) => startYear + i)
        }
        // Sem datas: oferecer ano corrente e próximo para planejamento
        const currentYear = new Date().getFullYear()
        return [currentYear, currentYear + 1]
    }

    const getServiceLastMonthYear = (s: any) => {
        if (!s.data_inicio) return null;
        const start = new Date(s.data_inicio);
        let end = new Date(start);
        
        if (s.data_fim) {
            end = new Date(s.data_fim);
        } else if (s.duracao_dias) {
            end.setDate(end.getDate() + s.duracao_dias);
        }

        // Check if phases extend the date
        if (s.fases && s.fases.length > 0) {
            s.fases.forEach((f: any) => {
                if (f.data_fim) {
                    const fEnd = new Date(f.data_fim);
                    if (fEnd > end) end = fEnd;
                }
            });
        }

        if (s.aditamento_anos) {
            end.setFullYear(end.getFullYear() + s.aditamento_anos);
        }

        return {
            ano: end.getFullYear(),
            mes: end.getMonth() + 1
        };
    };

    const handleOpenAmendmentDialog = (servico: any) => {
        setSelectedServicoForAditamento(servico);
        setIsAditamentoDialogOpen(true);
    };

    const openCreateSubservico = (servicoId: string, empId: string, tipo: string) => {
        setPlanejamentoToEdit(null)
        setDefaultEmpreendimentoId(empId)
        setDefaultServicoId(servicoId)
        setDefaultServicoTipo(tipo)
        setDefaultFaseName("")
        setDefaultDataInicio(undefined)
        setDefaultDataFim(undefined)
        setIsDialogOpen(true)
    }

    const openCreateDialog = () => {
        setPlanejamentoToEdit(null)
        setDefaultEmpreendimentoId("")
        setDefaultServicoId("")
        setDefaultServicoTipo("")
        setDefaultFaseName("")
        setDefaultDataInicio(undefined)
        setDefaultDataFim(undefined)
        setIsDialogOpen(true)
    }

    const openEditDialog = (item: PlanejamentoFase, tipoServico: string = "") => {
        setPlanejamentoToEdit(item)
        setDefaultEmpreendimentoId(item.empreendimento_id)
        setDefaultServicoId(item.servico_id || "")
        setDefaultServicoTipo(tipoServico)
        setDefaultFaseName("")
        setDefaultDataInicio(undefined)
        setDefaultDataFim(undefined)
        setIsDialogOpen(true)
    }

    // ─── Global KPI calculations ───────────────────────────────────────────────
    const kpiValorEstimado = servicos.reduce((acc, s) => {
        const isAmbiental = s.tipo === 'Ambiental'
        const val = isAmbiental 
            ? (s.valor_total) 
            : (s.contrato_id ? (s.valor_contratual || s.valor_total) : s.valor_total)
        return acc + Number(val || 0)
    }, 0)

    const kpiTotalContratado = servicos
        .filter(s => !!s.contrato_id)
        .reduce((acc, s) => {
            const isAmbiental = s.tipo === 'Ambiental'
            const val = isAmbiental ? (s.valor_total) : (s.valor_contratual || s.valor_total || 0)
            return acc + Number(val || 0)
        }, 0)

    // 3.3 A Contratar: diferença entre estimado total e contratado
    const kpiAContratar = kpiValorEstimado - kpiTotalContratado

    // 3.4 Total Planejado Global: soma de todas as distribuições financeiras
    const kpiTotalPlanejado = servicos.reduce((acc, s) => {
        const distSum = s.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor || 0), 0) || 0
        return acc + distSum
    }, 0)

    // Avanço físico planejado: média ponderada dos serviços com incidência física (não-Execução de Obras)
    // usando peso_percentual das fases e progresso temporal dos prazos
    const getProgressPercent = (start: string, end: string): number => {
        const s = new Date(start).getTime()
        const e = new Date(end).getTime()
        if (e <= s) return 0
        const now = Date.now()
        if (now < s) return 0
        if (now >= e) return 100
        return ((now - s) / (e - s)) * 100
    }

    // Serviços com incidência física: todos que têm data_inicio + duracao_dias ou data_fim
    const servicosFisicos = servicos.filter(s => s.data_inicio && (s.duracao_dias || s.data_fim))
    const avancoFisicoGlobal = servicosFisicos.length > 0
        ? servicosFisicos.reduce((acc, s) => {
            if (s.tipo === 'Execução de Obras' && s.fases && s.fases.length > 0) {
                // Ponderado por peso_percentual das fases
                let prog = 0
                s.fases.forEach((f: any) => {
                    const peso = Number(f.peso_percentual || 0)
                    if (peso > 0 && f.data_inicio && f.data_fim) {
                        prog += getProgressPercent(f.data_inicio, f.data_fim) * (peso / 100)
                    }
                })
                return acc + Math.min(100, prog)
            }
            // Outros tipos (Ambiental, Desapropriação etc): progresso pelo prazo do serviço
            const end = s.data_fim
                ? s.data_fim
                : (() => { const d = new Date(s.data_inicio!); d.setDate(d.getDate() + (s.duracao_dias || 0)); return d.toISOString() })()
            return acc + getProgressPercent(s.data_inicio!, end)
        }, 0) / servicosFisicos.length
        : 0

    // ─── Financial tab KPIs ───────────────────────────────────────────────────
    const totalServicos = totalServicosProp ?? servicos.length

    // 4.2 Com Contrato: serviços que têm contrato_id
    const servicosComContrato = servicos.filter(s => !!s.contrato_id).length

    // 4.3 A Contratar: sem contrato ainda
    const servicosAContratar = totalServicos - servicosComContrato

    // 4.4 A Planejar Financeiro: serviços com contrato mas sem distribuição financeira cadastrada
    const servicosComContratoSemPlano = servicos.filter(s => {
        if (!s.contrato_id) return false
        const temDistribuicao = s.distribuicao_financeira && s.distribuicao_financeira.length > 0
        const temFasesValor = s.fases && s.fases.some((f: any) => Number(f.valor_planejado || 0) > 0)
        return !temDistribuicao && !temFasesValor
    }).length

    const formatCurrency = (val: number) =>
        new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL" }).format(val)

    const formatCompact = (val: number) =>
        new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL", notation: "compact", maximumFractionDigits: 1 }).format(val)

    return (
        <div className="space-y-6">
            {/* Header */}
            <div className="flex items-center justify-between">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Planejamento</h2>
                    <p className="text-muted-foreground">
                        Cronograma de serviços e suas respectivas fases (subserviços).
                    </p>
                </div>
                <div className="flex items-center gap-2">
                    <Button 
                        variant="outline" 
                        onClick={handleSyncHistory} 
                        disabled={isSyncing}
                        className="border-emerald-200 hover:bg-emerald-50 text-emerald-700"
                    >
                        <RefreshCw className={`mr-2 h-4 w-4 ${isSyncing ? "animate-spin" : ""}`} />
                        {isSyncing ? "Sincronizando..." : "Importar Medições"}
                    </Button>
                    <Button onClick={openCreateDialog}>
                        <Plus className="mr-2 h-4 w-4" /> Novo Planejamento Avulso
                    </Button>
                </div>
            </div>

            {/* Global KPIs — valor + contador unificados */}
            <div className="grid grid-cols-1 sm:grid-cols-4 gap-4">
                {/* Card 1: Estimado + Total de Serviços */}
                <Card className="border-l-4 border-l-blue-500">
                    <CardHeader className="pb-1 pt-4 px-4">
                        <CardTitle className="text-xs font-semibold text-muted-foreground uppercase tracking-wide">
                            Valor Estimado em Serviços
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="px-4 pb-4">
                        <div className="text-2xl font-bold text-foreground">{formatCompact(kpiValorEstimado)}</div>
                        <div className="text-xs text-muted-foreground mt-0.5">{formatCurrency(kpiValorEstimado)}</div>
                        <div className="mt-3 pt-3 border-t flex items-baseline gap-1.5">
                            <span className="text-xl font-bold text-foreground">{totalServicos}</span>
                            <span className="text-xs text-muted-foreground">serviços cadastrados</span>
                        </div>
                    </CardContent>
                </Card>

                {/* Card 2: Contratado + Com Contrato */}
                <Card className="border-l-4 border-l-emerald-500">
                    <CardHeader className="pb-1 pt-4 px-4">
                        <CardTitle className="text-xs font-semibold text-muted-foreground uppercase tracking-wide">
                            Total Contratado
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="px-4 pb-4">
                        <div className="text-2xl font-bold text-emerald-600">{formatCompact(kpiTotalContratado)}</div>
                        <div className="text-xs text-muted-foreground mt-0.5">{formatCurrency(kpiTotalContratado)}</div>
                        <div className="mt-3 pt-3 border-t flex items-baseline gap-1.5">
                            <span className="text-xl font-bold text-emerald-600">{servicosComContrato}</span>
                            <span className="text-xs text-muted-foreground">com contrato vinculado</span>
                        </div>
                    </CardContent>
                </Card>

                {/* Card 3: A Contratar (valor) + A Contratar (qtd) */}
                <Card className="border-l-4 border-l-orange-400">
                    <CardHeader className="pb-1 pt-4 px-4">
                        <CardTitle className="text-xs font-semibold text-muted-foreground uppercase tracking-wide">
                            A Contratar
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="px-4 pb-4">
                        <div className={`text-2xl font-bold ${kpiAContratar > 0 ? "text-orange-500" : "text-emerald-600"}`}>
                            {formatCompact(Math.abs(kpiAContratar))}
                        </div>
                        <div className="text-xs text-muted-foreground mt-0.5">{formatCurrency(Math.abs(kpiAContratar))}</div>
                        <div className="mt-3 pt-3 border-t flex items-baseline gap-1.5">
                            <span className={`text-xl font-bold ${servicosAContratar > 0 ? "text-orange-500" : "text-emerald-600"}`}>
                                {servicosAContratar}
                            </span>
                            <span className="text-xs text-muted-foreground">sem contrato</span>
                        </div>
                    </CardContent>
                </Card>

                {/* Card 4: Planejado vs A Planejar Financeiro */}
                <Card className="border-l-4 border-l-indigo-400">
                    <CardHeader className="pb-1 pt-4 px-4">
                        <CardTitle className="text-xs font-semibold text-muted-foreground uppercase tracking-wide">
                            Planejamento Financeiro
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="px-4 pb-4">
                        <div className="text-2xl font-bold text-indigo-600">{formatCompact(kpiTotalPlanejado)}</div>
                        <div className="text-xs text-muted-foreground mt-0.5">{formatCurrency(kpiTotalPlanejado)}</div>
                        <div className="mt-3" />
                        {(() => {
                            // 1 - Valor de contratos que já foram planejados (apenas o que foi distribuído)
                            const valorContratosPlanejados = servicos
                                .filter(s => !!s.contrato_id)
                                .reduce((acc, s) => {
                                    const planejado = s.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor || 0), 0) || 0
                                    return acc + planejado
                                }, 0)

                            // 2 - Valores contratados sem planejamento (o que falta para atingir o valor contratual)
                            const valorContratosSemPlano = servicos
                                .filter(s => !!s.contrato_id)
                                .reduce((acc, s) => {
                                    const total = Number(s.valor_contratual || s.valor_total || 0)
                                    const planejado = s.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor || 0), 0) || 0
                                    const falta = Math.max(0, total - planejado)
                                    return acc + falta
                                }, 0)

                            // 3 - Valores estimados (sem contrato) que faltam planejar
                            const valorEstimadosSemPlano = servicos
                                .filter(s => !s.contrato_id)
                                .reduce((acc, s) => {
                                    const total = Number(s.valor_total || 0)
                                    const planejado = s.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor || 0), 0) || 0
                                    const falta = Math.max(0, total - planejado)
                                    return acc + falta
                                }, 0)

                            const total = valorContratosPlanejados + valorContratosSemPlano + valorEstimadosSemPlano
                            const pctCPlan = total > 0 ? (valorContratosPlanejados / total) * 100 : 0
                            const pctCSem = total > 0 ? (valorContratosSemPlano / total) * 100 : 0
                            const pctESem = total > 0 ? (valorEstimadosSemPlano / total) * 100 : 0

                            const qtdContratosSemPlano = servicos.filter(s => {
                                if (!s.contrato_id) return false
                                const temDist = s.distribuicao_financeira && s.distribuicao_financeira.length > 0
                                const temFases = s.fases && s.fases.some((f: any) => Number(f.valor_planejado || 0) > 0)
                                return !temDist && !temFases
                            }).length

                            return (
                                <div className="space-y-3">
                                    {/* Stacked bar */}
                                    <div className="relative h-4 w-full bg-secondary rounded-full overflow-hidden flex">
                                        {pctCPlan > 0 && (
                                            <div
                                                className="h-full bg-emerald-500 transition-all border-r border-background/20"
                                                style={{ width: `${pctCPlan}%` }}
                                                title={`Contratos Planejados: ${formatCompact(valorContratosPlanejados)} (${pctCPlan.toFixed(1)}%)`}
                                            />
                                        )}
                                        {pctCSem > 0 && (
                                            <div
                                                className="h-full bg-amber-400 transition-all border-r border-background/20"
                                                style={{ width: `${pctCSem}%` }}
                                                title={`Contratos Sem Plano: ${formatCompact(valorContratosSemPlano)} (${pctCSem.toFixed(1)}%)`}
                                            />
                                        )}
                                        {pctESem > 0 && (
                                            <div
                                                className="h-full bg-blue-400 transition-all"
                                                style={{ width: `${pctESem}%` }}
                                                title={`Estimados Sem Plano: ${formatCompact(valorEstimadosSemPlano)} (${pctESem.toFixed(1)}%)`}
                                            />
                                        )}
                                    </div>

                                    {/* Legend */}
                                    <div className="space-y-1.5">
                                        <div className="flex items-center justify-between text-xs">
                                            <span className="flex items-center gap-1.5">
                                                <span className="inline-block w-2.5 h-2.5 rounded-sm bg-emerald-500" />
                                                <span className="text-muted-foreground">Contratos Planejados</span>
                                            </span>
                                            <span className="font-bold text-emerald-600">{formatCompact(valorContratosPlanejados)}</span>
                                        </div>
                                        <div className="flex items-center justify-between text-xs">
                                            <span className="flex items-center gap-1.5">
                                                <span className="inline-block w-2.5 h-2.5 rounded-sm bg-amber-400" />
                                                <span className="text-muted-foreground">Contratos Sem Plano</span>
                                            </span>
                                            <span className={`font-bold ${valorContratosSemPlano > 0 ? "text-amber-500" : "text-emerald-600"}`}>
                                                {formatCompact(valorContratosSemPlano)}
                                            </span>
                                        </div>
                                        <div className="flex items-center justify-between text-xs">
                                            <span className="flex items-center gap-1.5">
                                                <span className="inline-block w-2.5 h-2.5 rounded-sm bg-blue-400" />
                                                <span className="text-muted-foreground">Estimados Sem Plano</span>
                                            </span>
                                            <span className={`font-bold ${valorEstimadosSemPlano > 0 ? "text-blue-500" : "text-emerald-600"}`}>
                                                {formatCompact(valorEstimadosSemPlano)}
                                            </span>
                                        </div>
                                    </div>

                                    <div className="pt-2 border-t flex items-baseline gap-1.5">
                                        <span className={`text-xl font-bold ${qtdContratosSemPlano > 0 ? "text-amber-500" : "text-emerald-600"}`}>
                                            {qtdContratosSemPlano}
                                        </span>
                                        <span className="text-xs text-muted-foreground">contratos a planejar</span>
                                    </div>
                                </div>
                            )
                        })()}
                    </CardContent>
                </Card>
            </div>

            {/* Search and Filters bar */}
            <div className="flex flex-col md:flex-row items-start md:items-center gap-4 bg-muted/30 p-4 rounded-lg border border-muted-foreground/10">
                <div className="flex items-center flex-1 w-full max-w-sm relative">
                    <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                    <Input
                        placeholder="Buscar por serviço ou empreendimento..."
                        value={searchTerm}
                        onChange={(e) => setSearchTerm(e.target.value)}
                        className="pl-9"
                    />
                </div>
                
                <div className="flex flex-wrap items-center gap-3 w-full md:w-auto">
                    <div className="flex items-center gap-2">
                        <span className="text-xs font-medium text-muted-foreground whitespace-nowrap">Origem:</span>
                        <Select value={filterSource} onValueChange={(v: any) => setFilterSource(v)}>
                            <SelectTrigger className="w-[160px] h-9 text-xs">
                                <SelectValue placeholder="Origem" />
                            </SelectTrigger>
                            <SelectContent>
                                <SelectItem value="all">Todas as Origens</SelectItem>
                                <SelectItem value="manual">Manual / Antigos</SelectItem>
                                <SelectItem value="automatic">Importado (API)</SelectItem>
                            </SelectContent>
                        </Select>
                    </div>

                    <div className="flex items-center gap-2 bg-background px-3 py-1.5 rounded-md border text-xs h-9">
                        <label htmlFor="onlyNoContract" className="cursor-pointer font-medium text-muted-foreground">Sem Contrato:</label>
                        <input 
                            id="onlyNoContract"
                            type="checkbox" 
                            checked={onlyNoContract} 
                            onChange={(e) => setOnlyNoContract(e.target.checked)}
                            className="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-600 cursor-pointer"
                        />
                    </div>
                    
                    <div className="flex-1 md:flex-none text-right">
                        <span className="text-xs text-muted-foreground">
                            Mostrando <strong className="text-foreground">{Math.min(displayLimit, filteredServicos.length)}</strong> de <strong className="text-foreground">{filteredServicos.length}</strong> serviços
                        </span>
                    </div>
                </div>
            </div>

            {/* Main Tabs */}
            <Tabs defaultValue="financeiro" className="w-full">
                <TabsList className="mb-4">
                    <TabsTrigger value="financeiro" className="gap-2">
                        <BarChart2 className="h-4 w-4" />
                        Financeiro
                    </TabsTrigger>
                    <TabsTrigger value="fisico" className="gap-2">
                        <Layers className="h-4 w-4" />
                        Físico
                    </TabsTrigger>
                </TabsList>

                {/* ─── ABA FINANCEIRO ─────────────────────────────────────── */}
                <TabsContent value="financeiro" className="space-y-6">

                    {/* Financial chart */}
                    <Card>
                        <CardHeader className="px-6 pt-5 pb-2">
                            <CardTitle className="text-base font-semibold">Andamento Financeiro Previsto</CardTitle>
                            <p className="text-xs text-muted-foreground">Distribuição de valores planejados por mês</p>
                        </CardHeader>
                        <CardContent className="px-6 pb-6">
                            <FinancialChart servicos={servicos} financialValues={financialValues} />
                        </CardContent>
                    </Card>

                    {/* Financial distribution table */}
                    <div className="rounded-md border overflow-x-auto">
                        <Table className="min-w-[900px]">
                            <TableHeader>
                                <TableRow>
                                    <TableHead className="w-[40px]"></TableHead>
                                    {!hideEmpreendimento && <TableHead className="min-w-[180px]">Empreendimento</TableHead>}
                                    <TableHead className="w-[120px]">Tipo</TableHead>
                                    <TableHead className="min-w-[250px]">Serviço</TableHead>
                                    <TableHead className="w-[130px]">Valor Total</TableHead>
                                    <TableHead className="w-[140px]">Total Planejado</TableHead>
                                    <TableHead className="w-[160px]">Andamento Previsto</TableHead>
                                    <TableHead className="w-[130px] text-right">Ações</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {filteredServicos.length === 0 ? (
                                    <TableRow>
                                        <TableCell colSpan={7} className="h-24 text-center">
                                            Nenhum serviço encontrado.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    paginatedServicos.filter(s => s.acompanha_financeiro).map((servico) => (
                                        <React.Fragment key={servico.id}>
                                            <TableRow className="bg-muted/50 hover:bg-muted/80">
                                                <TableCell>
                                                    <Button variant="ghost" size="sm" className="h-6 w-6 p-0" onClick={() => toggleExpand(servico.id)}>
                                                        {expandedServicos.has(servico.id) ? <ChevronDown className="h-4 w-4" /> : <ChevronRight className="h-4 w-4" />}
                                                    </Button>
                                                </TableCell>
                                                {!hideEmpreendimento && <TableCell className="font-medium text-xs">{servico.empreendimento_nome}</TableCell>}
                                                <TableCell className="text-xs text-muted-foreground">{servico.tipo}</TableCell>
                                                <TableCell className="group">
                                                    <div className="flex items-center justify-between">
                                                        <div>
                                                            <div className="font-semibold text-sm flex items-center gap-2">
                                                                <span>{servico.descricao}</span>
                                                                {(servico.aditamento_anos || 0) > 0 && !servico.aditamento_formalizado && (
                                                                    <TooltipProvider>
                                                                        <Tooltip>
                                                                            <TooltipTrigger asChild>
                                                                                <AlertTriangle className="h-4 w-4 text-orange-500" />
                                                                            </TooltipTrigger>
                                                                            <TooltipContent>
                                                                                <p className="text-xs">Este aditamento de prazo não está formalizado!</p>
                                                                            </TooltipContent>
                                                                        </Tooltip>
                                                                    </TooltipProvider>
                                                                )}
                                                            </div>
                                                            <div className="text-xs text-muted-foreground uppercase">{servico.status || "Pendente"}</div>
                                                        </div>
                                                        <TooltipProvider>
                                                            <Tooltip>
                                                                <TooltipTrigger asChild>
                                                                    <Button 
                                                                        variant="ghost" 
                                                                        size="sm" 
                                                                        className="h-7 w-7 p-0 transition-opacity text-emerald-600"
                                                                        onClick={() => handleOpenAmendmentDialog(servico)}
                                                                        title="Adicionar Aditamento de Prazo"
                                                                    >
                                                                        <Plus className="h-4 w-4" />
                                                                    </Button>
                                                                </TooltipTrigger>
                                                                <TooltipContent>
                                                                    <p className="text-xs">Adicionar Aditamento de Prazo</p>
                                                                </TooltipContent>
                                                            </Tooltip>
                                                        </TooltipProvider>
                                                    </div>
                                                </TableCell>
                                                <TableCell className="font-medium text-xs">
                                                    {(() => {
                                                        const isAmbiental = servico.tipo === 'Ambiental';
                                                        const valorExibir = isAmbiental 
                                                            ? (Number(servico.valor_total) || 0)
                                                            : (servico.contrato_id && servico.valor_contratual ? servico.valor_contratual : (Number(servico.valor_total) || 0));
                                                        return valorExibir > 0 ? formatCurrency(valorExibir) : "-";
                                                    })()}
                                                </TableCell>
                                                <TableCell>
                                                    <div className="text-sm font-semibold">
                                                        {formatCompact(
                                                            servico.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor), 0) || 0
                                                        )}
                                                    </div>
                                                </TableCell>
                                                <TableCell>
                                                    {servico.data_inicio && (() => {
                                                        const progFin = getFinancialProgressInfo(servico)
                                                        return (
                                                            <div className="space-y-1.5 w-full min-w-[120px]">
                                                                <div className="relative h-2 w-full bg-secondary rounded-full overflow-hidden">
                                                                    <div className="absolute top-0 bottom-0 left-0 bg-emerald-500 rounded-full" style={{ width: `${progFin.percent}%` }} />
                                                                </div>
                                                                <div className="text-[10px] text-muted-foreground">{progFin.label}</div>
                                                            </div>
                                                        )
                                                    })()}
                                                </TableCell>
                                                <TableCell className="text-right">
                                                    {/* No actions needed at service level for financial tab */}
                                                </TableCell>
                                            </TableRow>

                                            {/* Financial drilldown by year/month */}
                                            {expandedServicos.has(servico.id) && servico.acompanha_financeiro && getAnosDoServico(servico).map(ano => {
                                                const anoKey = `${servico.id}-${ano}`
                                                const totalAno = mesesNomes.reduce((sum, _, i) => sum + (financialValues[`${servico.id}-${ano}-${i + 1}`] || []).reduce((s, e) => s + (parseCurrencyValue(e.valor) || 0), 0), 0)

                                                return (
                                                    <React.Fragment key={anoKey}>
                                                        <TableRow className="bg-muted/30">
                                                            <TableCell></TableCell>
                                                            {!hideEmpreendimento && <TableCell></TableCell>}
                                                            <TableCell></TableCell>
                                                            <TableCell className="pl-6 flex items-center gap-2 font-semibold text-primary">
                                                                <Button variant="ghost" size="sm" className="h-6 w-6 p-0" onClick={() => toggleExpandAno(anoKey)}>
                                                                    {expandedAnos.has(anoKey) ? <ChevronDown className="h-4 w-4" /> : <ChevronRight className="h-4 w-4" />}
                                                                </Button>
                                                                Ano {ano}
                                                            </TableCell>
                                                            <TableCell></TableCell>
                                                            <TableCell className="font-semibold text-sm">
                                                                {formatCompact(totalAno)}
                                                            </TableCell>
                                                            <TableCell></TableCell>
                                                            <TableCell className="text-right">
                                                                <Button size="sm" variant="outline" onClick={() => handleSaveDistribuicao(servico.id)} disabled={savingFinanceiro}>
                                                                    Salvar Previsto
                                                                </Button>
                                                            </TableCell>
                                                        </TableRow>
                                                        {expandedAnos.has(anoKey) && mesesNomes.map((mesNome, index) => {
                                                            const mes = index + 1
                                                            const fieldKey = `${servico.id}-${ano}-${mes}`
                                                            return (
                                                                <TableRow key={fieldKey} className="bg-background">
                                                                    <TableCell></TableCell>
                                                                    {!hideEmpreendimento && <TableCell></TableCell>}
                                                                    <TableCell></TableCell>
                                                                    <TableCell className="pl-12 flex items-center justify-between text-sm text-muted-foreground group">
                                                                        <div className="flex items-center gap-2">
                                                                            <div className="w-1 h-1 rounded-full bg-border" />
                                                                            {mesNome}
                                                                        </div>
                                                                        
                                                                        {(() => {
                                                                            const lastInfo = getServiceLastMonthYear(servico);
                                                                            if (lastInfo && lastInfo.ano === ano && lastInfo.mes === mes) {
                                                                                return (
                                                                                    <TooltipProvider>
                                                                                        <Tooltip>
                                                                                            <TooltipTrigger asChild>
                                                                                                <Button 
                                                                                                    variant="ghost" 
                                                                                                    size="sm" 
                                                                                                    className="h-6 w-6 p-0 opacity-0 group-hover:opacity-100 transition-opacity"
                                                                                                    onClick={() => handleOpenAmendmentDialog(servico)}
                                                                                                >
                                                                                                    <Plus className="h-3 w-3" />
                                                                                                </Button>
                                                                                            </TooltipTrigger>
                                                                                            <TooltipContent>
                                                                                                <p className="text-xs">Adicionar Aditamento de Prazo</p>
                                                                                            </TooltipContent>
                                                                                        </Tooltip>
                                                                                    </TooltipProvider>
                                                                                )
                                                                            }
                                                                            return null;
                                                                        })()}
                                                                    </TableCell>
                                                                    <TableCell></TableCell>
                                                                    <TableCell colSpan={3}>
                                                                        <div className="flex flex-col gap-2">
                                                                            {(financialValues[fieldKey] && financialValues[fieldKey].length > 0 ? financialValues[fieldKey] : [{ id: Math.random().toString(), valor: "", fonte: "A Definir" }]).map((entry, idx, entries) => (
                                                                                <div key={entry.id} className="flex items-center gap-2">
                                                                                    <span className="text-sm font-medium">R$</span>
                                                                                    <Input
                                                                                        type="text"
                                                                                        className="h-8 w-28 text-right"
                                                                                        value={entry.valor}
                                                                                        onChange={(e) => {
                                                                                            const newEntries = [...entries]
                                                                                            newEntries[idx] = { ...newEntries[idx], valor: formatCurrencyInput(e.target.value) }
                                                                                            setFinancialValues(prev => ({ ...prev, [fieldKey]: newEntries }))
                                                                                        }}
                                                                                        placeholder="0,00"
                                                                                    />
                                                                                    <Select
                                                                                        value={entry.fonte}
                                                                                        onValueChange={(val) => {
                                                                                            setFinancialValues(prev => {
                                                                                                const newState = { ...prev }
                                                                                                for (let m = 1; m <= 12; m++) {
                                                                                                    const k = `${servico.id}-${ano}-${m}`
                                                                                                    const cur = newState[k] ? [...newState[k]] : []
                                                                                                    if (cur[idx]) {
                                                                                                        cur[idx] = { ...cur[idx], fonte: val }
                                                                                                    } else {
                                                                                                        cur[idx] = { id: Math.random().toString(36).substring(7), valor: "", fonte: val }
                                                                                                    }
                                                                                                    newState[k] = cur
                                                                                                }
                                                                                                return newState
                                                                                            })
                                                                                        }}
                                                                                    >
                                                                                        <SelectTrigger className="h-8 w-[200px]">
                                                                                            <SelectValue placeholder="Fonte de Recurso" />
                                                                                        </SelectTrigger>
                                                                                        <SelectContent>
                                                                                            {FONTES_DE_RECURSO.map(f => (
                                                                                                <SelectItem key={f} value={f}>{f}</SelectItem>
                                                                                            ))}
                                                                                        </SelectContent>
                                                                                    </Select>
                                                                                    {entries.length > 1 && (
                                                                                        <Button
                                                                                            variant="ghost"
                                                                                            size="icon"
                                                                                            className="h-8 w-8 text-red-500"
                                                                                            onClick={() => {
                                                                                                setFinancialValues(prev => {
                                                                                                    const newState = { ...prev }
                                                                                                    for (let m = 1; m <= 12; m++) {
                                                                                                        const k = `${servico.id}-${ano}-${m}`
                                                                                                        const cur = newState[k] || []
                                                                                                        newState[k] = cur.filter((_, index) => index !== idx)
                                                                                                    }
                                                                                                    return newState
                                                                                                })
                                                                                            }}
                                                                                            title="Remover fonte"
                                                                                        >
                                                                                            <Trash2 className="h-4 w-4" />
                                                                                        </Button>
                                                                                    )}
                                                                                    {idx === entries.length - 1 && (
                                                                                        <Button
                                                                                            variant="ghost"
                                                                                            size="icon"
                                                                                            className="h-8 w-8 text-emerald-600"
                                                                                            onClick={() => {
                                                                                                const newIdBase = Math.random().toString(36).substring(7)
                                                                                                setFinancialValues(prev => {
                                                                                                    const newState = { ...prev }
                                                                                                    for (let m = 1; m <= 12; m++) {
                                                                                                        const k = `${servico.id}-${ano}-${m}`
                                                                                                        const cur = newState[k] || []
                                                                                                        newState[k] = [...cur, { id: newIdBase + m, valor: "", fonte: "A Definir" }]
                                                                                                    }
                                                                                                    return newState
                                                                                                })
                                                                                            }}
                                                                                            title="Adicionar fonte de recurso"
                                                                                        >
                                                                                            <Plus className="h-4 w-4" />
                                                                                        </Button>
                                                                                    )}
                                                                                </div>
                                                                            ))}
                                                                        </div>
                                                                    </TableCell>
                                                                </TableRow>
                                                            )
                                                        })}
                                                    </React.Fragment>
                                                )
                                            })}
                                        </React.Fragment>
                                    ))
                                )}
                            </TableBody>
                        </Table>
                    </div>
                </TabsContent>

                {/* ─── ABA FÍSICO ──────────────────────────────────────────── */}
                <TabsContent value="fisico" className="space-y-4">
                    <div className="rounded-md border overflow-x-auto">
                        <Table className="min-w-[1000px]">
                            <TableHeader>
                                <TableRow>
                                    <TableHead className="w-[40px]"></TableHead>
                                    {!hideEmpreendimento && <TableHead className="min-w-[180px]">Empreendimento</TableHead>}
                                    <TableHead className="w-[120px]">Tipo</TableHead>
                                    <TableHead className="min-w-[250px] max-w-[300px]">Fase / Status</TableHead>
                                    <TableHead className="w-[130px]">Valor Total</TableHead>
                                    <TableHead className="w-[90px]">Início</TableHead>
                                    <TableHead className="w-[90px]">Fim Previsto</TableHead>
                                    <TableHead className="w-[140px]">Total Planejado</TableHead>
                                    <TableHead className="w-[80px]">Peso (%)</TableHead>
                                    <TableHead className="min-w-[160px]">Avanço Planejado</TableHead>
                                    <TableHead className="w-[130px] text-right">Ações</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {filteredServicos.length === 0 ? (
                                    <TableRow>
                                        <TableCell colSpan={7} className="h-24 text-center">
                                            Nenhum serviço encontrado.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    paginatedServicos.filter(s => s.acompanha_fisico).map((servico) => (
                                        <React.Fragment key={servico.id}>
                                            <TableRow className="bg-muted/50 hover:bg-muted/80">
                                                <TableCell>
                                                    <Button variant="ghost" size="sm" className="h-6 w-6 p-0" onClick={() => toggleExpand(servico.id)}>
                                                        {expandedServicos.has(servico.id) ? <ChevronDown className="h-4 w-4" /> : <ChevronRight className="h-4 w-4" />}
                                                    </Button>
                                                </TableCell>
                                                {!hideEmpreendimento && <TableCell className="font-medium text-xs">{servico.empreendimento_nome}</TableCell>}
                                                <TableCell className="text-xs text-muted-foreground">{servico.tipo}</TableCell>
                                                <TableCell className="group">
                                                    <div className="flex items-center justify-between">
                                                        <div>
                                                            <div className="font-semibold text-sm flex items-center gap-2">
                                                                <span>{servico.descricao}</span>
                                                                {(servico.aditamento_anos || 0) > 0 && !servico.aditamento_formalizado && (
                                                                    <TooltipProvider>
                                                                        <Tooltip>
                                                                            <TooltipTrigger asChild>
                                                                                <AlertTriangle className="h-4 w-4 text-orange-500" />
                                                                            </TooltipTrigger>
                                                                            <TooltipContent>
                                                                                <p className="text-xs">Este aditamento de prazo não está formalizado!</p>
                                                                            </TooltipContent>
                                                                        </Tooltip>
                                                                    </TooltipProvider>
                                                                )}
                                                            </div>
                                                            <div className="text-xs text-muted-foreground uppercase">{servico.status || "Pendente"}</div>
                                                        </div>
                                                        <TooltipProvider>
                                                            <Tooltip>
                                                                <TooltipTrigger asChild>
                                                                    <Button 
                                                                        variant="ghost" 
                                                                        size="sm" 
                                                                        className="h-7 w-7 p-0 transition-opacity text-emerald-600"
                                                                        onClick={() => handleOpenAmendmentDialog(servico)}
                                                                        title="Adicionar Aditamento de Prazo"
                                                                    >
                                                                        <Plus className="h-4 w-4" />
                                                                    </Button>
                                                                </TooltipTrigger>
                                                                <TooltipContent>
                                                                    <p className="text-xs">Adicionar Aditamento de Prazo</p>
                                                                </TooltipContent>
                                                            </Tooltip>
                                                        </TooltipProvider>
                                                    </div>
                                                </TableCell>
                                                <TableCell className="font-medium text-xs">
                                                    {(() => {
                                                        const isAmbiental = servico.tipo === 'Ambiental';
                                                        const valorExibir = isAmbiental 
                                                            ? (Number(servico.valor_total) || 0)
                                                            : (servico.contrato_id && servico.valor_contratual ? servico.valor_contratual : (Number(servico.valor_total) || 0));
                                                        return valorExibir > 0 ? formatCurrency(valorExibir) : "-";
                                                    })()}
                                                </TableCell>
                                                <TableCell>
                                                    {servico.data_inicio ? format(new Date(servico.data_inicio), "dd/MM/yy") : "-"}
                                                </TableCell>
                                                <TableCell>
                                                    {(servico.data_inicio && servico.duracao_dias) ? (() => { const d = new Date(servico.data_inicio); d.setDate(d.getDate() + servico.duracao_dias); return format(d, "dd/MM/yy") })() : "-"}
                                                </TableCell>
                                                <TableCell>
                                                    <div className="text-sm font-semibold">
                                                        {formatCompact(
                                                            servico.distribuicao_financeira?.reduce((sum: number, d: any) => sum + Number(d.valor), 0) || 0
                                                        )}
                                                    </div>
                                                </TableCell>
                                                <TableCell>
                                                    {servico.tipo === "Execução de Obras" ? (
                                                        <span className={`text-xs font-bold ${Math.abs((servico.fases?.reduce((sum: number, f: any) => sum + (parseFloat(pesoValues[f.id]) || 0), 0) || 0) - 100) > 0.1 ? "text-red-500" : "text-green-600"}`}>
                                                            {(servico.fases?.reduce((sum: number, f: any) => sum + (parseFloat(pesoValues[f.id]) || 0), 0) || 0).toFixed(1)}%
                                                        </span>
                                                    ) : "-"}
                                                </TableCell>
                                                <TableCell>
                                                    {servico.data_inicio && (() => {
                                                        const prog = getServicoProgressInfo(servico)
                                                        const progFin = getFinancialProgressInfo(servico)
                                                        const isObra = servico.tipo === "Execução de Obras"
                                                        return (
                                                            <div className="space-y-1.5 w-full min-w-[120px]">
                                                                {isObra && (
                                                                    <div className="relative h-2 w-full bg-secondary rounded-full overflow-hidden" title={`Avanço Físico: ${prog.label}`}>
                                                                        <div className="absolute top-0 bottom-0 left-0 bg-blue-500 rounded-full" style={{ width: `${prog.percent}%` }} />
                                                                    </div>
                                                                )}
                                                                <div className="relative h-2 w-full bg-secondary rounded-full overflow-hidden" title={`Avanço Financeiro: ${progFin.label}`}>
                                                                    <div className="absolute top-0 bottom-0 left-0 bg-green-500 rounded-full" style={{ width: `${progFin.percent}%` }} />
                                                                </div>
                                                                <div className="flex justify-between text-[10px] text-muted-foreground px-0.5">
                                                                    {isObra && <span>Fís: {prog.label}</span>}
                                                                    <span className={isObra ? "" : "ml-auto"}>Fin: {progFin.label}</span>
                                                                </div>
                                                            </div>
                                                        )
                                                    })()}
                                                </TableCell>
                                                <TableCell className="text-right">
                                                    <div className="flex items-center justify-end gap-1">
                                                        {servico.tipo === "Execução de Obras" && (
                                                            <Button variant="ghost" size="sm" onClick={() => handleSavePesos(servico.id, servico.fases)} disabled={savingPesos} title="Salvar Pesos Físicos">
                                                                Pesos
                                                            </Button>
                                                        )}
                                                        <TooltipProvider>
                                                            <Tooltip>
                                                                <TooltipTrigger asChild>
                                                                    <Button 
                                                                        variant="ghost" 
                                                                        size="sm" 
                                                                        onClick={() => handleOpenAmendmentDialog(servico)}
                                                                        title="Adicionar Aditamento de Prazo"
                                                                    >
                                                                        <Plus className="h-4 w-4 text-emerald-600" />
                                                                    </Button>
                                                                </TooltipTrigger>
                                                                <TooltipContent>
                                                                    <p className="text-xs">Adicionar Aditamento de Prazo</p>
                                                                </TooltipContent>
                                                            </Tooltip>
                                                        </TooltipProvider>
                                                        {servico.tipo === "Execução de Obras" && (
                                                            <Button variant="ghost" size="sm" onClick={() => openCreateSubservico(servico.id, servico.empreendimento_id || "", servico.tipo || "")}>
                                                                <Plus className="h-4 w-4" /> Fase
                                                            </Button>
                                                        )}
                                                    </div>
                                                </TableCell>
                                            </TableRow>

                                            {/* Fases (subserviços) drilldown */}
                                            {expandedServicos.has(servico.id) && servico.fases.map(fase => (
                                                <TableRow key={fase.id} className="bg-background">
                                                    <TableCell></TableCell>
                                                    {!hideEmpreendimento && <TableCell></TableCell>}
                                                    <TableCell></TableCell>
                                                    <TableCell className="pl-8 flex items-center gap-2">
                                                        <div className="w-1 h-1 rounded-full bg-muted-foreground" />
                                                        <span>{fase.fase}</span>
                                                    </TableCell>
                                                    <TableCell></TableCell>
                                                    <TableCell className="text-muted-foreground">
                                                        {fase.data_inicio ? format(new Date(fase.data_inicio), "dd/MM/yy") : "-"}
                                                    </TableCell>
                                                    <TableCell className="text-muted-foreground">
                                                        {fase.data_fim ? format(new Date(fase.data_fim), "dd/MM/yy") : "-"}
                                                    </TableCell>
                                                    <TableCell className="text-muted-foreground">
                                                        {new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL", notation: "compact" }).format(Number(fase.valor_planejado) || 0)}
                                                    </TableCell>
                                                    <TableCell>
                                                        {servico.tipo === "Execução de Obras" ? (
                                                            <Input
                                                                type="number"
                                                                className="h-7 w-16 text-xs px-1"
                                                                value={pesoValues[fase.id] || ""}
                                                                onChange={(e) => setPesoValues(prev => ({ ...prev, [fase.id]: e.target.value }))}
                                                            />
                                                        ) : "-"}
                                                    </TableCell>
                                                    <TableCell>
                                                        {fase.data_inicio && (() => {
                                                            const prog = getProgressInfo(fase.data_inicio, fase.data_fim)
                                                            return (
                                                                <div className="space-y-1">
                                                                    <div className="relative h-2 w-full bg-secondary/70 rounded-full overflow-hidden">
                                                                        <div className="absolute top-0 bottom-0 left-0 bg-blue-400 rounded-full" style={{ width: `${prog.percent}%` }} />
                                                                    </div>
                                                                </div>
                                                            )
                                                        })()}
                                                    </TableCell>
                                                    <TableCell className="text-right">
                                                        <DropdownMenu>
                                                            <DropdownMenuTrigger asChild>
                                                                <Button variant="ghost" className="h-8 w-8 p-0">
                                                                    <span className="sr-only">Abrir menu</span>
                                                                    <Pencil className="h-4 w-4" />
                                                                </Button>
                                                            </DropdownMenuTrigger>
                                                            <DropdownMenuContent align="end">
                                                                <DropdownMenuItem onClick={() => openEditDialog(fase, servico.tipo || "")}>
                                                                    Editar Fase
                                                                </DropdownMenuItem>
                                                                <DropdownMenuItem
                                                                    onClick={() => setDeleteId(fase.id)}
                                                                    className="text-red-600 focus:text-red-600"
                                                                >
                                                                    Excluir Fase
                                                                </DropdownMenuItem>
                                                            </DropdownMenuContent>
                                                        </DropdownMenu>
                                                    </TableCell>
                                                </TableRow>
                                            ))}
                                        </React.Fragment>
                                    ))
                                )}
                            </TableBody>
                        </Table>
                    </div>
                </TabsContent>
            </Tabs>

            <PlanejamentoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                planejamentoToEdit={planejamentoToEdit}
                empreendimentos={empreendimentos}
                defaultEmpreendimentoId={defaultEmpreendimentoId}
                defaultServicoId={defaultServicoId}
                defaultServicoTipo={defaultServicoTipo}
                defaultFaseName={defaultFaseName}
                defaultDataInicio={defaultDataInicio}
                defaultDataFim={defaultDataFim}
            />

            <AditamentoDialog
                open={isAditamentoDialogOpen}
                onOpenChange={setIsAditamentoDialogOpen}
                servicoId={selectedServicoForAditamento?.id || ""}
                defaultAnos={selectedServicoForAditamento?.aditamento_anos}
                defaultFormalizado={selectedServicoForAditamento?.aditamento_formalizado}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Excluir Fase</AlertDialogTitle>
                        <AlertDialogDescription>
                            Tem certeza que deseja excluir esta fase? Esta ação não pode ser desfeita.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleDelete} className="bg-red-600 hover:bg-red-700">
                            Excluir
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div>
    )
}
