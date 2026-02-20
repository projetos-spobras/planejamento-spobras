
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
import { useState, useTransition } from 'react'
import { createUser } from '../actions'
import { toast } from 'sonner'
import { Loader2, Plus } from 'lucide-react'

const GERENCIAS = [
    'CCOM', 'DESAP', 'DOB', 'GC', 'GDR', 'GEC', 'GED', 'GLC', 'GMA',
    'GOA', 'GOE', 'GOV', 'GPD', 'GPP', 'GPR', 'GSV', 'GTLI', 'PMO',
    'SEGES', 'SIURB', 'SJU', 'UGP'
]

export function CreateUserDialog() {
    const [open, setOpen] = useState(false)
    const [isPending, startTransition] = useTransition()

    async function handleSubmit(formData: FormData) {
        startTransition(async () => {
            const result = await createUser(null, formData)

            if (result?.error) {
                toast.error('Erro', { description: result.error })
            } else if (result?.success) {
                toast.success('Sucesso', { description: result.message })
                setOpen(false)
            }
        })
    }

    return (
        <Dialog open={open} onOpenChange={setOpen}>
            <DialogTrigger asChild>
                <Button>
                    <Plus className="mr-2 h-4 w-4" />
                    Novo Usuário
                </Button>
            </DialogTrigger>
            <DialogContent className="sm:max-w-[425px]">
                <DialogHeader>
                    <DialogTitle>Criar Novo Usuário</DialogTitle>
                    <DialogDescription>
                        Crie um novo usuário para acessar o sistema. A senha padrão será 'Mudar@123'.
                    </DialogDescription>
                </DialogHeader>
                <form action={handleSubmit}>
                    <div className="grid gap-4 py-4">
                        <div className="grid grid-cols-4 items-center gap-4">
                            <Label htmlFor="nome" className="text-right">
                                Nome
                            </Label>
                            <Input
                                id="nome"
                                name="nome"
                                placeholder="João Silva"
                                className="col-span-3"
                                required
                            />
                        </div>
                        <div className="grid grid-cols-4 items-center gap-4">
                            <Label htmlFor="email" className="text-right">
                                E-mail
                            </Label>
                            <Input
                                id="email"
                                name="email"
                                type="email"
                                placeholder="joao@spobras.sp.gov.br"
                                className="col-span-3"
                                required
                            />
                        </div>
                        <div className="grid grid-cols-4 items-center gap-4">
                            <Label htmlFor="gerencia" className="text-right">
                                Gerência
                            </Label>
                            <div className="col-span-3">
                                <Select name="gerencia" required>
                                    <SelectTrigger>
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {GERENCIAS.map((gerencia) => (
                                            <SelectItem key={gerencia} value={gerencia}>
                                                {gerencia}
                                            </SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>
                        </div>
                        <div className="grid grid-cols-4 items-center gap-4">
                            <div className="text-right"></div>
                            <div className="col-span-3 flex items-center space-x-2">
                                <input type="checkbox" id="isAdmin" name="isAdmin" className="h-4 w-4 rounded border-gray-300" />
                                <Label htmlFor="isAdmin">Conceder acesso de Administrador?</Label>
                            </div>
                        </div>
                    </div>
                    <DialogFooter>
                        <Button type="submit" disabled={isPending}>
                            {isPending && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                            Criar Usuário
                        </Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>
    )
}
