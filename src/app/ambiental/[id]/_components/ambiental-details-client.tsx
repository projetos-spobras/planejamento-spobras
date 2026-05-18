"use client"

import React, { useState, useTransition } from "react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { toast } from "sonner"
import { Save, Loader2, MessageSquareText, ExternalLink, Calendar as CalendarIcon, Edit3 } from "lucide-react"
import Link from "next/link"

import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Switch } from "@/components/ui/switch"
import { Badge } from "@/components/ui/badge"
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
import {
    Popover,
    PopoverContent,
    PopoverTrigger,
} from "@/components/ui/popover"
import { Calendar } from "@/components/ui/calendar"
import { cn } from "@/lib/utils"
import { Combobox } from "@/components/ui/combobox"

import { saveAmbientalData } from "@/app/actions/ambiental"

// Constantes
const TECNICOS = ['Audrey', 'Sonia', 'Mel', 'Juliana', 'Romualdo', 'Leonan', 'Mateus']
const TIPOS_SERVICO = ['ARQUEOLOGIA', 'AC', 'SUPERVISÃO', 'DAEE', 'EVA', 'EIA_RIMA', 'OUTRO']
const GERENCIAS = ['GOA', 'GOV', 'GSV', 'GPD', 'GMA', 'GPP', 'GPR', 'DOB', 'GEC']
const PROGRAMAS = ['OUCFL', 'OUCAB', 'OUCAE', 'MOBILIDADE', 'DRENAGEM', 'OUTRO']
const STATUS_EMPREENDIMENTO = [
    'Em andamento', 'Em licitação', 'À licitar', 'Suspenso', 
    'Concluído', 'Finalizado', 'Encerrado', 'Sob gestão SIURB', 
    'Em trâmite - Aditivo', 'Licitação concluída', 'Vigente'
]
const ESTAGIOS = [
    { value: '0', label: '0 - Sem demanda' },
    { value: '1', label: '1 - Preparação' },
    { value: '2', label: '2 - Em licitação' },
    { value: '3', label: '3 - Contratado' },
    { value: '4', label: '4 - Ordem de serviço' },
    { value: '5', label: '5 - Em execução' },
    { value: '6', label: '6 - Concluído' },
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

interface AmbientalDetailsClientProps {
    initialData: {
        empreendimento: any | null
        licenciamentos: any[]
    }
    canEdit: boolean
    allEmpreendimentos: { id: string, nome: string }[]
}

export function AmbientalDetailsClient({ initialData, canEdit, allEmpreendimentos }: AmbientalDetailsClientProps) {
    const [isPending, startTransition] = useTransition()
    const [editMode, setEditMode] = useState(false)

    // Form state
    const [empData, setEmpData] = useState({
        empreendimento_id: initialData.empreendimento?.empreendimento_id || '',
        nome_empreendimento: initialData.empreendimento?.nome_empreendimento || '',
        tecnico_gma: initialData.empreendimento?.tecnico_gma || '',
        tipo_servico: initialData.empreendimento?.tipo_servico || '',
        contrato_spobras: initialData.empreendimento?.contrato_spobras || '',
        contrato_siurb: initialData.empreendimento?.contrato_siurb || '',
        sei_processo: initialData.empreendimento?.sei_processo || '',
        status: initialData.empreendimento?.status || '',
        estagio_contratacao: initialData.empreendimento?.estagio_contratacao || '',
        tem_empenho: initialData.empreendimento?.tem_empenho || false,
        gerencia: initialData.empreendimento?.gerencia || '',
        contratada: initialData.empreendimento?.contratada || '',
        gestor: initialData.empreendimento?.gestor || '',
        fiscal: initialData.empreendimento?.fiscal || '',
        prazo: initialData.empreendimento?.prazo ? new Date(initialData.empreendimento.prazo) : undefined,
        valor_contrato: initialData.empreendimento?.valor_contrato || 0,
        valor_medido: initialData.empreendimento?.valor_medido || 0,
        percentual_conclusao: initialData.empreendimento?.percentual_conclusao || 0,
        programa: initialData.empreendimento?.programa || '',
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

    const handleSave = () => {
        startTransition(async () => {
            const payload = {
                ...empData,
                prazo: empData.prazo ? empData.prazo.toISOString().split('T')[0] : null
            }
            const res = await saveAmbientalData(initialData.empreendimento.id, payload, licData, novaObservacao)
            if (res.success) {
                toast.success("Dados salvos com sucesso!")
                setNovaObservacao('')
                setEditMode(false)
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

    const isEditable = canEdit && editMode

    return (
        <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4 duration-500 pb-20">
            
            {/* Header / Badges */}
            <Card className="border-l-4 border-l-emerald-500 shadow-md">
                <CardContent className="pt-6">
                    <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
                        <div className="space-y-1">
                            <div className="flex items-center gap-3">
                                <h2 className="text-2xl font-bold">{initialData.empreendimento?.nome_empreendimento}</h2>
                                <Badge className={cn(
                                    initialData.empreendimento?.status === 'Concluído' ? 'bg-emerald-100 text-emerald-700' : 'bg-blue-100 text-blue-700'
                                )}>
                                    {initialData.empreendimento?.status || 'S/ Status'}
                                </Badge>
                                <Badge variant="outline" className="border-emerald-200 text-emerald-700">
                                    {initialData.empreendimento?.tipo_servico || 'S/ Tipo'}
                                </Badge>
                            </div>
                            <div className="flex items-center gap-4 text-sm text-muted-foreground">
                                <span>SEI: {initialData.empreendimento?.sei_processo || 'N/A'}</span>
                                {initialData.empreendimento?.empreendimento_id && (
                                    <Link 
                                        href={`/empreendimentos/${initialData.empreendimento.empreendimento_id}`} 
                                        target="_blank"
                                        className="text-emerald-600 hover:underline flex items-center gap-1 font-medium"
                                    >
                                        Ver empreendimento no SID <ExternalLink className="h-3 w-3" />
                                    </Link>
                                )}
                            </div>
                        </div>
                        <div className="flex gap-2">
                            {canEdit && !editMode && (
                                <Button variant="outline" onClick={() => setEditMode(true)}>
                                    <Edit3 className="mr-2 h-4 w-4" /> Editar Dados
                                </Button>
                            )}
                            {editMode && (
                                <>
                                    <Button variant="ghost" onClick={() => setEditMode(false)} disabled={isPending}>
                                        Cancelar
                                    </Button>
                                    <Button onClick={handleSave} disabled={isPending} className="bg-emerald-600 hover:bg-emerald-700">
                                        {isPending ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Save className="mr-2 h-4 w-4" />}
                                        Salvar
                                    </Button>
                                </>
                            )}
                        </div>
                    </div>
                </CardContent>
            </Card>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                
                {/* Seção 1: Identificação */}
                <Card className="lg:col-span-2 shadow-sm">
                    <CardHeader>
                        <CardTitle>Seção 1 — Identificação</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-6">
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            
                            <div className="space-y-4">
                                <div className="space-y-2">
                                    <Label>Vínculo com Empreendimento SID</Label>
                                    <Combobox 
                                        options={allEmpreendimentos.map(e => ({ value: e.id, label: e.nome }))}
                                        value={empData.empreendimento_id}
                                        onValueChange={(v) => handleChangeEmp('empreendimento_id', v)}
                                        disabled={!isEditable}
                                        placeholder="Pesquisar empreendimento..."
                                    />
                                    <p className="text-[10px] text-muted-foreground italic">Se desvinculado, o registro ambiental manterá o nome livre.</p>
                                </div>

                                <div className="space-y-2">
                                    <Label>Nome do Empreendimento (Livre)</Label>
                                    <Input 
                                        value={empData.nome_empreendimento}
                                        onChange={(e) => handleChangeEmp('nome_empreendimento', e.target.value)}
                                        disabled={!isEditable}
                                    />
                                </div>

                                <div className="grid grid-cols-2 gap-4">
                                    <div className="space-y-2">
                                        <Label>Técnico GMA Responsável</Label>
                                        <Input 
                                            list="tecnicos-list"
                                            value={empData.tecnico_gma}
                                            onChange={(e) => handleChangeEmp('tecnico_gma', e.target.value)}
                                            disabled={!isEditable}
                                            placeholder="Selecione ou digite..."
                                        />
                                        <datalist id="tecnicos-list">
                                            {TECNICOS.map(t => <option key={t} value={t} />)}
                                        </datalist>
                                    </div>
                                    <div className="space-y-2">
                                        <Label>Tipo de Serviço</Label>
                                        <Select 
                                            disabled={!isEditable} 
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
                                        <Label>Gestor</Label>
                                        <Input 
                                            value={empData.gestor}
                                            onChange={(e) => handleChangeEmp('gestor', e.target.value)}
                                            disabled={!isEditable}
                                        />
                                    </div>
                                    <div className="space-y-2">
                                        <Label>Fiscal</Label>
                                        <Input 
                                            value={empData.fiscal}
                                            onChange={(e) => handleChangeEmp('fiscal', e.target.value)}
                                            disabled={!isEditable}
                                        />
                                    </div>
                                </div>

                                <div className="grid grid-cols-2 gap-4">
                                    <div className="space-y-2">
                                        <Label>Gerência</Label>
                                        <Select 
                                            disabled={!isEditable} 
                                            value={empData.gerencia} 
                                            onValueChange={(v) => handleChangeEmp('gerencia', v)}
                                        >
                                            <SelectTrigger>
                                                <SelectValue placeholder="Selecione..." />
                                            </SelectTrigger>
                                            <SelectContent>
                                                {GERENCIAS.map(t => (
                                                    <SelectItem key={t} value={t}>{t}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                    </div>
                                    <div className="space-y-2">
                                        <Label>Programa</Label>
                                        <Input 
                                            list="programas-list"
                                            value={empData.programa}
                                            onChange={(e) => handleChangeEmp('programa', e.target.value)}
                                            disabled={!isEditable}
                                        />
                                        <datalist id="programas-list">
                                            {PROGRAMAS.map(p => <option key={p} value={p} />)}
                                        </datalist>
                                    </div>
                                </div>
                            </div>

                            <div className="space-y-4">
                                <div className="space-y-2">
                                    <Label>Contratada</Label>
                                    <Input 
                                        value={empData.contratada}
                                        onChange={(e) => handleChangeEmp('contratada', e.target.value)}
                                        disabled={!isEditable}
                                    />
                                </div>

                                <div className="grid grid-cols-2 gap-4">
                                    <div className="space-y-2">
                                        <Label>Contrato SPObras</Label>
                                        <Input 
                                            value={empData.contrato_spobras}
                                            onChange={(e) => handleChangeEmp('contrato_spobras', e.target.value)}
                                            disabled={!isEditable}
                                        />
                                    </div>
                                    <div className="space-y-2">
                                        <Label>Contrato SIURB</Label>
                                        <Input 
                                            value={empData.contrato_siurb}
                                            onChange={(e) => handleChangeEmp('contrato_siurb', e.target.value)}
                                            disabled={!isEditable}
                                        />
                                    </div>
                                </div>

                                <div className="grid grid-cols-2 gap-4">
                                    <div className="space-y-2">
                                        <Label>Estágio de Contratação</Label>
                                        <Select 
                                            disabled={!isEditable} 
                                            value={empData.estagio_contratacao} 
                                            onValueChange={(v) => handleChangeEmp('estagio_contratacao', v)}
                                        >
                                            <SelectTrigger>
                                                <SelectValue placeholder="Selecione..." />
                                            </SelectTrigger>
                                            <SelectContent>
                                                {ESTAGIOS.map(e => (
                                                    <SelectItem key={e.value} value={e.value}>{e.label}</SelectItem>
                                                ))}
                                            </SelectContent>
                                        </Select>
                                    </div>
                                    <div className="space-y-2">
                                        <Label>Prazo</Label>
                                        <Popover>
                                            <PopoverTrigger asChild>
                                                <Button
                                                    variant={"outline"}
                                                    className={cn(
                                                        "w-full justify-start text-left font-normal",
                                                        !empData.prazo && "text-muted-foreground"
                                                    )}
                                                    disabled={!isEditable}
                                                >
                                                    <CalendarIcon className="mr-2 h-4 w-4" />
                                                    {empData.prazo ? format(empData.prazo, "PPP", { locale: ptBR }) : <span>Selecione uma data</span>}
                                                </Button>
                                            </PopoverTrigger>
                                            <PopoverContent className="w-auto p-0">
                                                <Calendar
                                                    mode="single"
                                                    selected={empData.prazo}
                                                    onSelect={(d) => handleChangeEmp('prazo', d)}
                                                    initialFocus
                                                />
                                            </PopoverContent>
                                        </Popover>
                                    </div>
                                </div>

                                <div className="grid grid-cols-3 gap-2">
                                    <div className="space-y-1">
                                        <Label className="text-[10px] uppercase">Valor Contrato</Label>
                                        <Input 
                                            type="number"
                                            value={empData.valor_contrato}
                                            onChange={(e) => handleChangeEmp('valor_contrato', parseFloat(e.target.value))}
                                            disabled={!isEditable}
                                            className="h-8 text-xs"
                                        />
                                    </div>
                                    <div className="space-y-1">
                                        <Label className="text-[10px] uppercase">Valor Medido</Label>
                                        <Input 
                                            type="number"
                                            value={empData.valor_medido}
                                            onChange={(e) => handleChangeEmp('valor_medido', parseFloat(e.target.value))}
                                            disabled={!isEditable}
                                            className="h-8 text-xs"
                                        />
                                    </div>
                                    <div className="space-y-1">
                                        <Label className="text-[10px] uppercase">% Conclusão</Label>
                                        <Input 
                                            type="number"
                                            value={empData.percentual_conclusao}
                                            onChange={(e) => handleChangeEmp('percentual_conclusao', parseFloat(e.target.value))}
                                            disabled={!isEditable}
                                            className="h-8 text-xs"
                                        />
                                    </div>
                                </div>

                                <div className="flex items-center space-x-2 pt-2">
                                    <Switch 
                                        id="tem-empenho" 
                                        checked={empData.tem_empenho}
                                        onCheckedChange={(v) => handleChangeEmp('tem_empenho', v)}
                                        disabled={!isEditable}
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
                        <CardDescription>Entradas permanentes de registro.</CardDescription>
                    </CardHeader>
                    <CardContent className="flex-1 flex flex-col space-y-4">
                        <div className="flex-1 bg-slate-50 dark:bg-slate-900 border rounded-md p-4 text-[11px] whitespace-pre-wrap overflow-y-auto max-h-[400px] font-mono leading-relaxed">
                            {initialData.empreendimento?.observacoes || "Nenhuma observação registrada."}
                        </div>
                        {isEditable && (
                            <div className="space-y-2 pt-2 border-t">
                                <Label>Nova Observação (Append-only)</Label>
                                <Textarea 
                                    placeholder="Digite para adicionar ao histórico..." 
                                    value={novaObservacao}
                                    onChange={(e) => setNovaObservacao(e.target.value)}
                                    rows={4}
                                    className="resize-none"
                                />
                            </div>
                        )}
                    </CardContent>
                </Card>
            </div>

            {/* Grid de Licenciamentos */}
            <Card className="shadow-sm">
                <CardHeader>
                    <CardTitle>Seção 2 — Licenciamentos Ambientais</CardTitle>
                    <CardDescription>
                        Clique no círculo de status para alternar: <span className="text-emerald-600 font-bold">OK</span> | <span className="text-amber-500 font-bold">A</span> (Andamento) | <span className="text-orange-500 font-bold">P</span> (Pendente) | <span className="text-slate-400 font-bold">○</span> (N/A)
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead className="w-[250px]">Tipo de Licença / Documento</TableHead>
                                <TableHead className="w-[120px] text-center">Status</TableHead>
                                <TableHead>Observação</TableHead>
                                <TableHead className="w-[150px] text-right">Atualizado em</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {licData.map((lic, index) => (
                                <TableRow key={lic.tipo} className="group hover:bg-slate-50 dark:hover:bg-slate-900/40">
                                    <TableCell className="font-semibold py-4 text-sm">{lic.label}</TableCell>
                                    <TableCell className="text-center">
                                        <button
                                            disabled={!isEditable}
                                            onClick={() => handleChangeLic(index, 'status', cycleStatus(lic.status))}
                                            className={cn(
                                                "h-9 w-9 rounded-full flex items-center justify-center font-bold text-xs text-white transition-all shadow-sm focus:ring-2 focus:ring-emerald-400 focus:ring-offset-2",
                                                getStatusColor(lic.status),
                                                isEditable ? 'hover:scale-110 cursor-pointer' : 'cursor-default opacity-80'
                                            )}
                                        >
                                            {lic.status || '-'}
                                        </button>
                                    </TableCell>
                                    <TableCell>
                                        <div className="flex items-center gap-2">
                                            <Input 
                                                value={lic.observacao}
                                                onChange={(e) => handleChangeLic(index, 'observacao', e.target.value)}
                                                disabled={!isEditable}
                                                placeholder={isEditable ? "Adicionar observação..." : ""}
                                                className="h-9 border-transparent group-hover:border-input transition-colors focus:border-input"
                                            />
                                        </div>
                                    </TableCell>
                                    <TableCell className="text-right text-[10px] text-muted-foreground font-mono">
                                        {lic.updated_at ? format(new Date(lic.updated_at), "dd/MM/yy HH:mm", { locale: ptBR }) : '-'}
                                    </TableCell>
                                </TableRow>
                            ))}
                        </TableBody>
                    </Table>
                </CardContent>
            </Card>

        </div>
    )
}
