import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import fs from 'fs';
import compression from 'compression';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const PORT = process.env.PORT || 3000;

// Enable GZIP compression
app.use(compression());

// Serve static files from the 'dist' directory (Vite build output)
// We also serve 'public' for the dynamic data.json if it's not copied to dist during build (though Vite copies public)
// Actually, sync-local.js writes to public/data/data.json. 
// Vite build copies public/* to dist/*. 
// BUT, if we run sync AFTER build, we need to make sure the server serves the FRESH json, not the one inside dist/data (if it was copied).
// So let's serve /data directly from the source public/data or a dedicated data folder to be safe.

const DATA_DIR = path.join(__dirname, 'public', 'data');

// Serve /data endpoint specifically to ensure we get the latest file
app.use('/data', express.static(DATA_DIR, {
    setHeaders: (res) => {
        // Cache data for 5 minutes
        res.setHeader('Cache-Control', 'public, max-age=300');
    }
}));

// Serve static assets from dist
app.use(express.static(path.join(__dirname, 'dist'), {
    maxAge: '1d', // Cache assets for 1 day
    setHeaders: (res, filePath) => {
        // Do not cache HTML files to ensure updates are seen immediately
        if (filePath.endsWith('.html')) {
            res.setHeader('Cache-Control', 'no-cache');
        }
    }
}));

// SPA Fallback: For any request that isn't a file, return index.html
app.use((req, res) => {
    const file = path.join(__dirname, 'dist', 'index.html');
    if (fs.existsSync(file)) {
        res.sendFile(file);
    } else {
        res.status(404).send('Application build not found. Please run "npm run build".');
    }
});

app.listen(PORT, () => {
    console.log(`🚀 Server running at http://localhost:${PORT}`);
    console.log(`📂 Serving application from ${path.join(__dirname, 'dist')}`);
    console.log(`📂 Live Data served from ${DATA_DIR}`);
});
