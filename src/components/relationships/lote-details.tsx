
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
import { ServicosTabContent } from "@/components/relationships/servicos-tab-content"
import { Servico } from "@/types"

interface LoteDetailsProps {
    lote: { id: string, nome: string, tipo: 'GERAL' | 'OAE' | 'ESCOLA' | null, descricao: string | null, contrato_id: string | null }
    contrato: { id: string, numero: string, contratada: string } | null
    empreendimentosDoContrato: { id: string, nome: string, lote_id: string | null }[]
    empenhos: RelatedEmpenho[]
    avancosPorEmp?: { id: string, percentualExecutado: number, valorMedidoTotal: number }[]
    avancoConsolidado?: number
    servicos?: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    contratos?: { id: string, numero: string, contratada: string | null, valor_total?: number | null }[]
}

export function LoteDetails({
    lote,
    contrato,
    empreendimentosDoContrato,
    empenhos,
    avancosPorEmp = [],
    avancoConsolidado = 0,
    servicos = [],
    contratos = [],
}: LoteDetailsProps) {
    const [isAssignDialogOpen, setIsAssignDialogOpen] = useState(false)

    // Filter to show only those assigned to THIS lote
    const assignedEmps = empreendimentosDoContrato.filter(e => e.lote_id === lote.id)

    const TIPO_BADGE: Record<string, string> = {
        GERAL: "bg-blue-100 text-blue-800 border border-blue-200",
        OAE: "bg-amber-100 text-amber-800 border border-amber-200",
        ESCOLA: "bg-green-100 text-green-800 border border-green-200",
    }
    const tipoBadgeClass = lote.tipo ? (TIPO_BADGE[lote.tipo] ?? "bg-muted text-muted-foreground") : ""

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <div>
                    <div className="flex items-center gap-3">
                        <h2 className="text-3xl font-bold tracking-tight">Lote {lote.nome}</h2>
                        {lote.tipo && (
                            <span className={`text-xs font-semibold px-2.5 py-0.5 rounded-full ${tipoBadgeClass}`}>
                                {lote.tipo}
                            </span>
                        )}
                    </div>
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

            <div className="grid gap-4 md:grid-cols-3">
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
                {/* [M6] Card de avanço consolidado do lote */}
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Avanço Consolidado do Lote</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-2">
                        <div className="text-2xl font-bold">{avancoConsolidado.toFixed(1)}%</div>
                        <div className="relative h-2 w-full overflow-hidden rounded-full bg-muted">
                            <div
                                className={`h-full transition-all duration-500 ${avancoConsolidado >= 80 ? 'bg-emerald-500' :
                                    avancoConsolidado >= 50 ? 'bg-blue-500' :
                                        avancoConsolidado >= 20 ? 'bg-amber-500' : 'bg-rose-400'
                                    }`}
                                style={{ width: `${Math.min(avancoConsolidado, 100)}%` }}
                            />
                        </div>
                        <p className="text-xs text-muted-foreground">
                            Média ponderada pelo valor medido aprovado
                        </p>
                    </CardContent>
                </Card>
            </div>

            <Tabs defaultValue="empreendimentos" className="space-y-4">
                <TabsList>
                    <TabsTrigger value="empreendimentos">Empreendimentos</TabsTrigger>
                    <TabsTrigger value="servicos">Serviços</TabsTrigger>
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
                            <Button onClick={() => setIsAssignDialogOpen(true)}>
                                Gerenciar Atribuições
                            </Button>
                        </CardHeader>
                        <CardContent>
                            <Table>
                                <TableHeader>
                                    <TableRow>
                                        <TableHead>Nome</TableHead>
                                        <TableHead>Avanço Físico</TableHead>
                                        <TableHead className="w-[100px]">Ações</TableHead>
                                    </TableRow>
                                </TableHeader>
                                <TableBody>
                                    {assignedEmps.length === 0 ? (
                                        <TableRow>
                                            <TableCell colSpan={3} className="h-24 text-center">
                                                Nenhum empreendimento atribuído a este lote.
                                            </TableCell>
                                        </TableRow>
                                    ) : (
                                        assignedEmps.map((emp) => {
                                            const avanco = avancosPorEmp.find(a => a.id === emp.id)
                                            const pct = avanco?.percentualExecutado ?? 0
                                            const progressColor =
                                                pct >= 80 ? 'bg-emerald-500' :
                                                    pct >= 50 ? 'bg-blue-500' :
                                                        pct >= 20 ? 'bg-amber-500' : 'bg-rose-400'
                                            return (
                                                <TableRow key={emp.id}>
                                                    <TableCell>
                                                        <Link href={`/empreendimentos/${emp.id}`} className="hover:underline flex items-center">
                                                            {emp.nome}
                                                            <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                        </Link>
                                                    </TableCell>
                                                    <TableCell>
                                                        <div className="flex items-center gap-2">
                                                            <div className="relative h-2 w-24 overflow-hidden rounded-full bg-muted">
                                                                <div
                                                                    className={`h-full ${progressColor}`}
                                                                    style={{ width: `${Math.min(pct, 100)}%` }}
                                                                />
                                                            </div>
                                                            <span className="text-xs font-medium tabular-nums">
                                                                {pct.toFixed(1)}%
                                                            </span>
                                                        </div>
                                                    </TableCell>
                                                    <TableCell />
                                                </TableRow>
                                            )
                                        })
                                    )}
                                </TableBody>
                            </Table>
                        </CardContent>
                    </Card>
                </TabsContent>

                {/* [F2] Aba de Serviços do Lote */}
                <TabsContent value="servicos">
                    {assignedEmps.length === 0 ? (
                        <div className="rounded-md border p-6 text-center text-muted-foreground">
                            Nenhum empreendimento atribuído a este lote. Atribua empreendimentos primeiro para gerenciar serviços.
                        </div>
                    ) : (
                        <ServicosTabContent
                            servicos={servicos}
                            contratos={contratos}
                            empreendimentoId={assignedEmps[0].id}
                        />
                    )}
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
