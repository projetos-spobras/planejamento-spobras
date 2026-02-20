
'use client'

import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { useState, useTransition } from 'react'
import { updatePassword } from '../actions'
import { toast } from 'sonner'
import { Loader2 } from 'lucide-react'
import { useRouter } from 'next/navigation'

export function UpdatePasswordForm() {
    const [isPending, startTransition] = useTransition()
    const router = useRouter()

    async function handleSubmit(formData: FormData) {
        const password = formData.get('password') as string
        const confirmPassword = formData.get('confirmPassword') as string

        if (password !== confirmPassword) {
            toast.error('Erro', { description: 'As senhas não coincidem.' })
            return
        }

        if (password.length < 6) {
            toast.error('Erro', { description: 'A senha deve ter no mínimo 6 caracteres.' })
            return
        }

        startTransition(async () => {
            const result = await updatePassword(password)
            if (result?.error) {
                toast.error('Erro', { description: result.error })
            } else {
                toast.success('Sucesso', { description: 'Senha atualizada com sucesso!' })
                router.push('/dashboard')
            }
        })
    }

    return (
        <Card className="w-[350px]">
            <CardHeader>
                <CardTitle>Troca de Senha Obrigatória</CardTitle>
                <CardDescription>
                    Por motivos de segurança, você deve alterar sua senha no primeiro acesso.
                </CardDescription>
            </CardHeader>
            <form action={handleSubmit}>
                <CardContent>
                    <div className="grid w-full items-center gap-4">
                        <div className="flex flex-col space-y-1.5">
                            <Label htmlFor="password">Nova Senha</Label>
                            <Input id="password" name="password" type="password" required />
                        </div>
                        <div className="flex flex-col space-y-1.5">
                            <Label htmlFor="confirmPassword">Confirmar Nova Senha</Label>
                            <Input id="confirmPassword" name="confirmPassword" type="password" required />
                        </div>
                    </div>
                </CardContent>
                <CardFooter className="flex justify-between">
                    <Button type="submit" disabled={isPending} className="w-full">
                        {isPending && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                        Atualizar Senha
                    </Button>
                </CardFooter>
            </form>
        </Card>
    )
}
