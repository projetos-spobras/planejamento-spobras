import { createContext, useContext, useEffect, useState, useRef } from "react";
import { Session, User } from "@supabase/supabase-js";
import { supabase } from "@/integrations/supabase/client";

export interface Profile {
    id: string;
    email: string | null;
    full_name: string | null;
    orgao: string | null;
    departamento: string | null;
    user_type: 'admin' | 'user';
    must_change_password: boolean;
}

interface AuthContextType {
    session: Session | null;
    user: User | null;
    profile: Profile | null;
    loading: boolean;
    isAdmin: boolean;
    signOut: () => Promise<void>;
    refreshProfile: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType>({
    session: null,
    user: null,
    profile: null,
    loading: true,
    isAdmin: false,
    signOut: async () => { },
    refreshProfile: async () => { },
});

export const useAuth = () => useContext(AuthContext);

export const AuthProvider = ({ children }: { children: React.ReactNode }) => {
    const [session, setSession] = useState<Session | null>(null);
    const [user, setUser] = useState<User | null>(null);
    const [profile, setProfile] = useState<Profile | null>(null);
    const [loading, setLoading] = useState(true);

    // Use refs to track state without triggering re-renders in callbacks
    const userRef = useRef<User | null>(null);
    const profileRef = useRef<Profile | null>(null);

    useEffect(() => {
        userRef.current = user;
    }, [user]);

    useEffect(() => {
        profileRef.current = profile;
    }, [profile]);

    useEffect(() => {
        let mounted = true;

        // Safety timeout to prevent infinite loading
        const safetyTimeout = setTimeout(() => {
            if (mounted && loading) {
                console.warn("Auth loading timed out, forcing render");
                setLoading(false);
            }
        }, 3000);

        // Get initial session
        supabase.auth.getSession().then(({ data: { session } }) => {
            if (!mounted) return;
            setSession(session);
            setUser(session?.user ?? null);
            if (session?.user) {
                fetchProfile(session.user.id);
            } else {
                setLoading(false);
            }
        }).catch(err => {
            console.error("Error getting session:", err);
            if (mounted) setLoading(false);
        });

        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange(async (_event, session) => {
            if (!mounted) return;

            console.log("Auth state changed:", _event, session?.user?.email);

            // Use ref to check current state, avoiding stale closures
            const expectedUserId = userRef.current?.id;
            const newUserId = session?.user?.id;
            const hasProfile = !!profileRef.current;

            // 1. If same user and we have profile, do nothing (prevents background focus reloads)
            if (newUserId && newUserId === expectedUserId && hasProfile) {
                console.log("Same user and profile loaded, skipping reload/fetch");
                return;
            }

            // 2. Handle actual user change
            const isNewUser = newUserId !== expectedUserId;

            if (isNewUser) {
                setLoading(true);
                setProfile(null); // Clear profile on user change
            }

            setSession(session);
            setUser(session?.user ?? null);

            if (session?.user) {
                // Fetch profile only if we don't have it or it's a new user
                console.log("Fetching profile for:", session.user.id);
                try {
                    await fetchProfile(session.user.id);
                } catch (err) {
                    console.error("Profile fetch critical failure:", err);
                }
                setLoading(false);
            } else {
                setProfile(null);
                setLoading(false);
            }
        });

        return () => {
            mounted = false;
            clearTimeout(safetyTimeout);
            subscription.unsubscribe();
        };
    }, []);

    const fetchProfile = async (userId: string) => {
        const fetchPromise = supabase
            .from('map_users')
            .select('*')
            .eq('id', userId)
            .single();

        try {
            // Race with 5s timeout
            const { data, error } = await Promise.race([
                fetchPromise,
                new Promise<any>((_, reject) => setTimeout(() => reject(new Error("Profile fetch timeout")), 5000))
            ]);

            if (error) {
                console.error('Error fetching profile:', error);
                // If profile is missing but user exists, this is a critical sync issue
                if (error.code === 'PGRST116') { // JSON object requested, multiple (or no) rows returned
                    console.error("Profile not found for user:", userId);
                }
            } else {
                console.log("Profile fetched successfully:", data);
                setProfile(data as Profile);
            }
        } catch (error) {
            console.error('Error in fetchProfile:', error);
            // Don't throw, just log. UI will assume default rights (no admin) if profile fails.
        } finally {
            // No setLoading(false) here because onAuthStateChange handles it to avoid race conditions
            // effectively delegating the "global loading done" to the coordinator
        }
    };

    const refreshProfile = async () => {
        if (user) {
            await fetchProfile(user.id);
        }
    };

    const signOut = async () => {
        console.log("AuthProvider: signOut called");
        try {
            // Race between signOut and a 500ms timeout
            await Promise.race([
                supabase.auth.signOut(),
                new Promise(resolve => setTimeout(resolve, 500))
            ]);
        } catch (e) {
            console.error("AuthProvider signOut exception:", e);
        } finally {
            console.log("AuthProvider: Clearing local state");
            setProfile(null);
            setUser(null);
            setSession(null);
        }
    };

    const isAdmin = profile?.user_type === 'admin';

    return (
        <AuthContext.Provider value={{ session, user, profile, loading, isAdmin, signOut, refreshProfile }}>
            {children}
        </AuthContext.Provider>
    );
};
