
"use client"

import { useState, useEffect } from "react"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { Loader2, CalendarIcon } from "lucide-react"
import { toast } from "sonner"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Button } from "@/components/ui/button"
import { Calendar } from "@/components/ui/calendar"
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogFooter,
    DialogHeader,
    DialogTitle,
} from "@/components/ui/dialog"
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from "@/components/ui/form"
import {
    Popover,
    PopoverContent,
    PopoverTrigger,
} from "@/components/ui/popover"
import { Input } from "@/components/ui/input"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { cn } from "@/lib/utils"
import { PlanejamentoFaseFormValues, planejamentoFaseSchema } from "@/lib/validations"
import { createPlanejamento, updatePlanejamento } from "@/app/(dashboard)/planejamento/actions"
import { PlanejamentoFase } from "@/types"
import { formatCurrencyInput, parseCurrencyValue } from "./client-page"

interface PlanejamentoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    planejamentoToEdit?: PlanejamentoFase | null
    defaultEmpreendimentoId?: string
    defaultServicoId?: string
    defaultServicoTipo?: string
    defaultFaseName?: string
    defaultDataInicio?: Date
    defaultDataFim?: Date
    empreendimentos: { id: string, nome: string }[]
    otherFases?: PlanejamentoFase[]
    onSave?: (data: PlanejamentoFaseFormValues, id?: string) => Promise<{ success: boolean; error?: string }>
}

export function PlanejamentoDialog({
    open,
    onOpenChange,
    planejamentoToEdit,
    defaultEmpreendimentoId,
    defaultServicoId,
    defaultServicoTipo,
    defaultFaseName,
    defaultDataInicio,
    defaultDataFim,
    empreendimentos,
    otherFases = [],
    onSave
}: PlanejamentoDialogProps) {
    const [isPending, setIsPending] = useState(false)
    const isExecucao = defaultServicoTipo === "Execução de Obras"

    const form = useForm<PlanejamentoFaseFormValues>({
        resolver: zodResolver(planejamentoFaseSchema) as any,
        defaultValues: planejamentoToEdit ? {
            empreendimento_id: planejamentoToEdit.empreendimento_id,
            fase: planejamentoToEdit.fase || "",
            tipo_fase: (planejamentoToEdit.tipo_fase as any) || null,
            data_inicio: planejamentoToEdit.data_inicio ? new Date(planejamentoToEdit.data_inicio) : undefined,
            data_fim: planejamentoToEdit.data_fim ? new Date(planejamentoToEdit.data_fim) : undefined,
            valor_planejado: Number(planejamentoToEdit.valor_planejado) || 0,
            ordem: Number(planejamentoToEdit.ordem) || 0,
            descricao: planejamentoToEdit.descricao,
            responsavel: planejamentoToEdit.responsavel,
            fase_predecessora_id: planejamentoToEdit.fase_predecessora_id,
            dias_folga: planejamentoToEdit.dias_folga || 0,
        } : {
            empreendimento_id: defaultEmpreendimentoId || "",
            fase: "",
            tipo_fase: null,
            valor_planejado: 0,
            ordem: 0,
            descricao: "",
            responsavel: "",
            fase_predecessora_id: null,
            dias_folga: 0,
            peso_percentual: 0,
        },
    })

    // useEffect to populate defaults properly when dialog opens
    useEffect(() => {
        if (open) {
            form.reset({
                empreendimento_id: planejamentoToEdit?.empreendimento_id || defaultEmpreendimentoId || "",
                fase: planejamentoToEdit?.fase || defaultFaseName || "",
                tipo_fase: (planejamentoToEdit?.tipo_fase as any) || (defaultFaseName ? "execução" : null),
                data_inicio: planejamentoToEdit?.data_inicio ? new Date(planejamentoToEdit.data_inicio) : (defaultDataInicio || undefined),
                data_fim: planejamentoToEdit?.data_fim ? new Date(planejamentoToEdit.data_fim) : (defaultDataFim || undefined),
                valor_planejado: Number(planejamentoToEdit?.valor_planejado) || 0,
                ordem: Number(planejamentoToEdit?.ordem) || 0,
                descricao: planejamentoToEdit?.descricao || "",
                responsavel: planejamentoToEdit?.responsavel || "",
                fase_predecessora_id: planejamentoToEdit?.fase_predecessora_id || null,
                dias_folga: planejamentoToEdit?.dias_folga || 0,
                peso_percentual: planejamentoToEdit?.peso_percentual || 0,
            })
        }
    }, [open, planejamentoToEdit, defaultEmpreendimentoId, form])

    // To preserve servico_id 
    form.watch("empreendimento_id") // Force re-render if needed
    const currentServicoId = planejamentoToEdit?.servico_id || defaultServicoId || null

    async function onSubmit(data: PlanejamentoFaseFormValues) {
        setIsPending(true)
        try {
            const enrichedData = { ...data, servico_id: currentServicoId }
            let result;
            if (onSave) {
                result = await onSave(enrichedData, planejamentoToEdit?.id)
            } else if (planejamentoToEdit) {
                result = await updatePlanejamento(planejamentoToEdit.id, enrichedData)
            } else {
                result = await createPlanejamento(enrichedData)
            }

            if (result.success) {
                toast.success(planejamentoToEdit ? "Planejamento atualizado" : "Planejamento criado")
                onOpenChange(false)
                form.reset()
            } else {
                toast.error("Erro: " + result.error)
            }
        } catch (err) {
            toast.error("Erro inesperado")
        } finally {
            setIsPending(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[700px]">
                <DialogHeader>
                    <DialogTitle>
                        {planejamentoToEdit ? "Editar Planejamento" : "Novo Planejamento"}
                    </DialogTitle>
                    <DialogDescription>
                        Fases, cronograma e valores planejados.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        {(!isExecucao || !defaultEmpreendimentoId) && (
                            <FormField
                                control={form.control}
                                name="empreendimento_id"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Empreendimento *</FormLabel>
                                        <Select onValueChange={field.onChange} value={field.value}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione o empreendimento" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                {empreendimentos.map(e => (
                                                    <SelectItem key={e.id} value={e.id}>{e.nome}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        )}

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="fase"
                                render={({ field }) => (
                                    <FormItem className={isExecucao ? "col-span-1" : "col-span-2 sm:col-span-1"}>
                                        <FormLabel>{isExecucao ? "Nome do Item *" : "Nome da Fase *"}</FormLabel>
                                        <FormControl>
                                            <Input placeholder={isExecucao ? "Nome do Item" : "Ex: Projeto Executivo"} {...field} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            {isExecucao && (
                                <FormField
                                    control={form.control}
                                    name="peso_percentual"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Peso Físico (%)</FormLabel>
                                            <FormControl>
                                                <Input
                                                    type="number"
                                                    {...field}
                                                    onChange={e => field.onChange(Number(e.target.value))}
                                                    value={field.value || ""}
                                                />
                                            </FormControl>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                            )}
                            {!isExecucao && (
                                <FormField
                                    control={form.control}
                                    name="tipo_fase"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Tipo</FormLabel>
                                            <Select onValueChange={field.onChange} value={field.value || undefined}>
                                                <FormControl>
                                                    <SelectTrigger>
                                                        <SelectValue placeholder="Selecione..." />
                                                    </SelectTrigger>
                                                </FormControl>
                                                <SelectContent>
                                                    <SelectItem value="receita">Receita</SelectItem>
                                                    <SelectItem value="despesa">Despesa</SelectItem>
                                                    <SelectItem value="execução">Execução</SelectItem>
                                                </SelectContent>
                                            </Select>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                            )}
                        </div>

                        {!isExecucao && (
                            <div className="grid grid-cols-2 gap-4">
                                <FormField
                                    control={form.control}
                                    name="valor_planejado"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Valor Planejado</FormLabel>
                                            <FormControl>
                                                <div className="flex items-center gap-2">
                                                    <span className="text-sm font-medium">R$</span>
                                                    <Input
                                                        type="text"
                                                        {...field}
                                                        className="text-right"
                                                        value={field.value !== undefined ? formatCurrencyInput(field.value) : ""}
                                                        onChange={e => field.onChange(parseCurrencyValue(e.target.value))}
                                                    />
                                                </div>
                                            </FormControl>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                                <FormField
                                    control={form.control}
                                    name="ordem"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Ordem</FormLabel>
                                            <FormControl>
                                                <Input
                                                    type="number"
                                                    {...field}
                                                    onChange={e => field.onChange(Number(e.target.value))}
                                                />
                                            </FormControl>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                            </div>
                        )}

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="data_inicio"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Data Início</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="date"
                                                {...field}
                                                value={field.value ? format(field.value, 'yyyy-MM-dd') : ""}
                                                onChange={(e) => field.onChange(e.target.value ? new Date(e.target.value + "T12:00:00") : undefined)}
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
                                        <FormLabel>Data Fim</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="date"
                                                {...field}
                                                value={field.value ? format(field.value, 'yyyy-MM-dd') : ""}
                                                onChange={(e) => field.onChange(e.target.value ? new Date(e.target.value + "T12:00:00") : undefined)}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        {!isExecucao && (
                            <>
                                {/* NEW FIELDS: Predecessor and Gap */}
                                <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="fase_predecessora_id"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Fase Predecessora (Opcional)</FormLabel>
                                        <Select onValueChange={field.onChange} value={field.value || undefined}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Sem predecessora" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectItem value="none">Nenhuma</SelectItem>
                                                {otherFases.filter(f => f.id !== planejamentoToEdit?.id).map(f => (
                                                    <SelectItem key={f.id} value={f.id}>{f.fase}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="dias_folga"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Dias de Folga (Gap)</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="number"
                                                {...field}
                                                onChange={e => field.onChange(Number(e.target.value))}
                                                value={field.value || 0}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        {/* NEW FIELDS: Description and Responsible */}
                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="responsavel"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Responsável</FormLabel>
                                        <FormControl>
                                            <Input placeholder="Nome do responsável" {...field} value={field.value || ""} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="descricao"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Descrição/Observações</FormLabel>
                                        <FormControl>
                                            <Input placeholder="Detalhes da fase" {...field} value={field.value || ""} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>
                        </>
                        )}

                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => onOpenChange(false)}>Cancelar</Button>
                            <Button type="submit" disabled={isPending}>
                                {isPending && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                                Salvar
                            </Button>
                        </DialogFooter>
                    </form>
                </Form>
            </DialogContent>
        </Dialog>
    )
}
