"use client"

import { useState, useEffect } from "react"
import { toast } from "sonner"
import { AlertTriangle, CheckCircle2, DollarSign, Clock } from "lucide-react"

import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogFooter,
    DialogDescription,
} from "@/components/ui/dialog"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Checkbox } from "@/components/ui/checkbox"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import { ScrollArea } from "@/components/ui/scroll-area"

import { createAditamento, updateAditamento, type AditamentoFormData, type Aditamento } from "@/app/actions/aditamentos"

export interface AditamentoContrato {
    id: string
    numero: string
    contratada?: string | null
}

export interface AditamentoEmpreendimento {
    id: string
    nome: string
}

interface AditamentoCadastroDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    onSuccess?: () => void

    // Contexto: lote ou empreendimento
    tipoVinculo: "lote" | "empreendimento"
    loteId?: string | null

    // Seleções disponíveis
    empreendimentos: AditamentoEmpreendimento[]
    contratos: AditamentoContrato[]

    // Pré-seleções (quando há contexto único)
    defaultEmpreendimentoId?: string
    defaultContratoId?: string

    // Para edição
    aditamentoParaEditar?: Aditamento | null
}

const formatCurrencyDisplay = (value: string): string => {
    const onlyDigits = value.replace(/\D/g, "")
    if (!onlyDigits) return ""
    const number = parseInt(onlyDigits, 10) / 100
    return new Intl.NumberFormat("pt-BR", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2,
    }).format(number)
}

const parseCurrencyValue = (value: string): number => {
    if (!value) return 0
    return parseFloat(value.replace(/\./g, "").replace(",", ".")) || 0
}

export function AditamentoCadastroDialog({
    open,
    onOpenChange,
    onSuccess,
    tipoVinculo,
    loteId,
    empreendimentos,
    contratos,
    defaultEmpreendimentoId,
    defaultContratoId,
    aditamentoParaEditar,
}: AditamentoCadastroDialogProps) {
    const [isSaving, setIsSaving] = useState(false)

    // Campos do formulário
    const [selectedEmpId, setSelectedEmpId] = useState(defaultEmpreendimentoId || "")
    const [selectedContratoId, setSelectedContratoId] = useState(defaultContratoId || "")
    const [tipoValor, setTipoValor] = useState(false)
    const [tipoPrazo, setTipoPrazo] = useState(false)
    const [valorEstimadoStr, setValorEstimadoStr] = useState("")
    const [prazoMeses, setPrazoMeses] = useState<number | "">("")
    const [justificativa, setJustificativa] = useState("")
    const [formalizado, setFormalizado] = useState(false)
    const [processoSEI, setProcessoSEI] = useState("")

    // Reset / Pre-fill ao abrir
    useEffect(() => {
        if (open) {
            if (aditamentoParaEditar) {
                setSelectedEmpId(aditamentoParaEditar.empreendimento_id || "")
                setSelectedContratoId(aditamentoParaEditar.contrato_id || "")
                setTipoValor(aditamentoParaEditar.tipos.includes("valor"))
                setTipoPrazo(aditamentoParaEditar.tipos.includes("prazo"))
                setValorEstimadoStr(aditamentoParaEditar.valor_estimado ? formatCurrencyDisplay((aditamentoParaEditar.valor_estimado * 100).toString()) : "")
                setPrazoMeses(aditamentoParaEditar.prazo_meses || "")
                setJustificativa(aditamentoParaEditar.justificativa || "")
                setFormalizado(aditamentoParaEditar.formalizado)
                setProcessoSEI(aditamentoParaEditar.processo_sei || "")
            } else {
                setSelectedEmpId(defaultEmpreendimentoId || "")
                setSelectedContratoId(defaultContratoId || "")
                setTipoValor(false)
                setTipoPrazo(false)
                setValorEstimadoStr("")
                setPrazoMeses("")
                setJustificativa("")
                setFormalizado(false)
                setProcessoSEI("")
            }
        }
    }, [open, defaultEmpreendimentoId, defaultContratoId, aditamentoParaEditar])

    const hasTipo = tipoValor || tipoPrazo

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()

        if (!hasTipo) {
            toast.error("Selecione ao menos um tipo de aditamento (Valor ou Prazo).")
            return
        }

        const tipos: Array<"valor" | "prazo"> = []
        if (tipoValor) tipos.push("valor")
        if (tipoPrazo) tipos.push("prazo")

        const payload: AditamentoFormData = {
            tipo_vinculo: tipoVinculo,
            lote_id: loteId || null,
            empreendimento_id: selectedEmpId,
            contrato_id: selectedContratoId || null,
            tipos,
            valor_estimado: tipoValor ? parseCurrencyValue(valorEstimadoStr) : null,
            prazo_meses: tipoPrazo ? Number(prazoMeses) : null,
            justificativa,
            formalizado,
            processo_sei: formalizado ? processoSEI : null,
        }

        setIsSaving(true)
        try {
            const result = aditamentoParaEditar 
                ? await updateAditamento(aditamentoParaEditar.id, payload)
                : await createAditamento(payload)
                
            if (result.success) {
                toast.success(aditamentoParaEditar ? "Aditamento atualizado com sucesso!" : "Aditamento registrado com sucesso!")
                if (!formalizado) {
                    toast.warning("Atenção: este aditamento ainda não foi formalizado.", {
                        duration: 6000,
                    })
                }
                onOpenChange(false)
                onSuccess?.()
            } else {
                toast.error("Erro ao salvar aditamento: " + result.error)
            }
        } catch {
            toast.error("Erro inesperado ao salvar aditamento.")
        } finally {
            setIsSaving(false)
        }
    }

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[560px] max-h-[95vh] flex flex-col p-0 gap-0">
                <DialogHeader className="p-6 pb-2">
                    <DialogTitle className="text-xl">
                        {aditamentoParaEditar ? "Editar Aditamento" : "Registrar Aditamento"}
                    </DialogTitle>
                    <DialogDescription>
                        {aditamentoParaEditar 
                            ? "Altere os dados do aditamento registrado."
                            : "Registre um aditamento de valor e/ou prazo para controle interno."}
                        {tipoVinculo === "lote" && " O aditamento será vinculado ao lote atual."}
                    </DialogDescription>
                </DialogHeader>

                <form onSubmit={handleSubmit} className="flex flex-col flex-1 overflow-hidden">
                    <ScrollArea className="flex-1 max-h-[calc(95vh-160px)] px-6 py-4">
                        <div className="space-y-5">
                    {/* Empreendimento Alvo */}
                    <div className="space-y-1.5">
                        <Label htmlFor="emp-select">
                            Empreendimento Alvo <span className="text-destructive">*</span>
                        </Label>
                        {empreendimentos.length === 1 && defaultEmpreendimentoId ? (
                            <div className="rounded-md border bg-muted/50 px-3 py-2 text-sm text-muted-foreground">
                                {empreendimentos[0]?.nome || "Empreendimento selecionado"}
                            </div>
                        ) : (
                            <Select
                                value={selectedEmpId}
                                onValueChange={setSelectedEmpId}
                                required
                            >
                                <SelectTrigger id="emp-select">
                                    <SelectValue placeholder="Selecione o empreendimento" />
                                </SelectTrigger>
                                <SelectContent>
                                    {empreendimentos.map((emp) => (
                                        <SelectItem key={emp.id} value={emp.id}>
                                            {emp.nome}
                                        </SelectItem>
                                    ))}
                                </SelectContent>
                            </Select>
                        )}
                    </div>

                    {/* Contrato */}
                    {contratos.length > 0 && (
                        <div className="space-y-1.5">
                            <Label htmlFor="contrato-select">
                                Contrato{" "}
                                {tipoVinculo === "empreendimento" && (
                                    <span className="text-destructive">*</span>
                                )}
                            </Label>
                            {contratos.length === 1 && defaultContratoId ? (
                                <div className="rounded-md border bg-muted/50 px-3 py-2 text-sm text-muted-foreground">
                                    {contratos[0]?.numero}
                                    {contratos[0]?.contratada && (
                                        <span className="ml-2 opacity-70">— {contratos[0].contratada}</span>
                                    )}
                                </div>
                            ) : (
                                <Select
                                    value={selectedContratoId}
                                    onValueChange={setSelectedContratoId}
                                    required={tipoVinculo === "empreendimento"}
                                >
                                    <SelectTrigger id="contrato-select">
                                        <SelectValue placeholder="Selecione o contrato" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {contratos.map((c) => (
                                            <SelectItem key={c.id} value={c.id}>
                                                {c.numero}
                                                {c.contratada && ` — ${c.contratada}`}
                                            </SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            )}
                        </div>
                    )}

                    {/* Tipo de Aditamento — Multiseleção */}
                    <div className="space-y-2">
                        <Label>
                            Tipo de Aditamento <span className="text-destructive">*</span>
                        </Label>
                        <div className="grid grid-cols-2 gap-3">
                            {/* Valor */}
                            <div
                                role="checkbox"
                                aria-checked={tipoValor}
                                tabIndex={0}
                                onClick={() => setTipoValor((v) => !v)}
                                onKeyDown={(e) => (e.key === " " || e.key === "Enter") && setTipoValor((v) => !v)}
                                className={`flex flex-col gap-2 rounded-lg border-2 p-4 cursor-pointer select-none transition-all ${
                                    tipoValor
                                        ? "border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30"
                                        : "border-border hover:border-muted-foreground/40"
                                }`}
                            >
                                <div className="flex items-center justify-between">
                                    <DollarSign
                                        className={`h-5 w-5 ${tipoValor ? "text-emerald-600" : "text-muted-foreground"}`}
                                    />
                                    {/* Indicador visual — não é um Checkbox interativo para evitar botão aninhado */}
                                    <div
                                        className={`h-4 w-4 rounded-sm border-2 flex items-center justify-center transition-colors ${
                                            tipoValor
                                                ? "border-emerald-500 bg-emerald-500"
                                                : "border-muted-foreground/40"
                                        }`}
                                    >
                                        {tipoValor && (
                                            <svg viewBox="0 0 10 10" className="h-3 w-3 text-white fill-current">
                                                <polyline points="1.5,5 4,7.5 8.5,2" stroke="currentColor" strokeWidth="1.5" fill="none" strokeLinecap="round" strokeLinejoin="round" />
                                            </svg>
                                        )}
                                    </div>
                                </div>
                                <span
                                    className={`font-semibold text-sm ${tipoValor ? "text-emerald-700 dark:text-emerald-400" : ""}`}
                                >
                                    Valor
                                </span>
                                <span className="text-xs text-muted-foreground">
                                    Aumento no valor do contrato
                                </span>
                            </div>

                            {/* Prazo */}
                            <div
                                role="checkbox"
                                aria-checked={tipoPrazo}
                                tabIndex={0}
                                onClick={() => setTipoPrazo((v) => !v)}
                                onKeyDown={(e) => (e.key === " " || e.key === "Enter") && setTipoPrazo((v) => !v)}
                                className={`flex flex-col gap-2 rounded-lg border-2 p-4 cursor-pointer select-none transition-all ${
                                    tipoPrazo
                                        ? "border-blue-500 bg-blue-50 dark:bg-blue-950/30"
                                        : "border-border hover:border-muted-foreground/40"
                                }`}
                            >
                                <div className="flex items-center justify-between">
                                    <Clock
                                        className={`h-5 w-5 ${tipoPrazo ? "text-blue-600" : "text-muted-foreground"}`}
                                    />
                                    {/* Indicador visual — não é um Checkbox interativo para evitar botão aninhado */}
                                    <div
                                        className={`h-4 w-4 rounded-sm border-2 flex items-center justify-center transition-colors ${
                                            tipoPrazo
                                                ? "border-blue-500 bg-blue-500"
                                                : "border-muted-foreground/40"
                                        }`}
                                    >
                                        {tipoPrazo && (
                                            <svg viewBox="0 0 10 10" className="h-3 w-3 text-white fill-current">
                                                <polyline points="1.5,5 4,7.5 8.5,2" stroke="currentColor" strokeWidth="1.5" fill="none" strokeLinecap="round" strokeLinejoin="round" />
                                            </svg>
                                        )}
                                    </div>
                                </div>
                                <span
                                    className={`font-semibold text-sm ${tipoPrazo ? "text-blue-700 dark:text-blue-400" : ""}`}
                                >
                                    Prazo
                                </span>
                                <span className="text-xs text-muted-foreground">
                                    Extensão do período contratual
                                </span>
                            </div>
                        </div>

                    </div>

                    {/* Campo Valor Estimado — condicional */}
                    {tipoValor && (
                        <div className="space-y-1.5 animate-in slide-in-from-top-2 duration-200">
                            <Label htmlFor="valor-estimado">
                                Valor Estimado (R$) <span className="text-destructive">*</span>
                            </Label>
                            <div className="relative">
                                <span className="absolute left-3 top-1/2 -translate-y-1/2 text-sm font-medium text-muted-foreground">
                                    R$
                                </span>
                                <Input
                                    id="valor-estimado"
                                    className="pl-9"
                                    placeholder="0,00"
                                    value={valorEstimadoStr}
                                    onChange={(e) =>
                                        setValorEstimadoStr(formatCurrencyDisplay(e.target.value))
                                    }
                                    required={tipoValor}
                                />
                            </div>
                        </div>
                    )}

                    {/* Campo Prazo Meses — condicional */}
                    {tipoPrazo && (
                        <div className="space-y-1.5 animate-in slide-in-from-top-2 duration-200">
                            <Label htmlFor="prazo-meses">
                                Quantidade de Meses <span className="text-destructive">*</span>
                            </Label>
                            <div className="flex items-center gap-2">
                                <Input
                                    id="prazo-meses"
                                    type="number"
                                    min={1}
                                    max={120}
                                    placeholder="Ex: 6"
                                    value={prazoMeses}
                                    onChange={(e) =>
                                        setPrazoMeses(e.target.value ? Number(e.target.value) : "")
                                    }
                                    required={tipoPrazo}
                                    className="w-32"
                                />
                                <span className="text-sm text-muted-foreground">
                                    {prazoMeses
                                        ? `≈ ${(Number(prazoMeses) / 12).toFixed(1)} anos`
                                        : "meses de extensão"}
                                </span>
                            </div>
                        </div>
                    )}

                    {/* Justificativa */}
                    <div className="space-y-1.5">
                        <Label htmlFor="justificativa">
                            Justificativa <span className="text-destructive">*</span>
                        </Label>
                        <Textarea
                            id="justificativa"
                            placeholder="Descreva o motivo do aditamento..."
                            value={justificativa}
                            onChange={(e) => setJustificativa(e.target.value)}
                            required
                            rows={3}
                            className="resize-none"
                        />
                    </div>

                    {/* Formalização */}
                    <div
                        className={`flex items-start gap-3 rounded-lg border p-4 transition-colors ${
                            formalizado
                                ? "border-emerald-200 bg-emerald-50 dark:bg-emerald-950/20"
                                : "border-amber-200 bg-amber-50 dark:bg-amber-950/20"
                        }`}
                    >
                        <Checkbox
                            id="formalizado"
                            checked={formalizado}
                            onCheckedChange={(v) => setFormalizado(v === true)}
                            className="mt-0.5"
                        />
                        <div className="flex-1 space-y-1">
                            <Label htmlFor="formalizado" className="cursor-pointer font-semibold">
                                Aditamento Formalizado
                            </Label>
                            {formalizado ? (
                                <div className="flex items-center gap-1.5 text-xs text-emerald-700 dark:text-emerald-400">
                                    <CheckCircle2 className="h-3.5 w-3.5" />
                                    Este aditamento já possui instrumento formal assinado.
                                </div>
                            ) : (
                                <div className="flex items-center gap-1.5 text-xs text-amber-700 dark:text-amber-400">
                                    <AlertTriangle className="h-3.5 w-3.5" />
                                    <strong>Atenção:</strong> Aditamento pendente de formalização. Será
                                    registrado como alerta no sistema.
                                </div>
                            )}
                        </div>
                    </div>

                    {/* Campo Processo SEI — condicional e obrigatório se formalizado */}
                    {formalizado && (
                        <div className="space-y-1.5 animate-in slide-in-from-top-2 duration-200">
                            <Label htmlFor="processo-sei">
                                Número do Processo SEI <span className="text-destructive">*</span>
                            </Label>
                            <Input
                                id="processo-sei"
                                placeholder="0000.0000/0000000-0"
                                value={processoSEI}
                                onChange={(e) => setProcessoSEI(e.target.value)}
                                required={formalizado}
                            />
                            <p className="text-[10px] text-muted-foreground">
                                Obrigatório para aditamentos já formalizados.
                            </p>
                        </div>
                    )}

                        </div>
                    </ScrollArea>

                    <DialogFooter className="p-6 pt-3 border-t bg-muted/20">
                        <Button
                            type="button"
                            variant="outline"
                            onClick={() => onOpenChange(false)}
                            disabled={isSaving}
                        >
                            Cancelar
                        </Button>
                        <Button type="submit" disabled={isSaving || !hasTipo}>
                            {isSaving ? "Salvando..." : aditamentoParaEditar ? "Salvar Alterações" : "Registrar Aditamento"}
                        </Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>
    )
}
