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
    DollarSign,
    Building2,
    Briefcase,
    Clock,
    Send,
    Download,
    Trash2,
    Eye,
    Loader2,
    X,
    AlertCircle,
    FileSpreadsheet,
    FileImage,
    Maximize2,
    FileSearch,
    Scale,
    ChevronDown,
    ChevronUp,
    RefreshCw,
    Hash,
    Calendar,
    Gavel,
    ListFilter,
    ExternalLink,
    CheckCircle2,
    Info,
    Cloud
} from "lucide-react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Textarea } from "@/components/ui/textarea"
import { Input } from "@/components/ui/input"
import { 
    Table, 
    TableBody, 
    TableCell, 
    TableHead, 
    TableHeader, 
    TableRow 
} from "@/components/ui/table"
import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
} from "@/components/ui/dialog"
import { toast } from "sonner"
import { 
    addComentario, addAnexo, getSignedUrl, deleteAnexo, deleteComentario,
    addProcesso, deleteProcesso, addProcessoComentario, deleteProcessoComentario,
    addProcessoAnexo, deleteProcessoAnexo 
} from "@/app/actions/desapropriacoes-detalhes"
import { supabase } from "@/lib/supabase/client"

const SUPABASE_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co"
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk4NDcxODQsImV4cCI6MjA3NTQyMzE4NH0.ajfCswC3MDOWTEEEMC0JjCgeDnQzgUcnvCZYB0J2_ZU"

interface DetalhesCockpitProps {
    data: {
        empreendimento: any
        servicosReunidos: {
            acoes: any[]
            materiais: any[]
        }
        comentarios: any[]
        anexos: any[]
        processos: any[]
        processoComentarios: any[]
        processoAnexos: any[]
    }
    currentUserId?: string
}

export function DesapropriacaoDetalhesCockpit({ data, currentUserId }: DetalhesCockpitProps) {
    const router = useRouter()
    
    if (!data || !data.empreendimento) {
        return <div className="p-12 text-center">Carregando dados do empreendimento...</div>
    }

    const { empreendimento, servicosReunidos, comentarios, anexos, processos, processoComentarios, processoAnexos } = data

    const handleBack = () => router.push("/desapropriacoes")

    return (
        <div className="p-6 space-y-6 max-w-7xl mx-auto text-foreground min-h-screen">
            <div className="flex items-center gap-4 mb-4">
                <Button variant="ghost" size="icon" onClick={handleBack} className="rounded-full hover:bg-amber-100/50 hover:text-amber-700 transition-colors">
                    <ChevronLeft className="w-5 h-5" />
                </Button>
                <div>
                    <div className="flex items-center gap-2 text-sm text-muted-foreground mb-1">
                        <span>Gestão de Desapropriações</span>
                        <span>/</span>
                        <span className="text-amber-600 font-medium">Empreendimento</span>
                    </div>
                    <h1 className="text-2xl font-bold tracking-tight flex items-center gap-3 bg-gradient-to-r from-amber-900 to-amber-600 bg-clip-text text-transparent dark:from-amber-200 dark:to-amber-500">
                        {empreendimento?.codigo} — {empreendimento?.nome}
                    </h1>
                </div>
            </div>

            <Tabs defaultValue="acoes" className="w-full animate-in fade-in slide-in-from-bottom-2 duration-500">
                <TabsList className="grid grid-cols-2 w-full max-w-md bg-muted/40 p-1 mb-8 rounded-xl ring-1 ring-border shadow-sm">
                    <TabsTrigger value="acoes" className="rounded-lg data-[state=active]:bg-amber-600 data-[state=active]:text-white data-[state=active]:shadow-md transition-all text-sm font-medium h-9 gap-2">
                        <History className="w-4 h-4" />
                        Ações ({servicosReunidos?.acoes?.length || 0})
                    </TabsTrigger>
                    <TabsTrigger value="materiais" className="rounded-lg data-[state=active]:bg-blue-600 data-[state=active]:text-white data-[state=active]:shadow-md transition-all text-sm font-medium h-9 gap-2">
                        <Building2 className="w-4 h-4" />
                        Materiais ({servicosReunidos?.materiais?.length || 0})
                    </TabsTrigger>
                </TabsList>

                <TabsContent value="acoes" className="space-y-6 outline-none">
                    {servicosReunidos?.acoes?.length === 0 ? (
                        <EmptyState 
                            message="Nenhuma Ação de Desapropriação registrada para este empreendimento." 
                            icon={<History className="w-12 h-12 text-amber-300" />}
                            colorClass="border-amber-100 bg-amber-50/5"
                        />
                    ) : (
                        servicosReunidos?.acoes?.map(servico => (
                            <ServicoWrapper 
                                key={servico.id} 
                                servico={servico} 
                                comentarios={comentarios.filter(c => c.servico_id === servico.id)} 
                                anexos={anexos.filter(a => a.servico_id === servico.id)} 
                                processos={processos.filter(p => p.servico_id === servico.id)}
                                processoComentarios={processoComentarios}
                                processoAnexos={processoAnexos}
                                currentUserId={currentUserId}
                                router={router}
                                theme="amber"
                            />
                        ))
                    )}
                </TabsContent>

                <TabsContent value="materiais" className="space-y-6 outline-none">
                    {servicosReunidos?.materiais?.length === 0 ? (
                        <EmptyState 
                            message="Nenhum Material Expropriatório registrado para este empreendimento." 
                            icon={<Building2 className="w-12 h-12 text-blue-300" />}
                            colorClass="border-blue-100 bg-blue-50/5"
                        />
                    ) : (
                        servicosReunidos?.materiais?.map(servico => (
                            <ServicoWrapper 
                                key={servico.id} 
                                servico={servico} 
                                comentarios={comentarios.filter(c => c.servico_id === servico.id)} 
                                anexos={anexos.filter(a => a.servico_id === servico.id)} 
                                processos={[]}
                                processoComentarios={[]}
                                processoAnexos={[]}
                                currentUserId={currentUserId}
                                router={router}
                                theme="blue"
                            />
                        ))
                    )}
                </TabsContent>
            </Tabs>
        </div>
    )
}

function EmptyState({ message, icon, colorClass }: { message: string, icon: any, colorClass: string }) {
    return (
        <Card className={`border-dashed shadow-none h-64 flex flex-col items-center justify-center text-center p-8 transition-all hover:bg-muted/10 ${colorClass}`}>
            <div className="mb-4 opacity-50 animate-pulse">{icon}</div>
            <p className="text-muted-foreground font-medium max-w-sm">{message}</p>
            <Button variant="outline" className="mt-6 gap-2 border-dashed" onClick={() => window.open("/formularios/desapropriacoes", "_blank")}>
                <Plus className="w-4 h-4" />
                Vincular Nova Desapropriação
            </Button>
        </Card>
    )
}

interface ServicoWrapperProps {
    servico: any
    comentarios: any[]
    anexos: any[]
    processos: any[]
    processoComentarios: any[]
    processoAnexos: any[]
    currentUserId?: string
    router: any
    theme: 'amber' | 'blue'
}

function ServicoWrapper({ 
    servico, comentarios, anexos, processos, processoComentarios, processoAnexos, 
    currentUserId, router, theme 
}: ServicoWrapperProps) {
    const [novoComentario, setNovoComentario] = useState("")
    const [pendingAnexos, setPendingAnexos] = useState<File[]>([])
    const [isSubmitting, setIsSubmitting] = useState(false)
    const [isUploading, setIsUploading] = useState(false)
    const [uploadProgress, setUploadProgress] = useState(0)
    const fileInputRef = useRef<HTMLInputElement>(null)
    const commentFileInputRef = useRef<HTMLInputElement>(null)

    const [previewFile, setPreviewFile] = useState<{ url: string, name: string, type: string } | null>(null)
    const [isPreviewOpen, setIsPreviewOpen] = useState(false)

    const colorBg = theme === 'amber' ? 'bg-amber-600' : 'bg-blue-600'
    const colorText = theme === 'amber' ? 'text-amber-700' : 'text-blue-700'
    const colorBorder = theme === 'amber' ? 'border-amber-100' : 'border-blue-100'

    const formatCurrency = (val: number) => {
        return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val || 0)
    }

    const getFileTypeIcon = (filename: string, type: string) => {
        const ext = filename?.split('.').pop()?.toLowerCase() || ''
        if (type?.startsWith('image/')) return <FileImage className="w-4 h-4" />
        if (ext === 'pdf') return <FileSearch className="w-4 h-4" />
        if (['xlsx', 'xls', 'csv'].includes(ext)) return <FileSpreadsheet className="w-4 h-4" />
        if (['doc', 'docx'].includes(ext)) return <FileText className="w-4 h-4 text-blue-600" />
        if (['ppt', 'pptx'].includes(ext)) return <FileText className="w-4 h-4 text-orange-600" />
        return <FileText className="w-4 h-4" />
    }

    const handlePreview = async (anexo: any) => {
        const url = await getSignedUrl(anexo.caminho_arquivo)
        if (url) {
            setPreviewFile({ url, name: anexo.nome_arquivo, type: anexo.tipo_arquivo || '' })
            setIsPreviewOpen(true)
        } else {
            toast.error("Erro ao gerar link de visualização")
        }
    }

    const handleDownload = async (anexo: any) => {
        const url = await getSignedUrl(anexo.caminho_arquivo)
        if (url) {
            const link = document.createElement('a')
            link.href = url
            link.download = anexo.nome_arquivo
            document.body.appendChild(link)
            link.click()
            document.body.removeChild(link)
        }
    }

    const handleDeleteAnexo = async (anexo: any) => {
        if (!confirm("Deseja realmente excluir este documento?")) return
        const res = await deleteAnexo(anexo.id, anexo.caminho_arquivo)
        if (res.success) { toast.success("Documento removido"); router.refresh() }
    }

    const handleAddComentario = async () => {
        if (!novoComentario.trim() && pendingAnexos.length === 0) return
        setIsSubmitting(true)
        try {
            const uploadedAnexos: any[] = []
            for (const file of pendingAnexos) {
                const fileExt = file.name.split('.').pop()
                const fileName = `${servico.id}/interacoes/comment_${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage
                    .from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                uploadedAnexos.push({ nome_arquivo: file.name, caminho_arquivo: uploadData.path, tamanho_arquivo: file.size, tipo_arquivo: file.type })
            }
            const res = await addComentario({ servico_id: servico.id, subtipo: 'Geral', conteudo: novoComentario, anexos: uploadedAnexos })
            if (res.success) { setNovoComentario(""); setPendingAnexos([]); toast.success("Comentário registrado"); router.refresh() }
        } catch (error: any) {
            toast.error("Erro: " + error.message)
        } finally { setIsSubmitting(false) }
    }

    const handleDeleteComentario = async (id: string) => {
        if (!confirm("Excluir este comentário?")) return
        const res = await deleteComentario(id, servico.id)
        if (res.success) { toast.success("Comentário excluído"); router.refresh() }
    }

    const handleFileUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
        const files = Array.from(e.target.files || [])
        if (files.length === 0) return
        setIsUploading(true); setUploadProgress(10)
        try {
            let completed = 0
            for (const file of files) {
                if (file.size > 20 * 1024 * 1024) { toast.error(`Arquivo ${file.name} ignorado (máx. 20MB)`); continue }
                const fileExt = file.name.split('.').pop()
                const fileName = `${servico.id}/documentos/${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage.from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                await addAnexo({ servico_id: servico.id, subtipo: 'Documento', nome_arquivo: file.name, caminho_arquivo: uploadData.path, tamanho_arquivo: file.size, tipo_arquivo: file.type })
                completed++
                setUploadProgress(10 + (completed / files.length) * 90)
            }
            toast.success(`${completed} documento(s) carregado(s)`); router.refresh()
        } catch (error: any) {
            toast.error("Erro no upload: " + error.message)
        } finally { setIsUploading(false); setUploadProgress(0); if (fileInputRef.current) fileInputRef.current.value = "" }
    }

    // Determine tabs based on theme
    const innerTabs = theme === 'amber' 
        ? ['comments', 'files', 'processos'] 
        : ['comments', 'files']

    return (
        <Card className={`group border-2 ${colorBorder} dark:border-opacity-10 shadow-lg overflow-hidden relative mb-10 transition-all hover:shadow-xl`}>
            <div className={`absolute top-0 left-0 w-1.5 h-full ${colorBg} opacity-80`} />
            <div className="absolute top-0 right-0 p-8 opacity-[0.03] pointer-events-none group-hover:opacity-[0.05] transition-opacity">
                {theme === 'amber' ? <ShieldCheck className="w-32 h-32 text-amber-600" /> : <Building2 className="w-32 h-32 text-blue-600" />}
            </div>
            
            <CardHeader className={`${theme === 'amber' ? 'bg-amber-50/50 dark:bg-amber-950/20' : 'bg-blue-50/50 dark:bg-blue-950/20'} border-b flex flex-row items-center justify-between`}>
                <div className="space-y-1.5">
                    <div className="flex gap-2 items-center flex-wrap">
                        <Badge variant="outline" className={`bg-background shadow-xs ring-1 ring-border ${colorText} border-transparent text-[10px] uppercase font-bold tracking-wider px-2 py-0.5`}>
                            {theme === 'amber' ? 'Ação de Desapropriação' : 'Material Expropriatório'}
                        </Badge>
                        {Array.isArray(servico?.subtipo_receita) && servico.subtipo_receita.map((s: string, i: number) => (
                             <Badge key={i} variant="secondary" className="text-[10px] bg-background/50 backdrop-blur-sm border-none px-2 py-0.5">{s}</Badge>
                        ))}
                    </div>
                    <CardTitle className="text-xl font-bold tracking-tight">{servico?.descricao || 'Serviço sem descrição'}</CardTitle>
                </div>
                <div className="flex flex-col items-end gap-1.5">
                    <Badge variant={servico?.status === 'Concluído' ? 'default' : 'secondary'} className={`${servico?.status === 'Concluído' ? (theme === 'amber' ? 'bg-amber-600' : 'bg-blue-600') : ''} shadow-sm font-semibold capitalize px-3`}>
                        {servico?.status || 'Pendente'}
                    </Badge>
                    <span className="text-[10px] text-muted-foreground uppercase font-bold tracking-tighter">ID: {servico?.id?.substring?.(0, 8) || '---'}</span>
                </div>
            </CardHeader>

            <CardContent className="p-0">
                <div className="grid grid-cols-2 md:grid-cols-4 divide-x divide-y md:divide-y-0 border-b bg-muted/5">
                    <div className="p-4 flex flex-col gap-1">
                        <span className="text-[10px] text-muted-foreground uppercase font-bold flex items-center gap-1.5"><Briefcase className="w-3 h-3 opacity-50"/> Contrato</span>
                        <span className="text-sm font-semibold line-clamp-1">{servico?.contrato?.numero || 'S/ Contrato'}</span>
                        <span className="text-[9px] text-muted-foreground line-clamp-1">{servico?.contrato?.tipo || '---'}</span>
                    </div>
                    <div className="p-4 flex flex-col gap-1">
                        <span className="text-[10px] text-muted-foreground uppercase font-bold flex items-center gap-1.5"><Clock className="w-3 h-3 opacity-50"/> Prazo</span>
                        <span className="text-sm font-semibold">{servico?.duracao_dias ? `${servico.duracao_dias} dias` : '---'}</span>
                        <span className="text-[9px] text-muted-foreground">Vigência: {servico?.data_fim ? format(new Date(servico.data_fim), 'dd/MM/yyyy') : '---'}</span>
                    </div>
                    <div className="p-4 flex flex-col gap-1">
                        <span className="text-[10px] text-muted-foreground uppercase font-bold flex items-center gap-1.5"><Scale className="w-3 h-3 opacity-50"/> Processos</span>
                        <span className="text-sm font-semibold">{processos?.length || 0} cadastrados</span>
                        <span className="text-[9px] text-muted-foreground">{comentarios?.length || 0} interações</span>
                    </div>
                    <div className="p-4 flex flex-col gap-1">
                        <span className="text-[10px] text-muted-foreground uppercase font-bold flex items-center gap-1.5"><DollarSign className="w-3 h-3 opacity-50"/> Estimativa</span>
                        <span className={`text-sm font-black ${colorText}`}>{formatCurrency(servico?.valor_total)}</span>
                        <div className="w-full bg-muted rounded-full h-1 mt-1 overflow-hidden">
                            <div className={`h-full ${colorBg}`} style={{ width: '40%' }} />
                        </div>
                    </div>
                </div>

                <div className="p-6">
                    <Tabs defaultValue="comments" className="w-full">
                        <TabsList className={`bg-muted/30 p-1 rounded-lg inline-flex mb-6 h-9 ${theme === 'amber' ? 'grid grid-cols-3' : 'grid grid-cols-2'} w-full max-w-sm`}>
                            <TabsTrigger value="comments" className="rounded-md px-3 py-1.5 text-xs font-medium gap-1.5">
                                <MessageSquare className="w-3.5 h-3.5" /> Timeline
                            </TabsTrigger>
                            <TabsTrigger value="files" className="rounded-md px-3 py-1.5 text-xs font-medium gap-1.5">
                                <Paperclip className="w-3.5 h-3.5" /> Documentos
                            </TabsTrigger>
                            {theme === 'amber' && (
                                <TabsTrigger value="processos" className="rounded-md px-3 py-1.5 text-xs font-medium gap-1.5 data-[state=active]:bg-amber-600 data-[state=active]:text-white">
                                    <Scale className="w-3.5 h-3.5" /> Processos
                                    {processos?.length > 0 && (
                                        <span className="ml-1 bg-amber-100 text-amber-700 text-[10px] font-bold rounded-full px-1.5 py-0 min-w-[18px] text-center">
                                            {processos.length}
                                        </span>
                                    )}
                                </TabsTrigger>
                            )}
                        </TabsList>
                        
                        {/* ---- TIMELINE ---- */}
                        <TabsContent value="comments" className="space-y-6 animate-in fade-in duration-300">
                            <div className="relative pl-6 border-l-2 border-muted space-y-6 pb-2 ml-3">
                                {comentarios?.map((c: any) => {
                                    const cAnexos = anexos.filter(a => a.comentario_id === c.id)
                                    return (
                                        <div key={c.id} className="relative">
                                            <div className={`absolute -left-[31px] top-1 w-2 h-2 rounded-full ring-4 ring-background ${theme === 'amber' ? 'bg-amber-500' : 'bg-blue-500'}`} />
                                            <div className="bg-background rounded-xl p-4 border shadow-sm ring-1 ring-border/5 hover:ring-border transition-all">
                                                <div className="flex justify-between items-start mb-3">
                                                    <div className="flex items-center gap-2.5">
                                                        <div className={`w-8 h-8 rounded-full ${theme === 'amber' ? 'bg-amber-100 text-amber-700' : 'bg-blue-100 text-blue-700'} flex items-center justify-center font-bold text-xs shadow-inner`}>
                                                            {c.user?.full_name?.substring?.(0, 2)?.toUpperCase() || 'US'}
                                                        </div>
                                                        <div className="flex flex-col">
                                                            <span className="font-bold text-sm tracking-tight">{c.user?.full_name || 'Usuário'}</span>
                                                            <span className="text-[10px] text-muted-foreground uppercase tracking-tight">{c.created_at ? format(new Date(c.created_at), "dd 'de' MMM 'às' HH:mm", { locale: ptBR }) : '---'}</span>
                                                        </div>
                                                    </div>
                                                    {currentUserId === c.perfil_id && (
                                                        <button className="text-muted-foreground hover:text-red-500 p-1 transition-colors" onClick={() => handleDeleteComentario(c.id)}>
                                                            <Trash2 className="w-3.5 h-3.5" />
                                                        </button>
                                                    )}
                                                </div>
                                                <p className="text-sm text-foreground/80 leading-relaxed whitespace-pre-wrap ml-2">{c.conteudo}</p>
                                                {cAnexos.length > 0 && (
                                                   <div className="mt-4 pt-3 border-t grid grid-cols-1 sm:grid-cols-2 gap-2">
                                                       {cAnexos.map((ca: any) => (
                                                           <div key={ca.id} onClick={() => handlePreview(ca)} className="group/file flex items-center gap-2 p-2 rounded-lg border bg-muted/5 hover:bg-muted/30 transition-all cursor-pointer">
                                                               <div className="p-1.5 bg-background rounded-md shadow-xs">{getFileTypeIcon(ca.nome_arquivo, ca.tipo_arquivo || '')}</div>
                                                               <span className="text-[11px] font-medium truncate flex-1">{ca.nome_arquivo}</span>
                                                               <Eye className="w-3 h-3 text-muted-foreground opacity-0 group-hover/file:opacity-100 transition-opacity" />
                                                           </div>
                                                       ))}
                                                   </div>
                                                )}
                                            </div>
                                        </div>
                                    )
                                })}
                                {comentarios?.length === 0 && (
                                    <div className="flex flex-col items-center justify-center py-6 text-muted-foreground/40 gap-3">
                                        <MessageSquare className="w-8 h-8 opacity-20" />
                                        <p className="text-xs uppercase font-bold tracking-widest italic">Aguardando primeira interação...</p>
                                    </div>
                                )}
                            </div>
                            <div className="mt-8 bg-muted/30 backdrop-blur-sm p-4 rounded-xl border border-dashed hover:border-solid hover:bg-muted/40 transition-all">
                                <Textarea value={novoComentario} onChange={(e) => setNovoComentario(e.target.value)} placeholder="Escreva uma nota técnica..." className="min-h-[100px] text-sm resize-none bg-background shadow-inner border-none focus-visible:ring-1 focus-visible:ring-offset-0 mb-3" />
                                <div className="flex justify-between items-center">
                                    <div className="flex items-center gap-2.5">
                                        <Button variant="secondary" size="sm" onClick={() => commentFileInputRef.current?.click()} className="h-9 px-4 text-xs font-semibold gap-2 shadow-sm rounded-lg">
                                            <Paperclip className="w-3.5 h-3.5" /> Anexar
                                        </Button>
                                        <input type="file" ref={commentFileInputRef} className="hidden" multiple onChange={(e) => { setPendingAnexos(prev => [...prev, ...Array.from(e.target.files || [])]); if (commentFileInputRef.current) commentFileInputRef.current.value = "" }} />
                                        <div className="flex gap-1.5 flex-wrap">
                                            {pendingAnexos.map((file, i) => (
                                                <Badge key={i} variant="secondary" className="text-[10px] pl-3 pr-1 py-0.5 h-7 rounded-lg bg-background border">
                                                    <span className="truncate max-w-[100px] font-medium">{file.name}</span>
                                                    <button onClick={() => setPendingAnexos(prev => prev.filter((_, idx) => idx !== i))} className="hover:text-red-500 p-1"><X className="w-3 h-3" /></button>
                                                </Badge>
                                            ))}
                                        </div>
                                    </div>
                                    <Button size="sm" onClick={handleAddComentario} disabled={isSubmitting || (!novoComentario.trim() && pendingAnexos.length === 0)} className={`h-9 px-6 rounded-lg ${colorBg} hover:opacity-90 shadow-md font-bold gap-2 text-white`}>
                                        {isSubmitting ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Send className="w-3.5 h-3.5" />} Publicar
                                    </Button>
                                </div>
                            </div>
                        </TabsContent>

                        {/* ---- DOCUMENTOS ---- */}
                        <TabsContent value="files" className="space-y-6 animate-in fade-in duration-300">
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <Card className="bg-muted/10 border-dashed shadow-none flex flex-col justify-center items-center p-8 text-center gap-4 hover:bg-muted/20 transition-all border-2">
                                     <div className={`p-4 rounded-full ${theme === 'amber' ? 'bg-amber-100 text-amber-600' : 'bg-blue-100 text-blue-600'}`}>
                                         <Paperclip className="w-8 h-8" />
                                     </div>
                                     <p className="font-black text-sm uppercase tracking-tight">Zona de Depósito</p>
                                     <input type="file" ref={fileInputRef} className="hidden" multiple onChange={handleFileUpload} disabled={isUploading} />
                                    <Button onClick={() => fileInputRef.current?.click()} disabled={isUploading} size="sm" className={`${colorBg} gap-2 rounded-xl shadow-md text-white font-bold h-10 px-6`}>
                                        {isUploading ? <><Loader2 className="w-4 h-4 animate-spin" /> {Math.round(uploadProgress)}%</> : <><Plus className="w-4 h-4" /> Subir Arquivos</>}
                                    </Button>
                                </Card>
                                <div className="p-4 rounded-xl bg-blue-50 border-2 border-blue-200">
                                    <p className="text-xs font-bold text-blue-900 uppercase mb-1">Dica</p>
                                    <p className="text-xs text-blue-800 leading-relaxed">Consolide arquivos como .docx ou .pptx aqui para que a equipe possa revisar sem sair do sistema.</p>
                                </div>
                            </div>
                            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3 pt-4">
                                {anexos?.map((anexo: any) => (
                                    <div key={anexo.id} className="group/item relative bg-background border-2 rounded-xl p-3 flex items-center gap-3 transition-all hover:border-amber-200 hover:shadow-md">
                                        <div className="w-10 h-10 rounded-lg bg-muted/30 flex items-center justify-center text-muted-foreground">{getFileTypeIcon(anexo.nome_arquivo, anexo.tipo_arquivo || '')}</div>
                                        <div className="flex-1 overflow-hidden">
                                            <p className="text-sm font-bold truncate pr-14" title={anexo.nome_arquivo}>{anexo.nome_arquivo}</p>
                                            <p className="text-[10px] text-muted-foreground font-medium uppercase">{anexo.created_at ? format(new Date(anexo.created_at), 'dd/MM/yyyy') : '---'}</p>
                                        </div>
                                        <div className="absolute right-2 flex gap-0.5 opacity-0 group-hover/item:opacity-100 transition-opacity">
                                            <Button variant="ghost" size="icon" onClick={() => handlePreview(anexo)} className="h-8 w-8"><Eye className="w-4 h-4" /></Button>
                                            <Button variant="ghost" size="icon" onClick={() => handleDownload(anexo)} className="h-8 w-8"><Download className="w-4 h-4" /></Button>
                                            <Button variant="ghost" size="icon" onClick={() => handleDeleteAnexo(anexo)} className="h-8 w-8 hover:text-red-600"><Trash2 className="w-4 h-4" /></Button>
                                        </div>
                                    </div>
                                ))}
                                {anexos?.length === 0 && (
                                    <div className="col-span-full text-center p-12 bg-muted/10 rounded-2xl border-2 border-dashed flex flex-col items-center">
                                        <FileText className="w-12 h-12 text-muted-foreground/10 mb-4" />
                                        <p className="text-sm text-muted-foreground font-medium italic">Repositório vazio.</p>
                                    </div>
                                )}
                            </div>
                        </TabsContent>

                        {/* ---- PROCESSOS JUDICIAIS (só para Ações) ---- */}
                        {theme === 'amber' && (
                            <TabsContent value="processos" className="space-y-6 animate-in fade-in duration-300">
                                <ProcessosPanel 
                                    servicoId={servico.id} 
                                    processos={processos} 
                                    processoComentarios={processoComentarios}
                                    processoAnexos={processoAnexos}
                                    currentUserId={currentUserId}
                                    router={router} 
                                />
                            </TabsContent>
                        )}
                    </Tabs>
                </div>
            </CardContent>

            {/* Preview Dialog */}
            <Dialog open={isPreviewOpen} onOpenChange={setIsPreviewOpen}>
                <DialogContent className="max-w-[95vw] w-full h-[90vh] flex flex-col p-0 overflow-hidden bg-background border-none shadow-2xl">
                    <DialogHeader className="p-4 border-b flex flex-row items-center justify-between space-y-0 bg-amber-50/80 backdrop-blur-md sticky top-0 z-50">
                        <div className="flex items-center gap-3">
                            <div className="p-2 rounded-lg bg-amber-600 text-white"><Eye className="w-5 h-5" /></div>
                            <DialogTitle className="text-lg font-bold tracking-tight max-w-[60vw] truncate">{previewFile?.name}</DialogTitle>
                        </div>
                        <div className="flex gap-2">
                            <Button variant="outline" size="sm" onClick={() => window.open(previewFile?.url, '_blank')} className="rounded-lg h-9 font-bold bg-background"><Maximize2 className="w-4 h-4 mr-2" /> Tela Inteira</Button>
                            <Button variant="ghost" size="icon" onClick={() => setIsPreviewOpen(false)} className="h-9 w-9 rounded-lg hover:bg-black/5"><X className="w-5 h-5" /></Button>
                        </div>
                    </DialogHeader>
                    <div className="flex-1 bg-black/5 dark:bg-black/40 relative overflow-hidden flex items-center justify-center p-4">
                        {previewFile && (
                            <>
                                {previewFile.type.includes('image') ? (
                                    <img src={previewFile.url} alt={previewFile.name} className="max-w-full max-h-full object-contain shadow-2xl rounded-lg" />
                                ) : previewFile.type.includes('pdf') ? (
                                    <iframe src={`${previewFile.url}#view=FitH`} className="w-full h-full border-none rounded-xl bg-white shadow-2xl" title="Preview PDF" />
                                ) : (['docx', 'pptx', 'xlsx', 'xls', 'doc', 'ppt'].some(ext => previewFile.name.toLowerCase().endsWith(ext))) ? (
                                    <iframe src={`https://view.officeapps.live.com/op/embed.aspx?src=${encodeURIComponent(previewFile.url)}`} className="w-full h-full border-none rounded-xl shadow-2xl bg-white" title="Office Online" />
                                ) : (
                                    <div className="flex flex-col items-center gap-6 p-12 bg-background border-2 border-dashed rounded-3xl max-w-md text-center shadow-xl">
                                        <div className="p-6 bg-muted rounded-full"><FileText className="w-16 h-16 text-muted-foreground/50" /></div>
                                        <p className="font-black text-xl tracking-tight uppercase">Visualização Indisponível</p>
                                        <Button className="w-full h-12 rounded-xl font-bold" onClick={() => handleDownload(previewFile)}><Download className="w-4 h-4 mr-2" /> Baixar</Button>
                                    </div>
                                )}
                            </>
                        )}
                    </div>
                </DialogContent>
            </Dialog>
        </Card>
    )
}

// ================================================================
// PROCESSOS PANEL
// ================================================================
interface ProcessosPanelProps {
    servicoId: string
    processos: any[]
    processoComentarios: any[]
    processoAnexos: any[]
    currentUserId?: string
    router: any
}

function ProcessosPanel({ 
    servicoId, processos, processoComentarios, processoAnexos, 
    currentUserId, router 
}: ProcessosPanelProps) {
    const [novoNumero, setNovoNumero] = useState("")
    const [novaDescricao, setNovaDescricao] = useState("")
    const [isAdding, setIsAdding] = useState(false)
    const [showForm, setShowForm] = useState(false)

    const handleAdd = async () => {
        if (!novoNumero.trim()) { toast.error("Informe o número do processo"); return }
        setIsAdding(true)
        const res = await addProcesso({ servico_id: servicoId, numero_processo: novoNumero, descricao: novaDescricao })
        if (res.success) {
            toast.success("Processo cadastrado!")
            setNovoNumero(""); setNovaDescricao(""); setShowForm(false)
            router.refresh()
        } else {
            toast.error("Erro: " + res.error)
        }
        setIsAdding(false)
    }

    const handleDelete = async (id: string) => {
        if (!confirm("Remover este processo?")) return
        const res = await deleteProcesso(id)
        if (res.success) { toast.success("Processo removido"); router.refresh() }
    }

    return (
        <div className="space-y-6">
            {/* Header Banner */}
            <div className="flex items-center justify-between p-4 bg-gradient-to-r from-amber-50 to-orange-50 dark:from-amber-950/30 dark:to-orange-950/20 rounded-xl border border-amber-200/50">
                <div className="flex items-center gap-3">
                    <div className="p-2 bg-amber-600 rounded-lg text-white shadow-md">
                        <Scale className="w-5 h-5" />
                    </div>
                    <div>
                        <p className="font-black text-sm uppercase tracking-tight">Processos Judiciais – TJSP</p>
                        <p className="text-[11px] text-muted-foreground">Dados consultados via API Pública Datajud (CNJ) em tempo real</p>
                    </div>
                </div>
                <Button onClick={() => setShowForm(v => !v)} size="sm" className="bg-amber-600 hover:bg-amber-700 text-white font-bold px-4 h-9 rounded-lg shadow-md gap-2">
                    <Plus className="w-4 h-4" /> Novo Processo
                </Button>
            </div>

            {/* Form */}
            {showForm && (
                <div className="p-5 border-2 border-amber-200 rounded-xl bg-amber-50/30 dark:bg-amber-950/10 space-y-4 animate-in slide-in-from-top-4 duration-200">
                    <p className="text-sm font-bold uppercase tracking-tight text-amber-800 dark:text-amber-300">Cadastrar Processo Judicial</p>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                        <div>
                            <label className="text-xs font-bold uppercase tracking-wide text-muted-foreground block mb-1.5">Número do Processo *</label>
                            <Input 
                                value={novoNumero} 
                                onChange={e => setNovoNumero(e.target.value)} 
                                placeholder="0000000-00.0000.8.26.0000"
                                className="font-mono text-sm h-10"
                            />
                            <p className="text-[10px] text-muted-foreground mt-1">Formato CNJ: NNNNNNN-DD.AAAA.J.TT.OOOO</p>
                        </div>
                        <div>
                            <label className="text-xs font-bold uppercase tracking-wide text-muted-foreground block mb-1.5">Descrição / Referência</label>
                            <Input 
                                value={novaDescricao} 
                                onChange={e => setNovaDescricao(e.target.value)} 
                                placeholder="Ex.: Imóvel Rua das Flores, 123"
                                className="text-sm h-10"
                            />
                        </div>
                    </div>
                    <div className="flex gap-2 justify-end">
                        <Button variant="outline" size="sm" onClick={() => setShowForm(false)} className="h-9 px-4">Cancelar</Button>
                        <Button size="sm" onClick={handleAdd} disabled={isAdding} className="bg-amber-600 hover:bg-amber-700 text-white h-9 px-6 font-bold gap-2">
                            {isAdding ? <Loader2 className="w-4 h-4 animate-spin" /> : <CheckCircle2 className="w-4 h-4" />}
                            Cadastrar
                        </Button>
                    </div>
                </div>
            )}

            {/* Lista de Processos */}
            {processos.length === 0 ? (
                <div className="text-center py-16 border-2 border-dashed rounded-2xl flex flex-col items-center gap-4">
                    <Scale className="w-12 h-12 text-amber-200" />
                    <div>
                        <p className="font-bold text-muted-foreground">Nenhum processo cadastrado</p>
                        <p className="text-sm text-muted-foreground/60 mt-1">Adicione o número CNJ de cada processo desta ação</p>
                    </div>
                </div>
            ) : (
                <div className="space-y-4">
                    {processos.map(proc => (
                        <ProcessoCard 
                            key={proc.id} 
                            processo={proc} 
                            comentarios={processoComentarios.filter(c => c.processo_id === proc.id)}
                            anexos={processoAnexos.filter(a => a.processo_id === proc.id)}
                            currentUserId={currentUserId}
                            onDelete={handleDelete} 
                            router={router}
                        />
                    ))}
                </div>
            )}
        </div>
    )
}

// ================================================================
// PROCESSO CARD WITH LAZY-LOADED DATAJUD DATA + INTERNAL NOTES
// ================================================================
interface ProcessoCardProps {
    processo: any
    comentarios: any[]
    anexos: any[]
    currentUserId?: string
    onDelete: (id: string) => void
    router: any
}

function ProcessoCard({ processo, comentarios, anexos, currentUserId, onDelete, router }: ProcessoCardProps) {
    const [isExpanded, setIsExpanded] = useState(false)
    const [isLoading, setIsLoading] = useState(false)
    const [datajudData, setDatajudData] = useState<any>(null)
    const [error, setError] = useState<string | null>(null)
    const [hasLoaded, setHasLoaded] = useState(false)

    // Interaction states
    const [novoComentario, setNovoComentario] = useState("")
    const [pendingAnexos, setPendingAnexos] = useState<File[]>([])
    const [isSubmitting, setIsSubmitting] = useState(false)
    const [isUploading, setIsUploading] = useState(false)
    const [uploadProgress, setUploadProgress] = useState(0)
    const procFileInputRef = useRef<HTMLInputElement>(null)
    const procCommentFileInputRef = useRef<HTMLInputElement>(null)

    const fetchDatajud = useCallback(async () => {
        if (hasLoaded || isLoading) return
        setIsLoading(true)
        setError(null)
        try {
            const { data: sessionData } = await supabase.auth.getSession()
            const accessToken = sessionData?.session?.access_token
            
            const res = await fetch(`${SUPABASE_URL}/functions/v1/datajud-proxy`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${accessToken}`,
                    'apikey': SUPABASE_ANON_KEY,
                },
                body: JSON.stringify({ numeroProcesso: processo.numero_processo })
            })

            if (!res.ok) {
                const err = await res.json().catch(() => ({ error: 'Erro desconhecido' }))
                throw new Error(err.error || `HTTP ${res.status}`)
            }

            const json = await res.json()
            setDatajudData(json)
            setHasLoaded(true)
        } catch (err: any) {
            setError(err.message || 'Falha ao consultar Datajud')
        } finally {
            setIsLoading(false)
        }
    }, [processo.numero_processo, hasLoaded, isLoading])

    const handleExpand = () => {
        const next = !isExpanded
        setIsExpanded(next)
        if (next && !hasLoaded) fetchDatajud()
    }

    const handleRefresh = (e: React.MouseEvent) => {
        e.stopPropagation()
        setHasLoaded(false)
        setDatajudData(null)
        setError(null)
        fetchDatajud()
    }

    // Interaction handlers
    const handleAddComentario = async () => {
        if (!novoComentario.trim() && pendingAnexos.length === 0) return
        setIsSubmitting(true)
        try {
            const uploadedAnexos: any[] = []
            for (const file of pendingAnexos) {
                const fileExt = file.name.split('.').pop()
                const fileName = `processos/${processo.id}/interacoes/comment_${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage
                    .from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                uploadedAnexos.push({ 
                    nome_arquivo: file.name, 
                    caminho_arquivo: uploadData.path, 
                    tamanho_arquivo: file.size, 
                    tipo_arquivo: file.type 
                })
            }
            const res = await addProcessoComentario({ 
                processo_id: processo.id, 
                conteudo: novoComentario, 
                anexos: uploadedAnexos 
            })
            if (res.success) { 
                setNovoComentario(""); 
                setPendingAnexos([]); 
                toast.success("Nota registrada"); 
                router.refresh() 
            }
        } catch (error: any) {
            toast.error("Erro: " + error.message)
        } finally { setIsSubmitting(false) }
    }

    const handleDeleteComentario = async (id: string) => {
        if (!confirm("Excluir esta nota?")) return
        const res = await deleteProcessoComentario(id)
        if (res.success) { toast.success("Nota excluída"); router.refresh() }
    }

    const handleFileUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
        const files = Array.from(e.target.files || [])
        if (files.length === 0) return
        setIsUploading(true); setUploadProgress(10)
        try {
            let completed = 0
            for (const file of files) {
                if (file.size > 20 * 1024 * 1024) { toast.error(`Arquivo ${file.name} ignorado (máx. 20MB)`); continue }
                const fileExt = file.name.split('.').pop()
                const fileName = `processos/${processo.id}/documentos/${Date.now()}_${Math.random().toString(36).substr(2, 9)}.${fileExt}`
                const { data: uploadData, error: uploadError } = await supabase.storage.from('servico-anexos').upload(fileName, file)
                if (uploadError) throw uploadError
                await addProcessoAnexo({ 
                    processo_id: processo.id, 
                    nome_arquivo: file.name, 
                    caminho_arquivo: uploadData.path, 
                    tamanho_arquivo: file.size, 
                    tipo_arquivo: file.type 
                })
                completed++
                setUploadProgress(10 + (completed / files.length) * 90)
            }
            toast.success(`${completed} arquivo(s) carregado(s)`); router.refresh()
        } catch (error: any) {
            toast.error("Erro no upload: " + error.message)
        } finally { setIsUploading(false); setUploadProgress(0); if (procFileInputRef.current) procFileInputRef.current.value = "" }
    }

    const handleDeleteAnexo = async (id: string, path: string) => {
        if (!confirm("Excluir este arquivo?")) return
        const res = await deleteProcessoAnexo(id, path)
        if (res.success) { toast.success("Arquivo removido"); router.refresh() }
    }

    const processoData = datajudData?.processos?.[0] ?? null
    const total = datajudData?.total ?? 0

    // Tab content logic for internal notes
    const getFileTypeIcon = (filename: string, type: string) => {
        const ext = filename?.split('.').pop()?.toLowerCase() || ''
        if (type?.startsWith('image/')) return <FileImage className="w-4 h-4" />
        if (ext === 'pdf') return <FileSearch className="w-4 h-4" />
        if (['xlsx', 'xls', 'csv'].includes(ext)) return <FileSpreadsheet className="w-4 h-4" />
        return <FileText className="w-4 h-4" />
    }

    const handleDownload = async (path: string, name: string) => {
        const url = await getSignedUrl(path)
        if (url) {
            const link = document.createElement('a')
            link.href = url
            link.download = name
            document.body.appendChild(link)
            link.click()
            document.body.removeChild(link)
        }
    }

    return (
        <div className="border-2 border-amber-100 dark:border-amber-900/20 rounded-xl overflow-hidden shadow-sm hover:shadow-md transition-all">
            {/* Card Header */}
            <div 
                className="flex items-center justify-between p-4 cursor-pointer bg-background hover:bg-amber-50/30 dark:hover:bg-amber-950/10 transition-colors select-none"
                onClick={handleExpand}
            >
                <div className="flex items-center gap-4">
                    <div className="p-2.5 bg-amber-100 dark:bg-amber-900/30 rounded-lg text-amber-700 dark:text-amber-400">
                        <Gavel className="w-5 h-5" />
                    </div>
                    <div className="flex flex-col gap-0.5">
                        <div className="flex items-center gap-2">
                            <span className="font-mono font-bold text-sm tracking-tight">{processo.numero_processo}</span>
                            <Badge variant="outline" className={`text-[10px] px-2 py-0 h-5 border-none font-bold ${processo.status_local === 'Ativo' ? 'bg-green-100 text-green-700' : 'bg-muted text-muted-foreground'}`}>
                                {processo.status_local}
                            </Badge>
                        </div>
                        {processo.descricao && <span className="text-xs text-muted-foreground">{processo.descricao}</span>}
                    </div>
                </div>
                <div className="flex items-center gap-2">
                    <div className="hidden sm:flex items-center gap-1.5 mr-2">
                        <Badge variant="secondary" className="gap-1 px-1.5 h-6 text-[10px] bg-muted/50 border-none font-medium">
                            <MessageSquare className="w-3 h-3 opacity-50" /> {comentarios.length}
                        </Badge>
                        <Badge variant="secondary" className="gap-1 px-1.5 h-6 text-[10px] bg-muted/50 border-none font-medium">
                            <Paperclip className="w-3 h-3 opacity-50" /> {anexos.length}
                        </Badge>
                    </div>
                    {isExpanded && (
                        <button onClick={handleRefresh} title="Atualizar dados do Datajud" className="p-1.5 rounded-lg hover:bg-amber-100 text-muted-foreground hover:text-amber-700 transition-colors">
                            <RefreshCw className={`w-4 h-4 ${isLoading ? 'animate-spin' : ''}`} />
                        </button>
                    )}
                    <button onClick={(e) => { e.stopPropagation(); onDelete(processo.id) }} className="p-1.5 rounded-lg hover:bg-red-100 text-muted-foreground hover:text-red-600 transition-colors">
                        <Trash2 className="w-4 h-4" />
                    </button>
                    <div className="p-1.5 text-muted-foreground">
                        {isExpanded ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                    </div>
                </div>
            </div>

            {/* Drilldown Content */}
            {isExpanded && (
                <div className="border-t bg-gradient-to-b from-amber-50/30 to-background dark:from-amber-950/10 animate-in slide-in-from-top-2 duration-200">
                    <Tabs defaultValue="datajud" className="w-full">
                        <div className="px-5 pt-4">
                            <TabsList className="bg-muted/40 p-1 h-8 rounded-lg">
                                <TabsTrigger value="datajud" className="text-[10px] uppercase font-bold px-3 py-1 gap-1.5">
                                    <Cloud className="w-3 h-3" /> Acompanhamento CNJ
                                </TabsTrigger>
                                <TabsTrigger value="internal" className="text-[10px] uppercase font-bold px-3 py-1 gap-1.5">
                                    <History className="w-3 h-3" /> Notas e Documentos
                                </TabsTrigger>
                            </TabsList>
                        </div>

                        {/* TAB 1: DATAJUD */}
                        <TabsContent value="datajud" className="m-0 focus-visible:ring-0">
                            {isLoading && (
                                <div className="flex flex-col items-center justify-center py-12 gap-4">
                                    <Loader2 className="w-8 h-8 animate-spin text-amber-600" />
                                    <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">Consultando Datajud...</p>
                                </div>
                            )}

                            {error && !isLoading && (
                                <div className="p-8 flex flex-col items-center gap-4 text-center">
                                    <AlertCircle className="w-10 h-10 text-red-500 opacity-50" />
                                    <div>
                                        <p className="font-bold text-red-700">Erro na API Datajud</p>
                                        <p className="text-xs text-muted-foreground pr-2">{error}</p>
                                    </div>
                                    <Button size="sm" variant="outline" onClick={() => { setHasLoaded(false); fetchDatajud() }} className="h-8 text-[10px] font-bold uppercase tracking-tight gap-2">
                                        <RefreshCw className="w-3 h-3" /> Tentar Novamente
                                    </Button>
                                </div>
                            )}

                            {!isLoading && !error && datajudData && (
                                <div className="p-5 space-y-5">
                                    {/* Status da consulta */}
                                    <div className="flex items-center justify-between">
                                        <div className="flex items-center gap-2">
                                            <CheckCircle2 className="w-3.5 h-3.5 text-green-500" />
                                            <span className="text-[10px] font-bold text-muted-foreground uppercase tracking-widest italic">
                                                {total === 0 ? 'Sem registros no Datajud' : `Sincronizado via Datajud TJSP`}
                                            </span>
                                        </div>
                                        <a 
                                            href={`https://cnj.jus.br/pesquisa-judgamento-e-execucao-fiscal/?numeroDoProcesso=${processo.numero_processo}`} 
                                            target="_blank" 
                                            rel="noopener noreferrer"
                                            className="flex items-center gap-1.5 text-[10px] font-bold text-amber-700 uppercase tracking-tighter hover:underline"
                                            onClick={e => e.stopPropagation()}
                                        >
                                            <ExternalLink className="w-3 h-3" /> Ver no Portal CNJ
                                        </a>
                                    </div>

                                    {total === 0 ? (
                                        <div className="p-8 border-2 border-dashed rounded-xl flex flex-col items-center gap-3 text-center">
                                            <Info className="w-8 h-8 text-amber-200" />
                                            <p className="text-xs text-muted-foreground font-medium italic">Processo não encontrado na base pública.</p>
                                        </div>
                                    ) : (
                                        <>
                                            <div className="grid grid-cols-2 md:grid-cols-3 gap-2">
                                                <InfoCard icon={<Scale className="w-3.5 h-3.5" />} label="Classe" value={processoData.classe?.nome || '---'} />
                                                <InfoCard icon={<Gavel className="w-3.5 h-3.5" />} label="Comarca" value={processoData.orgaoJulgador?.nome || '---'} />
                                                <InfoCard icon={<DollarSign className="w-3.5 h-3.5" />} label="Valor Causa" value={processoData.valor ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(processoData.valor) : '---'} />
                                                <InfoCard icon={<Calendar className="w-3.5 h-3.5" />} label="Ajuizamento" value={processoData.dataAjuizamento ? format(new Date(processoData.dataAjuizamento), 'dd/MM/yyyy') : '---'} />
                                                <InfoCard icon={<Clock className="w-3.5 h-3.5" />} label="Última Mov." value={processoData.dataHoraUltimaAtualizacao ? format(new Date(processoData.dataHoraUltimaAtualizacao), 'dd/MM/yyyy HH:mm') : '---'} />
                                                <InfoCard icon={<Maximize2 className="w-3.5 h-3.5" />} label="Grau" value={processoData.grau || '---'} />
                                            </div>

                                            {processoData.movimentos?.length > 0 && (
                                                <div className="bg-background/40 p-4 rounded-xl border">
                                                    <p className="text-[10px] font-black uppercase text-muted-foreground tracking-widest mb-3 flex items-center gap-2">
                                                        <History className="w-3.5 h-3.5" /> Últimos Andamentos
                                                    </p>
                                                    <div className="space-y-1.5 max-h-[300px] overflow-y-auto pr-2 custom-scrollbar">
                                                        {[...processoData.movimentos]
                                                            .sort((a: any, b: any) => new Date(b.dataHora).getTime() - new Date(a.dataHora).getTime())
                                                            .slice(0, 5)
                                                            .map((mov: any, i: number) => (
                                                                <div key={i} className="flex gap-3 p-2.5 rounded-lg hover:bg-background transition-colors group/mov border border-transparent hover:border-border">
                                                                    <div className="min-w-[42px] text-center pt-0.5">
                                                                        <span className="text-[9px] font-black text-amber-600 block leading-tight">
                                                                            {mov.dataHora ? format(new Date(mov.dataHora), 'dd/MM') : '---'}
                                                                        </span>
                                                                        <span className="text-[8px] text-muted-foreground font-medium italic">
                                                                            {mov.dataHora ? format(new Date(mov.dataHora), 'HH:mm') : ''}
                                                                        </span>
                                                                    </div>
                                                                    <div className="flex-1">
                                                                        <p className="text-[11px] font-bold leading-tight line-clamp-2">{mov.nome || mov.complementosTabelados?.[0]?.nome || '---'}</p>
                                                                    </div>
                                                                </div>
                                                            ))
                                                        }
                                                    </div>
                                                </div>
                                            )}
                                        </>
                                    )}
                                </div>
                            )}
                        </TabsContent>

                        {/* TAB 2: INTERNAL NOTES & DOCS */}
                        <TabsContent value="internal" className="m-0 focus-visible:ring-0">
                            <div className="p-5 space-y-6">
                                {/* Notas Timeline */}
                                <div className="space-y-4">
                                    <div className="flex items-center gap-2 mb-2">
                                        <MessageSquare className="w-3.5 h-3.5 text-amber-600" />
                                        <h4 className="text-[10px] font-black uppercase tracking-widest text-muted-foreground">Notas da Equipe</h4>
                                    </div>
                                    
                                    <div className="space-y-3 max-h-[250px] overflow-y-auto pr-2 custom-scrollbar">
                                        {comentarios.map((c: any) => {
                                            const cAnexos = anexos.filter(a => a.comentario_id === c.id)
                                            return (
                                                <div key={c.id} className="bg-background rounded-lg border p-3 shadow-sm group/note">
                                                    <div className="flex justify-between items-center mb-1.5">
                                                        <div className="flex items-center gap-2">
                                                            <div className="w-5 h-5 rounded-full bg-amber-100 flex items-center justify-center text-[9px] font-black text-amber-700">
                                                                {c.user?.full_name?.substring(0, 2).toUpperCase() || 'U'}
                                                            </div>
                                                            <span className="text-[10px] font-bold truncate max-w-[120px]">{c.user?.full_name || 'Usuário'}</span>
                                                            <span className="text-[9px] text-muted-foreground italic">{format(new Date(c.created_at), 'dd/MM HH:mm')}</span>
                                                        </div>
                                                        {currentUserId === c.perfil_id && (
                                                            <button onClick={() => handleDeleteComentario(c.id)} className="opacity-0 group-hover/note:opacity-100 p-1 hover:text-red-600 transition-all">
                                                                <Trash2 className="w-3 h-3" />
                                                            </button>
                                                        )}
                                                    </div>
                                                    <p className="text-xs text-foreground/80 leading-relaxed whitespace-pre-wrap">{c.conteudo}</p>
                                                    {cAnexos.length > 0 && (
                                                        <div className="mt-2 flex flex-wrap gap-1">
                                                            {cAnexos.map((ca: any) => (
                                                                <button key={ca.id} onClick={() => handleDownload(ca.caminho_arquivo, ca.nome_arquivo)} className="flex items-center gap-1.5 px-2 py-1 bg-muted/30 rounded text-[9px] font-bold hover:bg-muted transition-all">
                                                                    <Paperclip className="w-2.5 h-2.5" /> {ca.nome_arquivo}
                                                                </button>
                                                            ))}
                                                        </div>
                                                    )}
                                                </div>
                                            )
                                        })}
                                        {comentarios.length === 0 && (
                                            <p className="text-[11px] text-muted-foreground italic text-center py-4">Nenhuma nota interna ainda.</p>
                                        )}
                                    </div>

                                    {/* Input Nota */}
                                    <div className="bg-muted/20 p-3 rounded-xl border border-dashed hover:border-solid transition-all mt-4">
                                        <Textarea 
                                            value={novoComentario} 
                                            onChange={e => setNovoComentario(e.target.value)} 
                                            placeholder="Nova anotação processual..." 
                                            className="min-h-[60px] text-xs bg-background border-none shadow-inner mb-2 resize-none" 
                                        />
                                        <div className="flex justify-between items-center">
                                            <div className="flex items-center gap-2">
                                                <Button variant="ghost" size="sm" onClick={() => procCommentFileInputRef.current?.click()} className="h-7 px-2 text-[10px] font-bold gap-1.5">
                                                    <Paperclip className="w-3 h-3" /> Anexar
                                                </Button>
                                                <input type="file" ref={procCommentFileInputRef} className="hidden" multiple onChange={(e) => { setPendingAnexos(prev => [...prev, ...Array.from(e.target.files || [])]); if (procCommentFileInputRef.current) procCommentFileInputRef.current.value = "" }} />
                                                <div className="flex gap-1 overflow-x-auto max-w-[200px]">
                                                    {pendingAnexos.map((f, i) => (
                                                        <div key={i} className="flex items-center gap-1 bg-background px-1.5 py-0.5 rounded border text-[8px] font-bold">
                                                            <span className="truncate max-w-[60px]">{f.name}</span>
                                                            <button onClick={() => setPendingAnexos(prev => prev.filter((_, idx) => idx !== i))}><X className="w-2 h-2 text-red-500" /></button>
                                                        </div>
                                                    ))}
                                                </div>
                                            </div>
                                            <Button size="sm" onClick={handleAddComentario} disabled={isSubmitting || (!novoComentario.trim() && pendingAnexos.length === 0)} className="h-7 px-4 rounded-lg bg-amber-600 text-[10px] font-black uppercase text-white tracking-widest gap-2">
                                                {isSubmitting ? <Loader2 className="w-3 h-3 animate-spin" /> : <Send className="w-3 h-3" />} Salvar nota
                                            </Button>
                                        </div>
                                    </div>
                                </div>

                                {/* Repositório de Documentos do Processo */}
                                <div className="space-y-4 pt-4 border-t border-amber-100">
                                    <div className="flex items-center justify-between">
                                        <div className="flex items-center gap-2">
                                            <Paperclip className="w-3.5 h-3.5 text-amber-600" />
                                            <h4 className="text-[10px] font-black uppercase tracking-widest text-muted-foreground">Repositório de Arquivos</h4>
                                        </div>
                                        <Button variant="outline" size="sm" onClick={() => procFileInputRef.current?.click()} disabled={isUploading} className="h-7 px-3 text-[10px] font-bold uppercase gap-2 border-amber-200">
                                            {isUploading ? <Loader2 className="w-3 h-3 animate-spin" /> : <Plus className="w-3 h-3" />} Subir Doc
                                        </Button>
                                        <input type="file" ref={procFileInputRef} className="hidden" multiple onChange={handleFileUpload} />
                                    </div>

                                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                                        {anexos.filter(a => !a.comentario_id).map((anexo: any) => (
                                            <div key={anexo.id} className="bg-background border rounded-lg p-2.5 flex items-center gap-3 group/doc shadow-xs">
                                                <div className="p-1.5 bg-muted/30 rounded">{getFileTypeIcon(anexo.nome_arquivo, anexo.tipo_arquivo || '')}</div>
                                                <div className="flex-1 min-w-0">
                                                    <p className="text-[11px] font-bold truncate pr-6" title={anexo.nome_arquivo}>{anexo.nome_arquivo}</p>
                                                    <p className="text-[9px] text-muted-foreground italic">{format(new Date(anexo.created_at), 'dd/MM/yyyy')}</p>
                                                </div>
                                                <div className="flex gap-1 opacity-0 group-hover/doc:opacity-100 transition-opacity">
                                                    <button onClick={() => handleDownload(anexo.caminho_arquivo, anexo.nome_arquivo)} className="p-1 hover:text-amber-600"><Download className="w-3.5 h-3.5" /></button>
                                                    <button onClick={() => handleDeleteAnexo(anexo.id, anexo.caminho_arquivo)} className="p-1 hover:text-red-600"><Trash2 className="w-3.5 h-3.5" /></button>
                                                </div>
                                            </div>
                                        ))}
                                        {anexos.filter(a => !a.comentario_id).length === 0 && (
                                            <div className="col-span-full py-6 bg-muted/10 rounded-xl border-2 border-dashed flex flex-col items-center justify-center opacity-40">
                                                <Paperclip className="w-6 h-6 mb-2" />
                                                <p className="text-[10px] font-bold uppercase tracking-tighter">Nenhum documento isolado</p>
                                            </div>
                                        )}
                                    </div>
                                </div>
                            </div>
                        </TabsContent>
                    </Tabs>
                </div>
            )}
        </div>
    )
}

function InfoCard({ icon, label, value }: { icon: any, label: string, value: string }) {
    return (
        <div className="p-2.5 rounded-lg border bg-background/50 hover:bg-background transition-all">
            <div className="flex items-center gap-1.5 mb-1 text-amber-600/70">
                {icon}
                <span className="text-[9px] font-black uppercase tracking-widest text-muted-foreground/60">{label}</span>
            </div>
            <p className="text-[11px] font-black truncate leading-tight" title={value}>{value}</p>
        </div>
    )
}
