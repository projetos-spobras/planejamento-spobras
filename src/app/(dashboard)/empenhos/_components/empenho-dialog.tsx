
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
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { cn } from "@/lib/utils"
import { EmpenhoFormValues, empenhoSchema } from "@/lib/validations"
import { createEmpenho, updateEmpenho } from "@/app/(dashboard)/empenhos/actions"
import { Empenho } from "@/types"

interface EmpenhoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    empenhoToEdit?: Empenho | null
    linkableItems: { id: string, label: string, type: 'empreendimento' | 'contrato' | 'lote' }[]
}

export function EmpenhoDialog({
    open,
    onOpenChange,
    empenhoToEdit,
    linkableItems
}: EmpenhoDialogProps) {
    const [isPending, setIsPending] = useState(false)

    // Helper to filter items based on selected type
    const [selectedType, setSelectedType] = useState<'empreendimento' | 'contrato' | 'lote' | null>(
        (empenhoToEdit?.tipo_vinculo as any) || null
    )

    const form = useForm<EmpenhoFormValues>({
        resolver: zodResolver(empenhoSchema) as any,
        defaultValues: empenhoToEdit ? {
            numero: empenhoToEdit.numero || "",
            valor: Number(empenhoToEdit.valor) || 0,
            data_empenho: empenhoToEdit.data_empenho ? new Date(empenhoToEdit.data_empenho) : undefined,
            tipo_vinculo: (empenhoToEdit.tipo_vinculo as any) || null,
            vinculo_id: empenhoToEdit.vinculo_id || null,
        } : {
            numero: "",
            valor: 0,
            tipo_vinculo: null,
            vinculo_id: null,
        },
    })

    const filteredItems = linkableItems.filter(item => item.type === selectedType)

    async function onSubmit(data: EmpenhoFormValues) {
        setIsPending(true)
        try {
            let result;
            if (empenhoToEdit) {
                result = await updateEmpenho(empenhoToEdit.id, data)
            } else {
                result = await createEmpenho(data)
            }

            if (result.success) {
                toast.success(empenhoToEdit ? "Empenho atualizado" : "Empenho criado")
                onOpenChange(false)
                form.reset()
                setSelectedType(null)
            } else {
                toast.error("Erro: " + result.error)
            }
        } catch (err) {
            toast.error("Erro inesperado")
            console.error(err)
        } finally {
            setIsPending(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[600px]">
                <DialogHeader>
                    <DialogTitle>
                        {empenhoToEdit ? "Editar Empenho" : "Novo Empenho"}
                    </DialogTitle>
                    <DialogDescription>
                        Gestão de empenhos e dotações.
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
                                        <FormLabel>Número Nota Empenho</FormLabel>
                                        <FormControl>
                                            <Input placeholder="2024NE000123" {...field} />
                                        </FormControl>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                            <FormField
                                control={form.control}
                                name="valor"
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
                            name="data_empenho"
                            render={({ field }) => (
                                <FormItem className="flex flex-col">
                                    <FormLabel>Data do Empenho</FormLabel>
                                    <Popover>
                                        <PopoverTrigger asChild>
                                            <FormControl>
                                                <Button
                                                    variant={"outline"}
                                                    className={cn(
                                                        "w-full pl-3 text-left font-normal",
                                                        !field.value && "text-muted-foreground"
                                                    )}
                                                >
                                                    {field.value ? (
                                                        format(field.value, "P", { locale: ptBR })
                                                    ) : (
                                                        <span>Selecione uma data</span>
                                                    )}
                                                    <CalendarIcon className="ml-auto h-4 w-4 opacity-50" />
                                                </Button>
                                            </FormControl>
                                        </PopoverTrigger>
                                        <PopoverContent className="w-auto p-0" align="start">
                                            <Calendar
                                                mode="single"
                                                selected={field.value}
                                                onSelect={field.onChange}
                                                disabled={(date) =>
                                                    date < new Date("1900-01-01")
                                                }
                                                initialFocus
                                            />
                                        </PopoverContent>
                                    </Popover>
                                    <FormMessage />
                                </FormItem>
                            )}
                        />

                        <div className="grid grid-cols-2 gap-4">
                            <FormField
                                control={form.control}
                                name="tipo_vinculo"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Vincular a:</FormLabel>
                                        <Select
                                            onValueChange={(val) => {
                                                field.onChange(val)
                                                setSelectedType(val as any)
                                                form.setValue('vinculo_id', null) // Reset item selection when type changes
                                            }}
                                            defaultValue={field.value || undefined}
                                        >
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Selecione..." />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectItem value="empreendimento">Empreendimento</SelectItem>
                                                <SelectItem value="contrato">Contrato</SelectItem>
                                                <SelectItem value="lote">Lote</SelectItem>
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="vinculo_id"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Item Vinculado</FormLabel>
                                        <Select
                                            onValueChange={field.onChange}
                                            value={field.value || undefined}
                                            disabled={!selectedType}
                                        >
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder={selectedType ? "Selecione o item" : "Selecione o tipo primeiro"} />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                {filteredItems.map(item => (
                                                    <SelectItem key={item.id} value={item.id}>{item.label}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                        <FormMessage />
                                    </FormItem>
                                )}
                            />
                        </div>

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
