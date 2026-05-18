'use client'

import { Button } from '@/components/ui/button'
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogFooter,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
} from '@/components/ui/dialog'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Checkbox } from '@/components/ui/checkbox'
import { useState, useTransition, useEffect } from 'react'
import { createUser } from '../actions'
import { toast } from 'sonner'
import { Loader2, Plus } from 'lucide-react'

const GERENCIAS = [
    'CCOM', 'DESAP', 'DOB', 'GC', 'GDR', 'GEC', 'GED', 'GLC', 'GMA',
    'GOA', 'GOE', 'GOV', 'GPD', 'GPP', 'GPR', 'GSV', 'GTLI', 'PMO',
    'SEGES', 'SIURB', 'SJU', 'UGP'
]

const MODULOS = [
    { id: 'empreendimentos', label: 'Empreendimentos' },
    { id: 'contratos', label: 'Contratos' },
    { id: 'servicos', label: 'Serviços' },
    { id: 'lotes', label: 'Lotes' },
    { id: 'planejamento', label: 'Planejamento' },
    { id: 'ambiental', label: 'Meio Ambiente' },
    { id: 'desapropriacoes', label: 'Desapropriações' },
    { id: 'empenhos', label: 'Empenhos' },
]

export function CreateUserDialog() {
    const [open, setOpen] = useState(false)
    const [isPending, startTransition] = useTransition()
    const [gerencia, setGerencia] = useState<string>('')
    const [nivel, setNivel] = useState<string>('analista')
    const [isAdmin, setIsAdmin] = useState(false)
    const [selectedModulos, setSelectedModulos] = useState<string[]>([])

    // Auto-selection logic
    useEffect(() => {
        if (isAdmin) {
            setSelectedModulos(MODULOS.map(m => m.id))
            return
        }

        let suggestions: string[] = []

        if (gerencia === 'DESAP') {
            suggestions = nivel === 'analista' ? ['desapropriacoes'] : ['desapropriacoes', 'empreendimentos', 'contratos', 'servicos']
        } else if (gerencia === 'CCOM') {
            suggestions = MODULOS.map(m => m.id)
        } else if (gerencia === 'GDR') {
            suggestions = ['empreendimentos', 'contratos']
        } else if (gerencia === 'GMA') {
            suggestions = ['empreendimentos', 'contratos', 'ambiental']
        } else if (gerencia === 'GED') {
            suggestions = nivel === 'analista' ? ['empreendimentos', 'lotes'] : MODULOS.map(m => m.id)
        }

        setSelectedModulos(suggestions)
    }, [gerencia, nivel, isAdmin])

    async function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
        e.preventDefault()
        const formData = new FormData(e.currentTarget)
        
        // Assegurar que os módulos selecionados vão para o form data
        formData.delete('modulos')
        if (!isAdmin) {
            selectedModulos.forEach(mod => formData.append('modulos', mod))
        }

        startTransition(async () => {
            try {
                const result = await createUser(null, formData)

                if (result?.error) {
                    toast.error('Erro na criação', { description: result.error })
                } else if (result?.success) {
                    toast.success('Sucesso', { description: result.message })
                    setOpen(false)
                    // Reset form state
                    setGerencia('')
                    setNivel('analista')
                    setIsAdmin(false)
                    setSelectedModulos([])
                }
            } catch (err: any) {
                console.error("Erro capturado no client:", err)
                toast.error('Erro inesperado', { 
                    description: err?.message || 'Houve um erro de rede ou do servidor ao processar a requisição.' 
                })
            }
        })
    }

    const toggleModulo = (id: string) => {
        if (isAdmin) return
        setSelectedModulos(prev => 
            prev.includes(id) 
                ? prev.filter(m => m !== id)
                : [...prev, id]
        )
    }

    return (
        <Dialog open={open} onOpenChange={setOpen}>
            <DialogTrigger asChild>
                <Button>
                    <Plus className="mr-2 h-4 w-4" />
                    Novo Usuário
                </Button>
            </DialogTrigger>
            <DialogContent className="sm:max-w-[600px]">
                <DialogHeader>
                    <DialogTitle>Criar Novo Usuário</DialogTitle>
                    <DialogDescription>
                        Crie um novo usuário para acessar o sistema. A senha padrão será 'Mudar@123'.
                    </DialogDescription>
                </DialogHeader>
                <form onSubmit={handleSubmit}>
                    <div className="grid gap-6 py-4">
                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label htmlFor="nome">Nome Completo</Label>
                                <Input id="nome" name="nome" placeholder="João Silva" required />
                            </div>
                            <div className="space-y-2">
                                <Label htmlFor="email">E-mail</Label>
                                <Input id="email" name="email" type="email" placeholder="joao@spobras.sp.gov.br" required />
                            </div>
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <div className="space-y-2">
                                <Label htmlFor="gerencia">Gerência</Label>
                                <Select name="gerencia" value={gerencia} onValueChange={setGerencia} required>
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {GERENCIAS.map((g) => (
                                            <SelectItem key={g} value={g}>{g}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                            <div className="space-y-2">
                                <Label htmlFor="nivel_acesso">Nível de Acesso</Label>
                                <Select name="nivel_acesso" value={nivel} onValueChange={setNivel} disabled={isAdmin} required>
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        <SelectItem value="analista">Analista</SelectItem>
                                        <SelectItem value="gestor">Gestor</SelectItem>
                                    </SelectContent>
                                </Select>
                            </div>
                        </div>

                        <div className="flex items-center space-x-2 border p-3 rounded-md bg-muted/30">
                            <Checkbox 
                                id="isAdmin" 
                                name="isAdmin" 
                                checked={isAdmin} 
                                onCheckedChange={(checked) => setIsAdmin(!!checked)} 
                            />
                            <div className="grid gap-1.5 leading-none">
                                <Label htmlFor="isAdmin" className="font-semibold cursor-pointer">
                                    Conceder acesso de Administrador
                                </Label>
                                <p className="text-xs text-muted-foreground">
                                    Administradores têm acesso total a todos os módulos e gestão de usuários.
                                </p>
                            </div>
                        </div>

                        <div className="space-y-3">
                            <Label className="text-base font-semibold">Módulos com Acesso</Label>
                            <div className="grid grid-cols-2 gap-3 border p-4 rounded-md">
                                {MODULOS.map((modulo) => (
                                    <div key={modulo.id} className="flex items-center space-x-2">
                                        <Checkbox 
                                            id={`mod-${modulo.id}`} 
                                            name="modulos"
                                            value={modulo.id}
                                            checked={selectedModulos.includes(modulo.id)}
                                            onCheckedChange={() => toggleModulo(modulo.id)}
                                            disabled={isAdmin}
                                        />
                                        <Label 
                                            htmlFor={`mod-${modulo.id}`} 
                                            className={`text-sm ${isAdmin ? 'opacity-50' : 'cursor-pointer'}`}
                                        >
                                            {modulo.label}
                                        </Label>
                                    </div>
                                ))}
                            </div>
                            <p className="text-[10px] text-muted-foreground italic">
                                * Os módulos acima são sugeridos automaticamente com base na gerência e nível, mas podem ser ajustados.
                            </p>
                        </div>
                    </div>
                    <DialogFooter>
                        <Button type="submit" disabled={isPending} className="w-full sm:w-auto">
                            {isPending && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                            Criar Usuário
                        </Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>
    )
}
