"use client"

import { useState } from "react"
import { submitDesapropriacaoPublica } from "@/app/actions/desapropriacoes"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Checkbox } from "@/components/ui/checkbox"
import { Loader2, CheckCircle2, AlertCircle } from "lucide-react"

type Props = {
    empreendimentos: { id: string; nome: string; codigo: string | null }[]
    contratos: { id: string; numero: string; contratada: string | null; tipo: string | null }[]
}

const DESAPROPRIACAO_SUBTIPOS = [
    "Ações de Desapropriação",
    "Mat. Expropriatórios"
]

export function DesapropriacaoForm({ empreendimentos, contratos }: Props) {
    const [isLoading, setIsLoading] = useState(false)
    const [status, setStatus] = useState<"idle" | "success" | "error">("idle")
    const [errorMessage, setErrorMessage] = useState("")

    const [empreendimentoId, setEmpreendimentoId] = useState("")
    const [contratoId, setContratoId] = useState("")
    const [subtipos, setSubtipos] = useState<string[]>([])
    const [valorEstimado, setValorEstimado] = useState("")
    const [observacoes, setObservacoes] = useState("")

    const formatCurrency = (val: string) => {
        const numericValue = val.replace(/\D/g, '')
        const floatValue = parseFloat(numericValue) / 100
        if (isNaN(floatValue)) return ""
        return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(floatValue)
    }

    const unformatCurrency = (val: string) => {
        const numericValue = val.replace(/\D/g, '')
        return parseFloat(numericValue) / 100 || 0
    }

    const handleSubtipoToggle = (sub: string) => {
        setSubtipos(prev => 
            prev.includes(sub) ? prev.filter(s => s !== sub) : [...prev, sub]
        )
    }

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        
        if (!empreendimentoId) {
            setErrorMessage("Selecione um Empreendimento (obrigatório).")
            setStatus("error")
            return
        }

        if (subtipos.length === 0) {
            setErrorMessage("Selecione ao menos um tipo de ação.")
            setStatus("error")
            return
        }

        setIsLoading(true)
        setStatus("idle")
        setErrorMessage("")

        const payload = {
            empreendimento_id: empreendimentoId,
            contrato_id: contratoId || null,
            subtipos,
            valor_estimado: unformatCurrency(valorEstimado),
            observacoes
        }

        const result = await submitDesapropriacaoPublica(payload)

        setIsLoading(false)

        if (result.success) {
            setStatus("success")
            // Reset form
            setEmpreendimentoId("")
            setContratoId("")
            setSubtipos([])
            setValorEstimado("")
            setObservacoes("")
        } else {
            setStatus("error")
            setErrorMessage(result.error || "Erro desconhecido ao cadastrar.")
        }
    }

    if (status === "success") {
        return (
            <div className="flex flex-col items-center justify-center p-8 text-center animate-in fade-in zoom-in duration-300">
                <CheckCircle2 className="w-16 h-16 text-emerald-500 mb-4" />
                <h2 className="text-2xl font-bold text-gray-900 mb-2">Cadastro Realizado!</h2>
                <p className="text-gray-600 mb-6">A desapropriação foi enviada com sucesso para análise.</p>
                <Button onClick={() => setStatus("idle")} variant="outline">
                    Cadastrar Nova Desapropriação
                </Button>
            </div>
        )
    }

    return (
        <form onSubmit={handleSubmit} className="space-y-6">
            {status === "error" && (
                <div className="p-4 bg-red-50 border border-red-200 rounded-lg flex items-start text-red-800">
                    <AlertCircle className="w-5 h-5 mr-3 shrink-0 mt-0.5" />
                    <div>
                        <p className="font-medium">Erro ao enviar formúlario</p>
                        <p className="text-sm mt-1">{errorMessage}</p>
                    </div>
                </div>
            )}

            <div className="space-y-2">
                <Label htmlFor="empreendimento" className="text-sm font-semibold">Empreendimento *</Label>
                <select
                    id="empreendimento"
                    value={empreendimentoId}
                    onChange={(e) => setEmpreendimentoId(e.target.value)}
                    className="flex h-10 w-full items-center justify-between rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                    required
                >
                    <option value="">Selecione um empreendimento...</option>
                    {empreendimentos.map(emp => (
                        <option key={emp.id} value={emp.id}>
                            {emp.codigo ? `${emp.codigo} - ` : ''}{emp.nome}
                        </option>
                    ))}
                </select>
            </div>

            <div className="space-y-2">
                <Label htmlFor="contrato" className="text-sm font-semibold">Contrato (Opcional)</Label>
                <select
                    id="contrato"
                    value={contratoId}
                    onChange={(e) => setContratoId(e.target.value)}
                    className="flex h-10 w-full items-center justify-between rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                >
                    <option value="">Nenhum / Não vinculado...</option>
                    {contratos.map(ctr => (
                        <option key={ctr.id} value={ctr.id}>
                            {ctr.numero} {ctr.contratada ? `- ${ctr.contratada}` : ''}
                        </option>
                    ))}
                </select>
            </div>

            <div className="space-y-3">
                <Label className="text-sm font-semibold">Tipos de Serviço / Ação *</Label>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    {DESAPROPRIACAO_SUBTIPOS.map(sub => (
                        <div 
                            key={sub} 
                            className={`flex items-start space-x-3 p-4 rounded-lg border transition-colors cursor-pointer ${
                                subtipos.includes(sub) ? 'border-primary bg-primary/5' : 'border-border bg-card hover:bg-accent'
                            }`}
                            onClick={() => handleSubtipoToggle(sub)}
                        >
                            <Checkbox 
                                id={`sub-${sub}`} 
                                checked={subtipos.includes(sub)}
                                onCheckedChange={() => handleSubtipoToggle(sub)}
                            />
                            <div className="grid gap-1.5 leading-none">
                                <label
                                    htmlFor={`sub-${sub}`}
                                    className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 cursor-pointer"
                                >
                                    {sub}
                                </label>
                            </div>
                        </div>
                    ))}
                </div>
            </div>

            <div className="space-y-2">
                <Label htmlFor="valor" className="text-sm font-semibold">Valor Estimado</Label>
                <Input
                    id="valor"
                    type="text"
                    value={valorEstimado}
                    onChange={(e) => setValorEstimado(formatCurrency(e.target.value))}
                    placeholder="R$ 0,00"
                    className="font-medium"
                />
            </div>

            <div className="space-y-2">
                <Label htmlFor="observacoes" className="text-sm font-semibold">Observações Iniciais</Label>
                <Textarea
                    id="observacoes"
                    value={observacoes}
                    onChange={(e) => setObservacoes(e.target.value)}
                    placeholder="Detalhes adicionais sobre a desapropriação..."
                    className="resize-none h-24"
                />
            </div>

            <Button type="submit" className="w-full text-base py-6" disabled={isLoading}>
                {isLoading ? (
                    <>
                        <Loader2 className="mr-2 h-5 w-5 animate-spin" />
                        Salvando...
                    </>
                ) : (
                    "Cadastrar Desapropriação"
                )}
            </Button>
        </form>
    )
}
