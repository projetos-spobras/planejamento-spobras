"use client"

import { useState, useEffect, useCallback, useRef } from "react"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import * as z from "zod"
import { Loader2 } from "lucide-react"
import { toast } from "sonner"
import { useRouter } from "next/navigation"

import { Button } from "@/components/ui/button"
import { Checkbox } from "@/components/ui/checkbox"
import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogFooter,
} from "@/components/ui/dialog"
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from "@/components/ui/form"
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"
import { createServico, updateServico } from "@/app/actions/servicos"
import { Servico } from "@/types"
import { TIPOS_SERVICO, STATUS_SERVICO } from "@/lib/constants"
import { paraFormatoInputDate, calcularDuracaoDias } from "@/lib/utils"

// ─── Subtipos por Tipo de Serviço ───────────────────────────────────────────
const SUBTIPOS_CONFIG = {
    "Receita": {
        categorias: {
            projetos: [
                "Material Licit. Projetos",
                "Licit. Projetos",
                "Gerenc. Projetos",
            ],
            obras: [
                "Material Licit. Obras",
                "Licit. Obras",
                "Gerenc. Obras",
            ],
        },
        regra: "exclusivo_por_categoria" as const
    },
    "Desapropriações": {
        opcoes: [
            "Material Exp.",
            "Ações Desap.",
        ],
        regra: "multiplo" as const
    },
    "Ambiental": {
        opcoes: [
            "LAP",
            "LAI",
            "LAO",
            "Taxa Ambiental",
            "TCA",
        ],
        regra: "multiplo" as const
    }
}

type SubtipoConfig = typeof SUBTIPOS_CONFIG
type TipoComSubtipo = keyof SubtipoConfig

// ────────────────────────────────────────────────────────────────────────────

const formSchema = z.object({
    contrato_id: z.string().optional(),
    descricao: z.string().optional(),
    data_inicio: z.string().optional(),
    data_fim: z.string().optional(),
    duracao_dias: z.coerce.number().min(0, "A duração deve ser pelo menos 0 dia").optional(),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    status: z.enum([...STATUS_SERVICO] as [string, ...string[]]).optional(),
    valor_total: z.coerce.number().min(0).optional(),
    valor_contratual: z.coerce.number().min(0).optional().nullable(),
    acompanha_fisico: z.boolean().default(false),
    acompanha_financeiro: z.boolean().default(false),
})

type FormData = z.infer<typeof formSchema>

interface ServicoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    servicoToEdit?: Servico | null
    contratos: { id: string, numero: string, contratada: string | null, tipo?: string | null, valor_total?: number | null, data_inicio?: string | null, data_fim?: string | null }[]
    empreendimentoId: string
    onSuccess: () => void
}

export function ServicoDialog({
    open,
    onOpenChange,
    servicoToEdit,
    contratos,
    empreendimentoId,
    onSuccess
}: ServicoDialogProps) {
    const router = useRouter()
    const [isLoading, setIsLoading] = useState(false)
    const [displayValue, setDisplayValue] = useState("")

    // Subtipos selecionados — lista de strings (armazenado no banco como subtipo_receita)
    const [subtiposSelecionados, setSubtiposSelecionados] = useState<string[]>([])

    const formatBRL = useCallback((value: number) => {
        if (!value && value !== 0) return ""
        return new Intl.NumberFormat('pt-BR', {
            style: 'currency',
            currency: 'BRL'
        }).format(value)
    }, [])

    const parseBRL = useCallback((raw: string): number => {
        const digits = raw.replace(/[^\d]/g, '')
        if (!digits) return 0
        const cents = parseInt(digits, 10)
        return cents / 100
    }, [])

    const form = useForm<FormData>({
        resolver: zodResolver(formSchema) as any,
        defaultValues: {
            contrato_id: "",
            descricao: "",
            data_inicio: "",
            data_fim: "",
            duracao_dias: undefined,
            tipo: "Execução de Obras",
            status: "Andamento",
            valor_total: 0,
            valor_contratual: null,
            acompanha_fisico: false,
            acompanha_financeiro: false,
        },
    })

    // ─── Efeito de Hidratação e Sincronização ───
    useEffect(() => {
        if (!open) {
            // Limpeza ao fechar o diálogo se não for edição persistente
            if (!servicoToEdit) {
                setSubtiposSelecionados([])
            }
            return
        }

        if (servicoToEdit) {
            // Caso de EDIÇÃO
            form.reset({
                contrato_id: servicoToEdit.contrato_id || "",
                descricao: servicoToEdit.descricao || "",
                data_inicio: paraFormatoInputDate(servicoToEdit.data_inicio),
                data_fim: paraFormatoInputDate(servicoToEdit.data_fim),
                duracao_dias: servicoToEdit.duracao_dias ?? undefined,
                tipo: (servicoToEdit.tipo as any) || "Execução de Obras",
                status: (servicoToEdit.status as any) || "Andamento",
                valor_total: servicoToEdit.valor_total || 0,
                valor_contratual: servicoToEdit.valor_contratual ?? null,
                acompanha_fisico: servicoToEdit.acompanha_fisico ?? false,
                acompanha_financeiro: servicoToEdit.acompanha_financeiro ?? false,
            })
            setDisplayValue(servicoToEdit.valor_total ? formatBRL(servicoToEdit.valor_total) : "")
            
            // SEMPRE carregar os subtipos do objeto sendo editado
            if (servicoToEdit.tipo === "Ambiental") {
                setSubtiposSelecionados(servicoToEdit.subtipo_ambiental || [])
            } else if (servicoToEdit.tipo === "Receita") {
                setSubtiposSelecionados(servicoToEdit.subtipo_receita || [])
            } else if (servicoToEdit.tipo === "Desapropriações" || servicoToEdit.tipo === "Desapropriação" || servicoToEdit.tipo === "Desapropriações (Ações e Materiais)" || servicoToEdit.tipo === "AÇÃO EXPROPRIATÓRIA") {
                // Tenta carregar de subtipo_desapropriacao, com fallback para subtipo_receita
                const deDesapropriacao = (servicoToEdit as any).subtipo_desapropriacao || []
                const deReceita = (servicoToEdit as any).subtipo_receita || []
                setSubtiposSelecionados(deDesapropriacao.length > 0 ? deDesapropriacao : deReceita)
                
                // Força o tipo para o padrão para que o formulário exiba as opções corretas
                if (servicoToEdit.tipo !== "Desapropriações") {
                    form.setValue("tipo", "Desapropriações")
                }
            } else {
                setSubtiposSelecionados([])
            }
        } else {
            // Caso de NOVO SERVIÇO
            const defaultContratoId = contratos.length === 1 ? contratos[0].id : ""
            const defaultValor = contratos.length === 1 ? (contratos[0].valor_total ?? 0) : 0
            form.reset({
                contrato_id: defaultContratoId,
                descricao: "",
                data_inicio: "",
                data_fim: "",
                duracao_dias: undefined,
                tipo: "Execução de Obras",
                status: "Andamento",
                valor_total: defaultValor,
                valor_contratual: null,
                acompanha_fisico: false,
                acompanha_financeiro: false,
            })
            setDisplayValue(defaultValor ? formatBRL(defaultValor) : "")
            setSubtiposSelecionados([])
        }
    }, [open, servicoToEdit, contratos, form, formatBRL])

    // Monitorar mudança MANUAL de tipo para limpar subtipos
    const watchedTipo = form.watch("tipo")
    const prevTipoRef = useRef<string | null>(null)

    useEffect(() => {
        // Se o tipo mudou E não é a carga inicial (quando o tipo é igual ao do servicoToEdit)
        if (prevTipoRef.current && prevTipoRef.current !== watchedTipo) {
            // Se o usuário trocou manualmente o tipo, limpamos as seleções
            const isInitialLoad = servicoToEdit && watchedTipo === servicoToEdit.tipo
            if (!isInitialLoad) {
                setSubtiposSelecionados([])
            }
        }
        prevTipoRef.current = watchedTipo
    }, [watchedTipo, servicoToEdit])

    // Auto-fill and sync contract values
    const watchedContratoId = form.watch("contrato_id")
    useEffect(() => {
        if (!watchedContratoId || watchedContratoId === "none") {
            form.setValue("valor_contratual", null)
            return
        }

        const contrato = contratos.find(c => c.id === watchedContratoId)
        if (contrato) {
            const valorTotalContrato = contrato.valor_total || 0;
            const valorOriginalContrato = (contrato as any).valor_original || valorTotalContrato;

            // REGRA: O Valor Contratual do serviço SEMPRE recebe o valor TOTAL do contrato (original + aditamentos)
            form.setValue("valor_contratual", valorTotalContrato)

            // REGRA: O Valor Estimado (valor_total) depende se é novo ou edição
            const isAmbiental = form.getValues("tipo") === "Ambiental"
            if (!servicoToEdit) {
                // Cadastro Novo:
                if (isAmbiental) {
                    // Exceção Ambiental: Não preenchemos o valor total automaticamente, pois é uma "fatia"
                    form.setValue("valor_total", 0)
                    setDisplayValue("")
                } else {
                    // Outros: Valor Estimado = Valor Contratual (Original do contrato)
                    form.setValue("valor_total", valorOriginalContrato)
                    setDisplayValue(formatBRL(valorOriginalContrato))
                }
            } else {
                // Edição: Valor Estimado permanece o preenchido anteriormente (não mexemos aqui caso já exista)
                // Se por algum motivo estiver zerado, podemos sugerir o original, mas a regra diz para manter.
            }

            // Auto-preenchimento de metadados apenas para NOVOS registros
            if (!servicoToEdit) {
                
                if (contrato.data_inicio) {
                    form.setValue("data_inicio", paraFormatoInputDate(contrato.data_inicio), { shouldValidate: true })
                }
                
                if (contrato.data_fim) {
                    form.setValue("data_fim", paraFormatoInputDate(contrato.data_fim), { shouldValidate: true })
                    
                    if (contrato.data_inicio) {
                        const dias = calcularDuracaoDias(contrato.data_inicio, contrato.data_fim)
                        if (dias !== null) {
                            form.setValue("duracao_dias", dias)
                        }
                    }
                }
                
                if (contrato.tipo && (TIPOS_SERVICO.includes(contrato.tipo as any))) {
                    form.setValue("tipo", contrato.tipo, { shouldValidate: true })
                }
            }
        }
    }, [watchedContratoId, contratos, form, servicoToEdit, formatBRL])


    // ─── Lógica de seleção de subtipos ───

    const getReceitaCategoria = (subtipo: string): "projetos" | "obras" | null => {
        if ((SUBTIPOS_CONFIG.Receita.categorias.projetos as readonly string[]).includes(subtipo)) return "projetos"
        if ((SUBTIPOS_CONFIG.Receita.categorias.obras as readonly string[]).includes(subtipo)) return "obras"
        return null
    }

    const receitaCategoriaAtiva = (): "projetos" | "obras" | null => {
        for (const s of subtiposSelecionados) {
            const cat = getReceitaCategoria(s)
            if (cat) return cat
        }
        return null
    }

    const toggleSubtipo = (subtipo: string) => {
        const tipoAtual = form.getValues("tipo") as TipoComSubtipo
        const config = SUBTIPOS_CONFIG[tipoAtual]
        if (!config) return

        setSubtiposSelecionados(prev => {
            if (prev.includes(subtipo)) {
                return prev.filter(s => s !== subtipo)
            }

            if (tipoAtual === "Receita" && config.regra === "exclusivo_por_categoria") {
                const cat = getReceitaCategoria(subtipo)
                const ativa = prev.length > 0 ? getReceitaCategoria(prev[0]) : null
                if (ativa && cat && ativa !== cat) return prev // bloqueado
            }

            const newSelection = [...prev, subtipo]

            // REGRA: Se for Ambiental e houver qualquer subtipo selecionado, 
            // marcar automaticamente acompanha_fisico e acompanha_financeiro
            if (tipoAtual === "Ambiental" && newSelection.length > 0) {
                form.setValue("acompanha_fisico", true)
                form.setValue("acompanha_financeiro", true)
            }

            return newSelection
        })
    }

    const isSubtipoDisabled = (subtipo: string): boolean => {
        const tipoAtual = form.watch("tipo") as TipoComSubtipo
        if (tipoAtual !== "Receita") return false

        const ativa = receitaCategoriaAtiva()
        if (!ativa) return false
        const cat = getReceitaCategoria(subtipo)
        return !!cat && cat !== ativa
    }

    const onSubmit = async (values: FormData) => {
        setIsLoading(true)
        try {
            const payload = {
                ...values,
                empreendimento_id: empreendimentoId,
                contrato_id: values.contrato_id || null,
                // Sanitize empty strings to null so Postgres doesn't choke on invalid timestamps
                data_inicio: values.data_inicio || null,
                data_fim: values.data_fim || null,
                duracao_dias: values.duracao_dias ?? null,
                subtipo_receita: (values.tipo === "Receita" || values.tipo === "Desapropriações") && subtiposSelecionados.length > 0
                    ? subtiposSelecionados
                    : null,
                subtipo_ambiental: (values.tipo === "Ambiental") && subtiposSelecionados.length > 0
                    ? subtiposSelecionados
                    : null,
            }

            if (servicoToEdit) {
                const res = await updateServico(servicoToEdit.id, payload)
                if (res.success) {
                    toast.success("Serviço atualizado")
                    onOpenChange(false)
                    onSuccess()
                } else {
                    toast.error("Erro ao atualizar: " + res.error)
                }
            } else {
                const res = await createServico(payload)
                if (res.success) {
                    toast.success("Serviço criado")
                    onOpenChange(false)
                    onSuccess()
                } else {
                    toast.error("Erro ao criar: " + res.error)
                }
            }
        } catch (error) {
            toast.error("Erro inesperado")
        } finally {
            setIsLoading(false)
            router.refresh()
        }
    }

    const tipoAtual = form.watch("tipo")

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[600px] max-h-[90vh] overflow-y-auto">
                <DialogHeader>
                    <DialogTitle>{servicoToEdit ? "Editar Serviço" : "Novo Serviço"}</DialogTitle>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="contrato_id"
                                render={({ field }) => (
                                    <FormItem className="col-span-2">
                                        <FormLabel>Contrato (Opcional)</FormLabel>
                                        <Select onValueChange={field.onChange} value={field.value || "none"}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione um contrato (opcional)" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectItem value="none">Sem contrato</SelectItem>
                                                {contratos.map(c => (
                                                    <SelectItem key={c.id} value={c.id}>
                                                        {c.numero} - {c.contratada || "Sem contratada"}
                                                    </SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="tipo"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Tipo de Serviço *</FormLabel>
                                        <Select onValueChange={field.onChange} defaultValue={field.value}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione o tipo" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                {TIPOS_SERVICO.map(t => (
                                                    <SelectItem key={t} value={t}>{t}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="data_inicio"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Data de Início Prevista (Opcional)</FormLabel>
                                        <FormControl>
                                            <Input 
                                                type="date" 
                                                lang="pt-BR"
                                                {...field} 
                                                value={paraFormatoInputDate(field.value)}
                                                onChange={(e) => {
                                                    field.onChange(e)
                                                    const start = e.target.value
                                                    const fim = form.getValues("data_fim")
                                                    const duracao = form.getValues("duracao_dias")
                                                    
                                                    if (fim) {
                                                        const dias = calcularDuracaoDias(start, fim)
                                                        if (dias !== null) form.setValue("duracao_dias", dias)
                                                    } else if (duracao) {
                                                        const match = start.match(/^(\d{4})-(\d{2})-(\d{2})/)
                                                        if (match) {
                                                            const endDate = new Date(Date.UTC(Number(match[1]), Number(match[2]) - 1, Number(match[3])))
                                                            endDate.setUTCDate(endDate.getUTCDate() + duracao)
                                                            form.setValue("data_fim", endDate.toISOString().split('T')[0])
                                                        }
                                                    }
                                                }}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="data_fim"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Data Fim Prevista (Opcional)</FormLabel>
                                        <FormControl>
                                            <Input 
                                                type="date" 
                                                lang="pt-BR"
                                                {...field} 
                                                value={paraFormatoInputDate(field.value)}
                                                onChange={(e) => {
                                                    field.onChange(e)
                                                    const end = e.target.value
                                                    const inicio = form.getValues("data_inicio")
                                                    if (inicio) {
                                                        const dias = calcularDuracaoDias(inicio, end)
                                                        if (dias !== null) form.setValue("duracao_dias", dias)
                                                    }
                                                }}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="duracao_dias"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Duração (Dias) (Opcional)</FormLabel>
                                        <FormControl>
                                            <Input 
                                                type="number" 
                                                min="0" 
                                                {...field} 
                                                value={field.value ?? ""}
                                                onChange={(e) => {
                                                    field.onChange(e)
                                                    const duracao = Number(e.target.value)
                                                    const inicio = form.getValues("data_inicio")
                                                    if (inicio && duracao >= 0) {
                                                        const match = inicio.match(/^(\d{4})-(\d{2})-(\d{2})/)
                                                        if (match) {
                                                            const endDate = new Date(Date.UTC(Number(match[1]), Number(match[2]) - 1, Number(match[3])))
                                                            endDate.setUTCDate(endDate.getUTCDate() + duracao)
                                                            form.setValue("data_fim", endDate.toISOString().split('T')[0])
                                                        }
                                                    }
                                                }}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        {/* ─── Subtipos de Receita ─── */}
                        {tipoAtual === "Receita" && (
                            <div className="rounded-md border p-4 space-y-4 bg-muted/30">
                                <p className="text-sm font-medium">Subtipos de Receita</p>
                                {receitaCategoriaAtiva() && (
                                    <p className="text-xs text-muted-foreground">
                                        {receitaCategoriaAtiva() === "projetos"
                                            ? "✓ Categoria Projetos selecionada — opções de Obras bloqueadas."
                                            : "✓ Categoria Obras selecionada — opções de Projetos bloqueadas."}
                                    </p>
                                )}
                                <div className="grid grid-cols-2 gap-6">
                                    {/* Projetos */}
                                    <div className="space-y-2">
                                        <p className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">Projetos</p>
                                        {SUBTIPOS_CONFIG.Receita.categorias.projetos.map(s => (
                                            <label
                                                key={s}
                                                className={`flex items-center gap-2 text-sm cursor-pointer ${isSubtipoDisabled(s) ? "opacity-40 cursor-not-allowed" : ""}`}
                                            >
                                                <Checkbox
                                                    checked={subtiposSelecionados.includes(s)}
                                                    onCheckedChange={() => !isSubtipoDisabled(s) && toggleSubtipo(s)}
                                                    disabled={isSubtipoDisabled(s)}
                                                />
                                                {s}
                                            </label>
                                        ))}
                                    </div>
                                    {/* Obras */}
                                    <div className="space-y-2">
                                        <p className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">Obras</p>
                                        {SUBTIPOS_CONFIG.Receita.categorias.obras.map(s => (
                                            <label
                                                key={s}
                                                className={`flex items-center gap-2 text-sm cursor-pointer ${isSubtipoDisabled(s) ? "opacity-40 cursor-not-allowed" : ""}`}
                                            >
                                                <Checkbox
                                                    checked={subtiposSelecionados.includes(s)}
                                                    onCheckedChange={() => !isSubtipoDisabled(s) && toggleSubtipo(s)}
                                                    disabled={isSubtipoDisabled(s)}
                                                />
                                                {s}
                                            </label>
                                        ))}
                                    </div>
                                </div>
                            </div>
                        )}

                        {/* ─── Subtipos de Desapropriações ─── */}
                        {tipoAtual === "Desapropriações" && (
                            <div className="rounded-md border p-4 space-y-4 bg-muted/30">
                                <p className="text-sm font-medium">Subtipos de Desapropriações</p>
                                <div className="grid grid-cols-1 gap-2">
                                    {SUBTIPOS_CONFIG.Desapropriações.opcoes.map(s => (
                                        <label
                                            key={s}
                                            className="flex items-center gap-2 text-sm cursor-pointer"
                                        >
                                            <Checkbox
                                                checked={subtiposSelecionados.includes(s)}
                                                onCheckedChange={() => toggleSubtipo(s)}
                                            />
                                            {s}
                                        </label>
                                    ))}
                                </div>
                            </div>
                        )}

                        {/* ─── Subtipos de Ambiental ─── */}
                        {tipoAtual === "Ambiental" && (
                            <div className="rounded-md border p-4 space-y-4 bg-emerald-50/30 dark:bg-emerald-950/10 border-emerald-100 dark:border-emerald-900/50">
                                <div className="flex items-center justify-between">
                                    <p className="text-sm font-medium text-emerald-800 dark:text-emerald-300">Licenciamento e Taxas Ambientais</p>
                                    <span className="text-[10px] bg-emerald-100 dark:bg-emerald-900 text-emerald-700 dark:text-emerald-400 px-2 py-0.5 rounded-full font-semibold uppercase">Gestão Ambiental</span>
                                </div>
                                <div className="grid grid-cols-2 gap-2">
                                    {(SUBTIPOS_CONFIG.Ambiental.opcoes as readonly string[]).map(s => (
                                        <label
                                            key={s}
                                            className="flex items-center gap-2 text-sm cursor-pointer hover:bg-emerald-50 dark:hover:bg-emerald-900/20 p-1.5 rounded transition-colors"
                                        >
                                            <Checkbox
                                                checked={subtiposSelecionados.includes(s)}
                                                onCheckedChange={() => toggleSubtipo(s)}
                                                className="data-[state=checked]:bg-emerald-600 data-[state=checked]:border-emerald-600"
                                            />
                                            {s}
                                        </label>
                                    ))}
                                </div>
                                <p className="text-[11px] text-emerald-600/80 dark:text-emerald-400/80 italic">
                                    * Selecionar um subtipo habilita automaticamente o acompanhamento físico e financeiro.
                                </p>
                            </div>
                        )}

                        <FormField
                            control={form.control}
                            name="descricao"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Descrição (Opcional)</FormLabel>
                                    <FormControl>
                                        <Textarea placeholder="Descrição do serviço..." {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="valor_total"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Valor Estimado (R$)</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="text"
                                                inputMode="numeric"
                                                placeholder="R$ 0,00"
                                                value={displayValue}
                                                onChange={(e) => {
                                                    const numeric = parseBRL(e.target.value)
                                                    field.onChange(numeric)
                                                    setDisplayValue(formatBRL(numeric))
                                                }}
                                                onBlur={field.onBlur}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="valor_contratual"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Valor Contratual (R$)</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="text"
                                                readOnly
                                                placeholder="Preenchido ao vincular contrato"
                                                className="bg-muted/50 cursor-default"
                                                value={field.value != null ? formatBRL(field.value) : ""}
                                            />
                                        </FormControl>
                                        <p className="text-[11px] text-muted-foreground">Preenchido automaticamente pelo contrato</p>
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="status"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Status</FormLabel>
                                        <Select onValueChange={field.onChange} value={field.value}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione o status" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                {STATUS_SERVICO.map(s => (
                                                    <SelectItem key={s} value={s}>{s}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        {/* Checkboxes de Planejamento */}
                        <div className="rounded-lg border p-4 space-y-3">
                            <p className="text-sm font-semibold">Planejamento</p>
                            <p className="text-xs text-muted-foreground">
                                Defina em quais distribuições este serviço deve aparecer.
                            </p>
                            <div className="flex gap-6">
                                <FormField
                                    control={form.control}
                                    name="acompanha_fisico"
                                    render={({ field }) => (
                                        <FormItem className="flex flex-row items-center gap-2 space-y-0">
                                            <FormControl>
                                                <Checkbox
                                                    checked={field.value}
                                                    onCheckedChange={field.onChange}
                                                />
                                            </FormControl>
                                            <FormLabel className="font-normal cursor-pointer">
                                                Acompanha Físico
                                            </FormLabel>
                                        </FormItem>
                                    )}
                                />
                                <FormField
                                    control={form.control}
                                    name="acompanha_financeiro"
                                    render={({ field }) => (
                                        <FormItem className="flex flex-row items-center gap-2 space-y-0">
                                            <FormControl>
                                                <Checkbox
                                                    checked={field.value}
                                                    onCheckedChange={field.onChange}
                                                />
                                            </FormControl>
                                            <FormLabel className="font-normal cursor-pointer">
                                                Acompanha Financeiro
                                            </FormLabel>
                                        </FormItem>
                                    )}
                                />
                            </div>
                        </div>

                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => onOpenChange(false)}>Cancelar</Button>
                            <Button type="submit" disabled={isLoading}>
                                {isLoading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                                {servicoToEdit ? "Salvar Alterações" : "Criar Serviço"}
                            </Button>
                        </DialogFooter>
                    </form>
                </Form>
            </DialogContent>
        </Dialog>
    )
}
