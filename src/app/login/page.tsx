'use client'
import { useTransition, useState } from 'react'
import { useRouter } from 'next/navigation'
import { login } from './actions'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Card, CardHeader, CardTitle, CardDescription, CardContent, CardFooter } from '@/components/ui/card'
import { Loader2 } from 'lucide-react'
import { toast } from 'sonner'
import Image from 'next/image'

export default function LoginPage() {
  const [isPending, startTransition] = useTransition()
  const [error, setError] = useState<string | null>(null)
  const router = useRouter()

  function handleSubmit(formData: FormData) {
    setError(null)
    startTransition(async () => {
      const result = await login(formData)

      if (result?.error) {
        setError(result.error)
        toast.error('Erro ao fazer login', { description: result.error })
        return
      }

      if (result?.success && result.redirectTo) {
        router.push(result.redirectTo)
      }
    })
  }

  return (
    <div className="flex h-screen w-full items-center justify-center bg-gray-50 dark:bg-gray-900 px-4">
      <Card className="w-full max-w-sm">
        <CardHeader className="text-center">
          <div className="flex items-center justify-center gap-4 mb-4">
            <div className="relative w-36 h-14">
              <Image
                src="/logo-prefeitura.png"
                alt="Prefeitura de São Paulo"
                fill
                unoptimized
                className="object-contain"
              />
            </div>
            <div className="h-8 w-[1px] bg-border" />
            <div className="relative w-24 h-12">
              <Image
                src="/logo-spobras.png"
                alt="SPObras"
                fill
                unoptimized
                className="object-contain"
              />
            </div>
          </div>
          <CardTitle className="text-2xl font-bold">
            SID - Sistema Integrado de Dados
          </CardTitle>
          <CardDescription>
            Entre com seu e-mail e senha para acessar o sistema.
          </CardDescription>
        </CardHeader>
        <form action={handleSubmit}>
          <CardContent className="grid gap-4">
            <div className="grid gap-2">
              <Label htmlFor="email">E-mail</Label>
              <Input
                id="email"
                name="email"
                type="email"
                placeholder="m@exemplo.com"
                required
              />
            </div>
            <div className="grid gap-2">
              <Label htmlFor="password">Senha</Label>
              <Input
                id="password"
                name="password"
                type="password"
                required
              />
            </div>
            {error && (
              <div className="text-sm text-red-500 font-medium">
                {error}
              </div>
            )}
          </CardContent>
          <CardFooter>
            <Button className="w-full" disabled={isPending}>
              {isPending && (
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
              )}
              Entrar
            </Button>
          </CardFooter>
        </form>
      </Card>
    </div>
  )
}
