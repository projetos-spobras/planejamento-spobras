"use client"

import { useState, useTransition } from "react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Upload, Trash2, Plus, Image as ImageIcon, Loader2, Calendar, User, Edit2, Hammer } from "lucide-react"
import { toast } from "sonner"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogFooter,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
} from "@/components/ui/dialog"
import { addEmpreendimentoAnexo, deleteEmpreendimentoAnexo, editEmpreendimentoAnexo } from "@/app/actions/empreendimento-anexos"
import { supabase } from "@/lib/supabase"

interface Anexo {
    id: string
    titulo: string
    numero: number
    caminho_arquivo: string
    tipo_arquivo: string
    created_at: string
    servico_id?: string | null
    updated_at?: string | null
    perfil: {
        id: string
        full_name: string | null
    } | null
    updated_by_perfil?: { full_name: string | null } | null
    servico?: { id: string, nome: string } | null
}

interface AnexosTabContentProps {
    anexos: Anexo[]
    empreendimentoId: string
    servicos: { id: string, descricao: string }[]
}

export function AnexosTabContent({ anexos, empreendimentoId, servicos }: AnexosTabContentProps) {
    const [isUploadOpen, setIsUploadOpen] = useState(false)
    const [isEditOpen, setIsEditOpen] = useState(false)
    const [editAnexo, setEditAnexo] = useState<Anexo | null>(null)
    const [isPending, startTransition] = useTransition()
    const [uploading, setUploading] = useState(false)

    // Form states
    const [titulo, setTitulo] = useState("")
    const [file, setFile] = useState<File | null>(null)
    const [servicoIdStr, setServicoIdStr] = useState<string>("none")

    const handleUpload = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!file || !titulo) {
            toast.error("Por favor, preencha o título e selecione uma imagem.")
            return
        }

        setUploading(true)
        const formData = new FormData()
        formData.append("id", empreendimentoId)
        formData.append("titulo", titulo)
        formData.append("file", file)
        if (servicoIdStr !== "none") {
            formData.append("servico_id", servicoIdStr)
        }

        try {
            const result = await addEmpreendimentoAnexo(formData)
            if (result.success) {
                toast.success("Anexo enviado com sucesso!")
                setIsUploadOpen(false)
                setTitulo("")
                setFile(null)
                setServicoIdStr("none")
            } else {
                toast.error(result.error || "Erro ao enviar anexo")
            }
        } catch (error) {
            toast.error("Erro inesperado ao realizar upload")
        } finally {
            setUploading(false)
        }
    }

    const handleEditSave = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!editAnexo || !titulo) {
            toast.error("O título é obrigatório.")
            return
        }
        
        setUploading(true)
        const sId = servicoIdStr !== "none" ? servicoIdStr : null
        
        try {
            const result = await editEmpreendimentoAnexo(editAnexo.id, empreendimentoId, titulo, sId)
            if (result.success) {
                toast.success("Anexo atualizado com sucesso!")
                setIsEditOpen(false)
                setEditAnexo(null)
            } else {
                toast.error(result.error || "Erro ao editar anexo")
            }
        } catch (error) {
            toast.error("Erro inesperado ao salvar edição")
        } finally {
            setUploading(false)
        }
    }

    const openEditForm = (anexo: Anexo) => {
        setEditAnexo(anexo)
        setTitulo(anexo.titulo)
        setServicoIdStr(anexo.servico_id || "none")
        setIsEditOpen(true)
    }

    const handleDelete = async (id: string, path: string) => {
        if (!confirm("Tem certeza que deseja excluir este anexo?")) return

        startTransition(async () => {
            const result = await deleteEmpreendimentoAnexo(id, path, empreendimentoId)
            if (result.success) {
                toast.success("Anexo removido")
            } else {
                toast.error("Erro ao remover anexo: " + result.error)
            }
        })
    }

    const getPublicUrl = (path: string) => {
        const { data } = supabase.storage.from("empreendimento-anexos").getPublicUrl(path)
        return data.publicUrl
    }

    // Agrupar anexos por Mês/Ano
    const groupedAnexos = anexos.reduce((acc, anexo) => {
        const monthYear = format(new Date(anexo.created_at), "MMMM 'de' yyyy", { locale: ptBR })
        const capitalized = monthYear.charAt(0).toUpperCase() + monthYear.slice(1)
        if (!acc[capitalized]) {
            acc[capitalized] = []
        }
        acc[capitalized].push(anexo)
        return acc
    }, {} as Record<string, Anexo[]>)

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h3 className="text-lg font-medium">Anexos e Documentação Fotográfica</h3>
                    <p className="text-sm text-muted-foreground">
                        Visualize e gerencie as imagens deste empreendimento.
                    </p>
                </div>
                <Dialog open={isUploadOpen} onOpenChange={setIsUploadOpen}>
                    <DialogTrigger asChild>
                        <Button className="gap-2">
                            <Plus className="h-4 w-4" /> Novo Anexo
                        </Button>
                    </DialogTrigger>
                    <DialogContent className="sm:max-w-[425px]">
                        <form onSubmit={handleUpload}>
                            <DialogHeader>
                                <DialogTitle>Adicionar Anexo</DialogTitle>
                                <DialogDescription>
                                    A numeração será gerada automaticamente para a data de hoje.
                                </DialogDescription>
                            </DialogHeader>
                            <div className="grid gap-4 py-4">
                                <div className="grid gap-2">
                                    <Label htmlFor="titulo">Título da Imagem</Label>
                                    <Input
                                        id="titulo"
                                        placeholder="Ex: Fachada Principal"
                                        value={titulo}
                                        onChange={(e) => setTitulo(e.target.value)}
                                        required
                                    />
                                </div>
                                <div className="grid gap-2">
                                    <Label htmlFor="file">Imagem</Label>
                                    <div className="flex items-center justify-center w-full">
                                        <label
                                            htmlFor="file"
                                            className="flex flex-col items-center justify-center w-full h-32 border-2 border-dashed rounded-lg cursor-pointer bg-muted/50 hover:bg-muted border-muted-foreground/25"
                                        >
                                            <div className="flex flex-col items-center justify-center pt-5 pb-6">
                                                {file ? (
                                                    <div className="flex items-center gap-2 text-sm font-medium text-emerald-600">
                                                        <ImageIcon className="h-5 w-5" />
                                                        {file.name}
                                                    </div>
                                                ) : (
                                                    <>
                                                        <Upload className="w-8 h-8 mb-3 text-muted-foreground" />
                                                        <p className="mb-2 text-sm text-muted-foreground">
                                                            <span className="font-semibold">Clique para subir</span> ou arraste
                                                        </p>
                                                        <p className="text-xs text-muted-foreground">PNG, JPG ou WEBP</p>
                                                    </>
                                                )}
                                            </div>
                                            <input
                                                id="file"
                                                type="file"
                                                className="hidden"
                                                accept="image/*"
                                                onChange={(e) => setFile(e.target.files?.[0] || null)}
                                                required
                                            />
                                        </label>
                                    </div>
                                </div>
                                <div className="grid gap-2">
                                    <Label htmlFor="servico">Serviço Físico Associado (opcional)</Label>
                                    <Select value={servicoIdStr} onValueChange={setServicoIdStr}>
                                        <SelectTrigger id="servico">
                                            <SelectValue placeholder="Selecione um serviço" />
                                        </SelectTrigger>
                                        <SelectContent>
                                            <SelectItem value="none">Nenhum serviço</SelectItem>
                                            {servicos.map((s) => (
                                                <SelectItem key={s.id} value={s.id} className="text-sm">
                                                    {s.descricao}
                                                </SelectItem>
                                            ))}
                                        </SelectContent>
                                    </Select>
                                </div>
                            </div>
                            <DialogFooter>
                                <Button type="submit" disabled={uploading} className="w-full">
                                    {uploading ? (
                                        <>
                                            <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                                            Enviando...
                                        </>
                                    ) : (
                                        "Salvar Anexo"
                                    )}
                                </Button>
                            </DialogFooter>
                        </form>
                    </DialogContent>
                </Dialog>
            </div>

            {anexos.length === 0 ? (
                <div className="flex flex-col items-center justify-center py-24 border-2 border-dashed rounded-xl bg-muted/30">
                    <ImageIcon className="h-12 w-12 text-muted-foreground/50 mb-4" />
                    <h3 className="text-lg font-medium text-muted-foreground">Nenhum anexo encontrado</h3>
                    <p className="text-sm text-muted-foreground">Suba a primeira imagem deste empreendimento.</p>
                </div>
            ) : (
                <div className="space-y-10">
                    {Object.entries(groupedAnexos).map(([monthYear, groupAnexos]) => (
                        <div key={monthYear} className="space-y-4">
                            <h4 className="text-lg font-bold tracking-tight border-b border-muted-foreground/20 pb-2 text-primary">
                                {monthYear}
                            </h4>
                            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
                                {groupAnexos.map((anexo) => (
                                    <Card key={anexo.id} className="overflow-hidden group hover:shadow-lg transition-all border-muted/50">
                                        <div className="aspect-video relative overflow-hidden bg-muted">
                                            <img
                                                src={getPublicUrl(anexo.caminho_arquivo)}
                                                alt={anexo.titulo}
                                                className="object-cover w-full h-full cursor-zoom-in transition-transform duration-300 group-hover:scale-105"
                                                onClick={() => window.open(getPublicUrl(anexo.caminho_arquivo), "_blank")}
                                            />
                                            <div className="absolute top-2 left-2">
                                                <span className="bg-black/60 text-white text-[10px] uppercase font-bold px-2 py-0.5 rounded-full backdrop-blur-sm">
                                                    FOTO {anexo.numero}
                                                </span>
                                            </div>
                                        </div>
                                        <CardHeader className="p-4 pb-2">
                                            <CardTitle className="text-base font-semibold leading-tight line-clamp-1">
                                                {anexo.titulo}
                                            </CardTitle>
                                        </CardHeader>
                                        <CardContent className="p-4 pt-0 space-y-2">
                                            <div className="flex items-center gap-2 text-[11px] text-muted-foreground">
                                                <Calendar className="h-3 w-3" />
                                                {format(new Date(anexo.created_at), "dd/MM/yyyy 'às' HH:mm", { locale: ptBR })}
                                            </div>
                                            <div className="flex items-center gap-2 text-[11px] text-muted-foreground">
                                                <User className="h-3 w-3" />
                                                Por: {anexo.perfil?.full_name || "Sistema"}
                                            </div>
                                            {anexo.servico && (
                                                <div className="flex items-center gap-2 text-[11px] text-emerald-700 bg-emerald-50 px-1 py-0.5 rounded w-fit">
                                                    <Hammer className="h-3 w-3" />
                                                    <span className="font-semibold line-clamp-1 truncate" title={anexo.servico.nome}>{anexo.servico.nome}</span>
                                                </div>
                                            )}
                                        </CardContent>
                                        
                                        {anexo.updated_at && (
                                            <div className="px-4 pb-2 text-[9px] text-muted-foreground/70 italic">
                                                Editado por {anexo.updated_by_perfil?.full_name || "Desconhecido"} em {format(new Date(anexo.updated_at), "dd/MM/yyyy")}
                                            </div>
                                        )}

                                        <CardFooter className="p-2 pt-0 border-t flex flex-wrap justify-between">
                                            <Button
                                                variant="ghost"
                                                size="sm"
                                                className="text-muted-foreground hover:text-primary h-8 gap-1.5"
                                                onClick={() => openEditForm(anexo)}
                                                disabled={isPending}
                                            >
                                                <Edit2 className="h-3 w-3" />
                                                Editar
                                            </Button>
                                            <Button
                                                variant="ghost"
                                                size="sm"
                                                className="text-red-500 hover:text-red-700 hover:bg-red-50 h-8 gap-1.5"
                                                onClick={() => handleDelete(anexo.id, anexo.caminho_arquivo)}
                                                disabled={isPending}
                                            >
                                                <Trash2 className="h-3 w-3" />
                                                Excluir
                                            </Button>
                                        </CardFooter>
                                    </Card>
                                ))}
                            </div>
                        </div>
                    ))}
                </div>
            )}

            <Dialog open={isEditOpen} onOpenChange={setIsEditOpen}>
                <DialogContent className="sm:max-w-[425px]">
                    <form onSubmit={handleEditSave}>
                        <DialogHeader>
                            <DialogTitle>Editar Anexo</DialogTitle>
                            <DialogDescription>
                                Altere o nome da imagem ou associe-a a outro serviço.
                            </DialogDescription>
                        </DialogHeader>
                        <div className="grid gap-4 py-4">
                            <div className="grid gap-2">
                                <Label htmlFor="edit-titulo">Título da Imagem</Label>
                                <Input
                                    id="edit-titulo"
                                    value={titulo}
                                    onChange={(e) => setTitulo(e.target.value)}
                                    required
                                />
                            </div>
                            <div className="grid gap-2">
                                <Label htmlFor="edit-servico">Serviço Físico Associado (opcional)</Label>
                                <Select value={servicoIdStr} onValueChange={setServicoIdStr}>
                                    <SelectTrigger id="edit-servico">
                                        <SelectValue placeholder="Selecione um serviço" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        <SelectItem value="none">Nenhum serviço</SelectItem>
                                        {servicos.map((s) => (
                                            <SelectItem key={s.id} value={s.id} className="text-sm">
                                                {s.descricao}
                                            </SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                        </div>
                        <DialogFooter>
                            <Button type="button" variant="outline" onClick={() => setIsEditOpen(false)}>Cancelar</Button>
                            <Button type="submit" disabled={uploading}>
                                {uploading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : null}
                                Salvar Alterações
                            </Button>
                        </DialogFooter>
                    </form>
                </DialogContent>
            </Dialog>

        </div>
    )
}
