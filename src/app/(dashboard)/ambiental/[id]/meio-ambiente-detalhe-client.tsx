"use client"

import { useState, useEffect, useRef } from "react"
import Link from "next/link"
import { useRouter } from "next/navigation"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Checkbox } from "@/components/ui/checkbox"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import { 
    Calendar, FileText, User, Users, Briefcase, Landmark, HardHat, 
    Percent, HelpCircle, Save, X, Edit, MessageSquare, ArrowLeft,
    CheckCircle2, Clock, AlertCircle, ExternalLink, MessageCircle,
    Plus, Trash2, Hammer
} from "lucide-react"
import { toast } from "sonner"
import { 
    saveAmbientalDetalhes, 
    updateLicenciamentoStatus, 
    updateLicenciamentoObservacao, 
    addAmbientalComentario,
    searchPerfis,
    addAmbientalTecnico,
    deleteAmbientalTecnico
} from "@/app/actions/ambiental-detalhes"
import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
} from "@/components/ui/dialog"
import { ServicoDialog } from "@/components/relationships/servico-dialog"

interface MeioAmbienteDetalheClientProps {
    servico: any
    detalhes: any | null
    comentarios: any[]
    canEdit: boolean
    currentUserProfile: any
    tecnicos: { id: string; nome: string }[]
    contratos: any[]
    servicosAmbientais: any[]
    empreendimentoId: string
}

const GERENCIAS = ["GOA", "GOV", "GSV", "GPD", "GMA", "GPP", "GPR", "DOB", "GEC"]
const PROGRAMAS = ["OUCFL", "OUCAB", "OUCAE", "MOBILIDADE", "DRENAGEM"]

export function MeioAmbienteDetalheClient({
    servico,
    detalhes,
    comentarios,
    canEdit,
    currentUserProfile,
    tecnicos,
    contratos,
    servicosAmbientais,
    empreendimentoId
}: MeioAmbienteDetalheClientProps) {
    const router = useRouter()
    const [isEditing, setIsEditing] = useState(false)
    const [isSaving, setIsSaving] = useState(false)

    // Form States
    const [tecnicoSelect, setTecnicoSelect] = useState("")
    const [tecnicoInput, setTecnicoInput] = useState("")
    const [gestor, setGestor] = useState("")
    const [fiscal, setFiscal] = useState("")
    const [gerencia, setGerencia] = useState("")
    const [contratada, setContratada] = useState("")
    const [contratoSpobras, setContratoSpobras] = useState("")
    const [contratoSiurb, setContratoSiurb] = useState("")
    const [seiProcesso, setSeiProcesso] = useState("")
    const [programa, setPrograma] = useState("")
    const [estagio, setEstagio] = useState(0)
    const [status, setStatus] = useState("")
    const [prazo, setPrazo] = useState("")
    const [valorContrato, setValorContrato] = useState("")
    const [valorMedido, setValorMedido] = useState("")
    const [percentualConclusao, setPercentualConclusao] = useState("")
    const [temEmpenho, setTemEmpenho] = useState(false)

    // Licensing observation inline edit states
    const [editingObsId, setEditingObsId] = useState<string | null>(null)
    const [obsValue, setObsValue] = useState("")

    // Comment States
    const [commentText, setCommentText] = useState("")
    const [mencoesSelected, setMencoesSelected] = useState<{ id: string, name: string }[]>([])
    const [showMentionDropdown, setShowMentionDropdown] = useState(false)
    const [mentionQuery, setMentionQuery] = useState("")
    const [profileSuggestions, setProfileSuggestions] = useState<any[]>([])
    const [dropdownIndex, setDropdownIndex] = useState(0)

    const commentTextareaRef = useRef<HTMLTextAreaElement>(null)

    // Technical GMA Management States
    const [listaTecnicos, setListaTecnicos] = useState<{ id: string, nome: string }[]>(tecnicos)
    const [isTecnicosDialogOpen, setIsTecnicosDialogOpen] = useState(false)
    const [novoTecnicoNome, setNovoTecnicoNome] = useState("")
    const [isAddingTecnico, setIsAddingTecnico] = useState(false)

    // Environmental Services Dialog States
    const [isServicoDialogOpen, setIsServicoDialogOpen] = useState(false)
    const [editingServico, setEditingServico] = useState<any>(null)

    // Hydrate listaTecnicos on prop update
    useEffect(() => {
        setListaTecnicos(tecnicos)
    }, [tecnicos])

    // Initial Hydration
    useEffect(() => {
        if (detalhes) {
            const tecnicoNome = detalhes.tecnico_gma || ""
            const isCadastrado = listaTecnicos.some(t => t.nome === tecnicoNome)
            setTecnicoSelect(isCadastrado ? tecnicoNome : (tecnicoNome ? "Outro" : ""))
            setTecnicoInput(!isCadastrado ? tecnicoNome : "")
            setGestor(detalhes.gestor || "")
            setFiscal(detalhes.fiscal || "")
            setGerencia(detalhes.gerencia || "")
            setContratada(detalhes.contratada || "")
            setContratoSpobras(detalhes.contrato_spobras || "")
            setContratoSiurb(detalhes.contrato_siurb || "")
            setSeiProcesso(detalhes.sei_processo || "")
            setPrograma(detalhes.programa || "")
            setEstagio(detalhes.estagio ?? 0)
            setStatus(detalhes.status || "")
            setPrazo(detalhes.prazo || "")
            setValorContrato(detalhes.valor_contrato ? String(detalhes.valor_contrato) : "")
            setValorMedido(detalhes.valor_medido ? String(detalhes.valor_medido) : "")
            setPercentualConclusao(detalhes.percentual_conclusao ? String(detalhes.percentual_conclusao) : "")
            setTemEmpenho(!!detalhes.tem_empenho)
        }
    }, [detalhes, listaTecnicos])

    const handleSaveDetails = async () => {
        setIsSaving(true)
        const finalTecnico = tecnicoSelect === "Outro" ? tecnicoInput : tecnicoSelect
        const payload = {
            tecnico_gma: finalTecnico,
            gestor,
            fiscal,
            gerencia,
            contratada,
            contrato_spobras: contratoSpobras,
            contrato_siurb: contratoSiurb,
            sei_processo: seiProcesso,
            programa,
            estagio,
            status,
            prazo,
            valor_contrato: valorContrato ? Number(valorContrato) : null,
            valor_medido: valorMedido ? Number(valorMedido) : null,
            percentual_conclusao: percentualConclusao ? Number(percentualConclusao) : null,
            tem_empenho: temEmpenho
        }

        const res = await saveAmbientalDetalhes(servico.id, payload)
        setIsSaving(false)
        if (res.success) {
            toast.success("Identificação ambiental atualizada.")
            setIsEditing(false)
            router.refresh()
        } else {
            toast.error(`Erro ao salvar: ${res.error}`)
        }
    }

    const handleCancelEdit = () => {
        setIsEditing(false)
        if (detalhes) {
            const tecnicoNome = detalhes.tecnico_gma || ""
            const isCadastrado = listaTecnicos.some(t => t.nome === tecnicoNome)
            setTecnicoSelect(isCadastrado ? tecnicoNome : (tecnicoNome ? "Outro" : ""))
            setTecnicoInput(!isCadastrado ? tecnicoNome : "")
            setGestor(detalhes.gestor || "")
            setFiscal(detalhes.fiscal || "")
            setGerencia(detalhes.gerencia || "")
            setContratada(detalhes.contratada || "")
            setContratoSpobras(detalhes.contrato_spobras || "")
            setContratoSiurb(detalhes.contrato_siurb || "")
            setSeiProcesso(detalhes.sei_processo || "")
            setPrograma(detalhes.programa || "")
            setEstagio(detalhes.estagio ?? 0)
            setStatus(detalhes.status || "")
            setPrazo(detalhes.prazo || "")
            setValorContrato(detalhes.valor_contrato ? String(detalhes.valor_contrato) : "")
            setValorMedido(detalhes.valor_medido ? String(detalhes.valor_medido) : "")
            setPercentualConclusao(detalhes.percentual_conclusao ? String(detalhes.percentual_conclusao) : "")
            setTemEmpenho(!!detalhes.tem_empenho)
        }
    }

    const handleCycleStatus = async (lic: any) => {
        if (!canEdit) return
        
        const statusFlow: Record<string, string> = {
            '': 'A',
            'A': 'P',
            'P': 'OK',
            'OK': ''
        }
        
        const current = lic.status || ''
        const next = statusFlow[current]
        
        const res = await updateLicenciamentoStatus(lic.id, servico.id, next)
        if (res.success) {
            toast.success(`Status de ${lic.tipo} alterado.`)
            router.refresh()
        } else {
            toast.error(`Erro ao mudar status: ${res.error}`)
        }
    }

    const handleStartEditObservacao = (lic: any) => {
        if (!canEdit) return
        setEditingObsId(lic.id)
        setObsValue(lic.observacao || "")
    }

    const handleSaveObservacao = async (id: string) => {
        const res = await updateLicenciamentoObservacao(id, servico.id, obsValue)
        setEditingObsId(null)
        if (res.success) {
            toast.success("Observação de licença atualizada.")
            router.refresh()
        } else {
            toast.error(`Erro ao salvar observação: ${res.error}`)
        }
    }

    // Mention triggers in comments
    const handleCommentChange = async (e: React.ChangeEvent<HTMLTextAreaElement>) => {
        const value = e.target.value
        setCommentText(value)

        const words = value.split(/\s/)
        const lastWord = words[words.length - 1]
        if (lastWord.startsWith("@")) {
            const query = lastWord.slice(1)
            setMentionQuery(query)
            setShowMentionDropdown(true)
            const results = await searchPerfis(query)
            setProfileSuggestions(results)
        } else {
            setShowMentionDropdown(false)
        }
    }

    const insertMention = (profile: any) => {
        const words = commentText.split(/\s/)
        words[words.length - 1] = `@${profile.nome_completo} `
        const updatedText = words.join(" ")
        setCommentText(updatedText)
        
        if (!mencoesSelected.some(m => m.id === profile.id)) {
            setMencoesSelected(prev => [...prev, { id: profile.id, name: profile.nome_completo }])
        }
        
        setShowMentionDropdown(false)
        commentTextareaRef.current?.focus()
    }

    const handlePostComment = async () => {
        if (!commentText.trim()) return

        // Extract mentions array of UUIDs present in text
        const mentionedIds: string[] = []
        mencoesSelected.forEach(m => {
            if (commentText.includes(`@${m.name}`)) {
                mentionedIds.push(m.id)
            }
        })

        const res = await addAmbientalComentario(servico.id, commentText, mentionedIds)
        if (res.success) {
            setCommentText("")
            setMencoesSelected([])
            toast.success("Comentário publicado.")
            router.refresh()
        } else {
            toast.error(`Erro ao enviar comentário: ${res.error}`)
        }
    }

    const getStatusDetails = (status: string | null) => {
        switch (status) {
            case 'OK':
                return { label: '● OK', style: 'bg-emerald-100 dark:bg-emerald-950 text-emerald-800 dark:text-emerald-300 border-emerald-300' }
            case 'A':
                return { label: '● A (Em Andamento)', style: 'bg-amber-100 dark:bg-amber-950 text-amber-800 dark:text-amber-300 border-amber-300' }
            case 'P':
                return { label: '● P (Pendente)', style: 'bg-rose-100 dark:bg-rose-950 text-rose-800 dark:text-rose-300 border-rose-300' }
            default:
                return { label: '○ Não Iniciado', style: 'bg-slate-100 dark:bg-slate-800 text-slate-500 dark:text-slate-400 border-slate-300' }
        }
    }

    const formatBRL = (value: string | number) => {
        if (!value && value !== 0) return ""
        return new Intl.NumberFormat('pt-BR', {
            style: 'currency',
            currency: 'BRL'
        }).format(Number(value))
    }

    const renderCommentText = (texto: string) => {
        if (!texto) return ""
        const parts = texto.split(/(@[^\s]+)/)
        return parts.map((part, i) => {
            if (part.startsWith("@")) {
                return (
                    <span key={i} className="text-emerald-600 dark:text-emerald-400 font-semibold hover:underline cursor-pointer">
                        {part}
                    </span>
                )
            }
            return part
        })
    }

    // Technical GMA Management Actions
    const handleAddTecnico = async () => {
        if (!novoTecnicoNome.trim()) return
        setIsAddingTecnico(true)
        const res = await addAmbientalTecnico(novoTecnicoNome)
        setIsAddingTecnico(false)
        if (res.success) {
            toast.success("Técnico cadastrado com sucesso!")
            setNovoTecnicoNome("")
            router.refresh()
        } else {
            toast.error("Erro ao cadastrar técnico: " + res.error)
        }
    }

    const handleDeleteTecnico = async (id: string) => {
        const res = await deleteAmbientalTecnico(id)
        if (res.success) {
            toast.success("Técnico excluído com sucesso!")
            router.refresh()
        } else {
            toast.error("Erro ao excluir técnico: " + res.error)
        }
    }

    // Environmental Services Actions
    const handleCreateServico = () => {
        setEditingServico(null)
        setIsServicoDialogOpen(true)
    }

    const handleEditServico = (s: any) => {
        setEditingServico(s)
        setIsServicoDialogOpen(true)
    }

    const handleServicoSaved = () => {
        setIsServicoDialogOpen(false)
        setEditingServico(null)
        router.refresh()
    }

    return (
        <div className="flex-1 space-y-6 p-6">
            {/* Header / Breadcrumb */}
            <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
                <div className="space-y-1">
                    <div className="flex items-center gap-2 text-sm text-muted-foreground">
                        <Link href="/ambiental" className="hover:text-foreground flex items-center gap-1 transition-colors">
                            <ArrowLeft className="h-3.5 w-3.5" /> Meio Ambiente
                        </Link>
                        <span>→</span>
                        <span className="font-medium text-foreground max-w-[200px] truncate">
                            {servico.empreendimentos?.nome || "Sem Empreendimento"}
                        </span>
                    </div>
                    <div className="flex flex-wrap items-center gap-2.5">
                        <h1 className="text-2xl font-bold tracking-tight">
                            {servico.nome || "Ficha de Serviço"}
                        </h1>
                        <Badge variant="outline" className="bg-emerald-50 dark:bg-emerald-950 text-emerald-800 dark:text-emerald-300 border-emerald-200">
                            {servico.tipo}
                        </Badge>
                        <Badge variant="secondary">
                            {servico.status}
                        </Badge>
                    </div>
                </div>

                <div className="flex items-center gap-3">
                    {servico.empreendimentos?.id && (
                        <Link 
                            href={`/empreendimentos/${servico.empreendimentos.id}`} 
                            target="_blank"
                            className="inline-flex items-center gap-1.5 text-xs text-muted-foreground hover:text-foreground font-medium transition-colors border rounded-md px-3 py-2 bg-background hover:bg-muted"
                        >
                            Ver empreendimento <ExternalLink className="h-3 w-3" />
                        </Link>
                    )}

                    {canEdit && (
                        <Button
                            variant={isEditing ? "destructive" : "default"}
                            onClick={() => isEditing ? handleCancelEdit() : setIsEditing(true)}
                            className="gap-1.5 shadow-sm"
                        >
                            {isEditing ? (
                                <>
                                    <X className="h-4 w-4" /> Cancelar
                                </>
                            ) : (
                                <>
                                    <Edit className="h-4 w-4" /> Editar Identificação
                                </>
                            )}
                        </Button>
                    )}
                </div>
            </div>

            {/* Split Screen Layout */}
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                
                {/* Column 1 & 2: Identificação, Serviços e Licenciamentos */}
                <div className="lg:col-span-2 space-y-6">
                    
                    {/* Section 1: Identificação */}
                    <Card className="shadow-sm border-slate-100 dark:border-slate-800">
                        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-3 border-b border-slate-50 dark:border-slate-800/50">
                            <CardTitle className="text-sm font-semibold flex items-center gap-2 text-slate-800 dark:text-slate-200">
                                <Briefcase className="h-4 w-4 text-emerald-600" />
                                Identificação do Serviço e Equipe
                            </CardTitle>
                            {isEditing && (
                                <Button 
                                    size="sm" 
                                    onClick={handleSaveDetails} 
                                    disabled={isSaving}
                                    className="bg-emerald-600 hover:bg-emerald-700 text-white gap-1"
                                >
                                    <Save className="h-3.5 w-3.5" /> {isSaving ? "Salvando..." : "Salvar"}
                                </Button>
                            )}
                        </CardHeader>
                        <CardContent className="pt-6">
                            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 text-sm">
                                
                                {/* Técnico GMA */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <User className="h-3 w-3" /> Técnico GMA
                                    </label>
                                    {isEditing ? (
                                        <div className="space-y-1">
                                            <div className="flex gap-2">
                                                <select
                                                    value={tecnicoSelect}
                                                    onChange={(e) => setTecnicoSelect(e.target.value)}
                                                    className="flex-1 h-9 rounded-md border border-input bg-background px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
                                                >
                                                    <option value="">Selecione...</option>
                                                    {listaTecnicos.map(t => (
                                                        <option key={t.id} value={t.nome}>{t.nome}</option>
                                                    ))}
                                                    <option value="Outro">Outro...</option>
                                                </select>
                                                {canEdit && (
                                                    <Button
                                                        type="button"
                                                        variant="outline"
                                                        size="sm"
                                                        onClick={() => setIsTecnicosDialogOpen(true)}
                                                        className="h-9 px-2.5 text-xs gap-1 border-slate-200 hover:bg-emerald-50 dark:border-slate-800 dark:hover:bg-emerald-950/20"
                                                        title="Gerenciar lista de técnicos"
                                                    >
                                                        <Users className="h-4 w-4 text-emerald-600" />
                                                    </Button>
                                                )}
                                            </div>
                                            {tecnicoSelect === "Outro" && (
                                                <Input
                                                    placeholder="Digite o nome..."
                                                    value={tecnicoInput}
                                                    onChange={(e) => setTecnicoInput(e.target.value)}
                                                    className="h-9 mt-1"
                                                />
                                            )}
                                        </div>
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {detalhes?.tecnico_gma || <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Gestor */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <User className="h-3 w-3" /> Gestor
                                    </label>
                                    {isEditing ? (
                                        <Input value={gestor} onChange={(e) => setGestor(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {gestor || <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Fiscal */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <User className="h-3 w-3" /> Fiscal
                                    </label>
                                    {isEditing ? (
                                        <Input value={fiscal} onChange={(e) => setFiscal(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {fiscal || <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Gerência */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Users className="h-3 w-3" /> Gerência
                                    </label>
                                    {isEditing ? (
                                        <select
                                            value={gerencia}
                                            onChange={(e) => setGerencia(e.target.value)}
                                            className="w-full h-9 rounded-md border border-input bg-background px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
                                        >
                                            <option value="">Selecione...</option>
                                            {GERENCIAS.map(g => (
                                                <option key={g} value={g}>{g}</option>
                                            ))}
                                        </select>
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {gerencia || <span className="text-muted-foreground italic font-normal">Não informada</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Contratada */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <HardHat className="h-3 w-3" /> Contratada
                                    </label>
                                    {isEditing ? (
                                        <Input value={contratada} onChange={(e) => setContratada(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {contratada || <span className="text-muted-foreground italic font-normal">Não informada</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Contrato SPObras */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Landmark className="h-3 w-3" /> Contrato SPObras
                                    </label>
                                    {isEditing ? (
                                        <Input value={contratoSpobras} onChange={(e) => setContratoSpobras(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent font-mono text-xs">
                                            {contratoSpobras || <span className="text-muted-foreground italic font-normal font-sans text-sm">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Contrato SIURB */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Landmark className="h-3 w-3" /> Contrato SIURB
                                    </label>
                                    {isEditing ? (
                                        <Input value={contratoSiurb} onChange={(e) => setContratoSiurb(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent font-mono text-xs">
                                            {contratoSiurb || <span className="text-muted-foreground italic font-normal font-sans text-sm">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* SEI do Processo */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <FileText className="h-3 w-3" /> Processo SEI
                                    </label>
                                    {isEditing ? (
                                        <Input value={seiProcesso} onChange={(e) => setSeiProcesso(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent font-mono text-xs">
                                            {seiProcesso || <span className="text-muted-foreground italic font-normal font-sans text-sm">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Programa */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Landmark className="h-3 w-3" /> Programa
                                    </label>
                                    {isEditing ? (
                                        <select
                                            value={programa}
                                            onChange={(e) => setPrograma(e.target.value)}
                                            className="w-full h-9 rounded-md border border-input bg-background px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
                                        >
                                            <option value="">Selecione...</option>
                                            {PROGRAMAS.map(p => (
                                                <option key={p} value={p}>{p}</option>
                                            ))}
                                        </select>
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {programa || <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Estágio */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Percent className="h-3 w-3" /> Estágio (0 a 6)
                                    </label>
                                    {isEditing ? (
                                        <Input 
                                            type="number" 
                                            min="0" 
                                            max="6" 
                                            value={estagio} 
                                            onChange={(e) => setEstagio(Number(e.target.value))} 
                                        />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            Estágio {estagio}
                                        </div>
                                    )}
                                </div>

                                {/* Status */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <HelpCircle className="h-3 w-3" /> Status Detalhe
                                    </label>
                                    {isEditing ? (
                                        <Input value={status} onChange={(e) => setStatus(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {status || <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Prazo */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Calendar className="h-3 w-3" /> Prazo
                                    </label>
                                    {isEditing ? (
                                        <Input type="date" value={prazo} onChange={(e) => setPrazo(e.target.value)} />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {prazo ? new Date(prazo).toLocaleDateString('pt-BR') : <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Valor Contrato */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Landmark className="h-3 w-3" /> Valor do Contrato
                                    </label>
                                    {isEditing ? (
                                        <Input 
                                            type="number" 
                                            step="0.01" 
                                            value={valorContrato} 
                                            onChange={(e) => setValorContrato(e.target.value)} 
                                        />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {valorContrato ? formatBRL(valorContrato) : <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Valor Medido */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Landmark className="h-3 w-3" /> Valor Medido
                                    </label>
                                    {isEditing ? (
                                        <Input 
                                            type="number" 
                                            step="0.01" 
                                            value={valorMedido} 
                                            onChange={(e) => setValorMedido(e.target.value)} 
                                        />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {valorMedido ? formatBRL(valorMedido) : <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* % Conclusão */}
                                <div className="space-y-1.5">
                                    <label className="text-xs font-semibold text-muted-foreground flex items-center gap-1">
                                        <Percent className="h-3 w-3" /> % Conclusão
                                    </label>
                                    {isEditing ? (
                                        <Input 
                                            type="number" 
                                            step="0.1" 
                                            min="0" 
                                            max="100" 
                                            value={percentualConclusao} 
                                            onChange={(e) => setPercentualConclusao(e.target.value)} 
                                        />
                                    ) : (
                                        <div className="font-medium p-2 bg-muted/40 rounded border border-transparent">
                                            {percentualConclusao ? `${percentualConclusao}%` : <span className="text-muted-foreground italic font-normal">Não informado</span>}
                                        </div>
                                    )}
                                </div>

                                {/* Tem empenho */}
                                <div className="space-y-1.5 col-span-1 md:col-span-2 lg:col-span-3">
                                    <div className="flex items-center gap-2 pt-2">
                                        {isEditing ? (
                                            <>
                                                <Checkbox
                                                    id="temEmpenho"
                                                    checked={temEmpenho}
                                                    onCheckedChange={(checked) => setTemEmpenho(!!checked)}
                                                />
                                                <label htmlFor="temEmpenho" className="text-sm font-medium cursor-pointer">
                                                    Tem Empenho
                                                </label>
                                            </>
                                        ) : (
                                            <div className="flex items-center gap-2">
                                                <span className="text-xs font-semibold text-muted-foreground">Tem Empenho:</span>
                                                <Badge variant={temEmpenho ? "default" : "secondary"} className={temEmpenho ? "bg-emerald-600" : ""}>
                                                    {temEmpenho ? "Sim" : "Não"}
                                                </Badge>
                                            </div>
                                        )}
                                    </div>
                                </div>

                            </div>
                        </CardContent>
                    </Card>

                    {/* Section 2: Serviços Ambientais Cadastrados */}
                    <Card className="shadow-sm border-slate-100 dark:border-slate-800">
                        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-3 border-b border-slate-50 dark:border-slate-800/50">
                            <div className="space-y-1">
                                <CardTitle className="text-sm font-semibold flex items-center gap-2 text-slate-800 dark:text-slate-200">
                                    <Hammer className="h-4 w-4 text-emerald-600" />
                                    Serviços Ambientais Associados
                                </CardTitle>
                                <CardDescription className="text-xs text-muted-foreground">
                                    Múltiplos serviços ambientais vinculados a este empreendimento com edições individuais.
                                </CardDescription>
                            </div>
                            {canEdit && (
                                <Button 
                                    size="sm" 
                                    onClick={handleCreateServico} 
                                    className="bg-emerald-600 hover:bg-emerald-700 text-white gap-1"
                                >
                                    <Plus className="h-3.5 w-3.5" /> Novo Serviço
                                </Button>
                            )}
                        </CardHeader>
                        <CardContent className="pt-6">
                            {servicosAmbientais.length === 0 ? (
                                <div className="text-center py-8 text-muted-foreground text-sm">
                                    Nenhum serviço ambiental cadastrado para este empreendimento.
                                </div>
                            ) : (
                                <Table>
                                    <TableHeader>
                                        <TableRow>
                                            <TableHead>Descrição</TableHead>
                                            <TableHead>Contrato</TableHead>
                                            <TableHead>Licenças</TableHead>
                                            <TableHead className="text-right">Valor Total</TableHead>
                                            <TableHead>Status</TableHead>
                                            {canEdit && <TableHead className="w-[80px] text-center">Ações</TableHead>}
                                        </TableRow>
                                    </TableHeader>
                                    <TableBody>
                                        {servicosAmbientais.map((s) => (
                                            <TableRow key={s.id}>
                                                <TableCell className="font-medium max-w-[200px] truncate" title={s.descricao}>
                                                    {s.descricao}
                                                </TableCell>
                                                <TableCell>
                                                    {s.contratos?.numero ? (
                                                        <Link href={`/contratos/${s.contrato_id}`} className="hover:underline text-primary flex items-center gap-1 font-mono text-xs">
                                                            {s.contratos.numero}
                                                        </Link>
                                                    ) : (
                                                        <span className="text-muted-foreground italic text-xs">Sem contrato</span>
                                                    )}
                                                </TableCell>
                                                <TableCell>
                                                    <div className="flex flex-wrap gap-1">
                                                        {s.subtipo_ambiental && s.subtipo_ambiental.length > 0 ? (
                                                            s.subtipo_ambiental.map((sub: string) => (
                                                                <Badge key={sub} variant="outline" className="text-[10px] py-0 px-1.5 bg-emerald-50 dark:bg-emerald-950/30 text-emerald-800 dark:text-emerald-400 border-emerald-200/50">
                                                                    {sub}
                                                                </Badge>
                                                            ))
                                                        ) : (
                                                            <span className="text-muted-foreground italic text-xs">-</span>
                                                        )}
                                                    </div>
                                                </TableCell>
                                                <TableCell className="text-right font-semibold">
                                                    {s.valor_total ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(s.valor_total) : '-'}
                                                </TableCell>
                                                <TableCell>
                                                    <Badge variant="secondary" className="text-xs">
                                                        {s.status || 'Não Iniciado'}
                                                    </Badge>
                                                </TableCell>
                                                {canEdit && (
                                                    <TableCell className="text-center">
                                                        <Button
                                                            variant="ghost"
                                                            size="icon"
                                                            className="h-7 w-7 text-muted-foreground hover:text-foreground"
                                                            onClick={() => handleEditServico(s)}
                                                        >
                                                            <Edit className="h-3.5 w-3.5" />
                                                        </Button>
                                                    </TableCell>
                                                )}
                                            </TableRow>
                                        ))}
                                    </TableBody>
                                </Table>
                            )}
                        </CardContent>
                    </Card>

                    {/* Section 3: Licenciamentos */}
                    <Card className="shadow-sm border-slate-100 dark:border-slate-800">
                        <CardHeader className="border-b border-slate-50 dark:border-slate-800/50 pb-3">
                            <CardTitle className="text-sm font-semibold flex items-center gap-2 text-slate-800 dark:text-slate-200">
                                <Landmark className="h-4 w-4 text-emerald-600" />
                                Licenciamentos do Serviço ({servico.ambiental_licenciamentos?.length || 0})
                            </CardTitle>
                        </CardHeader>
                        <CardContent className="p-0">
                            {(!servico.ambiental_licenciamentos || servico.ambiental_licenciamentos.length === 0) ? (
                                <div className="p-6 text-center text-sm text-muted-foreground">
                                    Nenhum tipo de licença configurado para este serviço.
                                </div>
                            ) : (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead>
                                            <tr className="border-b bg-muted/40 dark:bg-muted/10 text-xs font-semibold text-muted-foreground uppercase">
                                                <th className="px-4 py-3">Tipo</th>
                                                <th className="px-4 py-3 text-center">Status</th>
                                                <th className="px-4 py-3">Observação</th>
                                                <th className="px-4 py-3">Atualização</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y text-sm">
                                            {servico.ambiental_licenciamentos.map((lic: any) => {
                                                const statusDet = getStatusDetails(lic.status)
                                                return (
                                                    <tr key={lic.id} className="hover:bg-slate-50/50 dark:hover:bg-slate-900/20 transition-colors">
                                                        <td className="px-4 py-3.5 font-semibold text-slate-700 dark:text-slate-300">
                                                            {lic.tipo}
                                                        </td>
                                                        <td className="px-4 py-3.5 text-center">
                                                            <button
                                                                type="button"
                                                                onClick={() => handleCycleStatus(lic)}
                                                                disabled={!canEdit}
                                                                className={`inline-flex items-center gap-1 px-3 py-1 rounded-full text-xs font-semibold border shadow-sm transition-all focus:outline-none ${statusDet.style} ${canEdit ? 'cursor-pointer hover:brightness-95 active:scale-95' : 'cursor-not-allowed'}`}
                                                            >
                                                                {statusDet.label}
                                                            </button>
                                                        </td>
                                                        <td className="px-4 py-3.5 max-w-[240px]">
                                                            {editingObsId === lic.id ? (
                                                                <div className="flex items-center gap-1">
                                                                    <Input
                                                                        value={obsValue}
                                                                        onChange={(e) => setObsValue(e.target.value)}
                                                                        onKeyDown={(e) => {
                                                                            if (e.key === "Enter") handleSaveObservacao(lic.id)
                                                                            if (e.key === "Escape") setEditingObsId(null)
                                                                        }}
                                                                        autoFocus
                                                                        className="h-8 text-xs py-1"
                                                                    />
                                                                    <Button 
                                                                        size="sm" 
                                                                        variant="ghost" 
                                                                        className="h-8 w-8 p-0 text-emerald-600 hover:text-emerald-700" 
                                                                        onClick={() => handleSaveObservacao(lic.id)}
                                                                    >
                                                                        <Save className="h-4 w-4" />
                                                                    </Button>
                                                                    <Button 
                                                                        size="sm" 
                                                                        variant="ghost" 
                                                                        className="h-8 w-8 p-0 text-rose-600 hover:text-rose-755" 
                                                                        onClick={() => setEditingObsId(null)}
                                                                    >
                                                                        <X className="h-4 w-4" />
                                                                    </Button>
                                                                </div>
                                                            ) : (
                                                                <div 
                                                                    onClick={() => handleStartEditObservacao(lic)}
                                                                    className={`min-h-[2rem] flex items-center p-1 rounded hover:bg-slate-100/50 dark:hover:bg-slate-800/50 transition-colors ${canEdit ? 'cursor-pointer' : ''}`}
                                                                >
                                                                    {lic.observacao ? (
                                                                        <span className="text-slate-600 dark:text-slate-300 break-words">{lic.observacao}</span>
                                                                    ) : (
                                                                        <span className="text-muted-foreground italic text-xs font-normal">
                                                                            {canEdit ? "Clique para adicionar obs..." : "Sem observação"}
                                                                        </span>
                                                                    )}
                                                                </div>
                                                            )}
                                                        </td>
                                                        <td className="px-4 py-3.5 text-xs text-muted-foreground font-mono">
                                                            {lic.updated_at ? new Date(lic.updated_at).toLocaleString('pt-BR', { dateStyle: 'short', timeStyle: 'short' }) : "-"}
                                                        </td>
                                                    </tr>
                                                )
                                            })}
                                        </tbody>
                                    </table>
                                </div>
                            )}
                        </CardContent>
                    </Card>

                </div>

                {/* Column 3: Comentários (Feed Append-only) */}
                <div className="lg:col-span-1 space-y-6">
                    
                    <Card className="shadow-sm border-slate-100 dark:border-slate-800 flex flex-col h-[580px]">
                        <CardHeader className="border-b border-slate-50 dark:border-slate-800/50 pb-3 flex flex-row items-center justify-between space-y-0">
                            <CardTitle className="text-sm font-semibold flex items-center gap-2 text-slate-800 dark:text-slate-200">
                                <MessageSquare className="h-4 w-4 text-emerald-600" />
                                Comentários e Histórico
                            </CardTitle>
                            <Badge variant="secondary" className="font-mono">{comentarios.length}</Badge>
                        </CardHeader>
                        
                        {/* Feed List */}
                        <div className="flex-1 overflow-y-auto p-4 space-y-4 min-h-[300px]">
                            {comentarios.length === 0 ? (
                                <div className="h-full flex flex-col items-center justify-center text-muted-foreground text-center p-6 space-y-2">
                                    <MessageCircle className="h-8 w-8 text-slate-300 dark:text-slate-700" />
                                    <p className="text-sm">Nenhum comentário publicado.</p>
                                    <p className="text-xs max-w-[200px]">Use o feed para registrar atualizações e menções à equipe.</p>
                                </div>
                            ) : (
                                comentarios.map((com) => {
                                    const init = com.autor?.nome_completo ? com.autor.nome_completo.split(" ").map((n: string) => n[0]).join("").slice(0, 2).toUpperCase() : "?"
                                    return (
                                        <div key={com.id} className="flex gap-3 text-xs">
                                            <Avatar className="h-7 w-7 border border-emerald-100 bg-emerald-50 dark:bg-emerald-950/30">
                                                <AvatarFallback className="text-[10px] font-bold text-emerald-700 dark:text-emerald-400">
                                                    {init}
                                                </AvatarFallback>
                                            </Avatar>
                                            <div className="flex-1 space-y-1 bg-muted/30 dark:bg-muted/10 p-2.5 rounded-lg border border-slate-100/50 dark:border-slate-800/20">
                                                <div className="flex items-center justify-between">
                                                    <span className="font-bold text-slate-700 dark:text-slate-300">
                                                        {com.autor?.nome_completo || "Desconhecido"}
                                                    </span>
                                                    <span className="text-[10px] text-muted-foreground font-mono">
                                                        {new Date(com.created_at).toLocaleString('pt-BR', { dateStyle: 'short', timeStyle: 'short' })}
                                                    </span>
                                                </div>
                                                <p className="text-slate-600 dark:text-slate-400 leading-relaxed font-normal whitespace-pre-wrap">
                                                    {renderCommentText(com.texto)}
                                                </p>
                                            </div>
                                        </div>
                                    )
                                })
                            )}
                        </div>

                        {/* Compose / Post area */}
                        <div className="p-4 border-t border-slate-50 dark:border-slate-800/50 bg-slate-50/50 dark:bg-slate-900/10 space-y-3 relative">
                            {/* Autocomplete dropdown absolute */}
                            {showMentionDropdown && profileSuggestions.length > 0 && (
                                <div className="absolute left-4 bottom-[calc(100%+8px)] w-[calc(100%-32px)] max-h-36 overflow-y-auto bg-popover text-popover-foreground border rounded-md shadow-lg z-50 divide-y py-1">
                                    {profileSuggestions.map((prof, index) => (
                                        <div
                                            key={prof.id}
                                            onClick={() => insertMention(prof)}
                                            className={`px-3 py-2 text-xs flex flex-col cursor-pointer transition-colors ${dropdownIndex === index ? 'bg-accent text-accent-foreground' : 'hover:bg-muted/50'}`}
                                        >
                                            <span className="font-semibold">{prof.nome_completo}</span>
                                            <span className="text-[10px] text-muted-foreground font-mono">{prof.email}</span>
                                        </div>
                                    ))}
                                </div>
                            )}

                            <textarea
                                ref={commentTextareaRef}
                                rows={3}
                                placeholder="Digite um comentário... Use @ para mencionar alguém"
                                value={commentText}
                                onChange={handleCommentChange}
                                className="w-full text-xs p-2.5 rounded-md border bg-background placeholder:text-muted-foreground shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring resize-none"
                            />

                            <div className="flex justify-end">
                                <Button 
                                    size="sm" 
                                    onClick={handlePostComment}
                                    disabled={!commentText.trim()}
                                    className="bg-emerald-600 hover:bg-emerald-700 text-white font-semibold text-xs shadow-sm"
                                >
                                    Enviar Comentário
                                </Button>
                            </div>
                        </div>
                    </Card>

                </div>

            </div>

            {/* Modal de Gerenciamento de Técnicos */}
            <Dialog open={isTecnicosDialogOpen} onOpenChange={setIsTecnicosDialogOpen}>
                <DialogContent className="sm:max-w-[425px]">
                    <DialogHeader>
                        <DialogTitle className="flex items-center gap-2">
                            <Users className="h-5 w-5 text-emerald-600" />
                            Gerenciar Técnicos GMA
                        </DialogTitle>
                    </DialogHeader>
                    
                    <div className="space-y-4 py-4">
                        {/* Formulário de Adição */}
                        <div className="flex gap-2">
                            <Input
                                placeholder="Nome do novo técnico..."
                                value={novoTecnicoNome}
                                onChange={(e) => setNovoTecnicoNome(e.target.value)}
                                onKeyDown={(e) => {
                                    if (e.key === "Enter") handleAddTecnico()
                                }}
                            />
                            <Button 
                                onClick={handleAddTecnico} 
                                disabled={isAddingTecnico || !novoTecnicoNome.trim()}
                                className="bg-emerald-600 hover:bg-emerald-700 text-white font-semibold"
                            >
                                {isAddingTecnico ? "..." : "Adicionar"}
                            </Button>
                        </div>

                        {/* Listagem */}
                        <div className="border rounded-md divide-y max-h-[250px] overflow-y-auto">
                            {listaTecnicos.length === 0 ? (
                                <p className="p-4 text-center text-xs text-muted-foreground">
                                    Nenhum técnico cadastrado no banco.
                                </p>
                            ) : (
                                listaTecnicos.map((tecnico) => (
                                    <div key={tecnico.id} className="flex items-center justify-between p-3 text-sm">
                                        <span className="font-medium">{tecnico.nome}</span>
                                        <Button
                                            variant="ghost"
                                            size="icon"
                                            onClick={() => handleDeleteTecnico(tecnico.id)}
                                            className="h-8 w-8 text-rose-500 hover:text-rose-600 hover:bg-rose-50 dark:hover:bg-rose-950/20"
                                            title="Excluir técnico"
                                        >
                                            <Trash2 className="h-4 w-4" />
                                        </Button>
                                    </div>
                                ))
                            )}
                        </div>
                    </div>
                </DialogContent>
            </Dialog>

            {/* Dialog de Criação/Edição de Serviço */}
            {isServicoDialogOpen && (
                <ServicoDialog
                    open={isServicoDialogOpen}
                    onOpenChange={setIsServicoDialogOpen}
                    servicoToEdit={editingServico}
                    contratos={contratos}
                    empreendimentoId={empreendimentoId}
                    onSuccess={handleServicoSaved}
                />
            )}
        </div>
    )
}
