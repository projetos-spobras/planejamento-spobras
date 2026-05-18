"use client"

import { useState } from "react"
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
import { createServiceBatch } from "@/app/actions/servicos"
import { TIPOS_SERVICO } from "@/lib/constants"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { MultiCombobox } from "@/components/ui/multi-combobox"

const formSchema = z.object({
    empreendimentoIds: z.array(z.string()).min(1, "Selecione pelo menos um empreendimento"),
    descricao: z.string().optional(),
    data_inicio: z.string().optional(),
    data_fim: z.string().optional(),
    duracao_dias: z.coerce.number().min(0, "A duração deve ser pelo menos 0 dia").optional(),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    valor_total: z.coerce.number().min(0).optional(),
    acompanha_fisico: z.boolean().default(false),
    acompanha_financeiro: z.boolean().default(false),
})

type FormData = z.infer<typeof formSchema>

interface BulkServiceDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    empreendimentos: { id: string, nome: string, codigo: string }[]
    onSuccess: () => void
}

export function BulkServiceDialog({
    open,
    onOpenChange,
    empreendimentos,
    onSuccess
}: BulkServiceDialogProps) {
    const router = useRouter()
    const [isLoading, setIsLoading] = useState(false)

    const form = useForm<any>({
        resolver: zodResolver(formSchema),
        defaultValues: {
            empreendimentoIds: [],
            descricao: "",
            data_inicio: "",
            data_fim: "",
            duracao_dias: undefined,
            tipo: "Execução de Obras",
            valor_total: 0,
            acompanha_fisico: false,
            acompanha_financeiro: false,
        },
    })

    const onSubmit = async (values: FormData) => {
        setIsLoading(true)
        try {
            const { empreendimentoIds, ...serviceData } = values
            const res = await createServiceBatch(empreendimentoIds, serviceData)

            if (res.success) {
                toast.success(`Serviço criado em ${empreendimentoIds.length} empreendimentos`)
                onOpenChange(false)
                form.reset()
                onSuccess()
            } else {
                toast.error("Erro ao criar: " + res.error)
            }
        } catch (error) {
            toast.error("Erro inesperado")
        } finally {
            setIsLoading(false)
            router.refresh()
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[700px]">
                <DialogHeader>
                    <DialogTitle>Cadastro de Serviço em Massa</DialogTitle>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <FormField
                            control={form.control}
                            name="empreendimentoIds"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Empreendimentos Alvo ({field.value.length})</FormLabel>
                                    <MultiCombobox
                                        options={empreendimentos.map(e => ({ value: e.id, label: `${e.codigo} - ${e.nome}` }))}
                                        value={field.value}
                                        onChange={field.onChange}
                                        placeholder="Selecione empreendimentos..."
                                        emptyText="Nenhum empreendimento encontrado."
                                    />
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <div className="grid grid-cols-2 gap-4">
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
                                                {...field}
                                                onChange={(e) => {
                                                    field.onChange(e)
                                                    const start = new Date(e.target.value).getTime()
                                                    const fim = form.getValues("data_fim")
                                                    const duracao = form.getValues("duracao_dias")

                                                    if (fim) {
                                                        const end = new Date(fim).getTime()
                                                        if (end >= start) form.setValue("duracao_dias", Math.round((end - start) / 86400000))
                                                    } else if (duracao) {
                                                        const endDate = new Date(start)
                                                        endDate.setDate(endDate.getDate() + duracao)
                                                        form.setValue("data_fim", endDate.toISOString().split('T')[0])
                                                    }
                                                }}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="data_fim"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Data Fim Prevista (Opcional)</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="date"
                                                {...field}
                                                onChange={(e) => {
                                                    field.onChange(e)
                                                    const end = new Date(e.target.value).getTime()
                                                    const inicio = form.getValues("data_inicio")
                                                    if (inicio) {
                                                        const start = new Date(inicio).getTime()
                                                        if (end >= start) form.setValue("duracao_dias", Math.round((end - start) / 86400000))
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
                                                    const val = e.target.value
                                                    field.onChange(val === "" ? undefined : Number(val))
                                                    const duracao = Number(val)
                                                    const inicio = form.getValues("data_inicio")
                                                    if (inicio && duracao >= 0) {
                                                        const endDate = new Date(inicio)
                                                        endDate.setDate(endDate.getDate() + duracao)
                                                        form.setValue("data_fim", endDate.toISOString().split('T')[0])
                                                    }
                                                }}
                                            />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

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
                                            <Input type="number" step="0.01" {...field} />
                                        </FormControl>
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
                                Criar Serviços
                            </Button>
                        </DialogFooter>
                    </form>
                </Form>
            </DialogContent>
        </Dialog>
    )
}
