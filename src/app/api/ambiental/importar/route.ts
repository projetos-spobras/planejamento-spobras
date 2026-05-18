import { NextRequest, NextResponse } from 'next/server';
import * as XLSX from 'xlsx';
import { createClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

export async function POST(req: NextRequest) {
    try {
        const formData = await req.formData();
        const file = formData.get('file') as File;

        if (!file) {
            return NextResponse.json({ error: 'Nenhum arquivo enviado.' }, { status: 400 });
        }

        const bytes = await file.arrayBuffer();
        const workbook = XLSX.read(bytes, { type: 'array', cellDates: true });
        
        const sheetName = workbook.SheetNames.includes("PREENCHER") 
            ? "PREENCHER" 
            : workbook.SheetNames[0];
            
        const worksheet = workbook.Sheets[sheetName];
        
        // Find the actual header row (some sheets have title rows at the top)
        const rawData = XLSX.utils.sheet_to_json(worksheet, { header: 1, defval: null }) as any[][];
        let headerRowIndex = 0;
        for (let i = 0; i < Math.min(20, rawData.length); i++) {
            const rowStr = (rawData[i] || []).join(' ').toUpperCase();
            if (rowStr.includes('EMPREENDIMENTO') && (rowStr.includes('SEI') || rowStr.includes('CONTRATO'))) {
                headerRowIndex = i;
                break;
            }
        }

        const rows = XLSX.utils.sheet_to_json(worksheet, { range: headerRowIndex, defval: null }) as any[];

        const supabase = await createClient();
        const results = {
            total: rows.length,
            inserted: 0,
            updated: 0,
            errors: [] as { line: number; error: string }[]
        };

        for (let i = 0; i < rows.length; i++) {
            const row = rows[i];
            const lineNum = i + 2; // +1 for 0-index, +1 for header row

            try {
                // 1. Mapeamento dos campos principais
                const getVal = (keys: string[]) => {
                    for (const k of keys) {
                        if (row[k] !== undefined && row[k] !== null) return row[k];
                        const keySemAcento = Object.keys(row).find(rk => rk.trim().toUpperCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "") === k.trim().toUpperCase().normalize('NFD').replace(/[\u0300-\u036f]/g, ""));
                        if (keySemAcento && row[keySemAcento] !== undefined && row[keySemAcento] !== null) return row[keySemAcento];
                    }
                    return null;
                };

                const valSei = getVal(['SEI DO CONTRATO/LICITAÇÃO', 'SEI DO CONTRATO/LICITACAO', 'SEI', 'PROCESSO SEI']);
                const valEmp = getVal(['EMPREENDIMENTO', 'NOME', 'NOME DO EMPREENDIMENTO']);

                const payload = {
                    contrato_spobras: getVal(['CONTRATO', 'CONTRATO SPOBRAS']),
                    contrato_siurb: getVal(['CONTRATO SPOBRAS-SIURB', 'CONTRATO SIURB']),
                    sei_processo: valSei ? String(valSei).trim() : null,
                    nome_empreendimento: valEmp ? String(valEmp).trim() : null,
                    status: ['Em andamento', 'Concluído', 'Cancelado', 'Paralisado'].includes(getVal(['STATUS'])) ? getVal(['STATUS']) : 'Em andamento',
                    gerencia: getVal(['GERÊNCIA', 'GERENCIA']),
                    contratada: getVal(['CONTRATADA', 'GERENCIADORA', 'EMPRESA']),
                    prazo: getVal(['PRAZO']) instanceof Date ? getVal(['PRAZO']).toISOString().split('T')[0] : null,
                    valor_contrato: parseFloat(getVal(['VALOR DO CONTRATO'])) || 0,
                    valor_medido: parseFloat(getVal(['VALOR MEDIDO (P0)'])) || 0,
                    percentual_conclusao: !isNaN(parseFloat(String(getVal(['% CONCLUSÃO', '% CONCLUSAO', 'PERCENTUAL']) || '0').replace(',', '.'))) ? parseFloat(String(getVal(['% CONCLUSÃO', '% CONCLUSAO', 'PERCENTUAL']) || '0').replace(',', '.')) : null,
                    gestor: getVal(['GESTOR']),
                    fiscal: getVal(['FISCAL']),
                    tipo_servico: normalizeTipoServico(getVal(['TIPO', 'TIPO DE SERVIÇO', 'TIPO SERVICO'])),
                    programa: getVal(['PROGRAMA']),
                    estagio_contratacao: parseInt(getVal(['ESTÁGIO DE CONTRATAÇÃO', 'ESTAGIO DE CONTRATACAO', 'ESTÁGIO'])?.toString() ?? '0') || null,
                    tecnico_gma: getVal(['TÉCNICO RESPONSÁVEL NA GMA', 'TÉCNICO', 'TECNICO GMA', 'TECNICO RESPONSAVEL NA GMA']),
                    observacoes: getVal(['OBSERVAÇÕES', 'OBSERVACOES', 'OBS'])
                };

                if (!payload.sei_processo && !payload.nome_empreendimento) {
                    // Provavelmente uma linha vazia no final da planilha ou no meio. Pular silenciosamente.
                    continue;
                }

                if (!payload.sei_processo || !payload.nome_empreendimento) {
                    const colunasEncontradas = Object.keys(row).join(', ');
                    results.errors.push({ line: lineNum, error: `Falta SEI ou Nome. Colunas disponíveis nesta linha: [${colunasEncontradas}]` } as any);
                    continue;
                }

                // 2. Upsert do empreendimento ambiental
                const { data: upsertData, error: upsertError } = await supabase
                    .from('ambiental_empreendimentos')
                    .upsert(payload, { 
                        onConflict: 'sei_processo,nome_empreendimento',
                        ignoreDuplicates: false 
                    })
                    .select('id')
                    .single();

                if (upsertError) {
                    results.errors.push({ 
                        line: lineNum, 
                        error: `Erro no upsert: ${upsertError.message}`,
                        details: upsertError.details,
                        hint: upsertError.hint 
                    } as any);
                    continue;
                }

                const ambId = upsertData.id;
                // Simples contador (não sabemos se inseriu ou atualizou sem rpc customizado ou diffing prévio)
                // Para simplificar, vamos assumir que se não deu erro, processou. 
                // Se quisermos detalhar, precisaríamos de um SELECT antes.
                results.inserted++; 

                // 3. Processamento de Licenciamentos
                const licTipos = [
                    { col: 'ARQUEOLOGIA', db: 'ARQUEOLOGIA' },
                    { col: 'DAEE', db: 'DAEE' },
                    { col: 'DISPENSA DE LICENÇA', db: 'DISPENSA_LICENCA' },
                    { col: 'Áreas Contaminadas', db: 'AREAS_CONTAMINADAS' },
                    { col: 'TCA', db: 'TCA' },
                    { col: 'PLANTIO', db: 'PLANTIO' },
                    { col: 'EVA', db: 'EVA' },
                    { col: 'EIA/RIMA', db: 'EIA_RIMA' },
                    { col: 'LAP', db: 'LAP' },
                    { col: 'LAI', db: 'LAI' },
                    { col: 'LAO', db: 'LAO' },
                ];

                const licenciamentos = licTipos.map(lt => ({
                    ambiental_empreendimento_id: ambId,
                    tipo: lt.db,
                    status: normalizeLicense(row[lt.col])
                })).filter(l => l.status !== null);

                if (licenciamentos.length > 0) {
                    const { error: licError } = await supabase
                        .from('ambiental_licenciamentos')
                        .upsert(licenciamentos, { onConflict: 'ambiental_empreendimento_id,tipo' });
                    
                    if (licError) {
                        results.errors.push({ line: lineNum, error: `Erro nos licenciamentos: ${licError.message}` });
                    }
                }

            } catch (err: any) {
                results.errors.push({ line: lineNum, error: err.message || 'Erro inesperado na linha.' });
            }
        }

        return NextResponse.json(results);

    } catch (err: any) {
        return NextResponse.json({ error: err.message }, { status: 500 });
    }
}

function normalizeLicense(val: any): string | null {
    if (!val || val === '-') return null;
    const s = String(val).toUpperCase().trim();
    if (s === 'OK') return 'OK';
    if (s === 'A') return 'A';
    if (s === 'P') return 'P';
    return null;
}

function normalizeTipoServico(val: any): string | null {
    if (!val) return null;
    const s = String(val).toUpperCase().trim();
    // ARQUEOLOGIA | AC | SUPERVISÃO | DAEE | EVA | EIA_RIMA | OUTRO
    if (s.includes('ARQUEO')) return 'ARQUEOLOGIA';
    if (s.includes('CONTAM') || s === 'AC') return 'AC';
    if (s.includes('SUPERV')) return 'SUPERVISÃO';
    if (s.includes('DAEE')) return 'DAEE';
    if (s.includes('EVA')) return 'EVA';
    if (s.includes('EIA') || s.includes('RIMA')) return 'EIA_RIMA';
    return 'OUTRO';
}
