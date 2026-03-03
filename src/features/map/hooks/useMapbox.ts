import { useEffect, useRef, useState, useCallback } from "react";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import JSZip from "jszip";
import { kml as kmlToGeoJSON } from "@tmcw/togeojson";
import { toast } from "sonner";
// import { supabase } from "@/integrations/supabase/client";
import { ProjectData, MapStyleType, MapLayerType } from "../types";
import { MAPBOX_TOKEN_FALLBACK, MAP_STYLES, LAYER_CONFIGS } from "../constants";
import { getProjectPopupHTML } from "../utils/mapHelpers";

interface UseMapboxProps {
    projectsRef: React.MutableRefObject<ProjectData[]>;
    isSidebarCollapsed: boolean;
    onDistrictChange?: (district: string) => void;
    onSubprefectureChange?: (subpref: string) => void;
    isAdmin?: boolean;
}

export const useMapbox = ({
    projectsRef,
    isSidebarCollapsed,
    onDistrictChange,
    onSubprefectureChange,
    isAdmin = false
}: UseMapboxProps) => {
    const mapContainer = useRef<HTMLDivElement>(null);
    const map = useRef<mapboxgl.Map | null>(null);
    const markersRef = useRef<mapboxgl.Marker[]>([]);
    const clusterMarkersRef = useRef<mapboxgl.Marker[]>([]);
    const currentOpenPopupRef = useRef<mapboxgl.Popup | null>(null);
    const markerTooltipRef = useRef<mapboxgl.Popup | null>(null);
    const layerPopupRef = useRef<mapboxgl.Popup | null>(null);
    const isHoveringMarkerRef = useRef<boolean>(false);
    const sidebarCollapsedRef = useRef(isSidebarCollapsed);

    const [isMapInitialized, setIsMapInitialized] = useState(false);
    const [mapboxToken, setMapboxToken] = useState<string | null>(null);
    const [currentMapStyle, setCurrentMapStyle] = useState<MapStyleType>("STREETS");
    const [currentMapLayer, setCurrentMapLayer] = useState<MapLayerType>("subprefeituras");

    // Regional Data State
    const [selectedDistrito, setSelectedDistrito] = useState<string>("all");
    const [selectedSubprefeitura, setSelectedSubprefeitura] = useState<string>("all");
    const [availableDistritos, setAvailableDistritos] = useState<Array<{ name: string, geojson: any }>>([]);
    const [availableSubprefeituras, setAvailableSubprefeituras] = useState<Array<{ name: string, geojson: any }>>([]);
    const [loadedGeoJSON, setLoadedGeoJSON] = useState<{ [key: string]: any }>({});

    // State to track source recreation (e.g. after style change)
    const [projectSourceVersion, setProjectSourceVersion] = useState(0);

    // Sync refs
    useEffect(() => {
        sidebarCollapsedRef.current = isSidebarCollapsed;
    }, [isSidebarCollapsed]);

    useEffect(() => {
        if (onDistrictChange) onDistrictChange(selectedDistrito);
    }, [selectedDistrito, onDistrictChange]);

    useEffect(() => {
        if (onSubprefectureChange) onSubprefectureChange(selectedSubprefeitura);
    }, [selectedSubprefeitura, onSubprefectureChange]);

    // Fetch Token (Use Fallback/Env)
    useEffect(() => {
        // Since we are running locally without Supabase Functions, use the fallback or env token.
        // For security in production, this should come from a secure local endpoint if needed, 
        // but for Intranet use, the public token or restricted token is usually fine.
        setMapboxToken(MAPBOX_TOKEN_FALLBACK);
    }, []);

    // Helper: Load KMZ
    const loadKMZAsGeoJSON = async (kmzPath: string) => {
        const response = await fetch(kmzPath);
        const arrayBuffer = await response.arrayBuffer();
        const zip = new JSZip();
        const unzipped = await zip.loadAsync(arrayBuffer);
        const kmlFile = Object.keys(unzipped.files).find(name => name.endsWith(".kml"));

        if (!kmlFile) throw new Error("KML not found in KMZ");

        const kmlText = await unzipped.files[kmlFile].async("string");
        const parser = new DOMParser();
        const kml = parser.parseFromString(kmlText, "text/xml");

        return kmlToGeoJSON(kml);
    };

    // Helper: Fit Map to Feature
    const fitMapToFeature = (feature: any) => {
        if (!map.current || !feature || !feature.geometry) {
            console.error("❌ fitMapToFeature: mapa ou geometria inválida");
            return;
        }

        const coordinates = feature.geometry.coordinates;
        let allCoords: number[][] = [];

        if (feature.geometry.type === "Polygon") {
            allCoords = coordinates[0];
        } else if (feature.geometry.type === "MultiPolygon") {
            coordinates.forEach((polygon: any) => {
                allCoords = allCoords.concat(polygon[0]);
            });
        }

        if (allCoords.length === 0) return;

        const lngs = allCoords.map(c => c[0]);
        const lats = allCoords.map(c => c[1]);

        const bounds = new mapboxgl.LngLatBounds(
            [Math.min(...lngs), Math.min(...lats)],
            [Math.max(...lngs), Math.max(...lats)]
        );

        map.current.fitBounds(bounds, {
            padding: 80,
            duration: 2500,
            maxZoom: 13,
            pitch: 45,
            essential: true
        });
    };

    // Setup Layer Interactivity
    const setupLayerInteractivity = (layerId: string, layerType: MapLayerType) => {
        if (!map.current) return;

        map.current.on('mouseenter', layerId, () => {
            if (map.current) map.current.getCanvas().style.cursor = 'pointer';
        });

        map.current.on('mouseleave', layerId, () => {
            if (map.current) map.current.getCanvas().style.cursor = '';
            if (layerPopupRef.current) {
                layerPopupRef.current.remove();
                layerPopupRef.current = null;
            }
        });

        map.current.on('mousemove', layerId, (e) => {
            if (isHoveringMarkerRef.current || markerTooltipRef.current) {
                if (layerPopupRef.current) {
                    layerPopupRef.current.remove();
                    layerPopupRef.current = null;
                }
                return;
            }

            if (e.features && e.features.length > 0) {
                const feature = e.features[0];
                const properties = feature.properties;
                let popupContent = "";

                if (layerType === "distritos") {
                    const distrito = properties?.ds_nome || properties?.name || "Distrito desconhecido";
                    const subprefeitura = properties?.ds_subpref || properties?.subprefeitura || "N/A";
                    popupContent = `
            <div style="padding: 8px;">
              <strong style="font-size: 14px;">${distrito}</strong><br/>
              <span style="font-size: 12px; color: #666;">Subprefeitura: ${subprefeitura}</span>
            </div>
          `;
                } else if (layerType === "subprefeituras") {
                    const subprefeitura = properties?.sp_nome || properties?.ds_nome || properties?.name || "Subprefeitura desconhecida";
                    popupContent = `
            <div style="padding: 8px;">
              <strong style="font-size: 14px;">${subprefeitura}</strong>
            </div>
          `;
                }

                if (layerPopupRef.current) {
                    layerPopupRef.current.setLngLat(e.lngLat).setHTML(popupContent);
                } else {
                    layerPopupRef.current = new mapboxgl.Popup({
                        closeButton: false,
                        closeOnClick: false,
                        className: 'layer-popup !z-[60]'
                    })
                        .setLngLat(e.lngLat)
                        .setHTML(popupContent)
                        .addTo(map.current!);
                }
            }
        });
    };

    // Load Map Layer - OPTIMIZED to prevent flash
    const loadMapLayer = async (layerType: MapLayerType, selectedRegionName?: string) => {
        if (!map.current || !isMapInitialized) return;

        try {
            const config = LAYER_CONFIGS[layerType];
            const sourceId = `${layerType}-source`;
            const fillId = `${layerType}-fill`;
            const outlineId = `${layerType}-outline`;
            const highlightId = `${layerType}-highlight`;

            // Check if we need to switch main layers (e.g. from distritos to subprefeituras)
            const isDifferentLayerType = !map.current.getSource(sourceId);

            if (isDifferentLayerType) {
                // Remove existing layers of OTHER types
                ['distritos', 'subprefeituras'].forEach(type => {
                    const fId = `${type}-fill`;
                    const oId = `${type}-outline`;
                    const hId = `${type}-highlight`;
                    const sId = `${type}-source`;

                    // Only remove if it exists AND it's not the one we are about to add
                    // (Though if isDifferentLayerType is true, it shouldn't exist yet, but good to be safe)
                    if (map.current?.getLayer(fId)) map.current.removeLayer(fId);
                    if (map.current?.getLayer(oId)) map.current.removeLayer(oId);
                    if (map.current?.getLayer(hId)) map.current.removeLayer(hId);
                    if (map.current?.getSource(sId) && type !== layerType) map.current.removeSource(sId);
                });

                if (layerPopupRef.current) {
                    layerPopupRef.current.remove();
                    layerPopupRef.current = null;
                }

                let geojson = loadedGeoJSON[layerType];

                if (!geojson) {
                    geojson = await loadKMZAsGeoJSON(config.path);
                    setLoadedGeoJSON(prev => ({ ...prev, [layerType]: geojson }));
                }

                if (!map.current.getSource(sourceId)) {
                    map.current.addSource(sourceId, {
                        type: "geojson",
                        data: geojson as any
                    });
                }

                const beforeLayer = map.current.getLayer("empre-unclustered") ? "empre-unclustered" : undefined;

                if (!map.current.getLayer(fillId)) {
                    map.current.addLayer({
                        id: fillId,
                        type: "fill",
                        source: sourceId,
                        paint: {
                            "fill-color": config.color,
                            "fill-opacity": config.fillOpacity
                        }
                    }, beforeLayer);
                }

                if (!map.current.getLayer(outlineId)) {
                    map.current.addLayer({
                        id: outlineId,
                        type: "line",
                        source: sourceId,
                        paint: {
                            "line-color": config.color,
                            "line-width": config.lineWidth,
                            "line-opacity": 0.8
                        }
                    }, beforeLayer);
                }

                const propertyName = layerType === "distritos" ? "ds_nome" : "sp_nome";
                if (!map.current.getLayer(highlightId)) {
                    map.current.addLayer({
                        id: highlightId,
                        type: "fill",
                        source: sourceId,
                        paint: {
                            "fill-color": config.color,
                            "fill-opacity": 0.5
                        },
                        filter: ["==", ["get", propertyName], selectedRegionName || ""]
                    }, beforeLayer);
                }

                setupLayerInteractivity(fillId, layerType);

                // Re-bind click event

                map.current.on('click', fillId, (e) => {
                    const empreFeatures = map.current!.queryRenderedFeatures(e.point, {
                        layers: ["empre-unclustered"]
                    });

                    if (empreFeatures.length > 0) return;
                    if (!e.features || e.features.length === 0) return;

                    const feature = e.features[0];
                    const properties = feature.properties;
                    let regionName: string | null = null;

                    if (layerType === "distritos") {
                        regionName = properties?.ds_nome || properties?.name || null;
                    } else if (layerType === "subprefeituras") {
                        regionName = properties?.sp_nome || properties?.ds_nome || properties?.name || null;
                    }

                    if (regionName) {
                        if (layerType === "distritos") {
                            setSelectedDistrito(regionName);
                        } else if (layerType === "subprefeituras") {
                            setSelectedSubprefeitura(regionName);
                        }
                    }
                });
            }

            // === Handle Selection Change (Update highlight & Camera) ===
            const propertyName = layerType === "distritos" ? "ds_nome" : "sp_nome";

            // Allow highlight update even if layer wasn't just created (smooth transition)
            if (map.current.getLayer(highlightId)) {
                if (selectedRegionName && selectedRegionName !== "all") {
                    map.current.setFilter(highlightId, ["==", ["get", propertyName], selectedRegionName]);

                    // Fit bounds logic
                    let geojson = loadedGeoJSON[layerType];
                    // If not found in memory (unlikely if layer is loaded), try waiting or ignore
                    if (geojson) {
                        const features = (geojson as any).features || [];
                        const selectedFeature = features.find((f: any) =>
                            (f.properties?.[propertyName] || f.properties?.name) === selectedRegionName
                        );

                        if (selectedFeature && selectedFeature.geometry) {
                            fitMapToFeature(selectedFeature);
                        }
                    }

                } else {
                    map.current.setFilter(highlightId, ["==", ["get", propertyName], ""]);
                }
            }

        } catch (error) {
            console.error("Erro ao carregar camada:", error);
            // toast.error("Erro ao carregar camada do mapa"); // Suppress recurring error on fast switch
        }
    };

    // Load and cache regions
    const loadAndCacheRegions = useCallback(async () => {
        try {
            if (!loadedGeoJSON['distritos']) {
                const distritosGeoJSON = await loadKMZAsGeoJSON(LAYER_CONFIGS.distritos.path);
                setLoadedGeoJSON(prev => ({ ...prev, distritos: distritosGeoJSON }));

                const features = (distritosGeoJSON as any).features || [];
                const distritos = features.map((f: any) => ({
                    name: f.properties?.ds_nome || f.properties?.name || "Desconhecido",
                    geojson: f
                })).sort((a: any, b: any) => a.name.localeCompare(b.name));

                setAvailableDistritos(distritos);
            }

            if (!loadedGeoJSON['subprefeituras']) {
                const subprefeiturasGeoJSON = await loadKMZAsGeoJSON(LAYER_CONFIGS.subprefeituras.path);
                setLoadedGeoJSON(prev => ({ ...prev, subprefeituras: subprefeiturasGeoJSON }));

                const features = (subprefeiturasGeoJSON as any).features || [];
                const subprefeituras = features.map((f: any) => ({
                    name: f.properties?.sp_nome || f.properties?.ds_nome || f.properties?.name || "Desconhecida",
                    geojson: f
                })).sort((a: any, b: any) => a.name.localeCompare(b.name));

                setAvailableSubprefeituras(subprefeituras);
            }
        } catch (error) {
            console.error("Erro ao carregar regiões:", error);
        }
    }, [loadedGeoJSON]);

    const initializeProjectLayers = () => {
        if (!map.current) return;

        // Adicionar fonte GeoJSON sem clustering automático
        if (!map.current.getSource("empre-source")) {
            map.current.addSource("empre-source", {
                type: "geojson",
                data: { type: "FeatureCollection", features: [] }
            });
        }

        // Layer de pontos individuais (não clusterizados)
        if (!map.current.getLayer("empre-unclustered")) {
            map.current.addLayer({
                id: "empre-unclustered",
                type: "circle",
                source: "empre-source",
                filter: ["!=", ["get", "is_regional_cluster"], true],
                paint: {
                    "circle-color": ["get", "color"],
                    "circle-radius": 10,
                    "circle-stroke-width": 2,
                    "circle-stroke-color": "#fff"
                }
            });
        }

        // Eventos
        const setupEvents = (layer: string) => {
            if (!map.current) return;

            map.current.on("mouseenter", layer, () => {
                if (map.current) map.current.getCanvas().style.cursor = "pointer";
                isHoveringMarkerRef.current = true;
            });
            map.current.on("mouseleave", layer, () => {
                if (map.current) map.current.getCanvas().style.cursor = "";
                isHoveringMarkerRef.current = false;
                if (markerTooltipRef.current) {
                    markerTooltipRef.current.remove();
                    markerTooltipRef.current = null;
                }
            });

            map.current.on("mousemove", layer, (e) => {
                if (e.features && e.features.length > 0) {
                    const feature = e.features[0];
                    const coordinates = (feature.geometry as any).coordinates.slice();
                    let html = "";

                    const projectName = feature.properties?.name || "Empreendimento";
                    html = `
                        <div style="padding: 8px; max-width: 200px;">
                            <strong style="font-size: 12px; display: block; margin-bottom: 4px;">${projectName}</strong>
                        </div>
                    `;

                    if (markerTooltipRef.current) {
                        markerTooltipRef.current.setLngLat(coordinates).setHTML(html);
                    } else {
                        markerTooltipRef.current = new mapboxgl.Popup({
                            closeButton: false,
                            closeOnClick: false,
                            className: 'marker-tooltip !z-[60]',
                            offset: 10
                        })
                            .setLngLat(coordinates)
                            .setHTML(html)
                            .addTo(map.current!);
                    }
                }
            });
        };

        setupEvents("empre-unclustered");
    };

    // Initial Map Setup
    useEffect(() => {
        if (!mapContainer.current || map.current || !mapboxToken) return;

        try {
            mapboxgl.accessToken = mapboxToken;
            map.current = new mapboxgl.Map({
                container: mapContainer.current,
                style: MAP_STYLES[currentMapStyle],
                center: [-46.6333, -23.5505],
                zoom: 10.5,
                pitch: 45,
            });

            map.current.addControl(new mapboxgl.NavigationControl(), "bottom-right");
            map.current.addControl(new mapboxgl.FullscreenControl(), "bottom-right");
            map.current.addControl(new mapboxgl.ScaleControl(), "bottom-right");

            map.current.on("load", () => {
                setIsMapInitialized(true);
                loadAndCacheRegions();
                initializeProjectLayers();
            });

            // Handle Map interactions (Clicks)
            map.current.on("click", (e) => {
                const features = map.current!.queryRenderedFeatures(e.point, {
                    layers: ["empre-unclustered"]
                });

                // 1. Pins
                const unclusteredFeature = features.find(f => f.layer.id === "empre-unclustered");
                if (unclusteredFeature) {
                    const coordinates = (unclusteredFeature.geometry as any).coordinates.slice();
                    const rawId = unclusteredFeature.properties?.id_empreendimento;
                    const idNum = Number(rawId);

                    const project = projectsRef.current.find(p => p.id_empreendimento === idNum)
                        || projectsRef.current.find(p => String(p.id) === String(unclusteredFeature.properties?.id));

                    if (!project) return;

                    if (markerTooltipRef.current) markerTooltipRef.current.remove();
                    if (layerPopupRef.current) layerPopupRef.current.remove();
                    if (currentOpenPopupRef.current) currentOpenPopupRef.current.remove();

                    while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
                        coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
                    }

                    const projectPopupHTML = getProjectPopupHTML(project, isAdmin);
                    const popup = new mapboxgl.Popup({
                        closeButton: true,
                        closeOnClick: false,
                        maxWidth: '480px',
                        className: 'project-popup !z-[60]',

                    })
                        .setLngLat(coordinates)
                        .setHTML(projectPopupHTML)
                        .addTo(map.current!);

                    popup.on("close", () => {
                        if (currentOpenPopupRef.current === popup) currentOpenPopupRef.current = null;
                    });
                    currentOpenPopupRef.current = popup;
                    return;
                }

                // 2. Close stuff
                if (currentOpenPopupRef.current) {
                    currentOpenPopupRef.current.remove();
                    currentOpenPopupRef.current = null;
                }
            });

        } catch (error) {
            console.error("Error initializing map:", error);
        }
    }, [mapboxToken]);

    const changeMapStyle = (styleType: MapStyleType) => {
        if (!map.current) return;
        setCurrentMapStyle(styleType);
        map.current.setStyle(MAP_STYLES[styleType]);
        map.current.once('style.load', () => {
            // Re-initialize layers on style change
            initializeProjectLayers();
            loadMapLayer(currentMapLayer,
                currentMapLayer === "distritos" ? selectedDistrito : selectedSubprefeitura
            );
            // Signal that source has been re-created and is empty
            setProjectSourceVersion(v => v + 1);
        });
    };

    const updateProjectSource = (data: any) => {
        if (map.current && map.current.getSource("empre-source")) {
            (map.current.getSource("empre-source") as mapboxgl.GeoJSONSource).setData(data);

            // Update HTML Cluster Markers
            clusterMarkersRef.current.forEach(marker => marker.remove());
            clusterMarkersRef.current = [];

            if (data && data.features) {
                data.features.forEach((feature: any) => {
                    if (feature.properties?.is_regional_cluster) {
                        const { project_count, region_name, layer_type } = feature.properties;
                        const coords = feature.geometry.coordinates;

                        const el = document.createElement('div');
                        // Tailwind classes for the blue badge
                        el.className = "bg-blue-600/95 border border-blue-400 text-white font-bold text-[11px] px-2.5 py-1 rounded-md shadow-md hover:bg-blue-700 transition-colors cursor-pointer shadow-blue-900/50 backdrop-blur-sm whitespace-nowrap z-10 flex items-center justify-center";
                        el.innerHTML = project_count.toString();
                        el.title = `${region_name} (${project_count} empreendimentos)`;

                        el.addEventListener('click', (e) => {
                            e.stopPropagation();
                            if (layer_type === "distritos") setSelectedDistrito(region_name);
                            else if (layer_type === "subprefeituras") setSelectedSubprefeitura(region_name);
                        });

                        const marker = new mapboxgl.Marker({
                            element: el,
                            anchor: 'center'
                        })
                            .setLngLat(coords)
                            .addTo(map.current!);

                        clusterMarkersRef.current.push(marker);
                    }
                });
            }
        }
    };

    const resetMapPosition = () => {
        if (!map.current) return;
        map.current.flyTo({
            center: [-46.6333, -23.5505],
            zoom: 10.5,
            pitch: 45,
            duration: 1500,
            essential: true
        });
    };

    const clearMarkers = () => {
        markersRef.current.forEach(marker => marker.remove());
        markersRef.current = [];
        clusterMarkersRef.current.forEach(marker => marker.remove());
        clusterMarkersRef.current = [];
        currentOpenPopupRef.current = null;
    };

    return {
        mapContainer,
        map,
        markersRef,
        markerTooltipRef,
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
        clearMarkers,
        loadedGeoJSON, // Expose if needed
        updateProjectSource,
        projectSourceVersion,
        currentOpenPopupRef,
        layerPopupRef
    };
};
