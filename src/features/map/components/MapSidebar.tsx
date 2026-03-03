import { useState } from "react";
import { ChevronLeft, Grid3x3, Building2, Map as MapIcon, Satellite, Globe, Search, Filter, X, BarChart3, UserCog, LogOut, FileText, Activity } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { useAuth } from "@/components/AuthProvider";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Checkbox } from "@/components/ui/checkbox";
import { cn } from "@/lib/utils";
import logoSpObras from "@/assets/logo-sp-obras.png";
import logoPrefeituraSp from "@/assets/logo-prefeitura-sp.png";
import { ProjectData, MapLayerType, MapStyleType } from "../types";
import { getProgramColor } from "../utils/mapHelpers";
import { PowerBIModal } from "./PowerBIModal";
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover";
import { Star } from "lucide-react";

interface MapSidebarProps {
    isSidebarCollapsed: boolean;
    setIsSidebarCollapsed: (collapsed: boolean) => void;

    // Map State
    currentMapLayer: MapLayerType;
    setCurrentMapLayer: (layer: MapLayerType) => void;
    currentMapStyle: MapStyleType;
    changeMapStyle: (style: MapStyleType) => void;

    // Filter State
    searchTerm: string;
    setSearchTerm: (term: string) => void;
    selectedPrograms: string[];
    toggleProgram: (program: string) => void;
    selectAllPrograms: () => void;
    deselectAllPrograms: () => void;
    selectedStatus: string;
    setSelectedStatus: (status: string) => void;
    selectedTipoContrato: string;
    setSelectedTipoContrato: (type: string) => void;
    selectedPriorityOnly: boolean;
    setSelectedPriorityOnly: (priority: boolean) => void;

    // Regional State
    selectedDistrito: string;
    setSelectedDistrito: (distrito: string) => void;
    selectedSubprefeitura: string;
    setSelectedSubprefeitura: (subpref: string) => void;

    // Data
    availableDistritos: Array<{ name: string }>;
    availableSubprefeituras: Array<{ name: string }>;
    filteredProjects: ProjectData[];
    validProjects: ProjectData[];
    uniquePrograms: string[];
    uniqueStatuses: string[];
    uniqueTipoContrato: string[];

    // Interactions
    programCounts: Record<string, number>;
    handleProjectSelect: (projectId: string) => void;
    selectedProjectId: string | null;
    resetAllFilters: () => void;
}

export const MapSidebar = ({
    isSidebarCollapsed,
    setIsSidebarCollapsed,
    currentMapLayer,
    setCurrentMapLayer,
    currentMapStyle,
    changeMapStyle,
    searchTerm,
    setSearchTerm,
    selectedPrograms,
    toggleProgram,
    selectAllPrograms,
    deselectAllPrograms,
    selectedStatus,
    setSelectedStatus,
    selectedTipoContrato,
    setSelectedTipoContrato,
    selectedPriorityOnly,
    setSelectedPriorityOnly,
    selectedDistrito,
    setSelectedDistrito,
    selectedSubprefeitura,
    setSelectedSubprefeitura,
    availableDistritos,
    availableSubprefeituras,
    filteredProjects,
    validProjects,
    uniquePrograms,
    uniqueStatuses,
    uniqueTipoContrato,
    programCounts,
    handleProjectSelect,
    selectedProjectId,
    resetAllFilters
}: MapSidebarProps) => {
    const { isAdmin, signOut } = useAuth();
    const navigate = useNavigate();

    // Local State
    const [isBIOpen, setIsBIOpen] = useState(false);
    const [biFilterProject, setBiFilterProject] = useState<string | null>(null);
    const [biFilterProgram, setBiFilterProgram] = useState<string | null>(null);
    const [biFilterProjectId, setBiFilterProjectId] = useState<number | null>(null);

    // Derived Project Counts
    const filteredCount = selectedProjectId !== null ? 1 : filteredProjects.length;

    // Listen for custom event from Map Popup
    useState(() => {
        const handleOpenBI = (e: any) => {
            if (e.detail?.projectName) {
                setBiFilterProject(e.detail.projectName);
                setBiFilterProgram(e.detail.programName || null);
                setBiFilterProjectId(e.detail.projectId || null);
            } else {
                setBiFilterProject(null);
                setBiFilterProgram(null);
                setBiFilterProjectId(null);
            }
            setIsBIOpen(true);
        };
        window.addEventListener('open-powerbi-modal', handleOpenBI);
        return () => window.removeEventListener('open-powerbi-modal', handleOpenBI);
    });



    return (
        <>


            <div className={cn(
                "absolute top-0 left-0 z-10 h-full bg-card/95 backdrop-blur-sm border-r border-border shadow-xl transition-all duration-300 flex flex-col",
                isSidebarCollapsed ? "w-0 overflow-hidden" : "w-full md:w-[352px]"
            )}>
                {/* Header - Fixed */}
                <div className="p-6 pb-4 border-b border-border flex-shrink-0">
                    <div className="flex items-center justify-between gap-3 mb-4">
                        <div className="flex items-center gap-3">
                            <img src={logoPrefeituraSp} alt="Prefeitura de São Paulo" className="h-10 w-auto" />
                            <img src={logoSpObras} alt="SP Obras" className="h-10 w-auto" />
                        </div>
                        <Button variant="ghost" size="icon" onClick={() => setIsSidebarCollapsed(true)} className="h-8 w-8">
                            <ChevronLeft className="h-4 w-4" />
                        </Button>
                    </div>

                    <div className="space-y-1">
                        <h1 className="text-2xl font-bold text-foreground">Empreendimentos</h1>
                        <p className="text-sm text-muted-foreground">São Paulo - Obras e Projetos</p>
                    </div>
                </div>

                {/* Scrollable Content */}
                <div className="flex-1 overflow-y-auto p-6 pt-4 space-y-6">

                    {/* BI Report Buttons */}
                    <div className="space-y-2 pb-4 border-b border-border">
                        <span className="text-sm font-medium text-foreground">Painéis de Gestão</span>
                        <div className="flex gap-2">
                            {/* 
                                Logic for Education/Schools restriction:
                                - Check if available programs contain "Escolas" or "Educação"
                                - Check if the user is RESTRICTED to only these programs
                            */}
                            {(() => {
                                const educationKeywords = ['ESCOLA', 'EDUCACAO', 'EDUCAÇÃO'];

                                const educationPrograms = uniquePrograms.filter(p =>
                                    p && educationKeywords.some(k => p.toUpperCase().includes(k))
                                );

                                const hasEducationAccess = educationPrograms.length > 0;
                                const isRestrictedToEducation = hasEducationAccess && uniquePrograms.length === educationPrograms.length;

                                // Program name to pass to BI (prefer the one found, or default to 'Escolas')
                                const educationProgramName = educationPrograms[0] || 'Escolas';

                                return (
                                    <>
                                        {/* General Dashboard - Hidden for users restricted to Education */}
                                        {!isRestrictedToEducation && (
                                            <Button
                                                variant="outline"
                                                className="flex-1 justify-center gap-2 border-primary/20 hover:bg-primary/5 hover:text-primary"
                                                onClick={() => {
                                                    setBiFilterProgram(null); // General view
                                                    setIsBIOpen(true);
                                                }}
                                            >
                                                <BarChart3 className="h-4 w-4" />
                                                <span className="font-semibold">Geral</span>
                                            </Button>
                                        )}

                                        {/* Education Dashboard - Visible if user has access to Education */}
                                        {hasEducationAccess && (
                                            <Button
                                                variant="outline"
                                                className="flex-1 justify-center gap-2 border-primary/20 hover:bg-primary/5 hover:text-primary"
                                                onClick={() => {
                                                    setBiFilterProgram(educationProgramName); // Pass specific program
                                                    setIsBIOpen(true);
                                                }}
                                            >
                                                <BarChart3 className="h-4 w-4" />
                                                <span className="font-semibold">Educação</span>
                                            </Button>
                                        )}
                                    </>
                                );
                            })()}
                        </div>
                    </div>

                    {/* View Type Selection */}
                    <div className="space-y-2 pb-4 border-b border-border">
                        <span className="text-sm font-medium text-foreground">Tipo de Visualização</span>
                        <div className="flex gap-2">
                            <Button
                                variant={currentMapLayer === "distritos" ? "default" : "outline"}
                                size="sm"
                                onClick={() => setCurrentMapLayer("distritos")}
                                className="justify-center gap-2 flex-1"
                            >
                                <Grid3x3 className="h-4 w-4" />
                                <span>Distritos</span>
                            </Button>

                            <Button
                                variant={currentMapLayer === "subprefeituras" ? "default" : "outline"}
                                size="sm"
                                onClick={() => setCurrentMapLayer("subprefeituras")}
                                className="justify-center gap-2 flex-1"
                            >
                                <Building2 className="h-4 w-4" />
                                <span>Subprefeituras</span>
                            </Button>
                        </div>
                    </div>

                    {/* Filter Row - New Design */}
                    <div className="space-y-2 pb-4 border-b border-border">
                        <span className="text-sm font-medium text-foreground">Filtros</span>
                        <div className="grid grid-cols-2 gap-2">

                            {/* Status Filter */}
                            <Popover>
                                <PopoverTrigger asChild>
                                    <Button variant={selectedStatus !== "all" ? "default" : "outline"} size="sm" className="w-full justify-start gap-2">
                                        <Activity className="h-4 w-4 shrink-0" />
                                        <span className="truncate flex-1 text-left">
                                            {selectedStatus !== "all" ? selectedStatus : "Status do Contrato"}
                                        </span>
                                    </Button>
                                </PopoverTrigger>
                                <PopoverContent className="w-72" align="start">
                                    <div className="space-y-3">
                                        <h4 className="font-medium leading-none mb-2">Status do Contrato</h4>
                                        <select className="w-full px-3 py-2 bg-background border border-input rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-ring" value={selectedStatus} onChange={e => setSelectedStatus(e.target.value)}>
                                            <option value="all">Todos os Status</option>
                                            {uniqueStatuses.map(status => <option key={status} value={status}>{status}</option>)}
                                        </select>
                                    </div>
                                </PopoverContent>
                            </Popover>

                            {/* Regional Filter (Subprefeitura/Distrito) */}
                            <Popover>
                                <PopoverTrigger asChild>
                                    <Button variant={(currentMapLayer === "distritos" ? selectedDistrito !== "all" : selectedSubprefeitura !== "all") ? "default" : "outline"} size="sm" className="w-full justify-start gap-2">
                                        {currentMapLayer === "distritos" ? <Grid3x3 className="h-4 w-4 shrink-0" /> : <Building2 className="h-4 w-4 shrink-0" />}
                                        <span className="truncate flex-1 text-left">
                                            {currentMapLayer === "distritos"
                                                ? (selectedDistrito !== "all" ? selectedDistrito : "Distrito")
                                                : (selectedSubprefeitura !== "all" ? selectedSubprefeitura : "Subprefeitura")}
                                        </span>
                                    </Button>
                                </PopoverTrigger>
                                <PopoverContent className="w-72" align="start">
                                    <div className="space-y-3">
                                        <h4 className="font-medium leading-none mb-2">
                                            {currentMapLayer === "distritos" ? "Filtrar por Distrito" : "Filtrar por Subprefeitura"}
                                        </h4>
                                        {currentMapLayer === "distritos" ? (
                                            <select
                                                className="w-full px-3 py-2 bg-background border border-input rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-ring"
                                                value={selectedDistrito}
                                                onChange={e => setSelectedDistrito(e.target.value)}
                                            >
                                                <option value="all">Todos os Distritos</option>
                                                {availableDistritos.map(distrito => (
                                                    <option key={distrito.name} value={distrito.name}>{distrito.name}</option>
                                                ))}
                                            </select>
                                        ) : (
                                            <select
                                                className="w-full px-3 py-2 bg-background border border-input rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-ring"
                                                value={selectedSubprefeitura}
                                                onChange={e => setSelectedSubprefeitura(e.target.value)}
                                            >
                                                <option value="all">Todas as Subprefeituras</option>
                                                {availableSubprefeituras.map(subprefeitura => (
                                                    <option key={subprefeitura.name} value={subprefeitura.name}>{subprefeitura.name}</option>
                                                ))}
                                            </select>
                                        )}
                                    </div>
                                </PopoverContent>
                            </Popover>

                            {/* Contract Type Filter */}
                            <Popover>
                                <PopoverTrigger asChild>
                                    <Button variant={selectedTipoContrato !== "all" ? "default" : "outline"} size="sm" className="w-full justify-start gap-2">
                                        <FileText className="h-4 w-4 shrink-0" />
                                        <span className="truncate flex-1 text-left">
                                            {selectedTipoContrato !== "all" ? selectedTipoContrato : "Tipo de Contrato"}
                                        </span>
                                    </Button>
                                </PopoverTrigger>
                                <PopoverContent className="w-72" align="start">
                                    <div className="space-y-3">
                                        <h4 className="font-medium leading-none mb-2">Tipo de Contrato</h4>
                                        <select className="w-full px-3 py-2 bg-background border border-input rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-ring" value={selectedTipoContrato} onChange={e => setSelectedTipoContrato(e.target.value)}>
                                            <option value="all">Todos os Tipos</option>
                                            {uniqueTipoContrato.map(tipo => <option key={tipo} value={tipo}>{tipo}</option>)}
                                        </select>
                                    </div>
                                </PopoverContent>
                            </Popover>

                            {/* Program Filter */}
                            <Popover>
                                <PopoverTrigger asChild>
                                    <Button variant={selectedPrograms.length > 0 ? "default" : "outline"} size="sm" className="w-full justify-start gap-2">
                                        <Filter className="h-4 w-4 shrink-0" />
                                        <span className="truncate flex-1 text-left">
                                            {selectedPrograms.length > 0 ? `${selectedPrograms.length} Programa(s)` : "Programa"}
                                        </span>
                                    </Button>
                                </PopoverTrigger>
                                <PopoverContent className="w-80" align="start">
                                    <div className="space-y-4">
                                        <div className="flex items-center justify-between">
                                            <h4 className="font-medium leading-none">Programa</h4>
                                            <div className="flex gap-2 text-xs">
                                                <button onClick={selectAllPrograms} className="text-primary hover:underline">Todos</button>
                                                <span className="text-muted-foreground">|</span>
                                                <button onClick={deselectAllPrograms} className="text-primary hover:underline">Nenhum</button>
                                            </div>
                                        </div>
                                        <ScrollArea className="h-64 rounded-md border p-2">
                                            <div className="space-y-1">
                                                {uniquePrograms.map(program => {
                                                    const projectCount = programCounts[program] || 0;
                                                    if (projectCount === 0) return null;

                                                    const isChecked = selectedPrograms.length === 0 || (!selectedPrograms.includes("__NONE__") && selectedPrograms.includes(program));

                                                    return (
                                                        <label key={program} className="flex items-center gap-2 p-2 hover:bg-accent rounded cursor-pointer transition-colors">
                                                            <Checkbox checked={isChecked} onCheckedChange={() => toggleProgram(program)} className="w-4 h-4" />
                                                            <div className="w-3 h-3 rounded-full flex-shrink-0" style={{ backgroundColor: getProgramColor(program) }} />
                                                            <span className="text-sm text-foreground flex-1">{program}</span>
                                                            <span className="text-xs text-muted-foreground">({projectCount})</span>
                                                        </label>
                                                    );
                                                })}
                                            </div>
                                        </ScrollArea>
                                    </div>
                                </PopoverContent>
                            </Popover>

                            {/* Priority Toggle Button */}
                            <Button
                                variant={selectedPriorityOnly ? "default" : "outline"}
                                size="sm"
                                onClick={() => setSelectedPriorityOnly(!selectedPriorityOnly)}
                                className="col-span-2 w-full justify-center gap-2"
                            >
                                <Star className={cn("h-4 w-4 shrink-0", selectedPriorityOnly && "fill-current text-yellow-300")} />
                                <span className="truncate">Plano de Metas</span>
                                {filteredProjects.filter(p => p.prioritario).length > 0 && (
                                    <Badge variant="secondary" className="ml-1 h-5 px-1.5 text-[10px] leading-none shrink-0">
                                        {filteredProjects.filter(p => p.prioritario).length}
                                    </Badge>
                                )}
                            </Button>
                        </div>
                    </div>

                    {/* Map Style Selection */}
                    <div className="space-y-2 pb-4 border-b border-border">
                        <span className="text-sm font-medium text-foreground">Estilo do Mapa</span>
                        <div className="flex gap-2">
                            <Button variant={currentMapStyle === "STREETS" ? "default" : "outline"} size="sm" onClick={() => changeMapStyle("STREETS")} className="flex-1 gap-2">
                                <MapIcon className="h-4 w-4" />
                                Desenho
                            </Button>
                            <Button variant={currentMapStyle === "SATELLITE_STREETS" ? "default" : "outline"} size="sm" onClick={() => changeMapStyle("SATELLITE_STREETS")} className="flex-1 gap-2">
                                <Satellite className="h-4 w-4" />
                                Satélite
                            </Button>
                            <Button variant={currentMapStyle === "SATELLITE" ? "default" : "outline"} size="sm" onClick={() => changeMapStyle("SATELLITE")} className="flex-1 gap-2">
                                <Globe className="h-4 w-4" />
                                Aéreo
                            </Button>
                        </div>
                    </div>

                    {/* Project List */}
                    <div className="space-y-3 pt-4 border-t border-border">
                        <div className="flex items-center justify-between">
                            <div className="flex items-center gap-2">
                                <h3 className="text-sm font-semibold text-foreground">Empreendimentos</h3>
                                <Badge variant="secondary" className="text-xs">
                                    {filteredCount} de {validProjects.length}
                                </Badge>
                            </div>
                            {selectedProjectId && <Button variant="ghost" size="sm" onClick={() => handleProjectSelect(selectedProjectId)} className="text-xs h-7">
                                Limpar seleção
                            </Button>}
                        </div>

                        {/* Search Input */}
                        <div className="pr-4">
                            <div className="relative">
                                <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                                <Input
                                    type="text"
                                    placeholder="Buscar nome, programa ou contrato..."
                                    value={searchTerm}
                                    onChange={e => setSearchTerm(e.target.value)}
                                    className="pl-9 pr-9"
                                />
                                {searchTerm && (
                                    <button
                                        onClick={() => setSearchTerm("")}
                                        className="absolute right-2.5 top-2.5 text-muted-foreground hover:text-foreground"
                                    >
                                        <X className="h-4 w-4" />
                                    </button>
                                )}
                            </div>
                        </div>

                        <ScrollArea className="h-[400px] pr-4">
                            <div className="space-y-2">
                                {filteredProjects.map(project => (
                                    <div
                                        key={project.id}
                                        onClick={() => handleProjectSelect(project.id!)}
                                        className={cn(
                                            "p-3 rounded-lg border cursor-pointer transition-all hover:shadow-md",
                                            selectedProjectId === project.id
                                                ? "border-primary bg-primary/10 shadow-sm"
                                                : "border-border bg-background hover:border-primary/50"
                                        )}
                                    >
                                        <div className="flex items-start gap-2">
                                            <div
                                                className="w-3 h-3 rounded-full border-2 border-white shadow-sm flex-shrink-0 mt-1"
                                                style={{ backgroundColor: getProgramColor(project.Programas) }}
                                            />
                                            <div className="flex-1 min-w-0">
                                                <p className="text-sm font-medium text-foreground line-clamp-2">
                                                    {project.Empreendimentos}
                                                </p>
                                                <p className="text-xs text-muted-foreground mt-1">
                                                    {project.Programas}
                                                </p>
                                                {project.contratos && project.contratos.length > 0 && (
                                                    <p className="text-xs text-muted-foreground mt-1">
                                                        {project.contratos.length} contrato{project.contratos.length > 1 ? 's' : ''}
                                                    </p>
                                                )}
                                                {project.Subprefeitura && (
                                                    <p className="text-xs text-muted-foreground truncate">
                                                        📍 {project.Subprefeitura}
                                                    </p>
                                                )}
                                            </div>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </ScrollArea>

                        {filteredProjects.length === 0 && <div className="text-center py-8 text-muted-foreground text-sm">
                            Nenhum empreendimento encontrado
                        </div>}
                    </div>


                </div>

                {/* Footer - Fixed */}
                <div className="p-4 border-t border-border bg-card space-y-2 flex-shrink-0">
                    {isAdmin && (
                        <Button
                            variant="ghost"
                            size="sm"
                            onClick={() => navigate("/admin/users")}
                            className="w-full gap-2 justify-start text-muted-foreground hover:text-primary"
                        >
                            <UserCog className="h-4 w-4" />
                            Gestão de Acessos
                        </Button>
                    )}
                    <div className="h-px bg-border my-1" />
                    <Button
                        variant="ghost"
                        size="sm"
                        onClick={async () => {
                            console.log("Logout clicked");
                            try {
                                await signOut();
                                console.log("SignOut completed, navigating...");
                                navigate("/login");
                            } catch (error) {
                                console.error("Logout failed:", error);
                                // Force navigation anyway
                                navigate("/login");
                            }
                        }}
                        className="w-full gap-2 justify-start text-muted-foreground hover:text-destructive"
                    >
                        <LogOut className="h-4 w-4" />
                        Sair
                    </Button>

                    <div className="h-px bg-border my-1" />

                    <Button
                        variant="destructive"
                        size="sm"
                        onClick={resetAllFilters}
                        className="w-full gap-2"
                    >
                        <X className="h-4 w-4" />
                        Limpar Todos os Filtros
                    </Button>
                </div>
            </div >
            <PowerBIModal
                isOpen={isBIOpen}
                onClose={() => {
                    setIsBIOpen(false);
                    setBiFilterProject(null); // Reset filter on close
                    setBiFilterProgram(null);
                    setBiFilterProjectId(null); // Reset ID
                }}
                projectName={biFilterProject}
                programName={biFilterProgram}
                projectId={biFilterProjectId}
            />
        </>
    );
};
