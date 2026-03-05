"use client"

import { useState, useEffect, useCallback } from "react"
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
    }
}

type SubtipoConfig = typeof SUBTIPOS_CONFIG
type TipoComSubtipo = keyof SubtipoConfig

// ────────────────────────────────────────────────────────────────────────────

const formSchema = z.object({
    contrato_id: z.string().optional(),
    codigo: z.string().optional(),
    descricao: z.string().optional(),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    status: z.enum([...STATUS_SERVICO] as [string, ...string[]]).optional(),
    valor_total: z.coerce.number().min(0).optional(),
})

type FormData = z.infer<typeof formSchema>

interface ServicoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    servicoToEdit?: Servico | null
    contratos: { id: string, numero: string, contratada: string | null, valor_total?: number | null }[]
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
            codigo: "",
            descricao: "",
            tipo: "Execução de Obras",
            status: "Andamento",
            valor_total: 0,
        },
    })

    useEffect(() => {
        if (servicoToEdit) {
            form.reset({
                contrato_id: servicoToEdit.contrato_id || "",
                codigo: servicoToEdit.codigo || "",
                descricao: servicoToEdit.descricao || "",
                tipo: (servicoToEdit.tipo as any) || "Execução de Obras",
                status: (servicoToEdit.status as any) || "Andamento",
                valor_total: servicoToEdit.valor_total || 0,
            })
            setDisplayValue(servicoToEdit.valor_total ? formatBRL(servicoToEdit.valor_total) : "")
            setSubtiposSelecionados(servicoToEdit.subtipo_receita || [])
        } else {
            const defaultContratoId = contratos.length === 1 ? contratos[0].id : ""
            const defaultValor = contratos.length === 1 ? (contratos[0].valor_total ?? 0) : 0
            form.reset({
                contrato_id: defaultContratoId,
                codigo: "",
                descricao: "",
                tipo: "Execução de Obras",
                status: "Andamento",
                valor_total: defaultValor,
            })
            setDisplayValue(defaultValor ? formatBRL(defaultValor) : "")
            setSubtiposSelecionados([])
        }
    }, [servicoToEdit, contratos, form, open, formatBRL])

    // Auto-fill valor estimado ao selecionar contrato (apenas no cadastro)
    const watchedContratoId = form.watch("contrato_id")
    useEffect(() => {
        if (servicoToEdit) return
        if (!watchedContratoId || watchedContratoId === "none") return
        const contrato = contratos.find(c => c.id === watchedContratoId)
        if (contrato?.valor_total) {
            form.setValue("valor_total", contrato.valor_total)
            setDisplayValue(formatBRL(contrato.valor_total))
        }
    }, [watchedContratoId, contratos, form, servicoToEdit, formatBRL])

    // Limpar subtipos quando tipo muda
    const watchedTipo = form.watch("tipo")
    useEffect(() => {
        // Se mudou para um tipo que não tem subtipo definido, ou se mudou entre tipos com subtipos diferentes
        const config = SUBTIPOS_CONFIG[watchedTipo as TipoComSubtipo]
        if (!config) {
            setSubtiposSelecionados([])
        } else {
            // Se já tínhamos itens selecionados, verificar se pertencem à nova config
            // Para simplificar, se muda o tipo principal, limpamos os subtipos para garantir consistência
            // Só não limpamos se for a carga inicial ou se for o mesmo tipo (o que useEffect previne)
            setSubtiposSelecionados(prev => {
                // Se o item editado tem o mesmo tipo, mantemos (será setado pelo reset no primeiro useEffect)
                // Caso contrário (mudança manual do usuário), limpamos.
                return []
            })
        }
    }, [watchedTipo, servicoToEdit]) // Depender de servicoToEdit para não limpar na carga inicial

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

            return [...prev, subtipo]
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
                subtipo_receita: (values.tipo === "Receita" || values.tipo === "Desapropriações") && subtiposSelecionados.length > 0
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
                                name="codigo"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Código / Item</FormLabel>
                                        <FormControl>
                                            <Input placeholder="Ex: 1.1" {...field} />
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
