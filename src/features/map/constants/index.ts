// Fallback token (will be replaced by Supabase token)
export const MAPBOX_TOKEN_FALLBACK = "your_mapbox_token_here";

// Estilos de mapa disponíveis
export const MAP_STYLES = {
    STREETS: "mapbox://styles/mapbox/streets-v12",
    SATELLITE_STREETS: "mapbox://styles/mapbox/satellite-streets-v12",
    SATELLITE: "mapbox://styles/mapbox/satellite-v9"
} as const;

// Configurações das camadas
export const LAYER_CONFIGS = {
    distritos: {
        name: "Distritos",
        path: "/data/distritos.kmz",
        color: "#8b5cf6",
        fillOpacity: 0.2,
        lineWidth: 2
    },
    subprefeituras: {
        name: "Subprefeituras",
        path: "/data/subprefeituras.kmz",
        color: "#3b82f6",
        fillOpacity: 0.25,
        lineWidth: 2.5
    }
} as const;

// Color mapping for status
export const STATUS_COLORS: Record<string, string> = {
    Concluído: "#10b981",
    // Verde - obra finalizada
    Andamento: "#f59e0b",
    // Laranja/Amarelo - em execução
    Iniciar: "#3b82f6" // Azul - a iniciar
};

// Paleta de cores de ALTO CONTRASTE para programas
export const PROGRAM_COLOR_PALETTE = [
    "#e6194b", // Vermelho vivo - máximo contraste
    "#4363d8", // Azul royal - fácil distinção
    "#3cb44b", // Verde floresta - vibrante
    "#f58231", // Laranja - quente e distinto
    "#911eb4", // Roxo profundo - único
    "#42d4f4", // Ciano brilhante - claramente diferente
    "#f032e6", // Magenta - destaque
    "#469990", // Teal escuro - tom único
    "#9a6324", // Marrom - terroso
    "#800000", // Bordô - escuro e distinto
    "#000075", // Azul marinho - contraste com ciano
    "#808000", // Oliva - tom natural
    "#bfef45", // Lima fluorescente - alta visibilidade
    "#dcbeff", // Lavanda - tom pastel único
    "#aaffc3", // Menta - verde pastel distinto
];
