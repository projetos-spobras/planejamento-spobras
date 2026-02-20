
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
    DialogTrigger,
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
import { EmpreendimentoFormValues, empreendimentoSchema } from "@/lib/validations"
import { createEmpreendimento, updateEmpreendimento } from "@/app/(dashboard)/empreendimentos/actions"
import { Empreendimento } from "@/types"

interface EmpreendimentoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    empreendimentoToEdit?: Empreendimento | null
    lookups?: {
        programaMap: Map<number, string>
        distritoMap: Map<number, string>
        gerenciaMap: Map<number, string>
        faseMap: Map<number, string>
    }
}

export function EmpreendimentoDialog({
    open,
    onOpenChange,
    empreendimentoToEdit,
    lookups,
}: EmpreendimentoDialogProps) {
    const [isPending, setIsPending] = useState(false)

    const form = useForm<EmpreendimentoFormValues>({
        resolver: zodResolver(empreendimentoSchema) as any,
        defaultValues: empreendimentoToEdit ? {
            nome: empreendimentoToEdit.nome,
            codigo: empreendimentoToEdit.codigo || "",
            descricao: empreendimentoToEdit.descricao || "",
            localizacao: empreendimentoToEdit.localizacao || "",
            gerencia_id: empreendimentoToEdit.gerencia_id || "",
            status: (empreendimentoToEdit.status as any) || "Planejamento",
            valor_total: empreendimentoToEdit.valor_total || 0,
        } : {
            nome: "",
            codigo: "",
            descricao: "",
            localizacao: "",
            gerencia_id: "",
            status: "Planejamento",
            valor_total: 0,
        },
    })

    // Reset form when dialog opens/closes or edit target changes
    // Note: For a real robust solution, use useEffect to reset when empreendimentoToEdit changes
    // or use key={} on the dialog to force re-render.

    async function onSubmit(data: EmpreendimentoFormValues) {
        setIsPending(true)
        try {
            let result;
            if (empreendimentoToEdit) {
                result = await updateEmpreendimento(empreendimentoToEdit.id, data)
            } else {
                result = await createEmpreendimento(data)
            }

            if (result.success) {
                toast.success(
                    empreendimentoToEdit
                        ? "Empreendimento atualizado com sucesso"
                        : "Empreendimento criado com sucesso"
                )
                onOpenChange(false)
                form.reset()
            } else {
                toast.error("Erro ao salvar: " + result.error)
            }
        } catch (err) {
            toast.error("Erro inesperado")
        } finally {
            setIsPending(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[600px]">
                <DialogHeader>
                    <DialogTitle>
                        {empreendimentoToEdit ? "Editar Empreendimento" : "Novo Empreendimento"}
                    </DialogTitle>
                    <DialogDescription>
                        Preencha os dados abaixo. Clique em salvar quando terminar.
                    </DialogDescription>
                </DialogHeader>
                <Form {...form}>
                    <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="codigo"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Código *</FormLabel>
                                        <FormControl>
                                            <Input placeholder="EXP-001" {...field} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="valor_total"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Valor Total (R$)</FormLabel>
                                        <FormControl>
                                            <Input
                                                type="number"
                                                placeholder="0.00"
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
                            name="nome"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Nome *</FormLabel>
                                    <FormControl>
                                        <Input placeholder="Nome do empreendimento" {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

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
                                                <SelectItem value="Planejamento">Planejamento</SelectItem>
                                                <SelectItem value="Em Execução">Em Execução</SelectItem>
                                                <SelectItem value="Concluído">Concluído</SelectItem>
                                                <SelectItem value="Suspenso">Suspenso</SelectItem>
                                                {lookups?.faseMap && Array.from(lookups.faseMap.entries()).map(([id, nome]) => (
                                                    <SelectItem key={id} value={id.toString()}>{nome || id}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="gerencia_id"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Gerência</FormLabel>
                                        <Select onValueChange={field.onChange} defaultValue={field.value}>
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione..." />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectItem value="Obras">Obras</SelectItem>
                                                <SelectItem value="Projetos">Projetos</SelectItem>
                                                {lookups?.gerenciaMap && Array.from(lookups.gerenciaMap.entries()).map(([id, nome]) => (
                                                    <SelectItem key={id} value={id.toString()}>{nome || `Gerência ${id}`}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

                        <FormField
                            control={form.control}
                            name="localizacao"
                            render={({ field }) => (
                                <FormItem>
                                    <FormLabel>Localização</FormLabel>
                                    <FormControl>
                                        <Input placeholder="Endereço ou Região" {...field} />
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
                                        <Textarea placeholder="Detalhes do empreendimento" {...field} />
                                    </FormControl>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => {
                                form.reset();
                                onOpenChange(false);
                            }}>Cancelar</Button>
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
