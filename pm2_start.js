const { spawn } = require('child_process');
const path = require('path');

// Usar o binário do Next diretamente com Node evita aberturas de janelas CMD no Windows
const nextBin = path.join(__dirname, 'node_modules', 'next', 'dist', 'bin', 'next');

console.log('Iniciando Next.js em modo produção na porta 3005...');

const ls = spawn('node', [nextBin, 'start', '-p', '3005'], { 
    stdio: 'inherit',
    shell: false, // Shell false evita o popup de janelas
    env: { ...process.env, PORT: '3005', NODE_ENV: 'production' }
});

ls.on('close', (code) => {
    console.log(`O processo do Next.js encerrou com código ${code}`);
});

process.on('SIGINT', () => {
    ls.kill('SIGINT');
    process.exit();
});
