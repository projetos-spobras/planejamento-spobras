"use client"

import { useState } from "react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import {
    AlertTriangle,
    CheckCircle2,
    DollarSign,
    Clock,
    Plus,
    Trash2,
    DownloadCloud,
    Pencil,
} from "lucide-react"
import { toast } from "sonner"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
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

import {
    AditamentoCadastroDialog,
    type AditamentoContrato,
    type AditamentoEmpreendimento,
} from "@/components/aditamentos/aditamento-cadastro-dialog"
import { 
    deleteAditamento, 
    importLegacyAditamentos, 
    type Aditamento 
} from "@/app/actions/aditamentos"

interface AditamentosTabContentProps {
    aditamentos: Aditamento[]
    tipoVinculo: "lote" | "empreendimento"
    loteId?: string | null
    empreendimentos: AditamentoEmpreendimento[]
    contratos: AditamentoContrato[]
    defaultEmpreendimentoId?: string
    defaultContratoId?: string
    revalidatePaths?: string[]
}

const formatCurrency = (value: number | null) => {
    if (value === null || value === undefined) return "—"
    return new Intl.NumberFormat("pt-BR", {
        style: "currency",
        currency: "BRL",
    }).format(value)
}

export function AditamentosTabContent({
    aditamentos: aditamentosIniciais,
    tipoVinculo,
    loteId,
    empreendimentos,
    contratos,
    defaultEmpreendimentoId,
    defaultContratoId,
    revalidatePaths = [],
}: AditamentosTabContentProps) {
    const [aditamentos, setAditamentos] = useState<Aditamento[]>(aditamentosIniciais || [])
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editId, setEditId] = useState<string | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)
    const [isImporting, setIsImporting] = useState(false)

    const naoFormalizados = aditamentos.filter((a) => !a.formalizado)
    const totalValor = aditamentos
        .filter((a) => a.tipos.includes("valor") && a.valor_estimado)
        .reduce((sum, a) => sum + (a.valor_estimado || 0), 0)
    const totalMeses = aditamentos
        .filter((a) => a.tipos.includes("prazo") && a.prazo_meses)
        .reduce((sum, a) => sum + (a.prazo_meses || 0), 0)

    const handleDeleteConfirm = async () => {
        if (!deleteId) return
        const result = await deleteAditamento(deleteId, revalidatePaths)
        if (result.success) {
            toast.success("Aditamento removido com sucesso.")
            setAditamentos((prev) => prev.filter((a) => a.id !== deleteId))
        } else {
            toast.error("Erro ao remover aditamento: " + result.error)
        }
        setDeleteId(null)
    }

    const handleEdit = (id: string) => {
        setEditId(id)
        setIsDialogOpen(true)
    }

    const handleSuccess = () => {
        // Força reload dos dados via hard navigation
        window.location.reload()
    }

    return (
        <>
            <div className="space-y-4">
                {/* Alerta de não formalizados */}
                {naoFormalizados.length > 0 && (
                    <div className="flex items-start gap-3 rounded-lg border border-amber-200 bg-amber-50 p-4 dark:bg-amber-950/20 dark:border-amber-800">
                        <AlertTriangle className="h-5 w-5 shrink-0 text-amber-600 dark:text-amber-400 mt-0.5" />
                        <div>
                            <p className="font-semibold text-amber-800 dark:text-amber-300 text-sm">
                                {naoFormalizados.length === 1
                                    ? "1 aditamento pendente de formalização"
                                    : `${naoFormalizados.length} aditamentos pendentes de formalização`}
                            </p>
                            <p className="text-xs text-amber-700 dark:text-amber-400 mt-0.5">
                                Os aditamentos abaixo foram registrados mas ainda não possuem instrumento
                                formal assinado. Regularize assim que possível.
                            </p>
                        </div>
                    </div>
                )}

                {/* KPI Cards */}
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                    <Card>
                        <CardHeader className="pb-2 pt-4 px-4">
                            <CardTitle className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                                Total de Aditamentos
                            </CardTitle>
                        </CardHeader>
                        <CardContent className="px-4 pb-4">
                            <div className="text-3xl font-bold">{aditamentos.length}</div>
                            <p className="text-xs text-muted-foreground mt-1">
                                {naoFormalizados.length > 0
                                    ? `${naoFormalizados.length} não formalizado(s)`
                                    : "Todos formalizados"}
                            </p>
                        </CardContent>
                    </Card>

                    <Card>
                        <CardHeader className="pb-2 pt-4 px-4">
                            <CardTitle className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                                Valor Total Aditado
                            </CardTitle>
                        </CardHeader>
                        <CardContent className="px-4 pb-4">
                            <div className="text-2xl font-bold text-emerald-600">
                                {totalValor > 0
                                    ? new Intl.NumberFormat("pt-BR", {
                                          style: "currency",
                                          currency: "BRL",
                                          notation: "compact",
                                      }).format(totalValor)
                                    : "—"}
                            </div>
                            <p className="text-xs text-muted-foreground mt-1">
                                {formatCurrency(totalValor)}
                            </p>
                        </CardContent>
                    </Card>

                    <Card>
                        <CardHeader className="pb-2 pt-4 px-4">
                            <CardTitle className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                                Prazo Total Aditado
                            </CardTitle>
                        </CardHeader>
                        <CardContent className="px-4 pb-4">
                            <div className="text-3xl font-bold text-blue-600">
                                {totalMeses > 0 ? `${totalMeses}` : "—"}
                            </div>
                            <p className="text-xs text-muted-foreground mt-1">
                                {totalMeses > 0
                                    ? `meses (≈ ${(totalMeses / 12).toFixed(1)} anos)`
                                    : "sem aditamentos de prazo"}
                            </p>
                        </CardContent>
                    </Card>
                </div>

                {/* Tabela */}
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between">
                        <div>
                            <CardTitle>Histórico de Aditamentos</CardTitle>
                            <CardDescription>
                                Registro interno de aditamentos de valor e prazo.
                            </CardDescription>
                        </div>
                        <div className="flex items-center gap-2">
                            <Button onClick={() => {
                                setEditId(null)
                                setIsDialogOpen(true)
                            }}>
                                <Plus className="mr-2 h-4 w-4" />
                                Registrar Aditamento
                            </Button>
                        </div>
                    </CardHeader>
                    <CardContent>
                        {aditamentos.length === 0 ? (
                            <div className="flex flex-col items-center justify-center py-12 text-muted-foreground space-y-3">
                                <div className="h-12 w-12 rounded-full bg-muted flex items-center justify-center">
                                    <DollarSign className="h-6 w-6" />
                                </div>
                                <p className="font-medium">Nenhum aditamento registrado</p>
                                <p className="text-sm">
                                    Clique em "Registrar Aditamento" para adicionar o primeiro.
                                </p>
                            </div>
                        ) : (
                            <Table>
                                <TableHeader>
                                    <TableRow>
                                        <TableHead>Data</TableHead>
                                        {tipoVinculo === "lote" && (
                                            <TableHead>Empreendimento</TableHead>
                                        )}
                                        <TableHead>Tipo(s)</TableHead>
                                        <TableHead className="text-right">Valor Estimado</TableHead>
                                        <TableHead className="text-center">Meses</TableHead>
                                        <TableHead>Processo SEI</TableHead>
                                        <TableHead>Justificativa</TableHead>
                                        <TableHead className="text-center">Status</TableHead>
                                        <TableHead className="w-[60px]" />
                                    </TableRow>
                                </TableHeader>
                                <TableBody>
                                    {aditamentos.map((aditamento) => (
                                        <TableRow key={aditamento.id}>
                                            <TableCell className="text-sm whitespace-nowrap">
                                                {format(new Date(aditamento.created_at), "dd/MM/yyyy", {
                                                    locale: ptBR,
                                                })}
                                            </TableCell>

                                            {tipoVinculo === "lote" && (
                                                <TableCell className="text-sm max-w-[180px] truncate">
                                                    {empreendimentos.find(
                                                        (e) => e.id === aditamento.empreendimento_id
                                                    )?.nome || (
                                                        <span className="text-muted-foreground italic text-xs">
                                                            ID: {aditamento.empreendimento_id.slice(0, 8)}…
                                                        </span>
                                                    )}
                                                </TableCell>
                                            )}

                                            <TableCell>
                                                <div className="flex flex-wrap gap-1">
                                                    {aditamento.tipos.includes("valor") && (
                                                        <Badge
                                                            variant="secondary"
                                                            className="bg-emerald-100 text-emerald-700 border border-emerald-200 text-xs"
                                                        >
                                                            <DollarSign className="h-3 w-3 mr-1" />
                                                            Valor
                                                        </Badge>
                                                    )}
                                                    {aditamento.tipos.includes("prazo") && (
                                                        <Badge
                                                            variant="secondary"
                                                            className="bg-blue-100 text-blue-700 border border-blue-200 text-xs"
                                                        >
                                                            <Clock className="h-3 w-3 mr-1" />
                                                            Prazo
                                                        </Badge>
                                                    )}
                                                </div>
                                            </TableCell>

                                            <TableCell className="text-right font-medium text-sm">
                                                {aditamento.valor_estimado
                                                    ? formatCurrency(aditamento.valor_estimado)
                                                    : "—"}
                                            </TableCell>

                                            <TableCell className="text-center text-sm">
                                                {aditamento.prazo_meses ? (
                                                    <span className="font-medium text-blue-700">
                                                        {aditamento.prazo_meses}m
                                                    </span>
                                                ) : (
                                                    "—"
                                                )}
                                            </TableCell>

                                            <TableCell className="text-xs font-mono">
                                                {aditamento.processo_sei || (
                                                    <span className="text-muted-foreground italic opacity-50">—</span>
                                                )}
                                            </TableCell>

                                            <TableCell className="max-w-[200px]">
                                                <p
                                                    className="text-xs text-muted-foreground truncate"
                                                    title={aditamento.justificativa}
                                                >
                                                    {aditamento.justificativa}
                                                </p>
                                            </TableCell>

                                            <TableCell className="text-center">
                                                {aditamento.formalizado ? (
                                                    <Badge
                                                        variant="secondary"
                                                        className="bg-emerald-100 text-emerald-700 border border-emerald-200 text-xs whitespace-nowrap"
                                                    >
                                                        <CheckCircle2 className="h-3 w-3 mr-1" />
                                                        Formalizado
                                                    </Badge>
                                                ) : (
                                                    <Badge
                                                        variant="secondary"
                                                        className="bg-amber-100 text-amber-700 border border-amber-200 text-xs whitespace-nowrap"
                                                    >
                                                        <AlertTriangle className="h-3 w-3 mr-1" />
                                                        Pendente
                                                    </Badge>
                                                )}
                                            </TableCell>

                                             <TableCell>
                                                <div className="flex items-center gap-1">
                                                    <Button
                                                        variant="ghost"
                                                        size="icon"
                                                        onClick={() => handleEdit(aditamento.id)}
                                                        className="h-8 w-8 text-muted-foreground hover:text-blue-600"
                                                    >
                                                        <Pencil className="h-4 w-4" />
                                                    </Button>
                                                    <Button
                                                        variant="ghost"
                                                        size="icon"
                                                        onClick={() => setDeleteId(aditamento.id)}
                                                        className="h-8 w-8 text-muted-foreground hover:text-destructive"
                                                    >
                                                        <Trash2 className="h-4 w-4" />
                                                    </Button>
                                                </div>
                                            </TableCell>
                                        </TableRow>
                                    ))}
                                </TableBody>
                            </Table>
                        )}
                    </CardContent>
                </Card>
            </div>

            {/* Dialog de cadastro */}
            <AditamentoCadastroDialog
                open={isDialogOpen}
                onOpenChange={(open) => {
                    setIsDialogOpen(open)
                    if (!open) setEditId(null)
                }}
                onSuccess={handleSuccess}
                tipoVinculo={tipoVinculo}
                loteId={loteId}
                empreendimentos={empreendimentos}
                contratos={contratos}
                defaultEmpreendimentoId={defaultEmpreendimentoId}
                defaultContratoId={defaultContratoId}
                aditamentoParaEditar={aditamentos.find(a => a.id === editId)}
            />

            {/* Confirmação de exclusão */}
            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Remover Aditamento?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita. O aditamento será removido do registro
                            interno. Nota: os campos de prazo nos serviços não serão revertidos
                            automaticamente.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction
                            onClick={handleDeleteConfirm}
                            className="bg-red-600 hover:bg-red-700"
                        >
                            Remover
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </>
    )
}
