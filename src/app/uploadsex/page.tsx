"use client"

import { useState, useEffect, useRef } from "react"
import { 
  Upload, 
  FileText, 
  User, 
  Mail, 
  Building2, 
  Briefcase, 
  CheckCircle2, 
  ChevronDown, 
  Check, 
  Loader2, 
  X, 
  Image as ImageIcon, 
  Video, 
  File as FileIcon, 
  AlertCircle,
  Send
} from "lucide-react"
import { toast } from "sonner"
import Image from "next/image"

import { getEmpreendimentosExterno, getServicosAcompanhamentoExterno, submitUploadExterno } from "../actions/upload-externo"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Button } from "@/components/ui/button"

import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
} from "@/components/ui/command"
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover"
import { cn } from "@/lib/utils"

interface FileStaging {
  id: string
  file: File
  titulo: string
  servicoId: string
  preview: string | null
  status: 'pending' | 'uploading' | 'success' | 'error'
  error?: string
}

const MAX_FILE_SIZE = 50 * 1024 * 1024 // 50MB

export default function UploadExternoPage() {
  const [empreendimentos, setEmpreendimentos] = useState<any[]>([])
  const [servicos, setServicos] = useState<any[]>([])

  const [loadingInitial, setLoadingInitial] = useState(true)
  const [submitting, setSubmitting] = useState(false)
  const [success, setSuccess] = useState(false)

  // User Info State
  const [userName, setUserName] = useState("")
  const [userEmail, setUserEmail] = useState("")
  
  // Selection State
  const [selectedEmpreendimento, setSelectedEmpreendimento] = useState<string>("")
  const [selectedEmpreendimentoName, setSelectedEmpreendimentoName] = useState<string>("")
  const [openEmpreendimento, setOpenEmpreendimento] = useState(false)
  const [searchQuery, setSearchQuery] = useState("")

  // Files State
  const [stagedFiles, setStagedFiles] = useState<FileStaging[]>([])
  
  const fileInputRef = useRef<HTMLInputElement>(null)

  // Carregar lista inicial (top 50)
  useEffect(() => {
      const cachedName = localStorage.getItem("sid_upload_user_name")
      const cachedEmail = localStorage.getItem("sid_upload_user_email")
      if (cachedName) setUserName(cachedName)
      if (cachedEmail) setUserEmail(cachedEmail)

      async function loadInitial() {
          try {
              const emp = await getEmpreendimentosExterno()
              setEmpreendimentos(emp)
          } catch (error) {
              console.error(error)
          } finally {
              setLoadingInitial(false)
          }
      }
      loadInitial()
  }, [])

  // Removida busca debounced no servidor para usar a lista completa em memória (Performance Superior)


  useEffect(() => {
    if (!selectedEmpreendimento) {
      setServicos([])
      return
    }
    async function loadServicos() {
      try {
        const servs = await getServicosAcompanhamentoExterno(selectedEmpreendimento)
        setServicos(servs)
      } catch (error) {
        toast.error("Erro ao carregar serviços.")
      }
    }
    loadServicos()
  }, [selectedEmpreendimento])

  const generatePreview = async (file: File): Promise<string | null> => {
    if (file.type.startsWith('image/')) {
      return URL.createObjectURL(file)
    }
    
    if (file.type.startsWith('video/')) {
        return new Promise((resolve) => {
            const video = document.createElement('video');
            video.preload = 'metadata';
            video.src = URL.createObjectURL(file);
            video.muted = true;
            video.playsInline = true;
            
            video.onloadeddata = () => {
                video.currentTime = 0.5; // Seek a bit in
            };
            
            video.onseeked = () => {
                const canvas = document.createElement('canvas');
                canvas.width = video.videoWidth;
                canvas.height = video.videoHeight;
                const ctx = canvas.getContext('2d');
                ctx?.drawImage(video, 0, 0, canvas.width, canvas.height);
                const dataUrl = canvas.toDataURL('image/jpeg');
                URL.revokeObjectURL(video.src);
                resolve(dataUrl);
            };

            video.onerror = () => {
                URL.revokeObjectURL(video.src);
                resolve(null);
            };
        });
    }

    return null
  }

  const handleFilesAdded = async (newFiles: FileList | null) => {
    if (!newFiles) return

    const added: FileStaging[] = []
    for (let i = 0; i < newFiles.length; i++) {
      const file = newFiles[i]
      if (file.size > MAX_FILE_SIZE) {
        toast.error(`O arquivo ${file.name} excede o limite de 50MB.`)
        continue
      }

      const id = Math.random().toString(36).substring(2, 9)
      const preview = await generatePreview(file)
      
      added.push({
        id,
        file,
        titulo: file.name.split('.')[0],
        servicoId: "",
        preview,
        status: 'pending'
      })
    }

    setStagedFiles(prev => [...prev, ...added])
  }

  const removeFile = (id: string) => {
    setStagedFiles(prev => {
        const file = prev.find(f => f.id === id);
        if (file?.preview && file.preview.startsWith('blob:')) {
            URL.revokeObjectURL(file.preview);
        }
        return prev.filter(f => f.id !== id);
    })
  }

  const updateFileTitle = (id: string, titulo: string) => {
    setStagedFiles(prev => prev.map(f => f.id === id ? { ...f, titulo } : f))
  }

  const updateFileServico = (id: string, servicoId: string) => {
    setStagedFiles(prev => prev.map(f => f.id === id ? { ...f, servicoId } : f))
  }

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()

    if (!selectedEmpreendimento || !userName || !userEmail) {
      toast.error("Preencha as informações de identificação e selecione o empreendimento.")
      return
    }

    if (stagedFiles.length === 0) {
      toast.error("Adicione pelo menos um arquivo para enviar.")
      return
    }

    setSubmitting(true)
    
    // Save user info in cache
    localStorage.setItem("sid_upload_user_name", userName)
    localStorage.setItem("sid_upload_user_email", userEmail)

    let allSuccess = true

    for (const staged of stagedFiles) {
      if (staged.status === 'success') continue

      setStagedFiles(prev => prev.map(f => f.id === staged.id ? { ...f, status: 'uploading' } : f))

      const formData = new FormData()
      formData.append("empreendimento_id", selectedEmpreendimento)
      formData.append("titulo", staged.titulo)
      formData.append("file", staged.file)
      formData.append("uploaded_by_name", userName)
      formData.append("uploaded_by_email", userEmail)
      if (staged.servicoId) {
        formData.append("servico_id", staged.servicoId)
      }

      try {
        const result = await submitUploadExterno(formData)
        if (result.success) {
          setStagedFiles(prev => prev.map(f => f.id === staged.id ? { ...f, status: 'success' } : f))
        } else {
          allSuccess = false
          setStagedFiles(prev => prev.map(f => f.id === staged.id ? { ...f, status: 'error', error: result.error } : f))
        }
      } catch (err) {
        allSuccess = false
        setStagedFiles(prev => prev.map(f => f.id === staged.id ? { ...f, status: 'error', error: 'Falha de conexão' } : f))
      }
    }

    setSubmitting(false)
    if (allSuccess) {
      setSuccess(true)
    } else {
      toast.warning("Finalizado com falhas em alguns arquivos. Verifique a lista abaixo.")
    }
  }

  const getFileIcon = (file: File) => {
    if (file.type.startsWith('image/')) return <ImageIcon className="w-5 h-5 text-zinc-500" />
    if (file.type.startsWith('video/')) return <Video className="w-5 h-5 text-zinc-500" />
    return <FileIcon className="w-5 h-5 text-zinc-500" />
  }

  if (loadingInitial) {
    return (
      <div className="min-h-screen w-full flex items-center justify-center bg-zinc-50 dark:bg-zinc-950">
        <Loader2 className="w-10 h-10 animate-spin text-zinc-600 dark:text-zinc-400" />
      </div>
    )
  }

  if (success) {
    return (
      <div className="min-h-screen w-full flex items-center justify-center p-4 bg-zinc-50 dark:bg-zinc-950">
        <Card className="w-full max-w-lg shadow-xl border border-emerald-500/50 animate-in fade-in zoom-in duration-300">
          <CardContent className="pt-10 pb-8 text-center space-y-6">
            <div className="mx-auto w-20 h-20 bg-emerald-100/50 text-emerald-600 rounded-full flex items-center justify-center mb-6">
              <CheckCircle2 className="w-10 h-10" />
            </div>
            <h2 className="text-2xl font-bold text-zinc-900 dark:text-zinc-50">Upload Concluído!</h2>
            <p className="text-zinc-600 dark:text-zinc-400">
              Todos os arquivos foram processados e anexados aos registros do sistema.
            </p>
            <div className="pt-6">
              <Button onClick={() => {
                setSuccess(false)
                setStagedFiles([])
              }} variant="default" className="w-full bg-zinc-900 hover:bg-zinc-800 text-white dark:bg-zinc-100 dark:text-zinc-900 dark:hover:bg-zinc-200 h-12">
                Realizar Novamente
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="min-h-screen w-full bg-zinc-50 dark:bg-zinc-950 flex flex-col items-center py-8 px-4 md:py-12">
      
      {/* Header Area */}
      <div className="w-full max-w-5xl mb-8 flex flex-col md:flex-row md:items-center justify-between gap-6">
        <div className="space-y-4">
          <div className="flex flex-col md:flex-row md:items-center gap-4">
             <div className="flex items-center gap-3 bg-white dark:bg-zinc-900 border border-zinc-200 dark:border-zinc-800 p-3 rounded-lg shadow-sm w-fit">
                <div className="relative w-32 h-10">
                    <Image
                        src="/logo-prefeitura.png"
                        alt="Prefeitura de São Paulo"
                        fill
                        unoptimized
                        className="object-contain"
                    />
                </div>
                <div className="h-6 w-[1px] bg-border mx-1" />
                <div className="relative w-20 h-8">
                    <Image
                        src="/logo-spobras.png"
                        alt="SPObras"
                        fill
                        unoptimized
                        className="object-contain"
                    />
                </div>
            </div>
            <div className="flex flex-col">
                <span className="font-bold text-zinc-900 dark:text-zinc-100 tracking-tight text-lg">SID</span>
                <span className="text-zinc-500 dark:text-zinc-400 text-xs font-medium">Sistema Integrado de Dados</span>
            </div>
          </div>
          <div>
            <h1 className="text-3xl font-extrabold text-zinc-900 dark:text-zinc-50 tracking-tight">Envio Externo</h1>
            <p className="text-zinc-500 dark:text-zinc-400 max-w-xl text-sm md:text-base mt-2">
                Selecione o local e acrescente suas fotos, vídeos ou documentos sem limites.
            </p>
          </div>
        </div>
        
        {userName && (
            <div className="hidden md:flex items-center gap-3 bg-white dark:bg-zinc-900 border border-zinc-200 dark:border-zinc-800 p-3 rounded-lg shadow-sm mb-auto">

                <div className="w-10 h-10 rounded-full bg-zinc-100 dark:bg-zinc-800 border border-zinc-200 dark:border-zinc-700 flex items-center justify-center text-zinc-600 dark:text-zinc-400">
                    <User className="w-5 h-5" />
                </div>
                <div className="min-w-0">
                    <p className="text-xs font-semibold text-zinc-900 dark:text-zinc-100 truncate max-w-[150px]">{userName}</p>
                    <p className="text-[10px] text-zinc-500 dark:text-zinc-400 truncate max-w-[150px]">{userEmail}</p>
                </div>
            </div>
        )}
      </div>

      <main className="w-full max-w-5xl grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
        
        {/* Left Column */}
        <div className="lg:col-span-4 space-y-6">
            <Card className="border-zinc-200 dark:border-zinc-800 shadow-sm overflow-hidden bg-white dark:bg-zinc-900">
                <CardHeader className="bg-zinc-50/50 dark:bg-zinc-900 border-b dark:border-zinc-800 pb-4">
                    <div className="flex items-center gap-2">
                        <User className="w-4 h-4 text-zinc-600 dark:text-zinc-400" />
                        <CardTitle className="text-sm font-semibold">Identificação</CardTitle>
                    </div>
                </CardHeader>
                <CardContent className="pt-6 space-y-4">
                    <div className="space-y-2">
                        <Label className="text-xs uppercase tracking-wider text-zinc-500 font-bold">Nome Completo</Label>
                        <Input 
                            value={userName} 
                            onChange={(e) => setUserName(e.target.value)} 
                            placeholder="Seu nome"
                            className="bg-white dark:bg-zinc-950"
                        />
                    </div>
                    <div className="space-y-2">
                        <Label className="text-xs uppercase tracking-wider text-zinc-500 font-bold">Email Corporativo</Label>
                        <Input 
                            value={userEmail} 
                            onChange={(e) => setUserEmail(e.target.value)} 
                            placeholder="email@empresa.com.br"
                            type="email"
                            className="bg-white dark:bg-zinc-950"
                        />
                    </div>
                </CardContent>
            </Card>

            <Card className="border-zinc-200 dark:border-zinc-800 shadow-sm overflow-hidden bg-white dark:bg-zinc-900">
                <CardHeader className="bg-zinc-50/50 dark:bg-zinc-900 border-b dark:border-zinc-800 pb-4">
                    <div className="flex items-center gap-2">
                        <Building2 className="w-4 h-4 text-zinc-600 dark:text-zinc-400" />
                        <CardTitle className="text-sm font-semibold">Empreendimento Alvo</CardTitle>
                    </div>
                </CardHeader>
                <CardContent className="pt-6">
                    <div className="space-y-2">
                        <Label className="text-xs uppercase tracking-wider text-zinc-500 font-bold">Selecione o Local</Label>
                        <Popover open={openEmpreendimento} onOpenChange={setOpenEmpreendimento}>
                            <PopoverTrigger asChild>
                                <Button
                                variant="outline"
                                role="combobox"
                                className={cn(
                                    "w-full justify-between font-normal bg-white dark:bg-zinc-950 truncate",
                                    !selectedEmpreendimento && "text-muted-foreground"
                                )}
                                >
                                {selectedEmpreendimento
                                    ? selectedEmpreendimentoName || empreendimentos.find((emp) => emp.id === selectedEmpreendimento)?.nome || "Selecionado"
                                    : "Buscar empreendimento..."}
                                <ChevronDown className="ml-2 h-4 w-4 shrink-0 opacity-50" />
                                </Button>
                            </PopoverTrigger>
                        <PopoverContent className="w-[300px] p-0 shadow-lg border-zinc-200 dark:border-zinc-800" align="start">
                                <Command filter={(value, search) => {
                                    const normalize = (str: string) => str.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLowerCase()
                                    if (normalize(value).includes(normalize(search))) return 1
                                    return 0
                                }}>
                                <CommandInput 
                                    placeholder="Filtrar por nome ou código..." 
                                />
                                <CommandList className="max-h-[300px]">
                                    <CommandEmpty>Nenhum local encontrado.</CommandEmpty>


                                    <CommandGroup>
                                    {empreendimentos.map((emp) => (
                                        <CommandItem
                                        key={emp.id}
                                        value={`${emp.nome} ${emp.codigo || ''}`}
                                        onSelect={() => {
                                            setSelectedEmpreendimento(emp.id)
                                            setSelectedEmpreendimentoName(emp.nome || 'Sem Nome')
                                            setOpenEmpreendimento(false)
                                        }}
                                        className="text-sm flex flex-col items-start gap-1 py-2 cursor-pointer"
                                        >
                                            <span className="font-semibold text-zinc-900 dark:text-zinc-200">{emp.nome || 'Sem Nome'}</span>
                                            {emp.codigo && <span className="opacity-60 text-xs">{emp.codigo}</span>}
                                        </CommandItem>
                                    ))}
                                    </CommandGroup>
                                </CommandList>
                                </Command>
                            </PopoverContent>
                        </Popover>
                    </div>
                </CardContent>
            </Card>

            <Button 
                onClick={handleSubmit} 
                className="w-full h-12 bg-zinc-900 hover:bg-zinc-800 text-white dark:bg-zinc-100 dark:text-zinc-900 dark:hover:bg-zinc-200 shadow-lg text-md transition-all disabled:opacity-50"
                disabled={submitting || stagedFiles.length === 0}
            >
                {submitting ? (
                    <><Loader2 className="w-5 h-5 mr-2 animate-spin" /> Adicionando...</>
                ) : (
                    <><Send className="w-5 h-5 mr-2" /> Iniciar Upload Seguro</>
                )}
            </Button>
            
            <div className="flex items-start gap-3 p-4 bg-zinc-100 dark:bg-zinc-900 border border-zinc-200 dark:border-zinc-800 rounded-lg text-zinc-600 dark:text-zinc-400">
                <AlertCircle className="w-5 h-5 shrink-0 mt-0.5" />
                <p className="text-xs leading-tight">
                    Os dados informados serão memorizados e os anexos ficarão disponíveis de forma confidencial.
                </p>
            </div>
        </div>

        {/* Right Column: Upload Zone */}
        <div className="lg:col-span-8 space-y-6">
            <Card className="border-zinc-200 dark:border-zinc-800 shadow-sm bg-white dark:bg-zinc-900">
                <CardHeader className="pb-4">
                    <CardTitle className="text-lg">Arquivos para Anexo</CardTitle>
                    <CardDescription>
                        50MB MÁX. por arquivo (PNG, JPG, MP4, PDF, etc).
                    </CardDescription>
                </CardHeader>
                <CardContent className="space-y-6">
                    {/* Multi-Dropzone */}
                    <div 
                        onClick={() => fileInputRef.current?.click()}
                        onDragOver={(e) => { e.preventDefault(); e.currentTarget.classList.add('border-zinc-500', 'bg-zinc-100', 'dark:bg-zinc-800') }}
                        onDragLeave={(e) => { e.preventDefault(); e.currentTarget.classList.remove('border-zinc-500', 'bg-zinc-100', 'dark:bg-zinc-800') }}
                        onDrop={async (e) => {
                            e.preventDefault();
                            e.currentTarget.classList.remove('border-zinc-500', 'bg-zinc-100', 'dark:bg-zinc-800');
                            await handleFilesAdded(e.dataTransfer.files)
                        }}
                        className="group relative cursor-pointer flex flex-col items-center justify-center p-12 border-2 border-dashed border-zinc-300 dark:border-zinc-700 rounded-xl hover:border-zinc-400 dark:hover:border-zinc-600 hover:bg-zinc-50 dark:hover:bg-zinc-900/50 transition-all"
                    >
                        <input 
                            type="file" 
                            multiple 
                            ref={fileInputRef} 
                            className="hidden" 
                            onChange={(e) => handleFilesAdded(e.target.files)} 
                            accept="image/*,video/*,application/pdf,.doc,.docx,.xls,.xlsx"
                        />
                        <div className="w-16 h-16 rounded-full bg-zinc-100 dark:bg-zinc-800 group-hover:bg-zinc-200 dark:group-hover:bg-zinc-700 text-zinc-500 flex items-center justify-center transition-colors mb-4">
                            <Upload className="w-8 h-8" />
                        </div>
                        <p className="font-semibold text-zinc-800 dark:text-zinc-200">Arraste os arquivos para cá ou clique</p>
                    </div>

                    {/* Staging List */}
                    {stagedFiles.length > 0 && (
                        <div className="space-y-4 pt-4 animate-in fade-in duration-300">
                            <h3 className="text-sm font-semibold text-zinc-700 dark:text-zinc-300 flex items-center justify-between">
                                Selecionados ({stagedFiles.length})
                            </h3>
                            <div className="flex flex-col gap-3">
                                {stagedFiles.map((staged) => (
                                    <div 
                                        key={staged.id} 
                                        className={cn(
                                            "flex flex-col md:flex-row gap-4 p-4 border border-zinc-200 dark:border-zinc-800 rounded-xl bg-zinc-50/50 dark:bg-zinc-950/50 transition-all relative overflow-hidden",
                                            staged.status === 'success' && "border-emerald-200/50 dark:border-emerald-900/50 bg-emerald-50/20 dark:bg-emerald-900/10",
                                            staged.status === 'error' && "border-rose-200/50 dark:border-rose-900/50 bg-rose-50/20 dark:bg-rose-900/10"
                                        )}
                                    >
                                        {/* Status progress bar underlying indicator */}
                                        {staged.status === 'uploading' && (
                                            <div className="absolute bottom-0 left-0 h-1 bg-zinc-900 dark:bg-zinc-100 w-full animate-pulse opacity-20" />
                                        )}

                                        {/* Preview Col */}
                                        <div className="w-full md:w-32 h-24 shrink-0 bg-zinc-100 dark:bg-zinc-900 rounded-lg flex items-center justify-center relative overflow-hidden border border-zinc-200 dark:border-zinc-800">
                                            {staged.preview ? (
                                                staged.file.type.startsWith('video/') ? (
                                                     <>
                                                        <img src={staged.preview} className="w-full h-full object-cover" />
                                                        <div className="absolute inset-0 bg-black/30 flex items-center justify-center">
                                                            <Video className="w-6 h-6 text-white shadow-sm" />
                                                        </div>
                                                     </>
                                                ) : (
                                                    <img src={staged.preview} className="w-full h-full object-cover" />
                                                )
                                            ) : (
                                                getFileIcon(staged.file)
                                            )}
                                            
                                            {staged.status === 'success' && (
                                                <div className="absolute top-1.5 right-1.5 bg-emerald-500 text-white rounded-full p-0.5 shadow-sm">
                                                    <Check className="w-3 h-3" />
                                                </div>
                                            )}
                                        </div>

                                        {/* Action Col */}
                                        <div className="flex-1 space-y-3 min-w-0 flex flex-col justify-center">
                                            <div className="flex items-center justify-between gap-2">
                                                <div className="flex items-center gap-2 min-w-0">
                                                    {staged.status === 'uploading' && <Loader2 className="w-3 h-3 animate-spin text-zinc-600 dark:text-zinc-400" />}
                                                    <p className="text-xs font-semibold text-zinc-500 dark:text-zinc-400 truncate tracking-tight">{staged.file.name}</p>
                                                </div>
                                                <button 
                                                    disabled={submitting || staged.status === 'success'} 
                                                    onClick={() => removeFile(staged.id)}
                                                    className="p-1 text-zinc-400 hover:text-rose-500 hover:bg-rose-50 dark:hover:bg-rose-900/30 rounded transition-colors"
                                                >
                                                    <X className="w-4 h-4" />
                                                </button>
                                            </div>

                                            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                                                <div className="space-y-1">
                                                    <Input 
                                                        value={staged.titulo} 
                                                        onChange={(e) => updateFileTitle(staged.id, e.target.value)}
                                                        disabled={submitting || staged.status === 'success'}
                                                        className="h-10 text-sm bg-white dark:bg-zinc-950 border-zinc-200 dark:border-zinc-800"
                                                        placeholder="Ex: Título descritivo"
                                                    />
                                                </div>
                                                <div className="space-y-1">
                                                    <select 
                                                        className="flex h-10 w-full rounded-md border border-zinc-200 dark:border-zinc-800 bg-white dark:bg-zinc-950 px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-zinc-950 disabled:cursor-not-allowed disabled:opacity-50"
                                                        value={staged.servicoId}
                                                        onChange={(e) => updateFileServico(staged.id, e.target.value)}
                                                        disabled={submitting || staged.status === 'success' || !selectedEmpreendimento}
                                                    >
                                                        <option value="">Anexo Geral (Nenhum serviço)</option>
                                                        {servicos.map(s => (
                                                            <option key={s.id} value={s.id}>{s.descricao}</option>
                                                        ))}
                                                    </select>
                                                </div>
                                            </div>

                                            {staged.status === 'error' && (
                                                <p className="text-xs text-rose-600 dark:text-rose-400 font-medium flex items-center gap-1 mt-1">
                                                    <AlertCircle className="w-3 h-3" /> {staged.error || "Ocorreu um erro no servidor"}
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>
                    )}
                </CardContent>
            </Card>
        </div>
      </main>

    </div>
  )
}
