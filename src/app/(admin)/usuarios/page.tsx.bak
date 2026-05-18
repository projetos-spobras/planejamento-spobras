import { createClient } from '@/lib/supabase/server'
import Link from 'next/link'
import { CreateUserDialog } from '@/features/users/components/create-user-dialog'
import { DeleteUserButton } from '@/features/users/components/delete-user-button'
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from '@/components/ui/table'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'

export default async function UsuariosPage() {
    const supabase = await createClient()
    const { data: usuarios } = await supabase
        .from('tb_perfis')
        .select('*')
        .eq('sistema', 'planejamento')
        .order('nome_completo')

    return (
        <div className="container mx-auto py-10">
            <div className="flex justify-between items-center mb-6">
                <div>
                    <h1 className="text-3xl font-bold">Gestão de Usuários</h1>
                    <div className="flex items-center space-x-2">
                        <Link href="/empreendimentos" className="text-sm text-muted-foreground hover:underline">
                            Voltar
                        </Link>
                    </div>
                </div>
                <CreateUserDialog />
            </div>

            <Card>
                <CardHeader>
                    <CardTitle>Usuários Cadastrados</CardTitle>
                </CardHeader>
                <CardContent>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead>Nome</TableHead>
                                <TableHead>E-mail</TableHead>
                                <TableHead>Gerência</TableHead>
                                <TableHead>Nível</TableHead>
                                <TableHead>Módulos</TableHead>
                                <TableHead className="w-[100px] text-right">Ações</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {usuarios?.map((usuario) => (
                                <TableRow key={usuario.id}>
                                    <TableCell className="font-medium">{usuario.nome_completo}</TableCell>
                                    <TableCell>{usuario.email}</TableCell>
                                    <TableCell>{usuario.gerencia}</TableCell>
                                    <TableCell className="capitalize">
                                        <Badge variant={usuario.funcao === 'admin' ? 'default' : 'outline'}>
                                            {usuario.funcao === 'admin' ? 'Administrador' : (usuario.nivel_acesso || 'analista')}
                                        </Badge>
                                    </TableCell>
                                    <TableCell>
                                        <div className="flex flex-wrap gap-1">
                                            {usuario.modulos_acesso?.map((modulo: string) => (
                                                <Badge key={modulo} variant="secondary" className="text-[10px] capitalize">
                                                    {modulo.replace('-', ' ')}
                                                </Badge>
                                            ))}
                                            {(!usuario.modulos_acesso || usuario.modulos_acesso.length === 0) && (
                                                <span className="text-xs text-muted-foreground italic">Nenhum</span>
                                            )}
                                        </div>
                                    </TableCell>
                                    <TableCell className="text-right">
                                        <DeleteUserButton userId={usuario.id} userName={usuario.nome_completo || usuario.email || ''} />
                                    </TableCell>
                                </TableRow>
                            ))}
                            {usuarios?.length === 0 && (
                                <TableRow>
                                    <TableCell colSpan={6} className="text-center py-10 text-muted-foreground">
                                        Nenhum usuário encontrado.
                                    </TableCell>
                                </TableRow>
                            )}
                        </TableBody>
                    </Table>
                </CardContent>
            </Card>
        </div>
    )
}
