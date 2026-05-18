const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });
const fs = require('fs');
const path = require('path');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Erro: NEXT_PUBLIC_SUPABASE_URL ou SUPABASE_SERVICE_ROLE_KEY não encontrados no .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false
  }
});

async function extractEmails() {
  console.log('Iniciando extração de e-mails do Supabase...');
  
  let allEmails = [];
  let page = 1;
  const perPage = 1000;
  
  try {
    while (true) {
      const { data: { users }, error } = await supabase.auth.admin.listUsers({
        page: page,
        perPage: perPage
      });

      if (error) throw error;
      
      if (!users || users.length === 0) break;

      const emails = users
        .map(user => user.email)
        .filter(email => !!email && email.includes('@spobras.'));
      allEmails = allEmails.concat(emails);
      
      console.log(`Página ${page}: ${users.length} usuários encontrados.`);
      
      if (users.length < perPage) break;
      page++;
    }

    const outputPath = path.join(__dirname, 'supabase_user_emails.txt');
    fs.writeFileSync(outputPath, allEmails.join('\n'), 'utf8');
    
    console.log(`Sucesso! ${allEmails.length} e-mails extraídos.`);
    console.log(`Arquivo gerado em: ${outputPath}`);
    
  } catch (err) {
    console.error('Erro ao extrair e-mails:', err.message);
  }
}

extractEmails();
