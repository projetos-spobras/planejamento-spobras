import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type, x-admin-token",
};

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    console.log("Iniciando importação de dados...");
    
    // Autenticação
    const adminToken = req.headers.get("x-admin-token");
    const serviceRoleKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");
    
    if (!adminToken || adminToken !== Deno.env.get("ADMIN_IMPORT_TOKEN")) {
      if (!serviceRoleKey) {
        throw new Error("Não autorizado");
      }
    }

    // Parse do body
    const { empreendimentos_csv, contratos_csv, clearExisting, contratos_only } = await req.json();

    // Permitir importação apenas de contratos
    if (contratos_only) {
      if (!contratos_csv) {
        throw new Error("CSV de contratos é obrigatório para importação isolada");
      }
    } else {
      // Importação completa requer ambos CSVs
      if (!empreendimentos_csv || !contratos_csv) {
        throw new Error("CSVs de empreendimentos e contratos são obrigatórios");
      }
    }

    console.log("CSVs recebidos, iniciando parsing...");

    // Inicializar Supabase client
    const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
    const supabase = createClient(supabaseUrl, serviceRoleKey!);

    // Função auxiliar para remover BOM
    const removeBOM = (str: string) => {
      return str.replace(/^\uFEFF/, '');
    };

    // Parser CSV robusto que respeita aspas
    const parseCSVLine = (line: string): string[] => {
      const result: string[] = [];
      let current = '';
      let inQuotes = false;
      
      for (let i = 0; i < line.length; i++) {
        const char = line[i];
        
        if (char === '"') {
          inQuotes = !inQuotes;
        } else if (char === ',' && !inQuotes) {
          result.push(current.trim());
          current = '';
        } else {
          current += char;
        }
      }
      
      result.push(current.trim());
      return result.map(v => v.replace(/^"|"$/g, ''));
    };

    // Função para fazer parse de CSV robusto
    const parseCSV = (csvText: string) => {
      const lines = csvText.split('\n').filter(line => line.trim());
      if (lines.length === 0) return { headers: [], rows: [] };
      
      const headers = parseCSVLine(removeBOM(lines[0]));
      
      const rows = lines.slice(1).map(line => {
        const values = parseCSVLine(line);
        const row: any = {};
        headers.forEach((header, i) => {
          row[header] = values[i] || '';
        });
        return row;
      });
      
      return { headers, rows };
    };

    // Parse CSV de empreendimentos (se não for importação apenas de contratos)
    let empreendimentos: any[] = [];
    let empreendimentosToInsert: any[] = [];
    
    if (!contratos_only) {
      const parsed = parseCSV(empreendimentos_csv);
      empreendimentos = parsed.rows;
      console.log(`Parsed ${empreendimentos.length} empreendimentos`);
    }

    // Parse CSV de contratos
    const { rows: contratos } = parseCSV(contratos_csv);
    console.log(`Parsed ${contratos.length} contratos`);

    // Limpar tabelas se solicitado
    if (clearExisting) {
      console.log("Limpando tabelas existentes...");
      if (contratos_only) {
        await supabase.from("contratos").delete().neq("id", "00000000-0000-0000-0000-000000000000");
      } else {
        await supabase.from("contratos").delete().neq("id", "00000000-0000-0000-0000-000000000000");
        await supabase.from("empreendimentos").delete().neq("id", "00000000-0000-0000-0000-000000000000");
      }
    }

    // Mapear nomes de campos possíveis
    const getField = (row: any, ...possibleNames: string[]): string => {
      for (const name of possibleNames) {
        if (row[name] !== undefined && row[name] !== null && row[name] !== '') {
          return String(row[name]).trim();
        }
      }
      return '';
    };

    // Normalizar coordenadas brasileiras (vírgula → ponto)
    const parseCoordinate = (coord: string): number => {
      const cleaned = coord.replace(/"/g, '').replace(',', '.').trim();
      const value = parseFloat(cleaned);
      
      if (isNaN(value) || value === 0) {
        return 0;
      }
      
      return value;
    };

    // Inserir empreendimentos (apenas se não for importação isolada de contratos)
    if (!contratos_only) {
      console.log("Inserindo empreendimentos...");
      empreendimentosToInsert = empreendimentos
        .map((emp: any) => {
          const idStr = getField(emp, 'Id_Empreendimento', 'id_empreendimento', 'ID');
          const latStr = getField(emp, 'Latitude', 'latitude', 'LAT');
          const lngStr = getField(emp, 'Longitude', 'longitude', 'LNG', 'LON');
          
          const id = parseInt(idStr || "0");
          const lat = parseCoordinate(latStr || "0");
          const lng = parseCoordinate(lngStr || "0");
          
          if (id === 0 || lat === 0 || lng === 0) {
            console.warn(`Empreendimento inválido ignorado: ID=${id}, Lat=${lat}, Lng=${lng}`);
            return null;
          }
          
          return {
            id_empreendimento: id,
            programas: getField(emp, 'Programas', 'programas', 'PROGRAMA') || "Não especificado",
            empreendimentos: getField(emp, 'Empreendimentos', 'empreendimentos', 'NOME') || "Sem nome",
            latitude: lat,
            longitude: lng,
            subprefeitura: getField(emp, 'Subprefeitura', 'subprefeitura') || null,
            contagem_andamento_concluido: parseInt(getField(emp, 'Contagem de Andamento_Concluido', 'contagem_andamento_concluido') || "0")
          };
        })
        .filter((e: any) => e !== null);

      if (empreendimentosToInsert.length === 0) {
        throw new Error("Nenhum empreendimento válido encontrado no CSV");
      }

      const { error: empError } = await supabase
        .from("empreendimentos")
        .upsert(empreendimentosToInsert, { onConflict: "id_empreendimento" });

      if (empError) {
        console.error("Erro ao inserir empreendimentos:", empError);
        throw empError;
      }
      
      console.log(`${empreendimentosToInsert.length} empreendimentos inseridos com sucesso`);
    } else {
      console.log("Modo de importação apenas de contratos - pulando empreendimentos");
    }

    // Normalizar valores monetários brasileiros
    const parseMoneyValue = (value: string): number => {
      const cleaned = value
        .replace(/R\$\s?/g, '')
        .replace(/\./g, '')
        .replace(',', '.')
        .trim();
      
      return parseFloat(cleaned) || 0;
    };

    // Buscar IDs válidos de empreendimentos
    console.log("Buscando IDs válidos de empreendimentos...");
    const { data: validEmpreendimentos, error: validError } = await supabase
      .from("empreendimentos")
      .select("id_empreendimento");
    
    if (validError) {
      console.error("Erro ao buscar empreendimentos:", validError);
      throw validError;
    }
    
    const validIds = new Set(validEmpreendimentos?.map(e => e.id_empreendimento) || []);
    console.log(`IDs válidos encontrados: ${validIds.size}`);

    // Inserir contratos
    console.log("Inserindo contratos...");
    let contratosOrfaos = 0;
    let contratosInvalidos = 0;
    const contratosToInsert = contratos
      .filter((cont: any) => {
        const idStr = getField(cont, 'Id_Empreendimento', 'id_empreendimento', 'ID');
        const id = parseInt(idStr || "0");
        
        if (id === 0) {
          contratosOrfaos++;
          return false;
        }
        
        // Validar se o ID existe na tabela de empreendimentos
        if (!validIds.has(id)) {
          contratosInvalidos++;
          console.warn(`Contrato com id_empreendimento=${id} inválido (não existe na tabela empreendimentos)`);
          return false;
        }
        
        return true;
      })
      .map((cont: any) => {
        const idStr = getField(cont, 'Id_Empreendimento', 'id_empreendimento', 'ID');
        const id = parseInt(idStr || "0");
        
        // Parse valor
        const valorStr = getField(cont, 'Valor_Atual', 'valor_atual', 'VALOR');
        const valor = valorStr ? parseMoneyValue(valorStr) : 0;

        // Parse datas
        const parseDate = (dateStr: string) => {
          if (!dateStr || dateStr.trim() === "") return null;
          try {
            // Tenta vários formatos de data
            const date = new Date(dateStr);
            if (!isNaN(date.getTime())) {
              return date.toISOString();
            }
            return null;
          } catch {
            return null;
          }
        };

        const dataInicioStr = getField(cont, 'Execucao_Data_Início', 'Execucao_Data_Inicio', 'execucao_data_inicio', 'DATA_INICIO');
        const dataFimStr = getField(cont, 'Execucao_Data_Fim', 'execucao_data_fim', 'DATA_FIM');

        return {
          id_empreendimento: id,
          andamento_concluido: getField(cont, 'Andamento_Concluido', 'andamento_concluido', 'STATUS') || "Não especificado",
          nr_contrato: getField(cont, 'Nr_Contrato', 'nr_contrato', 'NUMERO') || `Contrato-${id}`,
          tipo_contrato_dash: getField(cont, 'Tipo_Contrato_Dash', 'tipo_contrato_dash', 'TIPO') || null,
          execucao_data_inicio: parseDate(dataInicioStr),
          execucao_data_fim: parseDate(dataFimStr),
          valor_atual: valor
        };
      });

    if (contratosOrfaos > 0) {
      console.log(`⚠️ ${contratosOrfaos} contratos órfãos (ID=0) foram ignorados`);
    }
    
    if (contratosInvalidos > 0) {
      console.log(`⚠️ ${contratosInvalidos} contratos com ID inválido foram ignorados`);
    }

    if (contratosToInsert.length === 0) {
      console.warn("Nenhum contrato válido encontrado no CSV");
    } else {
      const { error: contError } = await supabase
        .from("contratos")
        .insert(contratosToInsert);

      if (contError) {
        console.error("Erro ao inserir contratos:", contError);
        throw contError;
      }
      
      console.log(`${contratosToInsert.length} contratos inseridos com sucesso`);
    }

    // Construir resposta detalhada
    const response = {
      success: true,
      mode: contratos_only ? "contratos_only" : "full_import",
      empreendimentos_imported: contratos_only ? 0 : empreendimentosToInsert.length,
      contratos_imported: contratosToInsert.length,
      contratos_orfaos_ignorados: contratosOrfaos,
      contratos_invalidos_ignorados: contratosInvalidos,
      validation_summary: {
        total_contratos_parsed: contratos.length,
        contratos_validos: contratosToInsert.length,
        contratos_rejeitados: contratosOrfaos + contratosInvalidos
      }
    };
    
    console.log("✅ Importação concluída:", response);

    return new Response(
      JSON.stringify(response),
      { headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );

  } catch (error: any) {
    console.error("Erro na importação:", error);
    return new Response(
      JSON.stringify({ error: error.message || "Erro desconhecido na importação" }),
      { headers: { ...corsHeaders, "Content-Type": "application/json" }, status: 500 }
    );
  }
});
