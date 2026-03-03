import { useAuth } from "@/components/AuthProvider";
import { Navigate, useLocation } from "react-router-dom";
import { Loader2 } from "lucide-react";

export const RequireAuth = ({ children }: { children: JSX.Element }) => {
    const { session, loading, profile } = useAuth();
    const location = useLocation();

    if (loading) {
        return (
            <div className="h-screen w-full flex items-center justify-center bg-gray-50">
                <Loader2 className="h-8 w-8 animate-spin text-primary" />
                <span className="ml-2 text-gray-500 font-medium">Carregando...</span>
            </div>
        );
    }

    if (!session) {
        return <Navigate to="/login" state={{ from: location }} replace />;
    }

    // Force password change
    if (profile?.must_change_password && location.pathname !== "/change-password") {
        return <Navigate to="/change-password" replace />;
    }

    return children;
};
