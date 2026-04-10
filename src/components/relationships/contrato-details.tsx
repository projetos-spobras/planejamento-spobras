
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
import { RelatedMedicoesList, RelatedMedicao } from "@/components/relationships/related-medicoes-list"

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
            valor_aditamento?: number
            valor_reajuste?: number
            indice_reajuste?: string | null
            percentual_reajuste?: string | null
            indice_nome?: string | null
            valor_original?: number
        }
        lote?: { id: string, nome: string } | null
    }[]
    hierarchy: any[]
    allEmpreendimentos: { id: string, codigo: string, nome: string }[]
    lotes: { id: string, nome: string, contrato_id: string }[]
    empenhos: RelatedEmpenho[]
    aditamentos?: any[]
    medicoes?: RelatedMedicao[]
}

export function ContratoDetails({
    contrato,
    empreendimentosVinculados,
    hierarchy,
    allEmpreendimentos,
    lotes,
    empenhos,
    aditamentos = [],
    medicoes = []
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
    const hasLotes = lotes.length > 0

    type GroupedItem = {
        lote: { id: string, nome: string, contrato_id: string } | null
        items: typeof empreendimentosVinculados
    }

    const groupedData: GroupedItem[] = hasLotes ? lotes.map(lote => ({
        lote,
        items: empreendimentosVinculados.filter(ev => ev.lote_id === lote.id)
    })) : [{ lote: null, items: empreendimentosVinculados }]

    if (hasLotes) {
        const unboundItems = empreendimentosVinculados.filter(ev => !ev.lote_id)
        if (unboundItems.length > 0) {
            groupedData.push({ lote: { id: 'unbound', nome: 'Sem Lote atribuído', contrato_id: contrato.id }, items: unboundItems })
        }
    }
    
    // Hydrate medicoes with empreendimento names for grouping
    const hydratedMedicoes = medicoes.map(med => {
        const emp = allEmpreendimentos.find(e => 
            e.id === med.idEmpreendimento?.toString() || 
            e.codigo === med.idEmpreendimento?.toString()
        );
        return {
            ...med,
            empreendimento_nome: emp ? emp.nome : (med.idEmpreendimento ? `Obra ${med.idEmpreendimento}` : null)
        };
    });

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Contrato {contrato.numero}</h2>
                    <p className="text-muted-foreground">{contrato.tipo}</p>
                </div>
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
                        {((contrato.valor_aditamento && contrato.valor_aditamento !== 0) || (contrato.valor_reajuste && contrato.valor_reajuste !== 0)) ? (
                            <div className="mt-2 flex flex-col text-[10px] text-muted-foreground space-y-1">
                                <div className="flex justify-between border-b pb-1 mb-1">
                                    <span>Base (Contratual):</span>
                                    <span className="font-medium text-foreground">{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(contrato.valor_original || 0)}</span>
                                </div>
                                {contrato.valor_aditamento ? (
                                    <div className="flex justify-between text-emerald-600 font-medium">
                                        <span>Aditamentos:</span>
                                        <span>+ {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(contrato.valor_aditamento)}</span>
                                    </div>
                                ) : null}
                                {contrato.valor_reajuste ? (
                                    <div className="flex justify-between items-center text-blue-600 font-medium py-1.5 border-t border-blue-50">
                                        <div className="flex items-center gap-1.5 flex-wrap">
                                            <span className="text-xs uppercase tracking-wider opacity-70">Reajuste</span>
                                            <span className="text-[11px] font-bold">
                                                ({contrato.percentual_reajuste || (contrato.valor_original && contrato.valor_original > 0 
                                                    ? ((contrato.valor_reajuste / contrato.valor_original) * 100).toFixed(1) + "%"
                                                    : "0%")}{contrato.indice_nome && <span className="ml-1 uppercase text-[10px] font-medium opacity-80">{contrato.indice_nome}</span>})
                                            </span>
                                        </div>
                                    </div>
                                ) : null}
                            </div>
                        ) : null}
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
                {aditamentos.length > 0 && (
                    <Card>
                        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                            <CardTitle className="text-sm font-medium">Qtd. Aditamentos</CardTitle>
                            <Settings className="h-4 w-4 text-muted-foreground" />
                        </CardHeader>
                        <CardContent>
                            <div className="text-2xl font-bold">{aditamentos.length}</div>
                        </CardContent>
                    </Card>
                )}
            </div>

            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div className="md:col-span-2 space-y-4">
                    <Tabs defaultValue="detalhes" className="space-y-4">
                        <TabsList>
                            <TabsTrigger value="detalhes">Detalhes</TabsTrigger>
                            <TabsTrigger value="empreendimentos">Obras</TabsTrigger>
                            <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                            {aditamentos.length > 0 && (
                                <TabsTrigger value="aditamentos">Aditamentos</TabsTrigger>
                            )}
                            <TabsTrigger value="medicoes">Medições</TabsTrigger>
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
                                            <dd className="text-sm">{contrato.objeto || "-"}</dd>
                                        </div>
                                        <div>
                                            <dt className="text-sm font-medium text-muted-foreground">Contratada</dt>
                                            <dd className="text-sm">{contrato.contratada}</dd>
                                        </div>
                                        <div>
                                            <dt className="text-sm font-medium text-muted-foreground">Vigência</dt>
                                            <dd className="text-sm">
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
                                    <Link2 className="mr-2 h-4 w-4" /> Vincular Obra
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
                                                            Nenhuma obra neste grupo.
                                                        </TableCell>
                                                    </TableRow>
                                                ) : (
                                                    group.items.map((link) => (
                                                        <TableRow key={link.id}>
                                                            <TableCell className="font-medium font-mono text-xs">{link.empreendimento.codigo}</TableCell>
                                                            <TableCell className="text-sm">
                                                                <Link href={`/empreendimentos/${link.empreendimento_id}`} className="hover:underline flex items-center">
                                                                    {link.empreendimento.nome}
                                                                    <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                                </Link>
                                                            </TableCell>
                                                            <TableCell className="text-xs">{link.empreendimento.localizacao || "-"}</TableCell>
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

                        {aditamentos.length > 0 && (
                            <TabsContent value="aditamentos">
                                <Card>
                                    <CardHeader>
                                        <CardTitle>Aditamentos</CardTitle>
                                        <CardDescription>
                                            Lista de termos aditivos vinculados a este contrato.
                                        </CardDescription>
                                    </CardHeader>
                                    <CardContent>
                                        <Table>
                                            <TableHeader>
                                                <TableRow>
                                                    <TableHead>Número/Ano</TableHead>
                                                    <TableHead>Data</TableHead>
                                                    <TableHead>Valor Aditado</TableHead>
                                                    <TableHead>Observação</TableHead>
                                                </TableRow>
                                            </TableHeader>
                                            <TableBody>
                                                {aditamentos.map((adit) => (
                                                    <TableRow key={adit.idAditamento}>
                                                        <TableCell className="font-medium">
                                                            {adit.nrAditamento || "-"}
                                                        </TableCell>
                                                        <TableCell className="text-xs">
                                                            {adit.dtAditamento ? format(new Date(adit.dtAditamento), "dd/MM/yyyy") : "-"}
                                                        </TableCell>
                                                        <TableCell>
                                                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(adit.vlAditado || 0)}
                                                        </TableCell>
                                                        <TableCell className="text-xs max-w-[300px] whitespace-pre-wrap">
                                                            {adit.nmObservacao || "-"}
                                                        </TableCell>
                                                    </TableRow>
                                                ))}
                                            </TableBody>
                                        </Table>
                                    </CardContent>
                                </Card>
                            </TabsContent>
                        )}

                        <TabsContent value="medicoes">
                            <Card>
                                <CardHeader>
                                    <CardTitle>Medições</CardTitle>
                                    <CardDescription>
                                        Medições vinculadas a este contrato.
                                    </CardDescription>
                                </CardHeader>
                                <CardContent>
                                    <RelatedMedicoesList medicoes={hydratedMedicoes} entityType="Contrato" />
                                </CardContent>
                            </Card>
                        </TabsContent>
                    </Tabs>
                </div>

                <div className="space-y-6">
                    <ContratoHierarchy data={hierarchy} />
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
                        <AlertDialogTitle>Desvincular Obra?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Isso removerá a associação entre este contrato e a obra.
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
