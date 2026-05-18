import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { ShieldAlert } from 'lucide-react'

export default function UnauthorizedPage() {
    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-background p-4 text-center">
            <ShieldAlert className="w-16 h-16 text-destructive mb-6" />
            <h1 className="text-3xl font-bold tracking-tight mb-2">Acesso Negado</h1>
            <p className="text-muted-foreground mb-8 max-w-md">
                Você não possui permissão para acessar esta página ou recurso.
                Verifique com o administrador do sistema se o seu perfil (Gestor, Analista) e módulos de acesso estão configurados corretamente.
            </p>
            <div className="flex gap-4">
                <Button asChild>
                    <Link href="/">Voltar ao Início</Link>
                </Button>
            </div>
        </div>
    )
}
