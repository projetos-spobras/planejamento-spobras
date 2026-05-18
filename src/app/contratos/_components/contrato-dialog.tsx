
"use client"

import { useState } from "react"
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
import { Textarea } from "@/components/ui/textarea"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { cn } from "@/lib/utils"
import { ContratoFormValues, contratoSchema } from "@/lib/validations"
import { MAP_TIPOS_SERVICO, TIPOS_SERVICO, STATUS_CONTRATO } from "@/lib/constants"
import { createContrato, updateContrato } from "@/app/(dashboard)/contratos/actions"
import { Contrato } from "@/types"

interface ContratoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    contratoToEdit?: Contrato | null
    possibleParents: { id: string, numero: string }[]
}

export function ContratoDialog({
    open,
    onOpenChange,
    contratoToEdit,
    possibleParents
}: ContratoDialogProps) {
    const [isPending, setIsPending] = useState(false)

    // Helper to safely cast string to the enum type
    const getSafeTipo = (tipo: string | null | undefined): ContratoFormValues["tipo"] => {
        // @ts-ignore
        if (tipo && TIPOS_SERVICO.includes(tipo)) {
            return tipo as ContratoFormValues["tipo"];
        }
        return "Execução de Obras"; // Default safe
    };

    const form = useForm<ContratoFormValues>({
        resolver: zodResolver(contratoSchema) as any,
        defaultValues: contratoToEdit ? {
            numero: contratoToEdit.numero,
            tipo: getSafeTipo(contratoToEdit.tipo),
            objeto: contratoToEdit.objeto || "",
            contratada: contratoToEdit.contratada || "",
            // @ts-ignore - safe cast for status
            status: (contratoToEdit.status as any) || "A Licitar",
            valor_total: Number(contratoToEdit.valor_total) || 0,
            data_inicio: contratoToEdit.data_inicio ? new Date(contratoToEdit.data_inicio) : undefined,
            data_fim: contratoToEdit.data_fim ? new Date(contratoToEdit.data_fim) : undefined,
            contrato_pai_id: contratoToEdit.contrato_pai_id || null,
        } : {
            numero: "",
            tipo: "Execução de Obras",
            objeto: "",
            contratada: "",
            status: "A Licitar",
            valor_total: 0,
        },
    })

    async function onSubmit(data: ContratoFormValues) {
        setIsPending(true)
        try {
            let result;
            if (contratoToEdit) {
                result = await updateContrato(contratoToEdit.id, data)
            } else {
                result = await createContrato(data)
            }

            if (result.success) {
                toast.success(contratoToEdit ? "Contrato atualizado" : "Contrato criado")
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
                        {contratoToEdit ? "Editar Contrato" : "Novo Contrato"}
                    </DialogTitle>
                    <DialogDescription>
                        Gestão de contratos e convênios.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="numero"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Número *</FormLabel>
                                        <FormControl>
                                            <Input placeholder="001/2026" {...field} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="tipo"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Tipo</FormLabel>
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
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="status"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Status</FormLabel>
                                        <Select onValueChange={field.onChange} defaultValue={field.value}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione o status" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                {STATUS_CONTRATO.map(s => (
                                                    <SelectItem key={s} value={s}>{s}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="valor_total"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Valor (R$)</FormLabel>
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

                        <FormField
                            control={form.control}
                            name="contratada"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Contratada *</FormLabel>
                                    <FormControl>
                                        <Input placeholder="Nome da empresa" {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

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

                        <FormField
                            control={form.control}
                            name="contrato_pai_id"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Contrato Pai (Opcional)</FormLabel>
                                    <Select
                                        onValueChange={(val) => field.onChange(val === "none" ? null : val)}
                                        value={field.value || "none"}
                                    >
                                        <FormControl>
                                            <SelectTrigger>
                                                <SelectValue placeholder="Selecione..." />
                                            </SelectTrigger>
                                        </FormControl>
                                        <SelectContent>
                                            <SelectItem value="none">Nenhum</SelectItem>
                                            {possibleParents.map(c => (
                                                <SelectItem key={c.id} value={c.id}>{c.numero}</SelectItem>
                                            ))}
                                        </SelectContent>
                                    </Select>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <FormField
                            control={form.control}
                            name="objeto"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Objeto</FormLabel>
                                    <FormControl>
                                        <Textarea placeholder="Descrição do objeto do contrato" {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

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
