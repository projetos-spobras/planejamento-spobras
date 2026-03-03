import { useState } from "react";
import { useAuth } from "@/components/AuthProvider";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table";
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogFooter,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
} from "@/components/ui/dialog";
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select";
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
    AlertDialog,
    AlertDialogAction,
    AlertDialogCancel,
    AlertDialogContent,
    AlertDialogDescription,
    AlertDialogFooter,
    AlertDialogHeader,
    AlertDialogTitle,
} from "@/components/ui/alert-dialog";
import { Plus, Loader2, ArrowLeft, Search, MoreHorizontal, Pencil, Trash2, ChevronLeft, ChevronRight, KeyRound } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";
import { useQuery } from "@tanstack/react-query";
import { Badge } from "@/components/ui/badge";
import { useNavigate } from "react-router-dom";

const AdminUsers = () => {
    const { isAdmin } = useAuth();
    const navigate = useNavigate();

    // UI State
    const [isCreateDialogOpen, setIsCreateDialogOpen] = useState(false);
    const [isEditDialogOpen, setIsEditDialogOpen] = useState(false);
    const [isDeleteDialogOpen, setIsDeleteDialogOpen] = useState(false);
    const [isResetDialogOpen, setIsResetDialogOpen] = useState(false);

    // Loading State
    const [actionLoading, setActionLoading] = useState(false);

    // Filter & Pagination State
    const [searchTerm, setSearchTerm] = useState("");
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 10;

    // Editing State
    const [selectedUser, setSelectedUser] = useState<any>(null);
    const [formData, setFormData] = useState({
        full_name: "",
        email: "",
        orgao: "SP Obras",
        departamento: "",
        user_type: "user"
    });

    const { data: users, isLoading, refetch } = useQuery({
        queryKey: ['admin-users'],
        queryFn: async () => {
            const { data, error } = await supabase
                .from('map_users')
                .select('*')
                .order('created_at', { ascending: false });
            if (error) throw error;
            return data;
        },
        enabled: isAdmin
    });

    // Filter Logic
    const filteredUsers = users?.filter(user => {
        const searchLower = searchTerm.toLowerCase();
        return (
            user.full_name?.toLowerCase().includes(searchLower) ||
            user.email?.toLowerCase().includes(searchLower) ||
            user.orgao?.toLowerCase().includes(searchLower)
        );
    }) || [];

    // Pagination Logic
    const totalPages = Math.ceil(filteredUsers.length / itemsPerPage);
    const paginatedUsers = filteredUsers.slice(
        (currentPage - 1) * itemsPerPage,
        currentPage * itemsPerPage
    );

    const handleCreateUser = async (e: React.FormEvent) => {
        e.preventDefault();
        setActionLoading(true);
        try {
            const { data, error } = await supabase.functions.invoke('create-user', {
                body: {
                    ...formData,
                    password: "Mudar@123"
                }
            });

            if (error) throw new Error(error.message || "Erro ao invocar função");
            if (data?.error) throw new Error(data.error);

            toast.success("Usuário criado com sucesso!");
            setIsCreateDialogOpen(false);
            setFormData({ full_name: "", email: "", orgao: "SP Obras", departamento: "Geral", user_type: "user" });
            refetch();
        } catch (error: any) {
            toast.error(error.message || "Erro ao criar usuário");
            console.error(error);
        } finally {
            setActionLoading(false);
        }
    };

    const handleUpdateUser = async (e: React.FormEvent) => {
        e.preventDefault();
        setActionLoading(true);
        try {
            // Only name, orgao, user_type can be updated via this simple UI
            const updatePayload = {
                full_name: formData.full_name,
                orgao: formData.orgao,
                departamento: formData.departamento,
                user_type: formData.user_type
            };

            const { data, error } = await supabase.functions.invoke('manage-users', {
                body: {
                    action: 'update',
                    userId: selectedUser.id,
                    data: updatePayload
                }
            });

            if (error) throw error;
            if (data?.error) throw new Error(data.error);

            toast.success("Usuário atualizado com sucesso");
            setIsEditDialogOpen(false);
            setSelectedUser(null);
            refetch();
        } catch (error: any) {
            toast.error("Erro ao atualizar usuário: " + error.message);
        } finally {
            setActionLoading(false);
        }
    };

    const handleDeleteUser = async () => {
        if (!selectedUser) return;
        setActionLoading(true);
        try {
            const { data, error } = await supabase.functions.invoke('manage-users', {
                body: {
                    action: 'delete',
                    userId: selectedUser.id
                }
            });

            if (error) throw error;
            if (data?.error) throw new Error(data.error);

            toast.success("Usuário removido");
            setIsDeleteDialogOpen(false);
            setSelectedUser(null);
            refetch();
        } catch (error: any) {
            toast.error("Erro ao remover usuário: " + error.message);
        } finally {
            setActionLoading(false);
        }
    };

    const handleResetPassword = async () => {
        if (!selectedUser) return;
        setActionLoading(true);
        try {
            const { data, error } = await supabase.functions.invoke('manage-users', {
                body: {
                    action: 'reset_password',
                    userId: selectedUser.id
                }
            });

            if (error) throw error;
            if (data?.error) throw new Error(data.error);

            toast.success("Senha resetada para 'Mudar@123'");
            setIsResetDialogOpen(false);
            setSelectedUser(null);
            refetch();
        } catch (error: any) {
            toast.error("Erro ao resetar senha: " + error.message);
        } finally {
            setActionLoading(false);
        }
    };

    const openCreateDialog = () => {
        setFormData({ full_name: "", email: "", orgao: "SP Obras", departamento: "Geral", user_type: "user" });
        setIsCreateDialogOpen(true);
    };

    const openEditDialog = (user: any) => {
        setSelectedUser(user);
        setFormData({
            full_name: user.full_name,
            email: user.email,
            orgao: user.orgao || "SP Obras",
            departamento: user.departamento || "",
            user_type: user.user_type
        });
        setIsEditDialogOpen(true);
    };

    const openDeleteDialog = (user: any) => {
        setSelectedUser(user);
        setIsDeleteDialogOpen(true);
    };

    const openResetDialog = (user: any) => {
        setSelectedUser(user);
        setIsResetDialogOpen(true);
    };

    if (!isAdmin) {
        return (
            <div className="flex h-screen items-center justify-center flex-col gap-4">
                <div className="text-xl font-bold text-red-600">Acesso Negado</div>
                <Button onClick={() => navigate("/")}>Voltar ao Mapa</Button>
            </div>
        );
    }

    return (
        <div className="container mx-auto p-6 space-y-6 animate-in fade-in duration-500">
            {/* Header */}
            <div className="flex items-center gap-2 mb-4">
                <Button variant="ghost" size="sm" onClick={() => navigate("/")}>
                    <ArrowLeft className="mr-2 h-4 w-4" />
                    Voltar ao Mapa
                </Button>
            </div>

            <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
                <div>
                    <h1 className="text-3xl font-bold tracking-tight text-gray-900">Gestão de Acessos</h1>
                    <p className="text-muted-foreground mt-1">Gerencie os usuários e permissões do sistema.</p>
                </div>
                <Button onClick={openCreateDialog} className="shadow-sm">
                    <Plus className="mr-2 h-4 w-4" />
                    Novo Usuário
                </Button>
            </div>

            {/* Filters */}
            <div className="flex items-center gap-4 bg-white p-4 rounded-lg border shadow-sm">
                <div className="relative flex-1 max-w-sm">
                    <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                    <Input
                        placeholder="Buscar por nome, email ou órgão..."
                        className="pl-9"
                        value={searchTerm}
                        onChange={(e) => {
                            setSearchTerm(e.target.value);
                            setCurrentPage(1); // Reset to first page on search
                        }}
                    />
                </div>
                <div className="text-sm text-muted-foreground ml-auto">
                    Total: <strong>{filteredUsers.length}</strong> usuários
                </div>
            </div>

            {/* Table */}
            <div className="rounded-lg border bg-white shadow-sm overflow-hidden min-h-[500px] flex flex-col">
                <Table>
                    <TableHeader className="bg-gray-50">
                        <TableRow>
                            <TableHead className="w-[30%]">Nome</TableHead>
                            <TableHead className="w-[25%]">E-mail</TableHead>
                            <TableHead>Órgão</TableHead>
                            <TableHead>Tipo</TableHead>
                            <TableHead>Status</TableHead>
                            <TableHead className="w-[50px]"></TableHead>
                        </TableRow>
                    </TableHeader>
                    <TableBody>
                        {isLoading ? (
                            <TableRow>
                                <TableCell colSpan={6} className="text-center h-32">
                                    <div className="flex flex-col items-center justify-center text-muted-foreground">
                                        <Loader2 className="h-8 w-8 animate-spin mb-2 text-primary" />
                                        Carregando usuários...
                                    </div>
                                </TableCell>
                            </TableRow>
                        ) : paginatedUsers.length > 0 ? (
                            paginatedUsers.map((u) => (
                                <TableRow key={u.id} className="hover:bg-gray-50/50">
                                    <TableCell className="font-medium text-gray-900">{u.full_name || "Sem Nome"}</TableCell>
                                    <TableCell className="text-gray-600">{u.email}</TableCell>
                                    <TableCell>{u.orgao}</TableCell>
                                    <TableCell>
                                        <Badge variant={u.user_type === 'admin' ? "default" : "secondary"} className={u.user_type === 'admin' ? "bg-primary hover:bg-primary/90" : "bg-gray-200 text-gray-700 hover:bg-gray-300"}>
                                            {u.user_type === 'admin' ? 'Administrador' : 'Usuário'}
                                        </Badge>
                                    </TableCell>
                                    <TableCell>
                                        {u.must_change_password ? (
                                            <Badge variant="outline" className="text-amber-600 border-amber-200 bg-amber-50">
                                                Troca de Senha
                                            </Badge>
                                        ) : (
                                            <Badge variant="outline" className="text-green-600 border-green-200 bg-green-50">
                                                Ativo
                                            </Badge>
                                        )}
                                    </TableCell>
                                    <TableCell>
                                        <DropdownMenu>
                                            <DropdownMenuTrigger asChild>
                                                <Button variant="ghost" className="h-8 w-8 p-0">
                                                    <span className="sr-only">Abrir menu</span>
                                                    <MoreHorizontal className="h-4 w-4" />
                                                </Button>
                                            </DropdownMenuTrigger>
                                            <DropdownMenuContent align="end">
                                                <DropdownMenuLabel>Ações</DropdownMenuLabel>
                                                <DropdownMenuItem onClick={() => openEditDialog(u)}>
                                                    <Pencil className="mr-2 h-4 w-4" />
                                                    Editar
                                                </DropdownMenuItem>
                                                <DropdownMenuItem onClick={() => openResetDialog(u)}>
                                                    <KeyRound className="mr-2 h-4 w-4" />
                                                    Resetar Senha
                                                </DropdownMenuItem>
                                                <DropdownMenuItem onClick={() => openDeleteDialog(u)} className="text-red-600">
                                                    <Trash2 className="mr-2 h-4 w-4" />
                                                    Excluir
                                                </DropdownMenuItem>
                                            </DropdownMenuContent>
                                        </DropdownMenu>
                                    </TableCell>
                                </TableRow>
                            ))
                        ) : (
                            <TableRow>
                                <TableCell colSpan={6} className="text-center h-32 text-muted-foreground">
                                    Nenhum usuário encontrado.
                                </TableCell>
                            </TableRow>
                        )}
                    </TableBody>
                </Table>

                {/* Pagination Footer */}
                {totalPages > 1 && (
                    <div className="flex items-center justify-end space-x-2 py-4 px-4 bg-gray-50 border-t mt-auto">
                        <div className="flex-1 text-sm text-muted-foreground">
                            Página {currentPage} de {totalPages}
                        </div>
                        <div className="space-x-2">
                            <Button
                                variant="outline"
                                size="sm"
                                onClick={() => setCurrentPage(p => Math.max(1, p - 1))}
                                disabled={currentPage === 1}
                            >
                                <ChevronLeft className="h-4 w-4" />
                                Anterior
                            </Button>
                            <Button
                                variant="outline"
                                size="sm"
                                onClick={() => setCurrentPage(p => Math.min(totalPages, p + 1))}
                                disabled={currentPage === totalPages}
                            >
                                Próxima
                                <ChevronRight className="h-4 w-4 ml-1" />
                            </Button>
                        </div>
                    </div>
                )}
            </div>

            {/* Create Dialog */}
            <Dialog open={isCreateDialogOpen} onOpenChange={setIsCreateDialogOpen}>
                <DialogContent>
                    <DialogHeader>
                        <DialogTitle>Adicionar Novo Usuário</DialogTitle>
                        <DialogDescription>
                            O usuário receberá a senha padrão <code className="bg-gray-100 px-1 rounded">Mudar@123</code>.
                        </DialogDescription>
                    </DialogHeader>
                    <form onSubmit={handleCreateUser} className="space-y-4 py-4">
                        <div className="space-y-2">
                            <Label htmlFor="create-name">Nome Completo</Label>
                            <Input
                                id="create-name"
                                value={formData.full_name}
                                onChange={e => setFormData({ ...formData, full_name: e.target.value })}
                                required
                            />
                        </div>
                        <div className="space-y-2">
                            <Label htmlFor="create-email">E-mail</Label>
                            <Input
                                id="create-email"
                                type="email"
                                value={formData.email}
                                onChange={e => setFormData({ ...formData, email: e.target.value })}
                                required
                            />
                        </div>
                        <div className="space-y-2">
                            <Label htmlFor="create-orgao">Órgão</Label>
                            <Select
                                value={formData.orgao}
                                onValueChange={v => setFormData({ ...formData, orgao: v, departamento: v === "SP Obras" ? "Geral" : "" })}
                            >
                                <SelectTrigger id="create-orgao">
                                    <SelectValue placeholder="Selecione..." />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="SP Obras">SP Obras</SelectItem>
                                    <SelectItem value="SIURB">SIURB</SelectItem>
                                    <SelectItem value="PMSP">PMSP</SelectItem>
                                    <SelectItem value="Gerenciadora">Gerenciadora</SelectItem>
                                    <SelectItem value="Outros">Outros</SelectItem>
                                </SelectContent>
                            </Select>
                        </div>

                        {formData.orgao === "SP Obras" && (
                            <div className="space-y-2">
                                <Label htmlFor="create-departamento">Departamento</Label>
                                <Select
                                    value={formData.departamento}
                                    onValueChange={v => setFormData({ ...formData, departamento: v })}
                                >
                                    <SelectTrigger id="create-departamento">
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        <SelectItem value="Geral">Geral</SelectItem>
                                        <SelectItem value="Diretoria">Diretoria</SelectItem>
                                        <SelectItem value="Educação">Educação</SelectItem>
                                    </SelectContent>
                                </Select>
                            </div>
                        )}

                        <div className="space-y-2">
                            <Label htmlFor="create-type">Tipo de Acesso</Label>
                            <Select
                                value={formData.user_type}
                                onValueChange={v => setFormData({ ...formData, user_type: v })}
                            >
                                <SelectTrigger id="create-type">
                                    <SelectValue />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="user">Usuário Padrão</SelectItem>
                                    <SelectItem value="admin">Administrador</SelectItem>
                                </SelectContent>
                            </Select>
                        </div>
                        <DialogFooter className="pt-4">
                            <Button type="submit" disabled={actionLoading}>
                                {actionLoading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                                Criar Usuário
                            </Button>
                        </DialogFooter>
                    </form>
                </DialogContent>
            </Dialog>

            {/* Edit Dialog */}
            <Dialog open={isEditDialogOpen} onOpenChange={setIsEditDialogOpen}>
                <DialogContent>
                    <DialogHeader>
                        <DialogTitle>Editar Usuário</DialogTitle>
                        <DialogDescription>
                            Altere as informações do usuário. O e-mail não pode ser alterado por aqui.
                        </DialogDescription>
                    </DialogHeader>
                    <form onSubmit={handleUpdateUser} className="space-y-4 py-4">
                        <div className="space-y-2">
                            <Label htmlFor="edit-name">Nome Completo</Label>
                            <Input
                                id="edit-name"
                                value={formData.full_name}
                                onChange={e => setFormData({ ...formData, full_name: e.target.value })}
                                required
                            />
                        </div>
                        <div className="space-y-2">
                            <Label htmlFor="edit-email">E-mail</Label>
                            <Input
                                id="edit-email"
                                value={formData.email}
                                disabled
                                className="bg-gray-100 text-gray-500"
                            />
                        </div>
                        <div className="space-y-2">
                            <Label htmlFor="edit-orgao">Órgão</Label>
                            <Select
                                value={formData.orgao}
                                onValueChange={v => setFormData({ ...formData, orgao: v, departamento: v === "SP Obras" ? "Geral" : "" })}
                            >
                                <SelectTrigger id="edit-orgao">
                                    <SelectValue placeholder="Selecione..." />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="SP Obras">SP Obras</SelectItem>
                                    <SelectItem value="SIURB">SIURB</SelectItem>
                                    <SelectItem value="PMSP">PMSP</SelectItem>
                                    <SelectItem value="Gerenciadora">Gerenciadora</SelectItem>
                                    <SelectItem value="Outros">Outros</SelectItem>
                                </SelectContent>
                            </Select>
                        </div>

                        {formData.orgao === "SP Obras" && (
                            <div className="space-y-2">
                                <Label htmlFor="edit-departamento">Departamento</Label>
                                <Select
                                    value={formData.departamento}
                                    onValueChange={v => setFormData({ ...formData, departamento: v })}
                                >
                                    <SelectTrigger id="edit-departamento">
                                        <SelectValue placeholder="Selecione..." />
                                    </SelectTrigger>
                                    <SelectContent>
                                        <SelectItem value="Geral">Geral</SelectItem>
                                        <SelectItem value="Diretoria">Diretoria</SelectItem>
                                        <SelectItem value="Educação">Educação</SelectItem>
                                    </SelectContent>
                                </Select>
                            </div>
                        )}

                        <div className="space-y-2">
                            <Label htmlFor="edit-type">Tipo de Acesso</Label>
                            <Select
                                value={formData.user_type}
                                onValueChange={v => setFormData({ ...formData, user_type: v })}
                            >
                                <SelectTrigger id="edit-type">
                                    <SelectValue />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="user">Usuário Padrão</SelectItem>
                                    <SelectItem value="admin">Administrador</SelectItem>
                                </SelectContent>
                            </Select>
                        </div>

                        <DialogFooter className="pt-4">
                            <Button type="submit" disabled={actionLoading}>
                                {actionLoading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                                Salvar Alterações
                            </Button>
                        </DialogFooter>
                    </form>
                </DialogContent>
            </Dialog>

            {/* Delete Alert */}
            <AlertDialog open={isDeleteDialogOpen} onOpenChange={setIsDeleteDialogOpen}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Tem certeza absoluta?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita. Isso excluirá permanentemente o usuário
                            <strong> {selectedUser?.full_name} </strong> ({selectedUser?.email}) e revogará seu acesso ao sistema.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleDeleteUser} className="bg-red-600 hover:bg-red-700">
                            {actionLoading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Trash2 className="mr-2 h-4 w-4" />}
                            Excluir Usuário
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>

            {/* Reset Password Alert */}
            <AlertDialog open={isResetDialogOpen} onOpenChange={setIsResetDialogOpen}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Resetar Senha</AlertDialogTitle>
                        <AlertDialogDescription>
                            A senha do usuário <strong>{selectedUser?.full_name}</strong> será alterada para
                            <code className="bg-gray-100 px-1 rounded mx-1">Mudar@123</code>
                            e ele será obrigado a criar uma nova senha no próximo acesso.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleResetPassword}>
                            {actionLoading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <KeyRound className="mr-2 h-4 w-4" />}
                            Resetar Senha
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div >
    )
}

export default AdminUsers;
