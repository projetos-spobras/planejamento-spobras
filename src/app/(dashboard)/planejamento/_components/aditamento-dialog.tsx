"use client"

import { useState, useEffect } from "react"
import { toast } from "sonner"

import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogFooter,
} from "@/components/ui/dialog"
import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import { Checkbox } from "@/components/ui/checkbox"
import { Label } from "@/components/ui/label"

import { updateServicoAditamento } from "../actions"

interface AditamentoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    servicoId: string
    defaultAnos?: number | null
    defaultFormalizado?: boolean | null
    onSuccess?: () => void
}

export function AditamentoDialog({
    open,
    onOpenChange,
    servicoId,
    defaultAnos,
    defaultFormalizado,
    onSuccess
}: AditamentoDialogProps) {
    const [isSaving, setIsSaving] = useState(false)
    const [anos, setAnos] = useState<number>(0)
    const [formalizado, setFormalizado] = useState<boolean>(false)

    useEffect(() => {
        if (open) {
            setAnos(defaultAnos || 0)
            setFormalizado(defaultFormalizado || false)
        }
    }, [open, defaultAnos, defaultFormalizado])

    async function onSubmit(e: React.FormEvent) {
        e.preventDefault()
        setIsSaving(true)
        try {
            const result = await updateServicoAditamento(servicoId, anos, formalizado)
            if (result.success) {
                toast.success("Aditamento atualizado com sucesso!")
                onOpenChange(false)
                if (onSuccess) onSuccess()
            } else {
                toast.error("Erro ao atualizar aditamento: " + result.error)
            }
        } catch (error) {
            toast.error("Erro inesperado ao atualizar aditamento")
        } finally {
            setIsSaving(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[425px]">
                <DialogHeader>
                    <DialogTitle>Aditamento de Prazo</DialogTitle>
                </DialogHeader>

                <form onSubmit={onSubmit} className="space-y-4">
                    <div className="space-y-2">
                        <Label>Anos a aditar</Label>
                        <Input 
                            type="number" 
                            min="0" 
                            value={anos} 
                            onChange={e => setAnos(parseInt(e.target.value) || 0)} 
                        />
                    </div>

                    <div className="flex flex-row items-center space-x-3 space-y-0 p-4 border rounded-md">
                        <Checkbox
                            id="adit-form"
                            checked={formalizado}
                            onCheckedChange={(checked) => setFormalizado(checked === true)}
                        />
                        <div className="space-y-1 leading-none">
                            <Label htmlFor="adit-form">
                                Aditamento formalizado
                            </Label>
                        </div>
                    </div>

                    <DialogFooter>
                        <Button
                            type="button"
                            variant="outline"
                            onClick={() => onOpenChange(false)}
                            disabled={isSaving}
                        >
                            Cancelar
                        </Button>
                        <Button type="submit" disabled={isSaving}>
                            {isSaving ? "Salvando..." : "Salvar"}
                        </Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>
    )
}
