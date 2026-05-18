"use client"

import { useState, useTransition } from "react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { toast } from "sonner"
import { Save, Loader2, MessageSquareText } from "lucide-react"

import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Switch } from "@/components/ui/switch"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import { saveAmbientalData } from "@/app/actions/ambiental"

// Constantes
const TECNICOS = ['Audrey', 'Sonia', 'Mel', 'Juliana', 'Romualdo', 'Leonan', 'Mateus']
const TIPOS_SERVICO = ['ARQUEOLOGIA', 'AC', 'SUPERVISÃO', 'DAEE', 'EVA', 'EIA_RIMA', 'OUTRO']
const STATUS_EMPREENDIMENTO = [
    'Em andamento', 'Em licitação', 'À licitar', 'Suspenso', 
    'Concluído', 'Finalizado', 'Encerrado', 'Sob gestão SIURB', 
    'Em trâmite - Aditivo', 'Licitação concluída', 'Vigente'
]
const LICENCIAMENTOS_TIPOS = [
    { id: 'ARQUEOLOGIA', label: 'Arqueologia' },
    { id: 'DAEE', label: 'DAEE' },
    { id: 'DISPENSA_LICENCA', label: 'Dispensa de Licença' },
    { id: 'AREAS_CONTAMINADAS', label: 'Áreas Contaminadas' },
    { id: 'TCA', label: 'TCA' },
    { id: 'PLANTIO', label: 'Plantio' },
    { id: 'EVA', label: 'EVA' },
    { id: 'EIA_RIMA', label: 'EIA/RIMA' },
    { id: 'LAP', label: 'LAP' },
    { id: 'LAI', label: 'LAI' },
    { id: 'LAO', label: 'LAO' },
]

interface AmbientalTabProps {
    empreendimentoId: string
    initialData: {
        empreendimento: any | null
        licenciamentos: any[]
    }
    canEdit: boolean
}

export function AmbientalTabContent({ empreendimentoId, initialData, canEdit }: AmbientalTabProps) {
    const [isPending, startTransition] = useTransition()

    // Form state
    const [empData, setEmpData] = useState({
        tecnico_gma: initialData.empreendimento?.tecnico_gma || '',
        tipo_servico: initialData.empreendimento?.tipo_servico || '',
        contrato_spobras: initialData.empreendimento?.contrato_spobras || '',
        contrato_siurb: initialData.empreendimento?.contrato_siurb || '',
        sei_processo: initialData.empreendimento?.sei_processo || '',
        status: initialData.empreendimento?.status || '',
        estagio_contratacao: initialData.empreendimento?.estagio_contratacao || '',
        tem_empenho: initialData.empreendimento?.tem_empenho || false,
    })
    const [novaObservacao, setNovaObservacao] = useState('')

    // Preparar grid de licenciamentos
    const [licData, setLicData] = useState(() => {
        const map = new Map((initialData.licenciamentos || []).map(l => [l.tipo, l]))
        return LICENCIAMENTOS_TIPOS.map(lt => {
            const row = map.get(lt.id)
            return {
                tipo: lt.id,
                label: lt.label,
                status: row?.status || '',
                observacao: row?.observacao || '',
                updated_at: row?.updated_at || null
            }
        })
    })

    const [expandedLic, setExpandedLic] = useState<string | null>(null)

    const handleSave = () => {
        startTransition(async () => {
            const res = await saveAmbientalData(empreendimentoId, empData, licData, novaObservacao)
            if (res.success) {
                toast.success("Dados ambientais salvos com sucesso!")
                setNovaObservacao('') // limpa o campo de nova obs após salvar
            } else {
                toast.error("Erro ao salvar: " + res.error)
            }
        })
    }

    const handleChangeEmp = (field: string, value: any) => {
        setEmpData(prev => ({ ...prev, [field]: value }))
    }

    const handleChangeLic = (index: number, field: string, value: string) => {
        setLicData(prev => {
            const next = [...prev]
            next[index] = { ...next[index], [field]: value }
            return next
        })
    }

    const getStatusColor = (status: string) => {
        if (status === 'OK') return 'bg-emerald-500'
        if (status === 'A') return 'bg-amber-400'
        if (status === 'P') return 'bg-orange-500'
        return 'bg-slate-200 dark:bg-slate-700'
    }

    const cycleStatus = (current: string) => {
        if (current === '') return 'OK'
        if (current === 'OK') return 'A'
        if (current === 'A') return 'P'
        if (current === 'P') return ''
        return ''
    }

    return (
        <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4 duration-500">
            {/* Header / Actions */}
            <div className="flex justify-between items-center bg-card p-4 rounded-lg border shadow-sm">
                <div>
                    <h3 className="text-lg font-bold">Módulo Ambiental</h3>
                    <p className="text-sm text-muted-foreground">Gerenciamento de licenciamentos e status ambiental.</p>
                </div>
                {canEdit && (
                    <Button onClick={handleSave} disabled={isPending}>
                        {isPending ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Save className="mr-2 h-4 w-4" />}
                        Salvar Alterações
                    </Button>
                )}
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                {/* Identificação Ambiental */}
                <Card className="shadow-sm">
                    <CardHeader>
                        <CardTitle>Identificação Ambiental</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-4">
                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label>Técnico GMA Responsável</Label>
                                <Input 
                                    list="tecnicos-list"
                                    value={empData.tecnico_gma}
                                    onChange={(e) => handleChangeEmp('tecnico_gma', e.target.value)}
                                    disabled={!canEdit}
                                    placeholder="Selecione ou digite..."
                                />
                                <datalist id="tecnicos-list">
                                    {TECNICOS.map(t => <option key={t} value={t} />)}
                                </datalist>
                            </div>
                            <div className="space-y-2">
                                <Label>Tipo de Serviço</Label>
                                <Select 
                                    disabled={!canEdit} 
                                    value={empData.tipo_servico} 
                                    onValueChange={(v) => handleChangeEmp('tipo_servico', v)}
                                >
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {TIPOS_SERVICO.map(t => (
                                            <SelectItem key={t} value={t}>{t}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label>Contrato SPObras</Label>
                                <Input 
                                    value={empData.contrato_spobras}
                                    onChange={(e) => handleChangeEmp('contrato_spobras', e.target.value)}
                                    disabled={!canEdit}
                                />
                            </div>
                            <div className="space-y-2">
                                <Label>Contrato SIURB</Label>
                                <Input 
                                    value={empData.contrato_siurb}
                                    onChange={(e) => handleChangeEmp('contrato_siurb', e.target.value)}
                                    disabled={!canEdit}
                                />
                            </div>
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label>SEI do Processo</Label>
                                <Input 
                                    value={empData.sei_processo}
                                    onChange={(e) => handleChangeEmp('sei_processo', e.target.value)}
                                    disabled={!canEdit}
                                />
                            </div>
                            <div className="space-y-2">
                                <Label>Status Atual</Label>
                                <Select 
                                    disabled={!canEdit} 
                                    value={empData.status} 
                                    onValueChange={(v) => handleChangeEmp('status', v)}
                                >
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {STATUS_EMPREENDIMENTO.map(t => (
                                            <SelectItem key={t} value={t}>{t}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label>Estágio de Contratação (0-6)</Label>
                                <Select 
                                    disabled={!canEdit} 
                                    value={empData.estagio_contratacao} 
                                    onValueChange={(v) => handleChangeEmp('estagio_contratacao', v)}
                                >
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {['0','1','2','3','4','5','6'].map(t => (
                                            <SelectItem key={t} value={t}>{t}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                            <div className="space-y-2 flex flex-col justify-center pt-6">
                                <div className="flex items-center space-x-2">
                                    <Switch 
                                        id="tem-empenho" 
                                        checked={empData.tem_empenho}
                                        onCheckedChange={(v) => handleChangeEmp('tem_empenho', v)}
                                        disabled={!canEdit}
                                    />
                                    <Label htmlFor="tem-empenho">Tem Empenho?</Label>
                                </div>
                            </div>
                        </div>
                    </CardContent>
                </Card>

                {/* Histórico de Observações */}
                <Card className="shadow-sm flex flex-col">
                    <CardHeader>
                        <CardTitle>Histórico de Observações</CardTitle>
                        <CardDescription>Adicione notas ou status que ficarão registrados com data e autor.</CardDescription>
                    </CardHeader>
                    <CardContent className="flex-1 flex flex-col space-y-4">
                        <div className="flex-1 bg-slate-50 dark:bg-slate-900 border rounded-md p-3 text-sm whitespace-pre-wrap overflow-y-auto max-h-[250px] font-mono text-xs">
                            {initialData.empreendimento?.observacoes || "Nenhuma observação registrada."}
                        </div>
                        {canEdit && (
                            <div className="space-y-2">
                                <Label>Adicionar Observação (será anexada ao histórico ao salvar)</Label>
                                <Textarea 
                                    placeholder="Digite a nova observação aqui..." 
                                    value={novaObservacao}
                                    onChange={(e) => setNovaObservacao(e.target.value)}
                                    rows={3}
                                />
                            </div>
                        )}
                    </CardContent>
                </Card>
            </div>

            {/* Grid de Licenciamentos */}
            <Card className="shadow-sm">
                <CardHeader>
                    <CardTitle>Licenciamentos Ambientais</CardTitle>
                    <CardDescription>
                        Status das licenças: <span className="font-bold text-emerald-600">OK</span> (Aprovado), <span className="font-bold text-amber-500">A</span> (Em Andamento), <span className="font-bold text-orange-500">P</span> (Pendente). Clique no botão para alternar.
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead className="w-[200px]">Tipo de Licença</TableHead>
                                <TableHead className="w-[100px] text-center">Status</TableHead>
                                <TableHead>Última Atualização</TableHead>
                                <TableHead className="w-[100px] text-center">Obs</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {licData.map((lic, index) => (
                                <React.Fragment key={lic.tipo}>
                                    <TableRow className="hover:bg-transparent">
                                        <TableCell className="font-medium">{lic.label}</TableCell>
                                        <TableCell className="text-center">
                                            <button
                                                disabled={!canEdit}
                                                onClick={() => handleChangeLic(index, 'status', cycleStatus(lic.status))}
                                                className={`h-8 w-8 rounded-full flex items-center justify-center font-bold text-xs text-white transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 ${getStatusColor(lic.status)} ${canEdit ? 'hover:opacity-80 cursor-pointer' : 'cursor-default opacity-90'}`}
                                            >
                                                {lic.status || '-'}
                                            </button>
                                        </TableCell>
                                        <TableCell className="text-xs text-muted-foreground">
                                            {lic.updated_at ? format(new Date(lic.updated_at), "dd/MM/yyyy HH:mm", { locale: ptBR }) : '-'}
                                        </TableCell>
                                        <TableCell className="text-center">
                                            <Button 
                                                variant="ghost" 
                                                size="sm" 
                                                className={`h-8 w-8 p-0 ${lic.observacao ? 'text-blue-500' : 'text-slate-400'}`}
                                                onClick={() => setExpandedLic(expandedLic === lic.tipo ? null : lic.tipo)}
                                            >
                                                <MessageSquareText className="h-4 w-4" />
                                            </Button>
                                        </TableCell>
                                    </TableRow>
                                    {expandedLic === lic.tipo && (
                                        <TableRow className="bg-slate-50 dark:bg-slate-900/50">
                                            <TableCell colSpan={4} className="p-4">
                                                <div className="space-y-2">
                                                    <Label className="text-xs text-muted-foreground">Observação para {lic.label}</Label>
                                                    <Textarea 
                                                        value={lic.observacao}
                                                        onChange={(e) => handleChangeLic(index, 'observacao', e.target.value)}
                                                        disabled={!canEdit}
                                                        placeholder="Nenhuma observação..."
                                                        className="min-h-[80px]"
                                                    />
                                                </div>
                                            </TableCell>
                                        </TableRow>
                                    )}
                                </React.Fragment>
                            ))}
                        </TableBody>
                    </Table>
                </CardContent>
            </Card>
        </div>
    )
}
