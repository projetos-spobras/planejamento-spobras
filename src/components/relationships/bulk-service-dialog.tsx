"use client"

import { useState } from "react"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import * as z from "zod"
import { Loader2 } from "lucide-react"
import { toast } from "sonner"
import { useRouter } from "next/navigation"

import { Button } from "@/components/ui/button"
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
    codigo: z.string().optional(),
    descricao: z.string().optional(),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    valor_total: z.coerce.number().min(0).optional(),
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

    const form = useForm<FormData>({
        resolver: zodResolver(formSchema) as any,
        defaultValues: {
            empreendimentoIds: [],
            codigo: "",
            descricao: "",
            tipo: "Execução de Obras",
            valor_total: 0,
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
