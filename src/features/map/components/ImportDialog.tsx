import { useState } from "react";
import { Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Checkbox } from "@/components/ui/checkbox";
import { toast } from "sonner";
import Papa from "papaparse";
import { supabase } from "@/integrations/supabase/client";

interface ImportDialogProps {
    open: boolean;
    onOpenChange: (open: boolean) => void;
    onSuccess?: () => void;
}

export const ImportDialog = ({ open, onOpenChange, onSuccess }: ImportDialogProps) => {
    const [importFile, setImportFile] = useState<File | null>(null);
    const [importToken, setImportToken] = useState("");
    const [clearBeforeImport, setClearBeforeImport] = useState(false);
    const [isImporting, setIsImporting] = useState(false);

    const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const file = e.target.files?.[0];
        if (file) {
            setImportFile(file);
        }
    };

    const executeImport = async () => {
        if (!importFile) {
            toast.error("Por favor, selecione um arquivo CSV para importar");
            return;
        }
        if (!importToken) {
            toast.error("Por favor, informe o token de administrador");
            return;
        }

        setIsImporting(true);

        try {
            // Ler arquivo como ArrayBuffer para detectar encoding
            const arrayBuffer = await importFile.arrayBuffer();
            let csvText: string;

            // Tentar UTF-8 primeiro
            let decoder = new TextDecoder('utf-8');
            csvText = decoder.decode(arrayBuffer);

            // Se detectar caracteres inválidos (), tentar ISO-8859-1
            if (csvText.includes('')) {
                console.warn("Detectado encoding inválido em UTF-8. Tentando ISO-8859-1...");
                decoder = new TextDecoder('iso-8859-1');
                csvText = decoder.decode(arrayBuffer);
            }

            // Remover BOM se existir
            csvText = csvText.replace(/^\uFEFF/, '');

            Papa.parse(csvText, {
                header: true,
                skipEmptyLines: true,
                complete: async results => {
                    try {
                        // Process malformed CSV (each line is wrapped in quotes)
                        const processedRows = (results.data as any[]).map((row: any) => {
                            if (row.Programas && !row.Empreendimentos) {
                                const fullString = row.Programas;
                                const parsed = Papa.parse(fullString, { header: false, skipEmptyLines: true });
                                const cells = Array.isArray(parsed.data) ? (parsed.data as any[])[0] : null;
                                if (Array.isArray(cells) && cells.length >= 7) {
                                    const baseColumns = {
                                        Programas: String(cells[0] || '').trim(),
                                        Empreendimentos: String(cells[1] || '').trim(),
                                        Latitude: String(cells[2] || '').replace(',', '.'),
                                        Longitude: String(cells[3] || '').replace(',', '.'),
                                        Nr_Contrato: String(cells[4] || '').trim(),
                                        'Status Contrato': String(cells[5] || '').trim(),
                                        Tipo_Contrato_Dash: String(cells[6] || '').trim(),
                                    };

                                    const additionalData: any = {};
                                    if (cells.length > 7) {
                                        for (let i = 7; i < cells.length; i++) {
                                            additionalData[`extra_col_${i}`] = String(cells[i] || '').trim();
                                        }
                                    }

                                    return { ...baseColumns, ...additionalData };
                                }
                                return null;
                            }

                            if (row.Latitude && row.Longitude) {
                                return {
                                    ...row,
                                    Latitude: row.Latitude?.replace(",", "."),
                                    Longitude: row.Longitude?.replace(",", ".")
                                };
                            }
                            return null;
                        }).filter(row => row !== null);

                        let finalRows: any[] = processedRows as any[];
                        if (processedRows.length < (results.data as any[]).length) {
                            const parsed2 = Papa.parse(csvText, { header: false, skipEmptyLines: true });
                            const rows2 = parsed2.data as any[];
                            if (Array.isArray(rows2) && rows2.length > 1) {
                                const headerRow: string[] = rows2[0].map((h: any) => String(h || '').replace(/^\uFEFF/, '').trim());
                                const col = (name: string) => headerRow.findIndex(h => h === name || h.replace(/^\uFEFF/, '') === name);
                                const idx = {
                                    Programas: col('Programas'),
                                    Empreendimentos: col('Empreendimentos'),
                                    Latitude: col('Latitude'),
                                    Longitude: col('Longitude'),
                                    Nr_Contrato: col('Nr_Contrato'),
                                    StatusContrato: col('Status Contrato'),
                                    TipoContrato: col('Tipo_Contrato_Dash'),
                                };
                                finalRows = rows2.slice(1).map((cells: any[]) => {
                                    const get = (i: number) => (i >= 0 && i < cells.length ? String(cells[i] ?? '') : '');
                                    return {
                                        Programas: get(idx.Programas).trim(),
                                        Empreendimentos: get(idx.Empreendimentos).trim(),
                                        Latitude: get(idx.Latitude).replace(',', '.'),
                                        Longitude: get(idx.Longitude).replace(',', '.'),
                                        Nr_Contrato: get(idx.Nr_Contrato).trim(),
                                        'Status Contrato': get(idx.StatusContrato).trim(),
                                        Tipo_Contrato_Dash: get(idx.TipoContrato).trim(),
                                    };
                                }).filter(r => r.Programas && r.Empreendimentos && r.Latitude && r.Longitude);
                            }
                        }

                        toast.info(`Enviando ${finalRows.length} registros para processamento...`);

                        const { data, error } = await supabase.functions.invoke("import-empreendimentos", {
                            body: {
                                rows: finalRows,
                                clearExisting: clearBeforeImport
                            },
                            headers: {
                                "x-admin-token": importToken
                            }
                        });

                        if (error) throw error;

                        if (data.success) {
                            toast.success("Importação concluída! Recarregue a página para ver os dados atualizados.");
                            if (onSuccess) onSuccess();
                            onOpenChange(false);
                        } else {
                            toast.error("Falha na importação");
                        }
                    } catch (err) {
                        console.error("Import error:", err);
                        toast.error("Erro ao processar importação");
                    } finally {
                        setIsImporting(false);
                    }
                },
                error: error => {
                    console.error("CSV parse error:", error);
                    toast.error("Erro ao ler CSV");
                    setIsImporting(false);
                }
            });
        } catch (error) {
            console.error("Error loading CSV:", error);
            toast.error("Erro ao carregar arquivo CSV");
            setIsImporting(false);
        }
    };

    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[500px]">
                <DialogHeader>
                    <DialogTitle>Sincronização Automática Ativa</DialogTitle>
                    <DialogDescription>
                        A importação manual foi desativada.
                    </DialogDescription>
                </DialogHeader>

                <div className="py-6 text-center text-muted-foreground">
                    <p>O sistema agora sincroniza dados automaticamente com o SQL Server local.</p>
                    <p className="mt-2 text-sm">Horários de sincronização: 07:00, 12:00, 19:00</p>
                </div>

                <DialogFooter>
                    <Button onClick={() => onOpenChange(false)}>
                        Fechar
                    </Button>
                </DialogFooter>
            </DialogContent>
        </Dialog>
    );
};
