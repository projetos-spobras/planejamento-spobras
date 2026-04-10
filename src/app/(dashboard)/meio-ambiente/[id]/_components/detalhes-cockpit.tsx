"use client"

import { useState, useRef, useCallback } from "react"
import { useRouter } from "next/navigation"
import {
    ChevronLeft,
    FileText,
    History,
    MessageSquare,
    Paperclip,
    Plus,
    ShieldCheck,
    Leaf,
    Building2,
    Briefcase,
    BadgeAlert,
    CheckCircle2,
    Clock,
    Send,
    Download,
    Trash2,
    Eye,
    Loader2,
    X,
    ChevronDown,
    ChevronUp,
    Info,
    AlertCircle,
    Calendar,
} from "lucide-react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Textarea } from "@/components/ui/textarea"
import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
} from "@/components/ui/dialog"
import { toast } from "sonner"
import { addComentario, addAnexo, getSignedUrl, deleteAnexo, deleteComentario } from "@/app/actions/meio-ambiente-detalhes"
import { supabase } from "@/lib/supabase/client"

interface MeioAmbienteDetalhesCockpitProps {
    data: {
        empreendimento: any
        servicos: any[]
        comentarios: any[]
        anexos: any[]
        medicoes: any[]
    }
    currentUserId?: string
}

export function MeioAmbienteDetalhesCockpit({ data, currentUserId }: MeioAmbienteDetalhesCockpitProps) {
    const router = useRouter()

    if (!data || !data.empreendimento) {
        return <div className="p-12 text-center text-muted-foreground">Carregando dados do empreendimento...</div>
    }

    const { empreendimento, servicos, comentarios, anexos } = data
    const handleBack = () => router.push("/meio-ambiente")

    // Derive all subtipos present across all services
    const allSubtipos = Array.from(new Set(
        servicos.flatMap(s => Array.isArray(s.subtipo_ambiental) ? s.subtipo_ambiental : ['Geral'])
    ))

    const totalServicos = servicos.length
    const totalConcluidos = servicos.filter(s => s.status === 'Concluído').length
    const totalComentarios = comentarios.length
    const totalAnexos = anexos.length

    return (
        <div className="p-6 space-y-6 max-w-7xl mx-auto text-foreground min-h-screen">
            {/* Header */}
            <div className="flex items-center gap-4 mb-4">
                <Button variant="ghost" size="icon" onClick={handleBack}
                    className="rounded-full hover:bg-emerald-100/50 hover:text-emerald-700 transition-colors">
                    <ChevronLeft className="w-5 h-5" />
                </Button>
                <div>
                    <div className="flex items-center gap-2 text-sm text-muted-foreground mb-1">
                        <span>Gestão Ambiental</span>
                        <span>/</span>
                        <span className="text-emerald-600 font-medium">Empreendimento</span>
                    </div>
                    <h1 className="text-2xl font-bold tracking-tight flex items-center gap-3 bg-gradient-to-r from-emerald-900 to-emerald-600 bg-clip-text text-transparent dark:from-emerald-200 dark:to-emerald-500">
                        {empreendimento?.codigo} — {empreendimento?.nome}
                    </h1>
                </div>
            </div>

            {/* Summary KPIs */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <Card className="bg-emerald-50/40 dark:bg-emerald-950/10 border-emerald-100 dark:border-emerald-900/20">
                    <CardContent className="p-4 flex items-center justify-between">
                        <div>
                            <p className="text-xs font-bold uppercase text-muted-foreground tracking-wider">Serviços</p>
                            <p className="text-2xl font-bold">{totalServicos}</p>
                        </div>
                        <Leaf className="w-8 h-8 text-emerald-300 opacity-60" />
                    </CardContent>
                </Card>
                <Card className="bg-muted/30 border-none">
                    <CardContent className="p-4 flex items-center justify-between">
                        <div>
                            <p className="text-xs font-bold uppercase text-muted-foreground tracking-wider">Concluídos</p>
                            <p className="text-2xl font-bold">{totalConcluidos}/{totalServicos}</p>
                        </div>
                        <CheckCircle2 className="w-8 h-8 text-emerald-300 opacity-60" />
                    </CardContent>
                </Card>
                <Card className="bg-muted/30 border-none">
                    <CardContent className="p-4 flex items-center justify-between">
                        <div>
                            <p className="text-xs font-bold uppercase text-muted-foreground tracking-wider">Interações</p>
                            <p className="text-2xl font-bold">{totalComentarios}</p>
                        </div>
                        <MessageSquare className="w-8 h-8 text-muted-foreground/30" />
                    </CardContent>
                </Card>
                <Card className="bg-muted/30 border-none">
                    <CardContent className="p-4 flex items-center justify-between">
                        <div>
                            <p className="text-xs font-bold uppercase text-muted-foreground tracking-wider">Documentos</p>
                            <p className="text-2xl font-bold">{totalAnexos}</p>
                        </div>
                        <Paperclip className="w-8 h-8 text-muted-foreground/30" />
                    </CardContent>
                </Card>
            </div>

            {/* Subtipos summary */}
            {allSubtipos.length > 0 && (
                <div className="flex items-center gap-2 flex-wrap">
                    <span className="text-xs text-muted-foreground font-medium uppercase tracking-wide">Subtipos ativos:</span>
                    {allSubtipos.map(sub => (
                        <Badge key={sub} variant="outline" className={
                            sub === 'Taxa Ambiental'
                                ? 'bg-blue-50 text-blue-700 border-blue-200'
                                : 'bg-emerald-50 text-emerald-700 border-emerald-200'
                        }>
                            {sub}
                        </Badge>
                    ))}
                </div>
            )}

            {/* Service Cards */}
            <div className="space-y-4">
                {servicos.length === 0 ? (
                    <Card className="border-dashed border-emerald-200 bg-emerald-50/10 h-48 flex flex-col items-center justify-center text-center">
                        <Leaf className="w-12 h-12 text-emerald-300 mb-3" />
                        <p className="text-muted-foreground font-medium">Nenhum serviço ambiental registrado para este empreendimento.</p>
                    </Card>
                ) : (
                    servicos.map(servico => (
                        <ServicoAmbientalCard
                            key={servico.id}
                            servico={servico}
                            comentarios={comentarios.filter(c => c.servico_id === servico.id)}
                            anexos={anexos.filter(a => a.servico_id === servico.id)}
                            currentUserId={currentUserId}
                            router={router}
                        />
                    ))
                )}
            </div>
        </div>
    )
}

// ─────────────────────────────────────────────────────────────────────────────
// Individual Service Card (expandable)
// ─────────────────────────────────────────────────────────────────────────────

interface ServicoAmbientalCardProps {
    servico: any
    comentarios: any[]
    anexos: any[]
    currentUserId?: string
    router: any
}

function ServicoAmbientalCard({ servico, comentarios, anexos, currentUserId, router }: ServicoAmbientalCardProps) {
    const [isExpanded, setIsExpanded] = useState(false)
    const [activeTab, setActiveTab] = useState("historico")
    const [novoComentario, setNovoComentario] = useState("")
    const [pendingAnexos, setPendingAnexos] = useState<File[]>([])
    const [isSubmitting, setIsSubmitting] = useState(false)
    const [isUploading, setIsUploading] = useState(false)
    const [uploadProgress, setUploadProgress] = useState(0)
    const [previewFile, setPreviewFile] = useState<{ url: string; name: string; type: string } | null>(null)
    const [isPreviewOpen, setIsPreviewOpen] = useState(false)

    const fileInputRef = useRef<HTMLInputElement>(null)
    const commentFileInputRef = useRef<HTMLInputElement>(null)

    const subs: string[] = Array.isArray(servico.subtipo_ambiental) ? servico.subtipo_ambiental : []

    const statusColor = (s: string) => {
        if (s === 'Concluído') return 'bg-emerald-100 text-emerald-700 border-emerald-200 dark:bg-emerald-900/30 dark:text-emerald-400'
        if (s === 'Em Andamento') return 'bg-blue-100 text-blue-700 border-blue-200 dark:bg-blue-900/30 dark:text-blue-400'
        return 'bg-muted text-muted-foreground'
    }

    const handleAddComentario = async () => {
        if (!novoComentario.trim() && pendingAnexos.length === 0) return
        setIsSubmitting(true)
        try {
            const uploadedAnexos = []
            for (const file of pendingAnexos) {
                const fileExt = file.name.split('.').pop()
                const fileName = `${servico.id}/geral/comment_${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage
                    .from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                uploadedAnexos.push({
                    nome_arquivo: file.name, caminho_arquivo: uploadData.path,
                    tamanho_arquivo: file.size, tipo_arquivo: file.type
                })
            }
            const res = await addComentario({
                servico_id: servico.id, subtipo: subs[0] || 'geral',
                conteudo: novoComentario, anexos: uploadedAnexos
            })
            if (res.success) {
                setNovoComentario(""); setPendingAnexos([])
                toast.success("Comentário publicado"); router.refresh()
            }
        } catch (error: any) {
            toast.error("Erro ao publicar: " + error.message)
        } finally { setIsSubmitting(false) }
    }

    const handleDeleteComentario = async (id: string) => {
        if (!confirm("Excluir este comentário?")) return
        const res = await deleteComentario(id, servico.id)
        if (res.success) { toast.success("Comentário excluído"); router.refresh() }
    }

    const handleFileUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
        const files = Array.from(e.target.files || [])
        if (!files.length) return
        setIsUploading(true); setUploadProgress(10)
        try {
            let completed = 0
            for (const file of files) {
                if (file.size > 10 * 1024 * 1024) { toast.error(`${file.name} ignorado (máx 10MB)`); continue }
                const fileExt = file.name.split('.').pop()
                const fileName = `${servico.id}/geral/${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage
                    .from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                await addAnexo({
                    servico_id: servico.id, subtipo: subs[0] || 'geral',
                    nome_arquivo: file.name, caminho_arquivo: uploadData.path,
                    tamanho_arquivo: file.size, tipo_arquivo: file.type
                })
                completed++
                setUploadProgress(10 + (completed / files.length) * 90)
            }
            toast.success(`${completed} documento(s) carregado(s)`); router.refresh()
        } catch (error: any) {
            toast.error("Erro no upload: " + error.message)
        } finally {
            setIsUploading(false); setUploadProgress(0)
            if (fileInputRef.current) fileInputRef.current.value = ""
        }
    }

    const handlePreview = async (anexo: any) => {
        const url = await getSignedUrl(anexo.caminho_arquivo)
        if (url) { setPreviewFile({ url, name: anexo.nome_arquivo, type: anexo.tipo_arquivo }); setIsPreviewOpen(true) }
        else toast.error("Erro ao gerar visualização")
    }

    const handleDownload = async (anexo: any) => {
        const url = await getSignedUrl(anexo.caminho_arquivo)
        if (url) {
            const link = document.createElement('a'); link.href = url; link.download = anexo.nome_arquivo
            document.body.appendChild(link); link.click(); document.body.removeChild(link)
        }
    }

    const handleDeleteAnexo = async (anexo: any) => {
        if (!confirm("Excluir este documento?")) return
        const res = await deleteAnexo(anexo.id, anexo.caminho_arquivo)
        if (res.success) { toast.success("Documento removido"); router.refresh() }
    }

    return (
        <>
            <Card className={`border-l-4 transition-all duration-300 ${isExpanded ? 'border-l-emerald-500 shadow-md' : 'border-l-emerald-200 hover:border-l-emerald-400'}`}>
                {/* Card Header – collapsed view */}
                <div
                    className="flex items-start justify-between p-4 cursor-pointer select-none"
                    onClick={() => setIsExpanded(p => !p)}
                >
                    <div className="flex items-start gap-4 flex-1 min-w-0">
                        <div className={`p-2 rounded-lg border mt-0.5 transition-colors ${isExpanded ? 'bg-emerald-100 border-emerald-200 text-emerald-700' : 'bg-muted border-border text-muted-foreground'}`}>
                            <ShieldCheck className="w-4 h-4" />
                        </div>
                        <div className="flex-1 min-w-0">
                            <div className="flex items-center gap-2 flex-wrap mb-1">
                                {subs.length > 0 ? subs.map(s => (
                                    <Badge key={s} variant="outline" className={`text-[10px] px-1.5 ${s === 'Taxa Ambiental' ? 'bg-blue-50 text-blue-700 border-blue-200' : 'bg-emerald-50 text-emerald-700 border-emerald-200'}`}>
                                        {s}
                                    </Badge>
                                )) : (
                                    <Badge variant="outline" className="text-[10px] px-1.5 bg-muted">Geral</Badge>
                                )}
                                <Badge variant="outline" className={`text-[10px] px-1.5 ${statusColor(servico.status)}`}>
                                    {servico.status || 'Pendente'}
                                </Badge>
                            </div>
                            <p className="font-semibold text-sm truncate">{servico.descricao || 'Serviço sem descrição'}</p>
                            <div className="flex items-center gap-4 mt-1 text-xs text-muted-foreground">
                                {servico.contrato && <span className="flex items-center gap-1"><Briefcase className="w-3 h-3" />{servico.contrato.numero}</span>}
                                {servico.data_fim && <span className="flex items-center gap-1"><Calendar className="w-3 h-3" />Vence: {format(new Date(servico.data_fim), 'dd/MM/yyyy')}</span>}
                                <span className="flex items-center gap-1"><MessageSquare className="w-3 h-3" />{comentarios.length} notas</span>
                                <span className="flex items-center gap-1"><Paperclip className="w-3 h-3" />{anexos.length} docs</span>
                            </div>
                        </div>
                    </div>
                    <Button variant="ghost" size="icon" className="h-8 w-8 shrink-0 mt-1">
                        {isExpanded ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                    </Button>
                </div>

                {/* Expanded Content */}
                {isExpanded && (
                    <div className="border-t">
                        <Tabs value={activeTab} onValueChange={setActiveTab} className="p-4">
                            <TabsList className="grid grid-cols-2 w-full max-w-xs bg-muted/40 p-1 rounded-xl mb-4">
                                <TabsTrigger value="historico" className="rounded-lg data-[state=active]:bg-emerald-600 data-[state=active]:text-white text-sm h-8 gap-1.5">
                                    <History className="w-3.5 h-3.5" /> Histórico
                                </TabsTrigger>
                                <TabsTrigger value="documentos" className="rounded-lg data-[state=active]:bg-emerald-600 data-[state=active]:text-white text-sm h-8 gap-1.5">
                                    <Paperclip className="w-3.5 h-3.5" /> Documentos ({anexos.filter(a => !a.comentario_id).length})
                                </TabsTrigger>
                            </TabsList>

                            {/* TAB: Comments / History */}
                            <TabsContent value="historico" className="space-y-4 outline-none mt-0">
                                {/* New comment input */}
                                <div className="flex flex-col gap-3 bg-muted/20 p-4 rounded-xl border border-dashed hover:border-emerald-400 transition-colors">
                                    <Textarea
                                        placeholder="Adicionar nota sobre o andamento desta licença..."
                                        className="bg-background min-h-[72px] text-sm"
                                        value={novoComentario}
                                        onChange={e => setNovoComentario(e.target.value)}
                                    />
                                    {pendingAnexos.length > 0 && (
                                        <div className="flex flex-wrap gap-2">
                                            {pendingAnexos.map((f, i) => (
                                                <div key={i} className="flex items-center gap-1.5 px-2 py-1 bg-emerald-50 text-emerald-700 rounded text-xs border border-emerald-100">
                                                    <Paperclip className="w-3 h-3" />
                                                    <span className="max-w-[120px] truncate">{f.name}</span>
                                                    <Button variant="ghost" size="icon" className="h-4 w-4" onClick={() => setPendingAnexos(p => p.filter((_, idx) => idx !== i))}>
                                                        <X className="w-2.5 h-2.5" />
                                                    </Button>
                                                </div>
                                            ))}
                                        </div>
                                    )}
                                    <div className="flex justify-between items-center">
                                        <div>
                                            <input type="file" className="hidden" ref={commentFileInputRef}
                                                onChange={e => { setPendingAnexos(p => [...p, ...Array.from(e.target.files || [])]); if (commentFileInputRef.current) commentFileInputRef.current.value = "" }}
                                                multiple />
                                            <Button variant="ghost" size="sm" onClick={() => commentFileInputRef.current?.click()} className="text-muted-foreground hover:text-emerald-600 text-xs">
                                                <Paperclip className="w-3.5 h-3.5 mr-1" /> Anexar
                                            </Button>
                                        </div>
                                        <Button size="sm" onClick={handleAddComentario}
                                            disabled={isSubmitting || (!novoComentario.trim() && pendingAnexos.length === 0)}
                                            className="bg-emerald-600 hover:bg-emerald-700 text-xs">
                                            {isSubmitting ? <Loader2 className="w-3.5 h-3.5 mr-1 animate-spin" /> : <Send className="w-3.5 h-3.5 mr-1" />}
                                            Publicar
                                        </Button>
                                    </div>
                                </div>

                                {/* Comment list */}
                                {comentarios.length === 0 ? (
                                    <div className="flex flex-col items-center justify-center py-8 text-muted-foreground">
                                        <MessageSquare className="w-8 h-8 mb-2 opacity-20" />
                                        <p className="text-sm">Nenhuma nota registrada ainda.</p>
                                    </div>
                                ) : (
                                    <div className="space-y-4 border-l-2 border-emerald-100 pl-6 ml-2">
                                        {comentarios.map((c: any) => {
                                            const cAnexos = anexos.filter(a => a.comentario_id === c.id)
                                            return (
                                                <div key={c.id} className="relative group">
                                                    <div className="absolute -left-[31px] top-1 p-1 bg-background border border-emerald-200 rounded-full text-emerald-600">
                                                        <MessageSquare className="w-3 h-3" />
                                                    </div>
                                                    <div className="flex items-center gap-2 mb-1.5">
                                                        <span className="font-bold text-sm">{c.perfil?.full_name || 'Usuário'}</span>
                                                        {c.perfil?.role && <span className="text-[10px] border px-1.5 rounded uppercase font-medium text-muted-foreground">{c.perfil.role}</span>}
                                                        <span className="text-xs text-muted-foreground ml-auto">{format(new Date(c.created_at), "dd MMM HH:mm", { locale: ptBR })}</span>
                                                        {c.perfil_id === currentUserId && (
                                                            <Button variant="ghost" size="icon" className="h-6 w-6 opacity-0 group-hover:opacity-100 text-muted-foreground hover:text-red-600 transition-opacity"
                                                                onClick={() => handleDeleteComentario(c.id)}>
                                                                <Trash2 className="w-3 h-3" />
                                                            </Button>
                                                        )}
                                                    </div>
                                                    <div className="bg-muted/20 p-3 rounded-lg border border-emerald-50/80 text-sm text-muted-foreground whitespace-pre-wrap">
                                                        {c.conteudo}
                                                        {cAnexos.length > 0 && (
                                                            <div className="mt-2 pt-2 border-t border-emerald-100/50 grid grid-cols-1 sm:grid-cols-2 gap-1.5">
                                                                {cAnexos.map((av: any) => (
                                                                    <div key={av.id} className="flex items-center gap-2 p-1.5 bg-background rounded border hover:border-emerald-300 cursor-pointer transition-colors"
                                                                        onClick={() => handlePreview(av)}>
                                                                        <FileText className="w-3.5 h-3.5 text-emerald-600 shrink-0" />
                                                                        <span className="text-xs font-medium truncate flex-1">{av.nome_arquivo}</span>
                                                                        <Eye className="w-3 h-3 text-muted-foreground shrink-0" />
                                                                    </div>
                                                                ))}
                                                            </div>
                                                        )}
                                                    </div>
                                                </div>
                                            )
                                        })}
                                    </div>
                                )}
                            </TabsContent>

                            {/* TAB: Documents */}
                            <TabsContent value="documentos" className="outline-none mt-0">
                                <div className="flex justify-between items-center mb-4">
                                    <p className="text-sm font-medium text-muted-foreground">Documentos avulsos do serviço</p>
                                    <div>
                                        <input type="file" className="hidden" ref={fileInputRef} onChange={handleFileUpload} multiple />
                                        <Button size="sm" variant="outline" onClick={() => fileInputRef.current?.click()} disabled={isUploading}
                                            className="text-emerald-700 hover:text-emerald-800 border-emerald-200 text-xs">
                                            {isUploading ? <Loader2 className="w-3.5 h-3.5 mr-1 animate-spin" /> : <Plus className="w-3.5 h-3.5 mr-1" />}
                                            Subir Arquivo
                                        </Button>
                                    </div>
                                </div>
                                {isUploading && (
                                    <div className="mb-3 h-1 overflow-hidden bg-muted rounded-full">
                                        <div className="h-full bg-emerald-500 transition-all" style={{ width: `${uploadProgress}%` }} />
                                    </div>
                                )}
                                {anexos.filter(a => !a.comentario_id).length === 0 ? (
                                    <div className="flex flex-col items-center justify-center py-8 text-muted-foreground border-2 border-dashed rounded-lg">
                                        <Paperclip className="w-8 h-8 mb-2 opacity-20" />
                                        <p className="text-sm">Nenhum documento carregado ainda.</p>
                                    </div>
                                ) : (
                                    <div className="space-y-2">
                                        {anexos.filter(a => !a.comentario_id).map((a: any) => (
                                            <div key={a.id} className="flex items-center justify-between p-3 border rounded-lg hover:bg-muted/30 transition-all group">
                                                <div className="flex items-center gap-3">
                                                    <div className="p-2 bg-emerald-50 text-emerald-600 rounded">
                                                        <FileText className="w-4 h-4" />
                                                    </div>
                                                    <div>
                                                        <p className="text-sm font-medium line-clamp-1 max-w-[280px]">{a.nome_arquivo}</p>
                                                        <p className="text-[10px] text-muted-foreground">{format(new Date(a.created_at), 'dd/MM/yyyy HH:mm')}</p>
                                                    </div>
                                                </div>
                                                <div className="flex gap-1">
                                                    {(a.tipo_arquivo?.includes('image') || a.tipo_arquivo?.includes('pdf')) && (
                                                        <Button variant="ghost" size="icon" onClick={() => handlePreview(a)} className="h-8 w-8 text-muted-foreground hover:text-emerald-600">
                                                            <Eye className="w-4 h-4" />
                                                        </Button>
                                                    )}
                                                    <Button variant="ghost" size="icon" onClick={() => handleDownload(a)} className="h-8 w-8 text-muted-foreground hover:text-blue-600">
                                                        <Download className="w-4 h-4" />
                                                    </Button>
                                                    <Button variant="ghost" size="icon" onClick={() => handleDeleteAnexo(a)} className="h-8 w-8 text-muted-foreground hover:text-red-600">
                                                        <Trash2 className="w-4 h-4" />
                                                    </Button>
                                                </div>
                                            </div>
                                        ))}
                                    </div>
                                )}
                            </TabsContent>
                        </Tabs>
                    </div>
                )}
            </Card>

            {/* Preview Dialog */}
            <Dialog open={isPreviewOpen} onOpenChange={setIsPreviewOpen}>
                <DialogContent className="max-w-5xl h-[85vh] flex flex-col p-0 overflow-hidden bg-background">
                    <DialogHeader className="p-4 border-b flex flex-row items-center justify-between space-y-0">
                        <DialogTitle className="text-base font-bold flex items-center gap-2">
                            <Eye className="w-4 h-4 text-emerald-600" /> {previewFile?.name}
                        </DialogTitle>
                        <Button variant="ghost" size="icon" onClick={() => setIsPreviewOpen(false)} className="h-8 w-8">
                            <X className="w-4 h-4" />
                        </Button>
                    </DialogHeader>
                    <div className="flex-1 bg-muted/20 overflow-auto p-4 flex items-center justify-center">
                        {previewFile?.type.includes('image') ? (
                            <img src={previewFile.url} alt={previewFile.name} className="max-w-full max-h-full object-contain shadow-2xl rounded-lg" />
                        ) : previewFile?.type.includes('pdf') ? (
                            <iframe src={`${previewFile.url}#view=FitH`} className="w-full h-full border-none rounded-lg shadow-2xl" title="Pré-visualização" />
                        ) : (
                            <div className="flex flex-col items-center gap-3 opacity-50">
                                <FileText className="w-16 h-16" />
                                <p>Este arquivo não pode ser visualizado diretamente.</p>
                            </div>
                        )}
                    </div>
                </DialogContent>
            </Dialog>
        </>
    )
}
