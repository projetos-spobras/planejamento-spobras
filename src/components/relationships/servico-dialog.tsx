"use client"

import { useState, useEffect } from "react"
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
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"
import { createServico, updateServico } from "@/app/actions/servicos"
import { Servico } from "@/types"
import { TIPOS_SERVICO } from "@/lib/constants"

const formSchema = z.object({
    contrato_id: z.string().optional(),
    codigo: z.string().optional(),
    descricao: z.string().optional(),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    valor_total: z.coerce.number().min(0).optional(),
})

type FormData = z.infer<typeof formSchema>

interface ServicoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    servicoToEdit?: Servico | null
    contratos: { id: string, numero: string, contratada: string | null }[]
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

    const form = useForm<FormData>({
        resolver: zodResolver(formSchema) as any,
        defaultValues: {
            contrato_id: "",
            codigo: "",
            descricao: "",
            tipo: "Execução de Obras",
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
                valor_total: servicoToEdit.valor_total || 0,
            })
        } else {
            form.reset({
                contrato_id: contratos.length === 1 ? contratos[0].id : "",
                codigo: "",
                descricao: "",
                tipo: "Execução de Obras",
                valor_total: 0,
            })
        }
    }, [servicoToEdit, contratos, form, open])

    const onSubmit = async (values: FormData) => {
        setIsLoading(true)
        try {
            const payload = {
                ...values,
                empreendimento_id: empreendimentoId,
                contrato_id: values.contrato_id || null
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

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[600px]">
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
                                {servicoToEdit ? "Salvar Alterações" : "Criar Serviço"}
                            </Button>
                        </DialogFooter>
                    </form>
                </Form>
            </DialogContent>
        </Dialog>
    )
}
