
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

const linkEmpreendimentoSchema = z.object({
    empreendimento_id: z.string().uuid("Selecione um empreendimento"),
    lote_id: z.string().uuid().optional().nullable(),
})

type LinkEmpreendimentoFormValues = z.infer<typeof linkEmpreendimentoSchema>

interface LinkEmpreendimentoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    contratoId: string
    empreendimentos: { id: string, nome: string }[]
    lotes: { id: string, nome: string, contrato_id: string }[] // Lotes of this contract
}

export function LinkEmpreendimentoDialog({
    open,
    onOpenChange,
    contratoId,
    empreendimentos,
    lotes
}: LinkEmpreendimentoDialogProps) {
    const [isPending, setIsPending] = useState(false)

    const form = useForm<LinkEmpreendimentoFormValues>({
        resolver: zodResolver(linkEmpreendimentoSchema),
        defaultValues: {
            empreendimento_id: "",
            lote_id: null,
        },
    })

    async function onSubmit(data: LinkEmpreendimentoFormValues) {
        setIsPending(true)
        try {
            // Note: Reuse the same action but arguments are flipped in terms of UI, same in function signature
            const result = await linkContratoToEmpreendimento(
                data.empreendimento_id,
                contratoId,
                data.lote_id
            )

            if (result.success) {
                toast.success("Empreendimento vinculado com sucesso")
                onOpenChange(false)
                form.reset()
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
                    <DialogTitle>Vincular Empreendimento</DialogTitle>
                    <DialogDescription>
                        Adicione um empreendimento a este contrato.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <FormField
                            control={form.control}
                            name="empreendimento_id"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Empreendimento *</FormLabel>
                                    <Combobox
                                        options={empreendimentos.map(e => ({
                                            value: e.id,
                                            label: e.nome
                                        }))}
                                        value={field.value}
                                        onChange={field.onChange}
                                        placeholder="Selecione um empreendimento"
                                        emptyText="Nenhum empreendimento encontrado."
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
                                        disabled={lotes.length === 0}
                                    >
                                        <FormControl>
                                            <SelectTrigger>
                                                <SelectValue placeholder={lotes.length === 0 ? "Este contrato não possui lotes" : "Selecione um lote"} />
                                            </SelectTrigger>
                                        </FormControl>
                                        <SelectContent>
                                            {lotes.map(l => (
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
