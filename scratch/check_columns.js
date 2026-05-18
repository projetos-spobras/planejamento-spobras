const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function testQuery() {
  const { data, error } = await supabase
      .from('empreendimento_anexos')
      .select('*')
      .limit(1);
  
  if (error) console.log("Select Error:", error);
  else if (data && data.length > 0) console.log("Columns:", Object.keys(data[0]));
  else {
      // insert dummy
      const res = await supabase.from('empreendimento_anexos').insert({empreendimento_id: '00000000-0000-0000-0000-000000000000', titulo: 'test', caminho_arquivo: 'test', tamanho_arquivo: 1, tipo_arquivo: 'test'}).select();
      console.log(res);
  }
}

testQuery();
