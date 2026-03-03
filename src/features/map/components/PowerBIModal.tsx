import { useState, useEffect } from "react";
import { models } from "powerbi-client";
import { PowerBIEmbed } from "powerbi-client-react";
import { Loader2, Maximize2, Minimize2, X, ArrowLeft } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";

interface PowerBIModalProps {
  isOpen: boolean;
  onClose: () => void;
  projectName?: string | null;
  projectId?: number | null;
}

interface EmbedConfig {
  type: string;
  id: string;
  embedUrl: string;
  accessToken: string;
  tokenType: models.TokenType;
  settings: {
    panes: {
      filters: {
        visible: boolean;
      };
      pageNavigation: {
        visible: boolean;
      };
    };
    background?: models.BackgroundType;
    localeSettings?: {
      language: string;
      formatLocale: string;
    };
  };
  filters?: models.IFilter[];
}

// CONFIGURAÇÃO DO POWER BI
// Tabela de Empreendimentos (Ajustado conforme logs do Slicer)
const PBI_FILTER_TABLE = "d_Empreendimento";
const PBI_FILTER_COLUMN = "Empreendimento";

// ... (existing code)



// Tabela de Programas
const PBI_FILTER_TABLE_PROG = "_dProgramas";
const PBI_FILTER_COLUMN_PROG = "Programas";

export const PowerBIModal = ({ isOpen, onClose, projectName, projectId, programName }: PowerBIModalProps & { programName?: string | null }) => {
  const [embedConfig, setEmbedConfig] = useState<EmbedConfig | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [isFullscreen, setIsFullscreen] = useState(false); // State for fullscreen

  useEffect(() => {
    const fetchEmbedToken = async () => {
      if (!isOpen) return;

      try {
        setLoading(true);
        setError(null);

        console.log("Fetching Power BI embed token...");
        const { data, error } = await supabase.functions.invoke('embed-powerbi', {
          body: {
            program: programName
          }
        });

        if (error) {
          throw error;
        }

        if (data?.error) {
          throw new Error(data.error);
        }

        if (!data || !data.accessToken) {
          throw new Error("Invalid response from server");
        }

        console.log("Token received successfully. Report ID:", data.reportId);

        // Construct Filter for URL (OData format)
        // Ref: https://learn.microsoft.com/en-us/power-bi/collaborate-share/service-url-filters
        const filters: models.IFilter[] = [];

        // ONLY apply default ID filter if NOT "ESCOLAS"
        // The requirement says: "Esse não precisa abrir com filtro de empreendimento" for ESCOLAS

        const normalize = (str: string) => str ? str.trim().normalize('NFD').replace(/[\u0300-\u036f]/g, '').toUpperCase() : '';
        const pName = normalize(programName || '');
        const isEscolas = pName === 'ESCOLAS' || pName.includes('ESCOLA') || pName.includes('EDUCACAO');

        if (projectId && !isEscolas) {
          // Create Basic Filter for ID
          const basicFilter: models.IBasicFilter = {
            $schema: "http://powerbi.com/product/schema#basic",
            target: {
              table: PBI_FILTER_TABLE,
              column: PBI_FILTER_COLUMN
            },
            operator: "In",
            values: [projectId],
            filterType: models.FilterType.Basic
          };
          filters.push(basicFilter);
          console.log("Applying JS Filter (ID):", basicFilter);
        }

        setEmbedConfig({
          type: 'report',
          id: data.reportId,
          embedUrl: data.embedUrl,
          accessToken: data.accessToken,
          tokenType: models.TokenType.Embed,
          filters: filters,
          settings: {
            panes: {
              filters: {
                visible: false
              },
              pageNavigation: {
                visible: true
              }
            },
            localeSettings: {
              language: 'pt-BR',
              formatLocale: 'pt-BR'
            }
          }
        });

      } catch (err: any) {
        console.error("Error fetching Power BI token:", err);
        setError(err.message || "Failed to load Power BI report");
      } finally {
        setLoading(false);
      }
    };

    fetchEmbedToken();
  }, [isOpen, projectName, programName]); // Updated dependencies

  // Reset state when closed
  useEffect(() => {
    if (!isOpen) {
      setEmbedConfig(null);
      setError(null);
      setIsFullscreen(false); // Reset fullscreen on close
    }
  }, [isOpen]);

  const toggleFullscreen = () => {
    setIsFullscreen(!isFullscreen);
  };

  return (
    <Dialog open={isOpen} onOpenChange={(open) => !open && onClose()}>
      <DialogContent
        className={cn(
          "flex flex-col p-0 overflow-hidden bg-background transition-all duration-300 ease-in-out [&>button]:hidden", // Added [&>button]:hidden to hide default close button
          isFullscreen
            ? "max-w-[100vw] w-screen h-screen rounded-none border-none"
            : "max-w-[90vw] w-[90vw] h-[90vh] rounded-lg border shadow-xl"
        )}
      >
        <DialogHeader className="p-3 border-b flex-shrink-0 flex flex-row items-center justify-between space-y-0">
          <div className="flex items-center gap-3">
            {isFullscreen && (
              <Button
                variant="ghost"
                size="icon"
                onClick={onClose}
                className="h-8 w-8 mr-1 text-muted-foreground hover:text-foreground"
                title="Voltar ao mapa"
              >
                <ArrowLeft className="h-5 w-5" />
              </Button>
            )}
            <DialogTitle className="text-lg font-semibold text-foreground">
              Painel de Gestão - SPObras
            </DialogTitle>
          </div>

          <div className="flex items-center gap-2">
            <Button
              variant="ghost"
              size="icon"
              onClick={toggleFullscreen}
              className="h-8 w-8 text-muted-foreground hover:text-foreground"
              title={isFullscreen ? "Restaurar tamanho" : "Tela cheia"}
            >
              {isFullscreen ? <Minimize2 className="h-4 w-4" /> : <Maximize2 className="h-4 w-4" />}
            </Button>

            <Button
              variant="ghost"
              size="icon"
              onClick={onClose}
              className="h-8 w-8 text-muted-foreground hover:text-red-500"
              title="Fechar"
            >
              <X className="h-4 w-4" />
            </Button>
          </div>
        </DialogHeader>

        <div className="flex-1 w-full h-full bg-muted/50 relative">
          {loading && (
            <div className="absolute inset-0 flex items-center justify-center bg-background/50 z-10">
              <Loader2 className="h-8 w-8 animate-spin text-primary" />
              <span className="ml-2">Carregando relatório...</span>
            </div>
          )}

          {error && (
            <div className="absolute inset-0 flex items-center justify-center text-destructive p-4 text-center">
              <div>
                <p className="font-semibold">Erro ao carregar o relatório</p>
                <p className="text-sm mt-1">{error}</p>
                <button onClick={onClose} className="mt-4 px-4 py-2 bg-secondary rounded text-sm">Fechar</button>
              </div>
            </div>
          )}

          {embedConfig && (
            <div className="powerbi-container w-full h-full">
              <PowerBIEmbed
                embedConfig={embedConfig}
                eventHandlers={
                  new Map([
                    ['loaded', async function () {
                      console.log('Report loaded. Program:', programName);
                      // @ts-ignore
                      const report = window.report;

                      if (report) {
                        try {
                          // Normalize program name safely
                          const normalize = (str: string) => str ? str.trim().normalize('NFD').replace(/[\u0300-\u036f]/g, '').toUpperCase() : '';
                          const pName = normalize(programName || '');

                          // Check for ESCOLAS or EDUCAÇÃO variations
                          const isEscolas = pName === 'ESCOLAS' || pName.includes('ESCOLA') || pName.includes('EDUCACAO');

                          console.log(`Program Check: Raw="${programName}", Norm="${pName}", isEscolas=${isEscolas}`);

                          // 1. Get Pages to find the target page
                          const pages = await report.getPages();
                          console.log("Pages found:", pages.map((p: any) => p.displayName));

                          // Determine Target Page based on Program
                          const targetPageName = isEscolas ? "Quadro_Geral_Obras" : "QD_Geral";

                          // Try to find target page or use the active page if not found
                          const targetPage = pages.find((p: any) =>
                            p.displayName === targetPageName
                          );

                          if (targetPage) {
                            console.log("Switching to page:", targetPage.displayName);
                            await targetPage.setActive();
                          } else {
                            console.warn(`Page '${targetPageName}' not found. Staying on active page.`);
                          }

                          // 2. Force Apply Filters (Redundancy) - ONLY IF NOT ESCOLAS
                          if (!isEscolas) {
                            const activeFilters: models.IFilter[] = [];
                            // Filter by Name now, to match the Slicer found in logs
                            if (projectName) {
                              const basicFilter: models.IBasicFilter = {
                                $schema: "http://powerbi.com/product/schema#basic",
                                target: {
                                  table: PBI_FILTER_TABLE,
                                  column: PBI_FILTER_COLUMN
                                },
                                operator: "In",
                                values: [projectName],
                                filterType: models.FilterType.Basic
                              };
                              activeFilters.push(basicFilter);
                            }

                            // Apply Filter by setting the correct Slicer State
                            const activePage = await report.getActivePage();
                            const visuals = await activePage.getVisuals();

                            for (const v of visuals) {
                              if (v.type === 'slicer') {
                                try {
                                  const state = await v.getSlicerState();

                                  if (state.targets && state.targets.length > 0) {
                                    // Check if this slicer targets our expected column
                                    const targetsStartus = state.targets.some((t: any) =>
                                      t.table === PBI_FILTER_TABLE && t.column === PBI_FILTER_COLUMN
                                    );

                                    if (targetsStartus) {
                                      console.log("✅ MATCH! Found correct slicer. Setting state...");

                                      // FORCE SET THE SLICER STATE
                                      if (projectName) {
                                        const slicerFilter: models.IBasicFilter = {
                                          $schema: "http://powerbi.com/product/schema#basic",
                                          target: {
                                            table: PBI_FILTER_TABLE,
                                            column: PBI_FILTER_COLUMN
                                          },
                                          operator: "In",
                                          values: [projectName],
                                          filterType: models.FilterType.Basic
                                        };

                                        try {
                                          await v.setSlicerState({ filters: [slicerFilter] });
                                          console.log("🎯 Slicer State set successfully!");
                                        } catch (slicerErr) {
                                          console.error("Failed to set slicer state:", slicerErr);
                                        }
                                      }
                                    }
                                  }
                                } catch (err) {
                                  // Ignore errors reading other slicers
                                }
                              }
                            }
                          } else {
                            console.log("Program is ESCOLAS - Skipping Slicer Application as requested.");
                          }

                        } catch (e) {
                          console.error("Error configuration report (page/filter):", e);
                        }
                      }
                    }],
                    ['rendered', function () { console.log('Report rendered'); }],
                    ['error', function (event) { console.error('Report Error', event.detail); }]
                  ])
                }
                cssClassName={"w-full h-full"}
                getEmbeddedComponent={(embeddedReport) => {
                  // @ts-ignore
                  window.report = embeddedReport;
                }}
              />
            </div>
          )}
        </div>
      </DialogContent>
    </Dialog>
  );
};
