import { useState, useEffect } from "react";
import { useAuth } from "@/components/AuthProvider";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";
import logoPrefeitura from "@/assets/logo-prefeitura-sp.png";
import logoSpObras from "@/assets/logo-sp-obras.png";

const Login = () => {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [loading, setLoading] = useState(false);
    const { session } = useAuth();
    const navigate = useNavigate();

    useEffect(() => {
        if (session) {
            navigate("/");
        }
    }, [session, navigate]);

    const handleLogin = async (e: React.FormEvent) => {
        e.preventDefault();
        setLoading(true);

        try {
            const { error } = await supabase.auth.signInWithPassword({
                email,
                password,
            });

            if (error) {
                if (error.message === "Invalid login credentials") {
                    throw new Error("E-mail ou senha incorretos.");
                }
                throw error;
            };

            // Toast and redirect handled by auth state effect usually, but helpful feedback
            toast.success("Login realizado com sucesso");
        } catch (error: any) {
            console.error("Login Error:", error);
            // Check for specific Supabase error codes if available
            if (error.code === 'email_not_confirmed') {
                toast.error("E-mail não confirmado. Verifique sua caixa de entrada.");
            } else if (error.message === "Invalid login credentials") {
                toast.error("E-mail ou senha incorretos.");
            } else {
                toast.error("Erro ao fazer login: " + (error.message || "Erro desconhecido"));
            }
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-gray-50 px-4">
            <div className="w-full max-w-md space-y-8 animate-in fade-in duration-500 slide-in-from-bottom-4">

                {/* Logos Section */}
                <div className="flex justify-center items-center gap-6 mb-8">
                    <img src={logoPrefeitura} alt="Cidade de São Paulo" className="h-16 object-contain" />
                    <div className="h-12 w-px bg-gray-300"></div>
                    <img src={logoSpObras} alt="SP Obras" className="h-12 object-contain" />
                </div>

                <Card className="shadow-lg border-t-4 border-t-primary bg-white/90 backdrop-blur-sm">
                    <CardHeader className="text-center space-y-2">
                        <CardTitle className="text-2xl font-bold tracking-tight text-gray-900">
                            Mapa de Obras
                        </CardTitle>
                        <CardDescription className="text-base text-gray-600">
                            Sistema de Georreferenciamento e Gestão de Contratos
                        </CardDescription>
                    </CardHeader>
                    <CardContent>
                        <form onSubmit={handleLogin} className="space-y-4">
                            <div className="space-y-2">
                                <Label htmlFor="email">E-mail Corporativo</Label>
                                <Input
                                    id="email"
                                    type="email"
                                    placeholder="nome@spobras.sp.gov.br"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    required
                                    className="h-11 bg-white"
                                />
                            </div>
                            <div className="space-y-2">
                                <div className="flex items-center justify-between">
                                    <Label htmlFor="password">Senha</Label>
                                </div>
                                <Input
                                    id="password"
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    required
                                    className="h-11 bg-white"
                                />
                            </div>
                            <Button type="submit" className="w-full h-11 text-base font-medium" disabled={loading}>
                                {loading ? "Entrando..." : "Acessar Sistema"}
                            </Button>
                        </form>
                    </CardContent>
                    <CardFooter className="flex justify-center text-sm text-gray-500">
                        Ambiente Seguro • Acesso Restrito
                    </CardFooter>
                </Card>
            </div>
        </div>
    );
};

export default Login;
