import { useState, useRef, useEffect, useCallback } from "react";
import { toast } from "sonner";
import { ProjectData, ContratoData } from "../types";
import { supabase } from "@/integrations/supabase/client";
import { fetchApiData } from "@/lib/apiClient";

const STATUS_MAPPING: Record<string, string> = {
    'CANCELADO': 'RESCINDIDO',
    'CONCLUÍDO': 'CONCLUÍDO',
    'EM TRÂMITE - ADITIVO': 'ANDAMENTO',
    'ENCERRADO / TRD': 'CONCLUÍDO',
    'NÃO INICIADO': 'A INICIAR',
    'RESCINDIDO': 'RESCINDIDO',
    'RESCISÃO EM TRÂMITE': 'ANDAMENTO',
    'SOB GESTÃO DA SIURB': 'ANDAMENTO',
    'SUSPENSO': 'SUSPENSO',
    'TRD EM TRAMITAÇÃO': 'CONCLUÍDO',
    'TRP ASSINADO': 'ANDAMENTO',
    'VENCIDO': 'ANDAMENTO',
    'VIGENTE': 'ANDAMENTO'
};

export const useMapData = () => {
    const [projects, setProjects] = useState<ProjectData[]>([]);
    const projectsRef = useRef<ProjectData[]>([]);
    const [isLoading, setIsLoading] = useState(false);
    const [isUpdatingPriority, setIsUpdatingPriority] = useState(false);
    const [regionalStats, setRegionalStats] = useState<any[]>([]);

    useEffect(() => {
        projectsRef.current = projects;
    }, [projects]);

    const loadProjectsData = useCallback(async () => {
        try {
            setIsLoading(true);
            const startTime = performance.now();
            console.log("🚀 Loading data from API and Supabase...");

            // Fetch Regional Stats (Global Counters)
            // Catch 404s cleanly as this table/function may be disabled/missing on the SQL Server integration
            try {
                const { data: statsData, error: statsError } = await supabase
                    .rpc('get_regional_stats');

                if (statsError && statsError.code !== 'PGRST202') {
                    // PGRST202 is usually "function not found"
                    console.error("Error loading regional stats:", statsError);
                } else if (!statsError) {
                    setRegionalStats(statsData || []);
                }
            } catch (err) {
                console.warn("Could not fetch regional stats (expected if SQL Server API replaces this).");
            }

            // Fetch Data from SQL API
            const [empreendimentosData, contratosData, ceData] = await Promise.all([
                fetchApiData<any[]>('/Empreendimentos'),
                fetchApiData<any[]>('/Contratos').catch(() => []),
                fetchApiData<any[]>('/ContratoEmpreendimentos').catch(() => [])
            ]);

            // Fetch Priority Data from Supabase
            let prioritiesData: any[] | null = [];
            let prioritiesError: any = null;
            try {
                const res = await supabase
                    .from('obras_prioritarias')
                    .select('id_empreendimento, prioritario');
                prioritiesData = res.data;
                prioritiesError = res.error;
            } catch (err) {
                prioritiesError = err;
            }

            if (prioritiesError && prioritiesError.code !== '42P01') {
                console.error("Error loading priorities:", prioritiesError);
            }

            const prioridadesMap = new Map();
            if (prioritiesData) {
                prioritiesData.forEach(p => prioridadesMap.set(p.id_empreendimento, p.prioritario));
            }

            // Map Contratos
            const contratosMap = new Map();
            if (Array.isArray(contratosData)) {
                contratosData.forEach(c => {
                    const nmContratoUpper = (c.nmContrato || "").toUpperCase();
                    const nmTipoUpper = (c.nmTipoContrato || "").toUpperCase();
                    if (nmContratoUpper.includes("TESTE") || nmTipoUpper.includes("TESTE")) {
                        return; // Omit test data
                    }
                    contratosMap.set(c.idContrato, c);
                });
            }

            const contratosPorEmpreendimento: Record<number, ContratoData[]> = {};
            if (Array.isArray(ceData)) {
                ceData.forEach(ce => {
                    const c = contratosMap.get(ce.idContrato);
                    if (c) {
                        if (!contratosPorEmpreendimento[ce.idEmpreendimento]) {
                            contratosPorEmpreendimento[ce.idEmpreendimento] = [];
                        }

                        const rawStatus = (c.nmStatus || "").trim().toUpperCase();
                        const mappedStatus = STATUS_MAPPING[rawStatus] || c.nmStatus || "N/A";

                        contratosPorEmpreendimento[ce.idEmpreendimento].push({
                            id: String(c.idContrato),
                            nr_contrato: c.nmContrato || "N/A",
                            tipo_contrato_dash: c.nmTipoContrato || "N/A",
                            andamento_concluido: mappedStatus,
                            execucao_data_inicio: c.dtInicioVigencia,
                            execucao_data_fim: c.dtTerminoVigencia,
                            valor_atual: c.vlTotalContrato || c.vlContrato
                        });
                    }
                });
            }

            const mappedProjects: ProjectData[] = [];

            if (Array.isArray(empreendimentosData)) {
                empreendimentosData.forEach(emp => {
                    const nmEmpUpper = (emp.nmEmpreendimento || "").toUpperCase();
                    const nmProgUpper = (emp.nmPrograma || "").toUpperCase();
                    if (nmEmpUpper.includes("TESTE") || nmProgUpper.includes("TESTE")) {
                        return; // Skip test data
                    }

                    if (emp.nrLatitude && emp.nrLongitude) {
                        mappedProjects.push({
                            id: String(emp.idEmpreendimento),
                            id_empreendimento: emp.idEmpreendimento,
                            Programas: emp.nmPrograma || "N/A",
                            Empreendimentos: emp.nmEmpreendimento || "Sem Nome",
                            Latitude: Number(emp.nrLatitude),
                            Longitude: Number(emp.nrLongitude),
                            Subprefeitura: undefined,
                            subprefeitura: undefined,
                            distrito: emp.nmDistrito ? emp.nmDistrito.trim() : undefined,
                            prioritario: prioridadesMap.get(emp.idEmpreendimento) || false,
                            contratos: contratosPorEmpreendimento[emp.idEmpreendimento] || []
                        });
                    }
                });
            }

            setProjects(mappedProjects);

            const loadTime = ((performance.now() - startTime) / 1000).toFixed(2);
            console.log(`✅ Loaded ${mappedProjects.length} projects in ${loadTime}s`);
            toast.success("Dados atualizados com sucesso!");

        } catch (error) {
            console.error("Error loading data:", error);
            toast.error("Erro ao carregar dados dos Empreendimentos.");
        } finally {
            setIsLoading(false);
        }
    }, []);

    useEffect(() => {
        loadProjectsData();
    }, [loadProjectsData]);

    const togglePrioritario = async (projectId: string, currentValue: boolean) => {
        setIsUpdatingPriority(true);
        try {
            // Persist to Supabase
            const { error } = await supabase
                .from('obras_prioritarias')
                .upsert({
                    id_empreendimento: Number(projectId),
                    prioritario: !currentValue
                });

            if (error && error.code !== '42P01') {
                throw error;
            } else if (error && error.code === '42P01') {
                toast.warning("Tabela de prioridades não configurada ainda. Rodar script SQL.");
            }

            // Optimistic update 
            setProjects(prev => prev.map(p =>
                p.id === projectId ? { ...p, prioritario: !currentValue } : p
            ));

            if (!error) toast.info(`Prioridade ${!currentValue ? 'marcada' : 'removida'} com sucesso.`);
        } catch (error) {
            console.error("Error updating priority:", error);
            toast.error("Erro ao atualizar prioridade.");
        } finally {
            setIsUpdatingPriority(false);
        }
    };

    return {
        projects,
        setProjects,
        isLoading,
        isUpdatingPriority,
        togglePrioritario,
        refreshData: loadProjectsData,
        regionalStats
    };
};
