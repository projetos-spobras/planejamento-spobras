
"use client"

import { useState } from "react"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { Loader2 } from "lucide-react"
import { toast } from "sonner"
import * as z from "zod"

import { Button } from "@/components/ui/button"
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
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { Combobox } from "@/components/ui/combobox"
import { linkContratoToEmpreendimento } from "@/app/actions/relationships"

const linkContratoSchema = z.object({
    contrato_id: z.string().uuid("Selecione um contrato"),
    lote_id: z.string().uuid().optional().nullable(),
})

type LinkContratoFormValues = z.infer<typeof linkContratoSchema>

interface LinkContratoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    empreendimentoId: string
    contratos: { id: string, numero: string, tipo: string | null }[]
    lotes: { id: string, nome: string, contrato_id: string }[]
}

export function LinkContratoDialog({
    open,
    onOpenChange,
    empreendimentoId,
    contratos,
    lotes
}: LinkContratoDialogProps) {
    const [isPending, setIsPending] = useState(false)
    const [selectedContratoId, setSelectedContratoId] = useState<string | null>(null)

    const form = useForm<LinkContratoFormValues>({
        resolver: zodResolver(linkContratoSchema),
        defaultValues: {
            contrato_id: "",
            lote_id: null,
        },
    })

    const filteredLotes = lotes.filter(l => l.contrato_id === selectedContratoId)

    async function onSubmit(data: LinkContratoFormValues) {
        setIsPending(true)
        try {
            const result = await linkContratoToEmpreendimento(
                empreendimentoId,
                data.contrato_id,
                data.lote_id
            )

            if (result.success) {
                toast.success("Contrato vinculado com sucesso")
                onOpenChange(false)
                form.reset()
                setSelectedContratoId(null)
            } else {
                toast.error("Erro ao vincular: " + result.error)
            }
        } catch (err) {
            toast.error("Erro inesperado")
        } finally {
            setIsPending(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[500px]">
                <DialogHeader>
                    <DialogTitle>Vincular Contrato</DialogTitle>
                    <DialogDescription>
                        Adicione um contrato a este empreendimento.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <FormField
                            control={form.control}
                            name="contrato_id"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Contrato *</FormLabel>
                                    <Combobox
                                        options={contratos.map(c => ({
                                            value: c.id,
                                            label: `${c.numero} - ${c.tipo || "Sem tipo"}`
                                        }))}
                                        value={field.value}
                                        onChange={(val) => {
                                            field.onChange(val)
                                            setSelectedContratoId(val)
                                            form.setValue('lote_id', null)
                                        }}
                                        placeholder="Selecione um contrato"
                                        emptyText="Nenhum contrato encontrado."
                                        modal
                                    />
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <FormField
                            control={form.control}
                            name="lote_id"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Lote (Opcional)</FormLabel>
                                    <Select
                                        onValueChange={field.onChange}
                                        value={field.value || undefined}
                                        disabled={!selectedContratoId || filteredLotes.length === 0}
                                    >
                                        <FormControl>
                                            <SelectTrigger>
                                                <SelectValue placeholder={
                                                    !selectedContratoId
                                                        ? "Selecione um contrato primeiro"
                                                        : filteredLotes.length === 0
                                                            ? "Este contrato não possui lotes"
                                                            : "Selecione um lote"
                                                } />
                                            </SelectTrigger>
                                        </FormControl>
                                        <SelectContent>
                                            {filteredLotes.map(l => (
                                                <SelectItem key={l.id} value={l.id}>{l.nome}</SelectItem>
                                            ))}
                                        </SelectContent>
                                    </Select>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => onOpenChange(false)}>Cancelar</Button>
                            <Button type="submit" disabled={isPending}>
                                {isPending && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                                Vincular
                            </Button>
                        </DialogFooter>
                    </form>
                </Form>
            </DialogContent>
        </Dialog>
    )
}
