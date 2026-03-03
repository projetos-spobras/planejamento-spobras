import { ContratoData, ProjectData } from "../types";
import { STATUS_COLORS, PROGRAM_COLOR_PALETTE } from "../constants";

// Mapa de cores para programas (será preenchido dinamicamente)
const programColorCache = new Map<string, string>();

// Helper function to get status color
export const getStatusColor = (status: string): string => {
  const normalized = status?.trim() || "";

  // Tentar match exato primeiro
  if (STATUS_COLORS[normalized]) {
    return STATUS_COLORS[normalized];
  }

  // Fallback: normalizar removendo acentos e caracteres especiais
  const cleanStatus = normalized.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();
  if (cleanStatus.includes('conclu')) return "#10b981"; // Verde
  if (cleanStatus.includes('andamento')) return "#f59e0b"; // Laranja
  if (cleanStatus.includes('iniciar')) return "#3b82f6"; // Azul

  return "#94a3b8"; // Cinza padrão
};

// Gera uma cor consistente para um programa (sequencial para evitar colisão)
export const getProgramColor = (programa: string): string => {
  if (!programa) return "#94a3b8"; // Cinza padrão

  // Swap de cores de legado (mantido por compatibilidade visual se desejado)
  if (programa === "AUTÓDROMO MUNICIPAL JOSÉ CARLOS PACE - INTERLAGOS") return "#ef4444"; // Exemplo, ou manter lógica antiga se crítico

  // Verificar cache
  if (programColorCache.has(programa)) {
    return programColorCache.get(programa)!;
  }

  // Atribuir prÃ³xima cor da paleta sequencialmente
  const nextIndex = programColorCache.size % PROGRAM_COLOR_PALETTE.length;
  const color = PROGRAM_COLOR_PALETTE[nextIndex];

  // Cachear para consistência
  programColorCache.set(programa, color);

  return color;
};

// ============= HELPER: Normalizar strings para comparação =============
export const normalizeString = (str: string) =>
  str.trim().normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();

// ============= HELPER: Determinar cor do pin baseado no contrato mais recente =============
export const getPinStatusAndColor = (contratos?: ContratoData[]) => {
  let status = "Desconhecido";

  if (contratos && contratos.length > 0) {
    // Filtrar apenas contratos do tipo "Obra" ou "Projeto"
    const relevantContracts = contratos.filter(c =>
      c.tipo_contrato_dash &&
      (c.tipo_contrato_dash.toLowerCase().includes('obra') ||
        c.tipo_contrato_dash.toLowerCase().includes('projeto'))
    );

    if (relevantContracts.length > 0) {
      // Ordenar por execucao_data_fim (mais recente primeiro)
      const sortedContracts = relevantContracts.sort((a, b) => {
        const dateA = a.execucao_data_fim ? new Date(a.execucao_data_fim).getTime() : 0;
        const dateB = b.execucao_data_fim ? new Date(b.execucao_data_fim).getTime() : 0;
        return dateB - dateA;
      });

      status = sortedContracts[0].andamento_concluido;
    } else {
      // Fallback: usar primeiro contrato qualquer
      status = contratos[0].andamento_concluido;
    }
  }

  return {
    status,
    color: getStatusColor(status)
  };
};

// Ray-casting algorithm for point-in-polygon
export const checkPointInPolygonRing = (lng: number, lat: number, ring: number[][]): boolean => {
  let inside = false;

  for (let i = 0, j = ring.length - 1; i < ring.length; j = i++) {
    const xi = ring[i][0], yi = ring[i][1];
    const xj = ring[j][0], yj = ring[j][1];

    const intersect = ((yi > lat) !== (yj > lat))
      && (lng < (xj - xi) * (lat - yi) / (yj - yi) + xi);

    if (intersect) inside = !inside;
  }

  return inside;
};

// Check if a point (lng, lat) is inside a GeoJSON polygon
export const isPointInPolygon = (lng: number, lat: number, feature: any): boolean => {
  if (!feature || !feature.geometry) return false;

  const geometry = feature.geometry;

  // Handle MultiPolygon
  if (geometry.type === "MultiPolygon") {
    return geometry.coordinates.some((polygon: any) =>
      checkPointInPolygonRing(lng, lat, polygon[0])
    );
  }

  // Handle Polygon
  if (geometry.type === "Polygon") {
    return checkPointInPolygonRing(lng, lat, geometry.coordinates[0]);
  }

  return false;
};

// Helper to generate consistent popup HTML
export const getProjectPopupHTML = (project: ProjectData, isAdmin: boolean = false) => {
  const sortedContratos = project.contratos ? [...project.contratos].sort((a, b) => {
    const statusA = normalizeString(a.andamento_concluido || "");
    const statusB = normalizeString(b.andamento_concluido || "");

    const getScore = (s: string) => {
      if (s.includes('andamento') || s.includes('execucao')) return 0;
      if (s.includes('concluid') || s.includes('encerrad')) return 1;
      return 2;
    };

    const scoreA = getScore(statusA);
    const scoreB = getScore(statusB);

    if (scoreA !== scoreB) return scoreA - scoreB;

    // Desempate por data de fim (mais recente primeiro)
    const dateA = a.execucao_data_fim ? new Date(a.execucao_data_fim).getTime() : 0;
    const dateB = b.execucao_data_fim ? new Date(b.execucao_data_fim).getTime() : 0;
    return dateB - dateA;
  }) : [];

  const contratosHtml = sortedContratos.length > 0
    ? `
      <div style="margin-top: 12px; padding-top: 12px; border-top: 1px solid #e2e8f0;">
        <strong style="font-size: 13px; color: #1e293b;">Contratos (${sortedContratos.length}):</strong>
        <div style="max-height: 200px; overflow-y: auto; margin-top: 8px;">
          ${sortedContratos.map(contrato => `
            <div style="
              background: #f8fafc; 
              padding: 8px; 
              margin-top: 6px; 
              border-radius: 6px;
              border-left: 3px solid ${getStatusColor(contrato.andamento_concluido)};
            ">
              <div style="font-size: 12px; font-weight: 600; color: #1e293b; margin-bottom: 4px;">
                ${contrato.nr_contrato}
              </div>
              <div style="font-size: 11px; color: #64748b; display: flex; flex-direction: column; gap: 2px;">
                ${contrato.tipo_contrato_dash ? `<span><strong>Tipo:</strong> ${contrato.tipo_contrato_dash}</span>` : ''}
                <span>
                  <strong>Status:</strong> 
                  <span style="
                    background: ${getStatusColor(contrato.andamento_concluido)}; 
                    color: white; 
                    padding: 1px 6px; 
                    border-radius: 3px;
                    font-size: 10px;
                    font-weight: 600;
                  ">${contrato.andamento_concluido}</span>
                </span>
                ${contrato.valor_atual ? `<span><strong>Valor:</strong> R$ ${contrato.valor_atual.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}</span>` : ''}
                ${contrato.execucao_data_inicio ? `<span><strong>Início:</strong> ${new Date(contrato.execucao_data_inicio).toLocaleDateString('pt-BR')}</span>` : ''}
                ${contrato.execucao_data_fim ? `<span><strong>Fim:</strong> ${new Date(contrato.execucao_data_fim).toLocaleDateString('pt-BR')}</span>` : ''}
              </div>
            </div>
          `).join('')}
        </div>
      </div>
    `
    : '';

  return `
    <style>
      .mapboxgl-popup-close-button {
        font-size: 24px !important;
        width: 32px !important;
        height: 32px !important;
        color: #ef4444 !important;
        font-weight: bold !important;
        line-height: 28px !important;
        padding: 0 !important;
      }
      .mapboxgl-popup-close-button:hover {
        background-color: rgba(239, 68, 68, 0.1) !important;
        color: #dc2626 !important;
      }
      .priority-button {
        background: ${project.prioritario ? 'linear-gradient(135deg, #f59e0b 0%, #d97706 100%)' : '#f3f4f6'};
        color: ${project.prioritario ? '#ffffff' : '#6b7280'};
        border: ${project.prioritario ? '2px solid #b45309' : '2px solid #d1d5db'};
        padding: 6px 12px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 600;
        cursor: pointer;
        display: inline-flex;
        align-items: center;
        gap: 4px;
        transition: all 0.2s;
        box-shadow: ${project.prioritario ? '0 2px 8px rgba(245, 158, 11, 0.4)' : 'none'};
      }
      .priority-button:hover {
        opacity: 0.9;
        transform: scale(1.02);
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      }
    </style>
    <div style="padding: 16px; width: 440px; max-width: 95vw; overflow: hidden;">
      <div style="display: flex; justify-content: space-between; align-items: start; margin-bottom: 12px; gap: 12px;">
        <h3 style="
          font-weight: 700; color: #1e293b; font-size: 15px; margin: 0; line-height: 1.4; flex: 1;
          overflow: hidden; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical;
          white-space: normal; word-break: break-word; overflow-wrap: anywhere;
        ">
          ${project.Empreendimentos}
        </h3>
        
        ${isAdmin ? `
          <button 
            class="priority-button" 
            onclick="window.togglePriority('${project.id}', ${project.prioritario || false})"
          >
            ${project.prioritario ? '⭐ Plano de Metas' : '☆ Adicionar no Plano de Metas'}
          </button>
        ` : project.prioritario ? `
          <div style="
            background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%);
            color: #ffffff;
            border: 2px solid #b45309;
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 4px;
            box-shadow: 0 2px 8px rgba(245, 158, 11, 0.4);
            cursor: default;
          ">
            ⭐ Plano de Metas
          </div>
        ` : ''}
      </div>
      
      <div style="display: grid; gap: 6px; margin-top: 8px;">
        <div style="font-size: 13px; color: #64748b; overflow-wrap: anywhere; word-break: break-word;">
          <strong>Programa:</strong> ${project.Programas || "Não especificado"}
        </div>
        
        ${project.Subprefeitura ? `
          <div style="font-size: 13px; color: #64748b;">
            <strong>Subprefeitura:</strong> ${project.Subprefeitura}
          </div>
        ` : ''}
        
        <div style="font-size: 11px; color: #94a3b8; margin-top: 4px; padding-top: 6px; border-top: 1px solid #e2e8f0;">
          Lat: ${project.Latitude.toFixed(5)}, Lng: ${project.Longitude.toFixed(5)}
        </div>
        
        ${contratosHtml}
        
        <a 
          href="#"
          onclick="event.preventDefault(); window.dispatchEvent(new CustomEvent('open-powerbi-modal', { detail: { projectName: '${project.Empreendimentos.replace(/'/g, "\\'")}', programName: '${project.Programas}', projectId: ${project.id_empreendimento} } }));"
          style="
            display: block;
            margin-top: 12px;
            padding: 10px 16px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 13px;
            box-shadow: 0 2px 8px rgba(102, 126, 234, 0.3);
            transition: all 0.2s ease;
          "
          onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 4px 12px rgba(102, 126, 234, 0.4)';"
          onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 2px 8px rgba(102, 126, 234, 0.3)';"
        >
          Abrir Painel de Gestão
        </a>
      </div>
    </div>
  `;
};

// ============= HELPER: Construir GeoJSON FeatureCollection =============
export const buildFeatureCollection = (projectsToRender: ProjectData[]) => {
  // Validar coordenadas E filtrar projetos sem contratos relevantes
  const validProjects = projectsToRender.filter(p => {
    // Validar coordenadas
    const hasValidCoords =
      typeof p.Longitude === 'number' &&
      typeof p.Latitude === 'number' &&
      !isNaN(p.Longitude) &&
      !isNaN(p.Latitude) &&
      p.Longitude >= -180 && p.Longitude <= 180 &&
      p.Latitude >= -90 && p.Latitude <= 90;

    if (!hasValidCoords) {
      console.warn(`⚠️ Projeto com coordenadas inválidas: "${p.Empreendimentos}" (Lat: ${p.Latitude}, Lng: ${p.Longitude})`);
      return false;
    }

    // Exibir todos os projetos com coordenadas válidas, independente de contratos
    // (Solicitação usuário: Empreendimentos sem contratos, como CEUs prioritários, devem aparecer)
    return hasValidCoords;
  });

  if (validProjects.length < projectsToRender.length) {
    console.warn(`⚠️ ${projectsToRender.length - validProjects.length} projetos removidos por coordenadas inválidas`);
  }

  return {
    type: "FeatureCollection" as const,
    features: validProjects.map(p => {
      const { status } = getPinStatusAndColor(p.contratos);
      const color = getProgramColor(p.Programas); // Cor baseada no PROGRAMA
      return {
        type: "Feature" as const,
        geometry: {
          type: "Point" as const,
          coordinates: [p.Longitude, p.Latitude]
        },
        properties: {
          id: p.id,
          id_empreendimento: p.id_empreendimento,
          name: p.Empreendimentos,
          programa: p.Programas,
          subprefeitura: p.Subprefeitura ?? null,
          status,
          color,
          is_regional_cluster: false
        }
      };
    })
  };
};

import { MapLayerType } from "../types";

// ============= HELPER: Construir Clusters Regionais =============
export const buildRegionalClusters = (
  projectsToRender: ProjectData[],
  layerType: MapLayerType,
  distritos: Array<{ name: string, geojson: any }>,
  subprefeituras: Array<{ name: string, geojson: any }>,
  regionalStats: Array<{ region_type: string, region_name: string, count: number }> = []
) => {
  // Filtrar apenas por coordenadas válidas (já garantido pelo input, mas reforçando se necessário)
  const validProjects = projectsToRender;

  // Agrupar projetos visíveis por região para calcular centróide
  const visibleRegionGroups = new Map<string, ProjectData[]>();

  validProjects.forEach(project => {
    let regionName: string | null = null;

    if (layerType === "subprefeituras") {
      // Tentar usar a propriedade do projeto primeiro (mais rápido)
      if (project.Subprefeitura) {
        regionName = project.Subprefeitura;
      } else {
        // Fallback: point-in-polygon
        const subprefeitura = subprefeituras.find(s =>
          isPointInPolygon(project.Longitude, project.Latitude, s.geojson)
        );
        regionName = subprefeitura?.name || null;
      }
    } else if (layerType === "distritos") {
      // Fallback: point-in-polygon
      const distrito = distritos.find(d =>
        isPointInPolygon(project.Longitude, project.Latitude, d.geojson)
      );
      regionName = distrito?.name || null;
    }

    if (regionName) {
      if (!visibleRegionGroups.has(regionName)) {
        visibleRegionGroups.set(regionName, []);
      }
      visibleRegionGroups.get(regionName)!.push(project);
    }
  });

  // Identificar todas as regiões disponíveis para exibir clusters (mesmo sem projetos visíveis)
  const allRegions = layerType === "distritos" ? distritos : subprefeituras;
  const regionTypeKey = layerType === "distritos" ? "distrito" : "subprefeitura";

  const clusterFeatures = allRegions.map(region => {
    const regionName = region.name;

    // 1. Obter contagem global (ignora filtros RLS)
    const globalStat = regionalStats.find(s =>
      s.region_type === regionTypeKey &&
      normalizeString(s.region_name) === normalizeString(regionName)
    );

    // Se não houver estatística global, usa a contagem visível ou 0
    const visibleProjects = visibleRegionGroups.get(regionName) || [];
    const count = globalStat ? globalStat.count : visibleProjects.length;

    if (count === 0) return null;

    // 2. Calcular posição (Centróide)
    let coordinates: [number, number];

    if (visibleProjects.length > 0) {
      // Média dos projetos visíveis (melhor UX)
      const avgLng = visibleProjects.reduce((sum, p) => sum + p.Longitude, 0) / visibleProjects.length;
      const avgLat = visibleProjects.reduce((sum, p) => sum + p.Latitude, 0) / visibleProjects.length;
      coordinates = [avgLng, avgLat];
    } else {
      // Centróide do Polígono (fallback se não houver projetos visíveis)
      // Simplificação: pegar o primeiro ponto do polígono ou um ponto médio simples do bounding box
      // Para GeoJSON Polygon: coordinates[0] é o anel exterior.
      // Vamos pegar uma média simples dos pontos do anel exterior.
      const geometry = region.geojson.geometry;
      let ring: number[][] = [];

      if (geometry.type === "Polygon") {
        ring = geometry.coordinates[0];
      } else if (geometry.type === "MultiPolygon") {
        // Pegar o maior polígono (ou o primeiro)
        ring = geometry.coordinates[0][0];
      }

      if (ring.length > 0) {
        const avgLng = ring.reduce((sum, p) => sum + p[0], 0) / ring.length;
        const avgLat = ring.reduce((sum, p) => sum + p[1], 0) / ring.length;
        coordinates = [avgLng, avgLat];
      } else {
        return null; // Não foi possível determinar posição
      }
    }

    return {
      type: "Feature" as const,
      geometry: {
        type: "Point" as const,
        coordinates: coordinates
      },
      properties: {
        is_regional_cluster: true,
        region_name: regionName,
        project_count: count,
        layer_type: layerType
      }
    };
  }).filter(f => f !== null); // Remover nulos

  return {
    type: "FeatureCollection" as const,
    features: clusterFeatures as any[]
  };
};
