
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
import { Checkbox } from "@/components/ui/checkbox"
import { assignEmpreendimentoToLote } from "@/app/actions/relationships"

const assignLoteSchema = z.object({
    empreendimento_ids: z.array(z.string()).min(1, "Selecione pelo menos um empreendimento"),
})

type AssignLoteFormValues = z.infer<typeof assignLoteSchema>

interface AssignLoteDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    loteId: string
    contratoId: string // Lote belongs to this contract, so only show Emps linked to this contract
    empreendimentosVinculados: { id: string, nome: string, lote_id: string | null }[]
}

export function AssignLoteDialog({
    open,
    onOpenChange,
    loteId,
    contratoId,
    empreendimentosVinculados
}: AssignLoteDialogProps) {
    const [isPending, setIsPending] = useState(false)

    // Filter emps that are linked to the contract but NOT yet assigned to THIS lote (or unassigned)
    // Actually we can re-assign from another lote too.
    const eligibleEmps = empreendimentosVinculados

    const form = useForm<AssignLoteFormValues>({
        resolver: zodResolver(assignLoteSchema),
        defaultValues: {
            empreendimento_ids: [],
        },
    })

    async function onSubmit(data: AssignLoteFormValues) {
        setIsPending(true)
        try {
            // Process sequentially or Promise.all
            // assignEmpreendimentoToLote(empId, contratoId, loteId)

            const promises = data.empreendimento_ids.map(empId =>
                assignEmpreendimentoToLote(empId, contratoId, loteId)
            )

            const results = await Promise.all(promises)
            const errors = results.filter(r => !r.success)

            if (errors.length === 0) {
                toast.success(`${data.empreendimento_ids.length} empreendimentos atribuídos ao lote.`)
                onOpenChange(false)
                form.reset()
            } else {
                toast.error(`Erro em ${errors.length} atribuições.`)
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
                    <DialogTitle>Atribuir Empreendimentos ao Lote</DialogTitle>
                    <DialogDescription>
                        Selecione os empreendimentos deste contrato para adicionar a este lote.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <FormField
                            control={form.control}
                            name="empreendimento_ids"
                            render={() => (
                                <FormItem>
                                    <div className="mb-4">
                                        <FormLabel className="text-base">Empreendimentos Vinculados</FormLabel>
                                    </div>
                                    <div className="space-y-2 max-h-[300px] overflow-y-auto border p-2 rounded">
                                        {eligibleEmps.length === 0 ? (
                                            <p className="text-sm text-muted-foreground">Nenhum empreendimento vinculado a este contrato encontrado.</p>
                                        ) : (
                                            eligibleEmps.map((emp) => (
                                                <FormField
                                                    key={emp.id}
                                                    control={form.control}
                                                    name="empreendimento_ids"
                                                    render={({ field }) => {
                                                        return (
                                                            <FormItem
                                                                key={emp.id}
                                                                className="flex flex-row items-start space-x-3 space-y-0"
                                                            >
                                                                <FormControl>
                                                                    <Checkbox
                                                                        checked={field.value?.includes(emp.id)}
                                                                        onCheckedChange={(checked) => {
                                                                            return checked
                                                                                ? field.onChange([...field.value, emp.id])
                                                                                : field.onChange(
                                                                                    field.value?.filter(
                                                                                        (value) => value !== emp.id
                                                                                    )
                                                                                )
                                                                        }}
                                                                    />
                                                                </FormControl>
                                                                <FormLabel className="font-normal">
                                                                    {emp.nome}
                                                                    {emp.lote_id === loteId && <span className="ml-2 text-xs text-green-600">(Já atribuído)</span>}
                                                                    {emp.lote_id && emp.lote_id !== loteId && <span className="ml-2 text-xs text-yellow-600">(Outro lote)</span>}
                                                                </FormLabel>
                                                            </FormItem>
                                                        )
                                                    }}
                                                />
                                            ))
                                        )}
                                    </div>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => onOpenChange(false)}>Cancelar</Button>
                            <Button type="submit" disabled={isPending || eligibleEmps.length === 0}>
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
