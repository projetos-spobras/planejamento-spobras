import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.75.0';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type, x-admin-token',
};

interface RawRow {
  [key: string]: any;
}

interface EmpreendimentoRow {
  empreendimento: string;
  programa: string;
  status: string;
  nr_contrato: string;
  tipo_contrato: string;
  latitude: number;
  longitude: number;
}

Deno.serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    console.log('[import-empreendimentos] Starting import...');

    // Verify admin token (accept ADMIN_IMPORT_TOKEN or service role key for admin use)
    const adminToken = req.headers.get('x-admin-token');
    const expectedAdminToken = Deno.env.get('ADMIN_IMPORT_TOKEN');
    const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');

    const authorized = !!adminToken && (adminToken === expectedAdminToken || adminToken === serviceRoleKey);
    if (!authorized) {
      console.error('[import-empreendimentos] Unauthorized: Invalid token');
      return new Response(
        JSON.stringify({ error: 'Unauthorized' }),
        { status: 401, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      );
    }

    // Parse request body
    const { rows, clearExisting = false } = await req.json() as { rows: RawRow[], clearExisting?: boolean };
    
    if (!rows || !Array.isArray(rows)) {
      console.error('[import-empreendimentos] Invalid request: rows must be an array');
      return new Response(
        JSON.stringify({ error: 'Invalid request: rows must be an array' }),
        { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      );
    }

    console.log(`[import-empreendimentos] Processing ${rows.length} rows...`);

    // Initialize Supabase client with service role
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    const supabase = createClient(supabaseUrl, supabaseServiceKey);

    // Normalization helpers
    const normalizeText = (s: string): string => {
      return (s ?? '')
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .toLowerCase()
        .replace(/\s+/g, ' ')
        .trim();
    };

    const removeBOM = (s: string): string => {
      return (s ?? '').replace(/^\uFEFF/, '').trim();
    };

    const getField = (row: RawRow, aliases: string[]): string => {
      for (const key of aliases) {
        const v = row[key];
        if (v !== undefined && v !== null) {
          const s = String(v).trim().replace(/\s+/g, ' ');
          if (s.length > 0) return removeBOM(s);
        }
      }
      return '';
    };

    const normalizeCoordinate = (coord: string): string => {
      // Convert Brazilian format (comma as decimal separator) to standard format (dot)
      // Example: "-23,566595" -> "-23.566595"
      return coord.replace(',', '.');
    };

    // Status canonicalization map
    const STATUS_ALIAS_MAP: Record<string, string> = {
      'andamento': 'Andamento',
      'em andamento': 'Andamento',
      'concluido': 'Concluído',
      'concluida': 'Concluído',
      'concludo': 'Concluído',
      'concluda': 'Concluído',
      'obra concluida': 'Concluído',
      'iniciar': 'Iniciar',
      'a iniciar': 'Iniciar',
      'nao iniciado': 'Iniciar',
      'não iniciado': 'Iniciar',
    };

    const canonicalizeStatus = (s: string): string => {
      const key = normalizeText(s);
      return STATUS_ALIAS_MAP[key] || s?.trim() || '';
    };

    // Process rows
    const processedRows: EmpreendimentoRow[] = [];
    const errors: string[] = [];

    for (let i = 0; i < rows.length; i++) {
      const row = rows[i];
      
      try {
        const empreendimento = getField(row, ['Empreendimentos', 'Empreendimento']);
        const programa = getField(row, ['Programas', 'Programa', 'Programa(s)', '﻿Programas']);
        const latitudeRaw = getField(row, ['Latitude', 'Lat']);
        const longitudeRaw = getField(row, ['Longitude', 'Lng', 'Long']);
        const statusRaw = getField(row, ['Status Contrato', 'Status', 'Status da Obra', 'Situação', 'Andamento']);
        const status = canonicalizeStatus(statusRaw);
        const nr_contrato = getField(row, ['Nr_Contrato', 'Contrato', 'Nr Contrato', 'No_Contrato', 'Nº Contrato', 'Nº_Contrato']);
        const tipo_contrato = getField(row, ['Tipo_Contrato_Dash', 'Tipo', 'Tipo Contrato', 'Tipo do Contrato']);

        // Validate required fields
        if (!empreendimento || !programa || !latitudeRaw || !longitudeRaw) {
          errors.push(`Row ${i + 1}: Missing required fields (Empreendimento, Programa, Latitude, or Longitude)`);
          continue;
        }

        // Normalize and parse coordinates (handle Brazilian format with comma)
        const latitude = normalizeCoordinate(latitudeRaw);
        const longitude = normalizeCoordinate(longitudeRaw);
        const lat = parseFloat(latitude);
        const lng = parseFloat(longitude);

        if (isNaN(lat) || isNaN(lng)) {
          errors.push(`Row ${i + 1}: Invalid coordinates (${latitude}, ${longitude})`);
          continue;
        }

        processedRows.push({
          empreendimento,
          programa,
          status: status || 'Não especificado',
          nr_contrato: nr_contrato || '',
          tipo_contrato: tipo_contrato || '',
          latitude: lat,
          longitude: lng,
        });
      } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error);
        errors.push(`Row ${i + 1}: ${errorMessage}`);
      }
    }

    console.log(`[import-empreendimentos] Processed ${processedRows.length} valid rows, ${errors.length} errors`);

    // Count by status for logging
    const statusCounts = processedRows.reduce((acc, row) => {
      acc[row.status] = (acc[row.status] || 0) + 1;
      return acc;
    }, {} as Record<string, number>);
    console.log('[import-empreendimentos] Status distribution:', statusCounts);

    // Clear existing data if requested
    if (clearExisting) {
      console.log('[import-empreendimentos] Clearing existing data...');
      const { error: deleteError } = await supabase
        .from('empreendimentos_mapa')
        .delete()
        .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all records
      
      if (deleteError) {
        console.error('[import-empreendimentos] Error clearing data:', deleteError);
        return new Response(
          JSON.stringify({ 
            error: 'Failed to clear existing data', 
            details: deleteError.message 
          }),
          { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );
      }
      console.log('[import-empreendimentos] Existing data cleared successfully');
    }

    // Insert or upsert to database
    if (processedRows.length > 0) {
      const { data, error } = clearExisting
        ? await supabase.from('empreendimentos_mapa').insert(processedRows)
        : await supabase.from('empreendimentos_mapa').upsert(processedRows, { onConflict: 'row_hash' });

      if (error) {
        console.error('[import-empreendimentos] Database error:', error);
        return new Response(
          JSON.stringify({ 
            error: 'Database error', 
            details: error.message,
            processed: processedRows.length,
            errors: errors.slice(0, 10) // First 10 errors only
          }),
          { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );
      }

      console.log(`[import-empreendimentos] Successfully upserted ${processedRows.length} rows`);
    }

    return new Response(
      JSON.stringify({
        success: true,
        processed: processedRows.length,
        errors: errors.length,
        statusDistribution: statusCounts,
        errorDetails: errors.length > 0 ? errors.slice(0, 10) : undefined
      }),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );

  } catch (error) {
    console.error('[import-empreendimentos] Error:', error);
    const errorMessage = error instanceof Error ? error.message : String(error);
    return new Response(
      JSON.stringify({ error: errorMessage }),
      { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );
  }
});
