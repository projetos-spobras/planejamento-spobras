import { useState } from "react";
import { useAuth } from "@/components/AuthProvider";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";

const ChangePassword = () => {
    const [password, setPassword] = useState("");
    const [confirmPassword, setConfirmPassword] = useState("");
    const [loading, setLoading] = useState(false);
    const { signOut, refreshProfile } = useAuth();
    const navigate = useNavigate();

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        if (password !== confirmPassword) {
            toast.error("As senhas não conferem");
            return;
        }

        if (password.length < 6) {
            toast.error("A senha deve ter pelo menos 6 caracteres");
            return;
        }

        setLoading(true);
        try {
            const { error } = await supabase.auth.updateUser({ password: password });
            if (error) throw error;

            // Mark profile as not requiring change
            const { error: profileError } = await supabase
                .from('map_users')
                .update({ must_change_password: false })
                .eq('id', (await supabase.auth.getUser()).data.user?.id);

            if (profileError) {
                console.error("Error updating profile flag", profileError);
                throw new Error("Erro ao atualizar status do perfil. Tente novamente ou contate o suporte.");
            }

            toast.success("Senha alterada com sucesso!");
            await refreshProfile();
            navigate("/");

        } catch (error: any) {
            toast.error(error.message);
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-gray-50 px-4">
            <Card className="w-full max-w-md shadow-lg border-t-4 border-t-yellow-500 animate-in fade-in zoom-in-95 duration-300">
                <CardHeader>
                    <CardTitle>Troca Obrigatória de Senha</CardTitle>
                    <CardDescription>
                        Para sua segurança, defina uma nova senha para acessar o sistema.
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <form onSubmit={handleSubmit} className="space-y-4">
                        <div className="space-y-2">
                            <Label htmlFor="new-password">Nova Senha</Label>
                            <Input
                                id="new-password"
                                type="password"
                                value={password}
                                onChange={e => setPassword(e.target.value)}
                                required
                                className="bg-white"
                            />
                        </div>
                        <div className="space-y-2">
                            <Label htmlFor="confirm-password">Confirme a Nova Senha</Label>
                            <Input
                                id="confirm-password"
                                type="password"
                                value={confirmPassword}
                                onChange={e => setConfirmPassword(e.target.value)}
                                required
                                className="bg-white"
                            />
                        </div>
                        <div className="flex flex-col gap-2 pt-2">
                            <Button type="submit" disabled={loading} className="w-full font-medium">
                                {loading ? "Atualizando..." : "Atualizar Senha"}
                            </Button>
                            <Button variant="ghost" type="button" onClick={() => signOut()} className="w-full text-gray-500">
                                Cancelar e Sair
                            </Button>
                        </div>
                    </form>
                </CardContent>
            </Card>
        </div>
    )
}

export default ChangePassword;
