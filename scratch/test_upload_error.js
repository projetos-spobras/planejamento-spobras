const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function testInsert() {
  const { data, error } = await supabase
      .from('empreendimento_anexos')
      .insert({
          empreendimento_id: "00000000-0000-0000-0000-000000000000",
          titulo: "Teste",
          numero: 1,
          caminho_arquivo: "teste.pdf",
          tamanho_arquivo: 1000,
          tipo_arquivo: "application/pdf",
          perfil_id: null,
          servico_id: null,
          uploaded_by_name: "Teste",
          uploaded_by_email: "teste@teste.com"
      });
  
  console.log("Insert Error:", error);
}

testInsert();
