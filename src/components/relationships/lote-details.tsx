
"use client"

import { useState } from "react"
import { ExternalLink, Link2, Trash2 } from "lucide-react"
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

import { AssignLoteDialog } from "@/components/relationships/assign-lote-dialog"
import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"

interface LoteDetailsProps {
    lote: { id: string, nome: string, descricao: string | null, contrato_id: string | null }
    contrato: { id: string, numero: string, contratada: string } | null
    empreendimentosDoContrato: { id: string, nome: string, lote_id: string | null }[]
    empenhos: RelatedEmpenho[]
}

export function LoteDetails({
    lote,
    contrato,
    empreendimentosDoContrato,
    empenhos
}: LoteDetailsProps) {
    const [isAssignDialogOpen, setIsAssignDialogOpen] = useState(false)

    // Filter to show only those assigned to THIS lote
    const assignedEmps = empreendimentosDoContrato.filter(e => e.lote_id === lote.id)

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Lote {lote.nome}</h2>
                    {contrato ? (
                        <Link href={`/contratos/${contrato.id}`} className="text-muted-foreground hover:underline flex items-center">
                            Contrato: {contrato.numero}
                            <ExternalLink className="ml-1 h-3 w-3" />
                        </Link>
                    ) : (
                        <span className="text-muted-foreground text-sm italic">Sem contrato vinculado</span>
                    )}
                </div>
            </div>

            <div className="grid gap-4 md:grid-cols-2">
                <Card>
                    <CardHeader>
                        <CardTitle>Descrição</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <p>{lote.descricao || "Sem descrição."}</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Empreendimentos no Lote</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{assignedEmps.length}</div>
                    </CardContent>
                </Card>
            </div>

            <Tabs defaultValue="empreendimentos" className="space-y-4">
                <TabsList>
                    <TabsTrigger value="empreendimentos">Empreendimentos</TabsTrigger>
                    <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                </TabsList>

                <TabsContent value="empreendimentos">
                    <Card>
                        <CardHeader className="flex flex-row items-center justify-between">
                            <div>
                                <CardTitle>Empreendimentos Atribuídos</CardTitle>
                                <CardDescription>
                                    Obras que fazem parte deste lote de execução.
                                </CardDescription>
                            </div>
                            <Button onClick={() => setIsAssignDialogOpen(true)} disabled={!contrato}>
                                Gerenciar Atribuições
                            </Button>
                        </CardHeader>
                        <CardContent>
                            <Table>
                                <TableHeader>
                                    <TableRow>
                                        <TableHead>Nome</TableHead>
                                        <TableHead className="w-[100px]">Ações</TableHead>
                                    </TableRow>
                                </TableHeader>
                                <TableBody>
                                    {assignedEmps.length === 0 ? (
                                        <TableRow>
                                            <TableCell colSpan={2} className="h-24 text-center">
                                                Nenhum empreendimento atribuído a este lote.
                                            </TableCell>
                                        </TableRow>
                                    ) : (
                                        assignedEmps.map((emp) => (
                                            <TableRow key={emp.id}>
                                                <TableCell>
                                                    <Link href={`/empreendimentos/${emp.id}`} className="hover:underline flex items-center">
                                                        {emp.nome}
                                                        <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                    </Link>
                                                </TableCell>
                                                <TableCell>
                                                    {/* We could add an "unassign" button here if needed, or rely on dialog */}
                                                </TableCell>
                                            </TableRow>
                                        ))
                                    )}
                                </TableBody>
                            </Table>
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="empenhos">
                    <Card>
                        <CardHeader>
                            <CardTitle>Empenhos</CardTitle>
                            <CardDescription>
                                Notas de empenho vinculadas diretamente a este lote.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            <RelatedEmpenhosList empenhos={empenhos} entityType="Lote" />
                        </CardContent>
                    </Card>
                </TabsContent>
            </Tabs>

            <AssignLoteDialog
                open={isAssignDialogOpen}
                onOpenChange={setIsAssignDialogOpen}
                loteId={lote.id}
                contratoId={contrato?.id || ""}
                empreendimentosVinculados={empreendimentosDoContrato}
            />
        </div>
    )
}
