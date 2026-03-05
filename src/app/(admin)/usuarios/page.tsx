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

export default async function UsuariosPage() {
    const supabase = await createClient()
    const { data: usuarios } = await supabase
        .from('tb_perfis')
        .select('*')
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
                                <TableHead>Função</TableHead>
                                <TableHead>Criado Em</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {usuarios?.map((usuario) => (
                                <TableRow key={usuario.id}>
                                    <TableCell className="font-medium">{usuario.nome_completo}</TableCell>
                                    <TableCell>{usuario.email}</TableCell>
                                    <TableCell>{usuario.gerencia}</TableCell>
                                    <TableCell className="capitalize">{usuario.funcao}</TableCell>
                                    <TableCell className="text-right">
                                        <DeleteUserButton userId={usuario.id} userName={usuario.nome_completo || usuario.email || ''} />
                                    </TableCell>
                                </TableRow>
                            ))}
                            {usuarios?.length === 0 && (
                                <TableRow>
                                    <TableCell colSpan={5} className="text-center">
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
