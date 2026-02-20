
"use client"

import { useState } from "react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Link2, Trash2, ExternalLink, Settings } from "lucide-react"
import { toast } from "sonner"
import Link from "next/link"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
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

import { Contrato } from "@/types"
import { LinkEmpreendimentoDialog } from "@/components/relationships/link-empreendimento-dialog"
import { unlinkContratoFromEmpreendimento } from "@/app/actions/relationships"
import { ContratoHierarchy } from "./contrato-hierarchy"

import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"

interface ContratoDetailsProps {
    contrato: Contrato
    empreendimentosVinculados: {
        id: string
        empreendimento_id: string
        lote_id: string | null
        empreendimento: {
            id: string,
            codigo: string,
            nome: string,
            localizacao?: string
        }
        lote?: { id: string, nome: string } | null
    }[]
    hierarchy: any[]
    allEmpreendimentos: { id: string, nome: string }[]
    lotes: { id: string, nome: string, contrato_id: string }[]
    empenhos: RelatedEmpenho[]
}

export function ContratoDetails({
    contrato,
    empreendimentosVinculados,
    hierarchy,
    allEmpreendimentos,
    lotes,
    empenhos
}: ContratoDetailsProps) {
    const [isLinkDialogOpen, setIsLinkDialogOpen] = useState(false)
    const [unlinkId, setUnlinkId] = useState<{ empId: string, contId: string } | null>(null)

    const handleUnlink = async () => {
        if (!unlinkId) return

        const result = await unlinkContratoFromEmpreendimento(unlinkId.empId, unlinkId.contId)
        if (result.success) {
            toast.success("Empreendimento desvinculado com sucesso")
        } else {
            toast.error("Erro ao desvincular: " + result.error)
        }
        setUnlinkId(null)
    }

    // Group empreendimentos by Lote if applicable
    // But for the main table we might just list them.
    // The requirement says: "Se o contrato tiver lotes, agrupar empreendimentos por lote"
    // Let's create a grouped view if lotes exist.

    const hasLotes = lotes.length > 0

    type GroupedItem = {
        lote: { id: string, nome: string, contrato_id: string } | null
        items: typeof empreendimentosVinculados
    }

    const groupedData: GroupedItem[] = hasLotes ? lotes.map(lote => ({
        lote,
        items: empreendimentosVinculados.filter(ev => ev.lote_id === lote.id)
    })) : [{ lote: null, items: empreendimentosVinculados }]

    // Also include items without lote even if lotes exist
    if (hasLotes) {
        const unboundItems = empreendimentosVinculados.filter(ev => !ev.lote_id)
        if (unboundItems.length > 0) {
            groupedData.push({ lote: { id: 'unbound', nome: 'Sem Lote atribuído', contrato_id: contrato.id }, items: unboundItems })
        }
    }

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Contrato {contrato.numero}</h2>
                    <p className="text-muted-foreground">{contrato.tipo}</p>
                </div>
                {/* Actions */}
            </div>

            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Valor Total</CardTitle>
                        <span className="font-bold">R$</span>
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">
                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(contrato.valor_total)}
                        </div>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Empreendimentos</CardTitle>
                        <Link2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{empreendimentosVinculados.length}</div>
                    </CardContent>
                </Card>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div className="md:col-span-2 space-y-4">
                    <Tabs defaultValue="detalhes" className="space-y-4">
                        <TabsList>
                            <TabsTrigger value="detalhes">Detalhes</TabsTrigger>
                            <TabsTrigger value="empreendimentos">Empreendimentos Vinculados</TabsTrigger>
                            <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                        </TabsList>

                        <TabsContent value="detalhes" className="space-y-4">
                            <Card>
                                <CardHeader>
                                    <CardTitle>Informações do Contrato</CardTitle>
                                </CardHeader>
                                <CardContent>
                                    <dl className="grid grid-cols-1 gap-4 sm:grid-cols-2">
                                        <div className="sm:col-span-2">
                                            <dt className="text-sm font-medium text-muted-foreground">Objeto</dt>
                                            <dd>{contrato.objeto || "-"}</dd>
                                        </div>
                                        <div>
                                            <dt className="text-sm font-medium text-muted-foreground">Contratada</dt>
                                            <dd>{contrato.contratada}</dd>
                                        </div>
                                        <div>
                                            <dt className="text-sm font-medium text-muted-foreground">Vigência</dt>
                                            <dd>
                                                {contrato.data_inicio ? format(new Date(contrato.data_inicio), "P", { locale: ptBR }) : "?"}
                                                {" - "}
                                                {contrato.data_fim ? format(new Date(contrato.data_fim), "P", { locale: ptBR }) : "?"}
                                            </dd>
                                        </div>
                                    </dl>
                                </CardContent>
                            </Card>
                        </TabsContent>

                        <TabsContent value="empreendimentos" className="space-y-4">
                            <div className="flex justify-between items-center">
                                <h3 className="text-lg font-medium">Obras deste contrato</h3>
                                <Button onClick={() => setIsLinkDialogOpen(true)}>
                                    <Link2 className="mr-2 h-4 w-4" /> Vincular Empreendimento
                                </Button>
                            </div>

                            {groupedData.map((group, idx) => (
                                <Card key={group.lote?.id || idx} className="mb-4">
                                    <CardHeader className="py-3 bg-muted/20">
                                        <CardTitle className="text-base font-medium flex items-center">
                                            {group.lote ? `Lote: ${group.lote.nome}` : "Sem Lote"}
                                        </CardTitle>
                                    </CardHeader>
                                    <CardContent className="p-0">
                                        <Table>
                                            <TableHeader>
                                                <TableRow>
                                                    <TableHead>Código</TableHead>
                                                    <TableHead>Nome</TableHead>
                                                    <TableHead>Localização</TableHead>
                                                    <TableHead className="w-[100px]">Ações</TableHead>
                                                </TableRow>
                                            </TableHeader>
                                            <TableBody>
                                                {group.items.length === 0 ? (
                                                    <TableRow>
                                                        <TableCell colSpan={4} className="h-16 text-center text-muted-foreground text-sm">
                                                            Nenhum empreendimento neste grupo.
                                                        </TableCell>
                                                    </TableRow>
                                                ) : (
                                                    group.items.map((link) => (
                                                        <TableRow key={link.id}>
                                                            <TableCell className="font-medium">{link.empreendimento.codigo}</TableCell>
                                                            <TableCell>
                                                                <Link href={`/empreendimentos/${link.empreendimento_id}`} className="hover:underline flex items-center">
                                                                    {link.empreendimento.nome}
                                                                    <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                                </Link>
                                                            </TableCell>
                                                            <TableCell>{link.empreendimento.localizacao || "-"}</TableCell>
                                                            <TableCell>
                                                                <Button
                                                                    variant="ghost"
                                                                    size="icon"
                                                                    onClick={() => setUnlinkId({ empId: link.empreendimento_id, contId: contrato.id })}
                                                                >
                                                                    <Trash2 className="h-4 w-4 text-red-500" />
                                                                </Button>
                                                            </TableCell>
                                                        </TableRow>
                                                    ))
                                                )}
                                            </TableBody>
                                        </Table>
                                    </CardContent>
                                </Card>
                            ))}
                        </TabsContent>

                        <TabsContent value="empenhos">
                            <Card>
                                <CardHeader>
                                    <CardTitle>Empenhos</CardTitle>
                                    <CardDescription>
                                        Empenhos vinculados a este contrato.
                                    </CardDescription>
                                </CardHeader>
                                <CardContent>
                                    <RelatedEmpenhosList empenhos={empenhos} entityType="Contrato" />
                                </CardContent>
                            </Card>
                        </TabsContent>
                    </Tabs>
                </div>

                <div className="space-y-6">
                    <ContratoHierarchy data={hierarchy} />
                    {/* Add Lotes List here as well? */}
                </div>
            </div>

            <LinkEmpreendimentoDialog
                open={isLinkDialogOpen}
                onOpenChange={setIsLinkDialogOpen}
                contratoId={contrato.id}
                empreendimentos={allEmpreendimentos}
                lotes={lotes}
            />

            <AlertDialog open={!!unlinkId} onOpenChange={(open) => !open && setUnlinkId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Desvincular Empreendimento?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Isso removerá a associação entre este contrato e o empreendimento.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleUnlink} className="bg-red-600 hover:bg-red-700">
                            Desvincular
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div>
    )
}
