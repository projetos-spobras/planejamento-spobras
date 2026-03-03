export interface ContratoData {
  id: string;
  nr_contrato: string;
  tipo_contrato_dash?: string;
  andamento_concluido: string;
  execucao_data_inicio?: string;
  execucao_data_fim?: string;
  valor_atual?: number;
}

export interface ProjectData {
  id?: string;
  id_empreendimento: number;
  Programas: string;
  Empreendimentos: string;
  Latitude: number;
  Longitude: number;
  Subprefeitura?: string; // Legacy/Shapefile match
  subprefeitura?: string; // DB Column
  distrito?: string;      // DB Column
  prioritario?: boolean;
  contratos?: ContratoData[];
}

export type MapStyleType = "STREETS" | "SATELLITE_STREETS" | "SATELLITE";

export type MapLayerType = "distritos" | "subprefeituras";

export interface RegionalStats {
  region_type: string;
  region_name: string;
  count: number;
}
