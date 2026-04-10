
"use client"

import { useState } from "react"
import { Plus, Search } from "lucide-react"
import { toast } from "sonner"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import {
    AlertDialog,
    AlertDialogAction,
    AlertDialogCancel,
    AlertDialogContent,
    AlertDialogDescription,
    AlertDialogFooter,
    AlertDialogHeader,
    AlertDialogTitle,
} from "@/components/ui/alert-dialog"

import { Empenho } from "@/types"
import { deleteEmpenho } from "@/app/(dashboard)/empenhos/actions"
import { EmpenhoDialog } from "./empenho-dialog"
import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"
import { EmpenhosPieChart } from "./empenhos-pie-chart"
import { EmpenhosYearlyChart } from "./empenhos-yearly-chart"

interface EmpenhosClientProps {
    data: RelatedEmpenho[]
    linkableItems: { id: string, label: string, type: 'empreendimento' | 'contrato' | 'lote' }[]
}

export function EmpenhosClient({ data, linkableItems }: EmpenhosClientProps) {
    const [searchTerm, setSearchTerm] = useState("")
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [empenhoToEdit, setEmpenhoToEdit] = useState<Empenho | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

    const filteredData = data.filter(item =>
        item.numero?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        item.contrato_numero?.toLowerCase().includes(searchTerm.toLowerCase())
    )

    const handleDelete = async () => {
        if (!deleteId) return

        const result = await deleteEmpenho(deleteId)
        if (result.success) {
            toast.success("Empenho excluído com sucesso")
        } else {
            toast.error("Erro ao excluir: " + result.error)
        }
        setDeleteId(null)
    }

    const openCreateDialog = () => {
        setEmpenhoToEdit(null)
        setIsDialogOpen(true)
    }

    const currentYear = new Date().getFullYear()
    const currentYearData = filteredData.filter(e => {
        if (!e.data_empenho) return false
        return new Date(e.data_empenho).getFullYear() === currentYear
    })

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Empenhos</h2>
                    <p className="text-muted-foreground">
                        Visão consolidada de empenhos agrupados por contrato.
                    </p>
                </div>
                <Button onClick={openCreateDialog}>
                    <Plus className="mr-2 h-4 w-4" /> Registrar Manualmente
                </Button>
            </div>

            {/* Charts at the top - Stacked Pies + Wide Evolution */}
            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
                <div className="space-y-4 lg:col-span-1 flex flex-col">
                    <EmpenhosPieChart 
                        empenhos={filteredData} 
                        title="Consolidado Geral" 
                    />
                    <EmpenhosPieChart 
                        empenhos={currentYearData} 
                        title={`Consolidado ${currentYear}`} 
                        showBadge={false}
                    />
                </div>
                <div className="lg:col-span-2 flex h-[456px]">
                    <div className="w-full flex-1 h-full">
                        <EmpenhosYearlyChart empenhos={filteredData} />
                    </div>
                </div>
            </div>

            <div className="flex items-center py-4">
                <Search className="mr-2 h-4 w-4 text-muted-foreground" />
                <Input
                    placeholder="Filtrar por número de empenho ou contrato..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    className="max-w-sm"
                />
            </div>

            <div className="space-y-4">
                <div className="flex items-center justify-between">
                    <h3 className="text-lg font-semibold">Notas de Empenho</h3>
                    <p className="text-sm text-muted-foreground">
                        Mostrando {filteredData.length} de {data.length} empenhos
                    </p>
                </div>
                
                <RelatedEmpenhosList 
                    empenhos={filteredData} 
                    entityType="Contrato" 
                />
            </div>

            <EmpenhoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                empenhoToEdit={empenhoToEdit}
                linkableItems={linkableItems}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Você tem certeza?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita. Isso excluirá permanentemente o empenho.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleDelete} className="bg-red-600 hover:bg-red-700">
                            Excluir
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div>
    )
}
