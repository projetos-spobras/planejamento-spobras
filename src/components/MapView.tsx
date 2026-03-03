import { useEffect, useRef, useState } from "react";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import { Button } from "./ui/button";
import { cn } from "@/lib/utils";
import { useMapData } from "../features/map/hooks/useMapData";
import { useMapbox } from "../features/map/hooks/useMapbox";
import { useMapFilters } from "../features/map/hooks/useMapFilters";
import { MapSidebar } from "../features/map/components/MapSidebar";
import { buildFeatureCollection, buildRegionalClusters, getProjectPopupHTML } from "../features/map/utils/mapHelpers";
import { ProjectData } from "../features/map/types";
import { ChevronRight, ChevronLeft, Menu } from "lucide-react";
import { useAuth } from "@/components/AuthProvider";

export const MapView = () => {
  const { profile, isAdmin, loading: authLoading } = useAuth();
  const [isSidebarCollapsed, setIsSidebarCollapsed] = useState(false);
  const [selectedProjectId, setSelectedProjectId] = useState<string | null>(null);
  const hasInitializedFilter = useRef(false);

  // Data Hook
  const { projects, togglePrioritario, regionalStats } = useMapData();
  const projectsRef = useRef<ProjectData[]>([]);

  // Update projects ref when data changes
  useEffect(() => {
    projectsRef.current = projects;
  }, [projects]);

  // Expose togglePrioritario to window for popup buttons
  useEffect(() => {
    (window as any).togglePriority = (id: string, current: boolean) => {
      togglePrioritario(id, current);
    };
  }, [togglePrioritario]);

  // Mapbox Hook
  const {
    mapContainer,
    map,
    isMapInitialized,
    currentMapStyle,
    changeMapStyle,
    currentMapLayer,
    setCurrentMapLayer,
    loadMapLayer,
    selectedDistrito,
    setSelectedDistrito,
    selectedSubprefeitura,
    setSelectedSubprefeitura,
    availableDistritos,
    availableSubprefeituras,
    fitMapToFeature,
    resetMapPosition,
    updateProjectSource,
    currentOpenPopupRef,
    markerTooltipRef,
    layerPopupRef,
    projectSourceVersion
  } = useMapbox({
    projectsRef,
    isSidebarCollapsed,
    onDistrictChange: (d) => { /* Sync if needed */ },
    onSubprefectureChange: (s) => { /* Sync if needed */ },
    isAdmin
  });

  // Filters Hook
  const {
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
    programCounts,
    clearFilters: clearFiltersInternal,
    setSelectedPrograms
  } = useMapFilters({
    projects,
    currentMapLayer,
    selectedDistrito,
    selectedSubprefeitura,
    availableDistritos,
    availableSubprefeituras
  });

  // Effect to apply department-specific filters
  useEffect(() => {
    if (!authLoading && profile && !hasInitializedFilter.current) {
      if (profile.departamento === 'Educação') {
        console.log("Applying default filter for Educação: Escolas");
        setSelectedPrograms(['ESCOLAS']);
      }
      hasInitializedFilter.current = true;
    }
  }, [authLoading, profile, setSelectedPrograms]);

  // Clear all filters including regional
  const resetAllFilters = () => {
    clearFiltersInternal();
    setSelectedDistrito("all");
    setSelectedSubprefeitura("all");
    setSelectedProjectId(null);
    resetMapPosition();

    // Reload original layer state without filters
    if (currentMapLayer === "distritos") loadMapLayer("distritos");
    else loadMapLayer("subprefeituras");
  };

  // Load Map Layer when selection changes or map init
  useEffect(() => {
    if (!isMapInitialized) return;

    // Load layer based on current type and selection
    // Determine strict region name if not "all"
    const regionName = currentMapLayer === "distritos" ? selectedDistrito : selectedSubprefeitura;
    loadMapLayer(currentMapLayer, regionName);

  }, [currentMapLayer, selectedDistrito, selectedSubprefeitura, isMapInitialized]); // Dependencies handled carefully in hook but good to support here

  // Update Project Source on Filter Change (and Style Change via projectSourceVersion)
  useEffect(() => {
    if (!isMapInitialized || projects.length === 0) return;

    const hasRegionalFilter =
      (currentMapLayer === "distritos" && selectedDistrito !== "all") ||
      (currentMapLayer === "subprefeituras" && selectedSubprefeitura !== "all");

    const hasDrillDown =
      hasRegionalFilter ||
      searchTerm !== "" ||
      selectedProjectId !== null;

    let featureCollection;

    // Show Points (FeatureCollection) ONLY if drilling down (Region selected, Searching, or Single Project)
    // Facet filters (Program, Status, Type, Priority) should still show Regional Clusters (Bubbles)
    if (hasDrillDown) {
      featureCollection = buildFeatureCollection(filteredProjects);
    } else {
      featureCollection = buildRegionalClusters(
        filteredProjects,
        currentMapLayer,
        availableDistritos,
        availableSubprefeituras,
        regionalStats
      );
    }

    updateProjectSource(featureCollection);

  }, [
    filteredProjects,
    isMapInitialized,
    currentMapLayer,
    selectedDistrito,
    selectedSubprefeitura,
    availableDistritos, // Dependency for clusters
    availableSubprefeituras,
    searchTerm,
    selectedPrograms,
    selectedStatus,
    selectedTipoContrato,
    selectedPriorityOnly,
    projectSourceVersion, // Trigger update when style changes
    selectedProjectId,
    regionalStats
  ]);

  // Handle Project Selection (FlyTo & Popup)
  const handleProjectSelect = (projectId: string) => {
    if (selectedProjectId === projectId) {
      setSelectedProjectId(null);
      return;
    }
    setSelectedProjectId(projectId);

    const project = projects.find(p => p.id === projectId);
    if (project && map.current) {
      map.current.flyTo({
        center: [project.Longitude, project.Latitude],
        zoom: 16,
        duration: 1000,
        essential: true
      });

      // Close existing popups
      if (currentOpenPopupRef.current) {
        currentOpenPopupRef.current.remove();
        currentOpenPopupRef.current = null;
      }

      // Open Popup after flight
      // Increased delay slightly to allow source update and flyto to settle
      setTimeout(() => {
        const features = map.current!.querySourceFeatures("empre-source", {
          filter: ["==", ["get", "id_empreendimento"], project.id_empreendimento]
        });

        // Allow popup even if feature not strictly found (fallback to coords)
        if (true) {
          const coordinates = [project.Longitude, project.Latitude] as [number, number];
          const popup = new mapboxgl.Popup({
            offset: 25,
            closeButton: true,
            closeOnClick: false,
            maxWidth: "480px",
            className: 'project-popup'
          })
            .setLngLat(coordinates)
            .setHTML(getProjectPopupHTML(project))
            .addTo(map.current!);

          popup.on("close", () => {
            if (currentOpenPopupRef.current === popup) {
              currentOpenPopupRef.current = null;
            }
          });
          currentOpenPopupRef.current = popup;
        }
      }, 1200);
    }
  };

  return (
    <div className="relative w-full h-screen supports-[height:100dvh]:h-[100dvh] bg-background">
      <MapSidebar
        isSidebarCollapsed={isSidebarCollapsed}
        setIsSidebarCollapsed={setIsSidebarCollapsed}
        currentMapLayer={currentMapLayer}
        setCurrentMapLayer={setCurrentMapLayer}
        currentMapStyle={currentMapStyle}
        changeMapStyle={changeMapStyle}
        searchTerm={searchTerm}
        setSearchTerm={setSearchTerm}
        selectedPrograms={selectedPrograms}
        toggleProgram={toggleProgram}
        selectAllPrograms={selectAllPrograms}
        deselectAllPrograms={deselectAllPrograms}
        selectedStatus={selectedStatus}
        setSelectedStatus={setSelectedStatus}
        selectedTipoContrato={selectedTipoContrato}
        setSelectedTipoContrato={setSelectedTipoContrato}
        selectedPriorityOnly={selectedPriorityOnly}
        setSelectedPriorityOnly={setSelectedPriorityOnly}
        selectedDistrito={selectedDistrito}
        setSelectedDistrito={setSelectedDistrito}
        selectedSubprefeitura={selectedSubprefeitura}
        setSelectedSubprefeitura={setSelectedSubprefeitura}
        availableDistritos={availableDistritos}
        availableSubprefeituras={availableSubprefeituras}
        filteredProjects={filteredProjects}
        validProjects={validProjects}
        uniquePrograms={uniquePrograms}
        uniqueStatuses={uniqueStatuses}
        uniqueTipoContrato={uniqueTipoContrato}
        programCounts={programCounts}
        handleProjectSelect={handleProjectSelect}
        selectedProjectId={selectedProjectId}
        resetAllFilters={resetAllFilters}
      />

      {/* Map Container */}
      <div ref={mapContainer} className="absolute inset-0 w-full h-full" />

      {/* Expand Sidebar Button (only visible when collapsed) */}
      {isSidebarCollapsed && (
        <div className="absolute bottom-8 left-4 z-50 transition-all duration-300">
          <Button
            size="icon"
            onClick={() => setIsSidebarCollapsed(false)}
            className="shadow-md bg-black text-white hover:bg-gray-800 h-12 w-12"
          >
            <Menu className="h-6 w-6" />
          </Button>
        </div>
      )}

      {/* Global Reset Button - Left Positioned */}
      <div className={cn(
        "absolute z-20 transition-all duration-300",
        isSidebarCollapsed ? "md:left-[70px]" : "md:left-[368px]",
        "left-4 top-4"
      )}>
        {(
          searchTerm !== "" ||
          selectedPrograms.length > 0 ||
          selectedStatus !== "all" ||
          selectedTipoContrato !== "all" ||
          selectedPriorityOnly === true ||
          (currentMapLayer === "distritos" && selectedDistrito !== "all") ||
          (currentMapLayer === "subprefeituras" && selectedSubprefeitura !== "all") ||
          selectedProjectId !== null
        ) && (
            <Button
              variant="default"
              size="sm"
              onClick={resetAllFilters}
              className="shadow-md"
            >
              <ChevronLeft className="h-4 w-4 mr-2" />
              Voltar
            </Button>
          )}
      </div>
    </div>
  );
};