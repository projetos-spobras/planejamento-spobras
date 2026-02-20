
"use client"

import { useState } from "react"
import { useParams } from "next/navigation"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Link2, Trash2, ExternalLink, Coins, PieChart } from "lucide-react"
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

import { Empreendimento, PlanejamentoFase, Servico } from "@/types"
import { LinkContratoDialog } from "@/components/relationships/link-contrato-dialog"
import { unlinkContratoFromEmpreendimento } from "@/app/actions/relationships"
import { RelatedEmpenhosList, RelatedEmpenho } from "@/components/relationships/related-empenhos-list"
import { PlanningTabContent } from "@/components/planning/planning-tab-content"
import { ServicosTabContent } from "@/components/relationships/servicos-tab-content"

interface EmpreendimentoDetailsProps {
    empreendimento: Empreendimento
    contratosVinculados: {
        id: string
        contrato_id: string
        lote_id: string | null
        contrato: {
            id: string,
            numero: string,
            tipo: string | null,
            contratada: string | null,
            valor_total: number
        }
        lote?: { id: string, nome: string } | null
    }[]
    allContratos: { id: string, numero: string, tipo: string | null }[]
    allLotes: { id: string, nome: string, contrato_id: string }[]
    empenhos: RelatedEmpenho[]
    fases: PlanejamentoFase[]
    servicos: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    lookups?: {
        programas: { id: number, nome: string }[]
        distritos: { id: number, nome: string }[]
        gerencias: { id: number, nome: string }[]
        fases: { id: number, nome: string }[]
    }
    indicators?: {
        valorTotal: number
        totalEmpenhado: number
        percentualExecucao: number
        valorPlanejadoAno: number
        totalEmpenhadoAno: number
        saldoPlanejado: number
    }
}

export function EmpreendimentoDetails({
    empreendimento,
    contratosVinculados,
    allContratos,
    allLotes,
    empenhos,
    fases,
    servicos,
    lookups,
    indicators
}: EmpreendimentoDetailsProps) {
    const [isLinkDialogOpen, setIsLinkDialogOpen] = useState(false)
    const [unlinkId, setUnlinkId] = useState<{ empId: string, contId: string } | null>(null)

    const handleUnlink = async () => {
        if (!unlinkId) return

        const result = await unlinkContratoFromEmpreendimento(unlinkId.empId, unlinkId.contId)
        if (result.success) {
            toast.success("Contrato desvinculado com sucesso")
        } else {
            toast.error("Erro ao desvincular: " + result.error)
        }
        setUnlinkId(null)
    }

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <h2 className="text-3xl font-bold tracking-tight">{empreendimento.nome}</h2>
                <div className="flex items-center space-x-2">
                    {/* Actions if needed */}
                </div>
            </div>

            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Contratos</CardTitle>
                        <Link2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{contratosVinculados.length}</div>
                        <p className="text-xs text-muted-foreground">Vinculados a este empreendimento</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Serviços</CardTitle>
                        <Link2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{servicos?.length || 0}</div>
                        <p className="text-xs text-muted-foreground">Serviços cadastrados</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Execução Financeira</CardTitle>
                        <Coins className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">
                            {indicators ? `${indicators.percentualExecucao.toFixed(1)}%` : "0%"}
                        </div>
                        <p className="text-xs text-muted-foreground">
                            {indicators ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(indicators.totalEmpenhado) : "R$ 0,00"} empenhados
                        </p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Planejado {new Date().getFullYear()}</CardTitle>
                        <PieChart className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">
                            {indicators ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(indicators.valorPlanejadoAno) : "R$ 0"}
                        </div>
                        <p className="text-xs text-muted-foreground">
                            Saldo: {indicators ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(indicators.saldoPlanejado) : "R$ 0"}
                        </p>
                    </CardContent>
                </Card>
            </div>

            <Tabs defaultValue="detalhes" className="space-y-4">
                <TabsList>
                    <TabsTrigger value="detalhes">Detalhes</TabsTrigger>
                    <TabsTrigger value="servicos">Serviços</TabsTrigger>
                    <TabsTrigger value="contratos">Contratos Vinculados</TabsTrigger>
                    <TabsTrigger value="planejamento">Planejamento</TabsTrigger>
                    <TabsTrigger value="empenhos">Empenhos</TabsTrigger>
                </TabsList>

                <TabsContent value="detalhes" className="space-y-4">
                    <Card>
                        <CardHeader>
                            <CardTitle>Informações Gerais</CardTitle>
                        </CardHeader>
                        <CardContent>
                            <dl className="grid grid-cols-1 gap-4 sm:grid-cols-2">
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Código</dt>
                                    <dd>{empreendimento.codigo}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Status</dt>
                                    <dd>{(lookups?.fases?.find(f => f.id === Number(empreendimento.status))?.nome) || empreendimento.status}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Valor Total</dt>
                                    <dd>{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(empreendimento.valor_total)}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Localização</dt>
                                    <dd>{empreendimento.localizacao || "-"}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Subprefeitura / Distrito</dt>
                                    <dd>
                                        {(lookups?.distritos?.find(d => d.id === empreendimento.id_distrito)?.nome) || empreendimento.subprefeitura || empreendimento.id_distrito || "-"}
                                    </dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Programa</dt>
                                    <dd>
                                        {(lookups?.programas?.find(p => p.id === empreendimento.id_programa)?.nome) || empreendimento.programa || empreendimento.id_programa || "-"}
                                    </dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Gerência</dt>
                                    <dd>
                                        {(lookups?.gerencias?.find(g => g.id === Number(empreendimento.gerencia))?.nome) || empreendimento.gerencia || "-"}
                                    </dd>
                                </div>
                                <div className="sm:col-span-2">
                                    <dt className="text-sm font-medium text-muted-foreground">Descrição</dt>
                                    <dd>{empreendimento.descricao || "-"}</dd>
                                </div>
                                <div>
                                    <dt className="text-sm font-medium text-muted-foreground">Última Atualização</dt>
                                    <dd>{format(new Date(empreendimento.updated_at), "PPP", { locale: ptBR })}</dd>
                                </div>
                            </dl>
                        </CardContent>
                    </Card>
                </TabsContent>

                <TabsContent value="servicos">
                    <ServicosTabContent
                        servicos={servicos || []}
                        contratos={contratosVinculados.map(cv => cv.contrato)}
                        empreendimentoId={empreendimento.id}
                    />
                </TabsContent>

                <TabsContent value="planejamento">
                    <PlanningTabContent
                        empreendimentoId={empreendimento.id}
                        empreendimentoNome={empreendimento.nome}
                        fases={fases}
                    />
                </TabsContent>

                <TabsContent value="contratos" className="space-y-4">
                    <div className="flex justify-end">
                        <Button onClick={() => setIsLinkDialogOpen(true)}>
                            <Link2 className="mr-2 h-4 w-4" /> Vincular Contrato
                        </Button>
                    </div>

                    <Card>
                        <CardHeader>
                            <CardTitle>Contratos Associados</CardTitle>
                            <CardDescription>
                                Contratos vinculados para execução, projetos ou serviços desta obra.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            <Table>
                                <TableHeader>
                                    <TableRow>
                                        <TableHead>Número</TableHead>
                                        <TableHead>Tipo</TableHead>
                                        <TableHead>Contratada</TableHead>
                                        <TableHead>Valor Global</TableHead>
                                        <TableHead>Lote</TableHead>
                                        <TableHead className="w-[100px]">Ações</TableHead>
                                    </TableRow>
                                </TableHeader>
                                <TableBody>
                                    {contratosVinculados.length === 0 ? (
                                        <TableRow>
                                            <TableCell colSpan={6} className="h-24 text-center">
                                                Nenhum contrato vinculado.
                                            </TableCell>
                                        </TableRow>
                                    ) : (
                                        contratosVinculados.map((link) => (
                                            <TableRow key={link.id}>
                                                <TableCell className="font-medium">
                                                    <Link href={`/contratos/${link.contrato_id}`} className="hover:underline flex items-center">
                                                        {link.contrato.numero}
                                                        <ExternalLink className="ml-1 h-3 w-3 opacity-50" />
                                                    </Link>
                                                </TableCell>
                                                <TableCell>{link.contrato.tipo}</TableCell>
                                                <TableCell>{link.contrato.contratada}</TableCell>
                                                <TableCell>
                                                    {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(link.contrato.valor_total)}
                                                </TableCell>
                                                <TableCell>{link.lote?.nome || "-"}</TableCell>
                                                <TableCell>
                                                    <Button
                                                        variant="ghost"
                                                        size="icon"
                                                        onClick={() => setUnlinkId({ empId: empreendimento.id, contId: link.contrato_id })}
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
                </TabsContent>

                <TabsContent value="empenhos">
                    <Card>
                        <CardHeader>
                            <CardTitle>Empenhos</CardTitle>
                            <CardDescription>
                                Notas de empenho vinculadas diretamente a este empreendimento.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            <RelatedEmpenhosList empenhos={empenhos} entityType="Empreendimento" />
                        </CardContent>
                    </Card>
                </TabsContent>
            </Tabs>

            <LinkContratoDialog
                open={isLinkDialogOpen}
                onOpenChange={setIsLinkDialogOpen}
                empreendimentoId={empreendimento.id}
                contratos={allContratos}
                lotes={allLotes}
            />

            <AlertDialog open={!!unlinkId} onOpenChange={(open) => !open && setUnlinkId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Desvincular Contrato?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Isso removerá a associação entre o contrato e este empreendimento.
                            Verifique se não há empenhos dependentes desta relação.
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
