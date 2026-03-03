import { useState, useMemo, useCallback } from "react";
import { ProjectData, MapLayerType } from "../types";
import { isPointInPolygon } from "../utils/mapHelpers";

interface UseMapFiltersProps {
    projects: ProjectData[];
    currentMapLayer: MapLayerType;
    selectedDistrito: string;
    selectedSubprefeitura: string;
    availableDistritos: Array<{ name: string, geojson: any }>;
    availableSubprefeituras: Array<{ name: string, geojson: any }>;
}

export const useMapFilters = ({
    projects,
    currentMapLayer,
    selectedDistrito,
    selectedSubprefeitura,
    availableDistritos,
    availableSubprefeituras
}: UseMapFiltersProps) => {
    const [searchTerm, setSearchTerm] = useState("");
    const [selectedPrograms, setSelectedPrograms] = useState<string[]>([]);
    const [selectedStatus, setSelectedStatus] = useState<string>("all");
    const [selectedTipoContrato, setSelectedTipoContrato] = useState<string>("all");
    const [selectedPriorityOnly, setSelectedPriorityOnly] = useState(false);

    // Helper functions for Multi-Select Programs
    const toggleProgram = (program: string) => {
        setSelectedPrograms(prev => {
            if (prev.includes("__NONE__")) {
                return [program];
            }
            if (prev.includes(program)) {
                return prev.filter(p => p !== program);
            } else {
                return [...prev, program];
            }
        });
    };

    const selectAllPrograms = () => setSelectedPrograms([]);
    const deselectAllPrograms = () => setSelectedPrograms(["__NONE__"]);

    // Base Valid Projects (with relevant contracts)
    const validProjects = useMemo(() => {
        return projects.filter(project => {
            // ALWAYS SHOW PRIORITY PROJECTS
            if (project.prioritario) return true;

            // SHOW PROJECTS WITHOUT CONTRACTS (as requested)
            if (!project.contratos || project.contratos.length === 0) return true;

            return true;
        });
    }, [projects]);

    // Derived Project Lists for filter options
    // (We use validProjects to generate the lists of available options)
    const uniquePrograms = useMemo(() =>
        Array.from(new Set(validProjects.map(p => p.Programas).filter(Boolean))).sort()
        , [validProjects]);

    const uniqueTipoContrato = useMemo(() =>
        Array.from(new Set(validProjects.flatMap(p => p.contratos?.map(c => c.tipo_contrato_dash) || []).filter(Boolean))).sort()
        , [validProjects]);

    const uniqueStatuses = useMemo(() => {
        const statuses = Array.from(new Set(validProjects.flatMap(p => p.contratos?.map(c => c.andamento_concluido) || []))).filter(Boolean);

        const statusOrder: Record<string, number> = {
            'A INICIAR': 1,
            'ANDAMENTO': 2,
            'CONCLUÍDO': 3,
            'SUSPENSO': 4,
            'RESCINDIDO': 5
        };

        return statuses.sort((a, b) => {
            const orderA = statusOrder[a] || 99;
            const orderB = statusOrder[b] || 99;
            if (orderA !== orderB) return orderA - orderB;
            return a.localeCompare(b);
        });
    }, [validProjects]);

    // Unified Filter Logic
    const getFilteredProjects = useCallback((projectsToFilter: ProjectData[], options: { ignoreProgram?: boolean, ignoreStatus?: boolean } = {}) => {
        return projectsToFilter.filter(project => {
            // 1. Program Filter
            const matchesProgram = options.ignoreProgram ||
                selectedPrograms.length === 0 ||
                (selectedPrograms.includes("__NONE__") ? false :
                    selectedPrograms.some(selected => selected.toLowerCase() === project.Programas.toLowerCase())
                );

            // 2. Status Filter
            const matchesStatus = options.ignoreStatus || selectedStatus === "all" ||
                (project.contratos && project.contratos.some(c => c.andamento_concluido === selectedStatus));

            // 3. Contract Type Filter
            const matchesTipoContrato = selectedTipoContrato === "all" ||
                (project.contratos && project.contratos.some(c => c.tipo_contrato_dash === selectedTipoContrato));

            // 4. Search Filter
            const matchesSearch = searchTerm === "" ||
                project.Empreendimentos.toLowerCase().includes(searchTerm.toLowerCase()) ||
                project.Programas.toLowerCase().includes(searchTerm.toLowerCase()) ||
                (project.contratos && project.contratos.some(c =>
                    c.nr_contrato.toLowerCase().includes(searchTerm.toLowerCase()) ||
                    (c.tipo_contrato_dash && c.tipo_contrato_dash.toLowerCase().includes(searchTerm.toLowerCase()))
                ));

            // 5. Regional Filter
            let matchesRegion = true;

            // Strict Logic: If a Subprefeitura is selected, use it directly if available in the project data.
            // Fallback to Geospatial match only if the project data lacks the field.
            if (currentMapLayer === "distritos" && selectedDistrito !== "all") {
                if (project.distrito && project.distrito === selectedDistrito) {
                    matchesRegion = true;
                } else {
                    // Fallback to spatial check if district name is missing or mismatch
                    // Actually, if we trust the new ETL columns, we should prefer the column match.
                    // But legacy data might not have it.
                    const distritoFeature = availableDistritos.find(d => d.name === selectedDistrito);
                    if (distritoFeature) {
                        matchesRegion = isPointInPolygon(project.Longitude, project.Latitude, distritoFeature.geojson);
                    }
                }
            }

            if (currentMapLayer === "subprefeituras" && selectedSubprefeitura !== "all") {
                if (project.subprefeitura && project.subprefeitura === selectedSubprefeitura) {
                    matchesRegion = true;
                } else {
                    const subprefeituraFeature = availableSubprefeituras.find(s => s.name === selectedSubprefeitura);
                    if (subprefeituraFeature) {
                        matchesRegion = isPointInPolygon(project.Longitude, project.Latitude, subprefeituraFeature.geojson);
                    }
                }
            }

            // 6. Priority Filter
            const matchesPriority = !selectedPriorityOnly || project.prioritario === true;

            return matchesProgram && matchesStatus && matchesTipoContrato && matchesSearch && matchesRegion && matchesPriority;
        });
    }, [
        selectedPrograms,
        selectedStatus,
        selectedTipoContrato,
        searchTerm,
        currentMapLayer,
        selectedDistrito,
        selectedSubprefeitura,
        selectedPriorityOnly,
        availableDistritos,
        availableSubprefeituras
    ]);

    const filteredProjects = useMemo(() => getFilteredProjects(validProjects), [getFilteredProjects, validProjects]);

    // Dynamic Facet Counts
    // Calculate available programs based on CURRENT filters (Region, Status, etc) excluding the Program filter itself.
    const programCounts = useMemo(() => {
        const projectsForPrograms = getFilteredProjects(validProjects, { ignoreProgram: true });
        const counts: Record<string, number> = {};

        projectsForPrograms.forEach(p => {
            const prog = p.Programas;
            if (prog) {
                counts[prog] = (counts[prog] || 0) + 1;
            }
        });
        return counts;
    }, [getFilteredProjects, validProjects]);


    const clearFilters = () => {
        setSearchTerm("");
        setSelectedPrograms([]);
        setSelectedStatus("all");
        setSelectedTipoContrato("all");
        setSelectedPriorityOnly(false);
        // Note: Regional filters are cleared via useMapbox setters, so they should be called by the component
    };

    return {
        searchTerm, setSearchTerm,
        selectedPrograms, toggleProgram, selectAllPrograms, deselectAllPrograms,
        selectedStatus, setSelectedStatus,
        selectedTipoContrato, setSelectedTipoContrato,
        selectedPriorityOnly, setSelectedPriorityOnly,
        filteredProjects,
        validProjects,
        uniquePrograms,
        uniqueTipoContrato,
        uniqueStatuses,
        programCounts, // Export new counts
        clearFilters,
        setSelectedPrograms
    };
};
