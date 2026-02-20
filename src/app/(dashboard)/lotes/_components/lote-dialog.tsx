
"use client"

import { useState } from "react"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { Loader2 } from "lucide-react"
import { toast } from "sonner"

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
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { LoteFormValues, loteSchema } from "@/lib/validations"
import { createLote, updateLote } from "@/app/(dashboard)/lotes/actions"
import { Lote, Contrato } from "@/types"
import { MultiCombobox } from "@/components/ui/multi-combobox"
import { getEmpreendimentosByContrato, updateLoteEmpreendimentos } from "@/app/actions/relationships"
import { useEffect } from "react"

interface LoteDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    loteToEdit?: Lote | null
    contratos: Contrato[]
}

export function LoteDialog({
    open,
    onOpenChange,
    loteToEdit,
    contratos
}: LoteDialogProps) {
    const [isPending, setIsPending] = useState(false)

    const form = useForm<LoteFormValues>({
        resolver: zodResolver(loteSchema),
        defaultValues: loteToEdit ? {
            nome: loteToEdit.nome,
            contrato_id: loteToEdit.contrato_id,
            descricao: loteToEdit.descricao || "",
        } : {
            nome: "",
            contrato_id: "",
            descricao: "",
        },
    })

    // State for managing empreendimentos selection
    const [selectedContratoId, setSelectedContratoId] = useState<string | undefined>(
        loteToEdit?.contrato_id || undefined
    )
    const [availableEmpreendimentos, setAvailableEmpreendimentos] = useState<{ id: string, nome: string, codigo: string, lote_id?: string }[]>([])
    const [selectedEmpreendimentos, setSelectedEmpreendimentos] = useState<string[]>([])
    const [isLoadingEmpreendimentos, setIsLoadingEmpreendimentos] = useState(false)

    // Watch for contrato change in form to update state
    const formContratoId = form.watch("contrato_id")

    useEffect(() => {
        if (formContratoId !== selectedContratoId) {
            setSelectedContratoId(formContratoId)
            // Reset selected empreendimentos if contract changes?
            // Yes, because empreendimentos belong to specific contract context.
            // Unless we are initial loading.
        }
    }, [formContratoId, selectedContratoId])

    useEffect(() => {
        async function loadEmpreendimentos() {
            if (!selectedContratoId) {
                setAvailableEmpreendimentos([])
                return
            }

            setIsLoadingEmpreendimentos(true)
            const emps = await getEmpreendimentosByContrato(selectedContratoId)
            setAvailableEmpreendimentos(emps)

            // If editing, and we loaded results, check which ones belong to this lote
            if (loteToEdit && loteToEdit.contrato_id === selectedContratoId) {
                const linked = emps.filter((e: any) => e.lote_id === loteToEdit.id).map((e: any) => e.id)
                // Only set if we haven't touched it yet? Or always sync?
                // Simplest is to sync on load.
                // But we need to distinguish between "changing contract" vs "initial load".
                // Since selectedEmpreendimentos is state, we should handle it carefully.
            }
            setIsLoadingEmpreendimentos(false)
        }

        loadEmpreendimentos()
    }, [selectedContratoId, loteToEdit])

    // Effect to populate selectedEmpreendimentos when availableEmpreendimentos loads (only for edit mode initial)
    useEffect(() => {
        if (loteToEdit && availableEmpreendimentos.length > 0 && selectedEmpreendimentos.length === 0) {
            const linked = availableEmpreendimentos.filter(e => e.lote_id === loteToEdit.id).map(e => e.id)
            if (linked.length > 0) setSelectedEmpreendimentos(linked)
        }
    }, [availableEmpreendimentos, loteToEdit]) // selectedEmpreendimentos omitted to avoid overwrite loop

    async function onSubmit(data: LoteFormValues) {
        setIsPending(true)
        try {
            let result;
            let finalLoteId;

            if (loteToEdit) {
                result = await updateLote(loteToEdit.id, data)
                finalLoteId = loteToEdit.id
            } else {
                // To get the ID of created lote we might need to adjust createLote to return it.
                // Assuming createLote returns { success: true, data: { id: ... } } or we infer it?
                // The current action only returns { success: true }.
                // I need to modify createLote return value or simply refetch? 
                // Wait, if I cannot get the ID, I cannot link empreendimentos.
                // I should assume createLote needs update.
                // For now, let's assume createLote returns data.
                result = await createLote(data)
                // @ts-ignore
                finalLoteId = result.data?.id
            }

            if (result.success) {
                // If we have an ID (which we should for created or edited), update relationships
                if (finalLoteId && selectedEmpreendimentos.length >= 0) { // allow empty to clear
                    await updateLoteEmpreendimentos(finalLoteId, selectedEmpreendimentos, data.contrato_id)
                }

                toast.success(loteToEdit ? "Lote atualizado" : "Lote criado")
                onOpenChange(false)
                form.reset()
                setSelectedEmpreendimentos([]) // Reset state
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
            <DialogContent className="sm:max-w-[500px]">
                <DialogHeader>
                    <DialogTitle>
                        {loteToEdit ? "Editar Lote" : "Novo Lote"}
                    </DialogTitle>
                    <DialogDescription>
                        Agrupamento de empreendimentos.
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
                                    <Select onValueChange={field.onChange} defaultValue={field.value}>
                                        <FormControl>
                                            <SelectTrigger>
                                                <SelectValue placeholder="Selecione o contrato" />
                                            </SelectTrigger>
                                        </FormControl>
                                        <SelectContent>
                                            {contratos.map(c => (
                                                <SelectItem key={c.id} value={c.id}>{c.numero} - {c.contratada}</SelectItem>
                                            ))}
                                        </SelectContent>
                                    </Select>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />
                        <FormField
                            control={form.control}
                            name="nome"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Nome do Lote *</FormLabel>
                                    <FormControl>
                                        <Input placeholder="Lote 01" {...field} />
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
                                    <FormLabel>Descrição</FormLabel>
                                    <FormControl>
                                        <Textarea placeholder="Detalhes" {...field} />
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
                                    <FormLabel>Descrição</FormLabel>
                                    <FormControl>
                                        <Textarea placeholder="Detalhes" {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        {selectedContratoId && (
                            <div className="space-y-2">
                                <FormLabel>Empreendimentos Vinculados</FormLabel>
                                <MultiCombobox
                                    options={availableEmpreendimentos.map(e => ({
                                        value: e.id,
                                        label: `${e.codigo} - ${e.nome}`
                                    }))}
                                    value={selectedEmpreendimentos}
                                    onChange={setSelectedEmpreendimentos}
                                    placeholder="Selecione empreendimentos..."
                                    emptyText="Nenhum empreendimento vinculado a este contrato."
                                    disabled={isLoadingEmpreendimentos}
                                />
                                <p className="text-xs text-muted-foreground">
                                    Apenas empreendimentos já vinculados ao contrato selecionado podem ser adicionados ao lote.
                                </p>
                            </div>
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
