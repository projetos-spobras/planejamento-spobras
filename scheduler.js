import cron from 'node-cron';
import { fork } from 'child_process';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const SYNC_SCRIPT = path.join(__dirname, 'sync-local.js');

function runSync() {
    console.log(`[${new Date().toISOString()}] ⏰ Starting scheduled sync...`);

    // Use fork to run in a separate process/memory space
    const child = fork(SYNC_SCRIPT);

    child.on('exit', (code) => {
        if (code === 0) {
            console.log(`[${new Date().toISOString()}] ✅ Sync completed successfully.`);
        } else {
            console.error(`[${new Date().toISOString()}] ❌ Sync failed with exit code ${code}.`);
        }
    });

    child.on('error', (err) => {
        console.error(`[${new Date().toISOString()}] ❌ Failed to start sync process:`, err);
    });
}

console.log('🚀 Scheduler started. Waiting for scheduled times (07:00, 12:00, 19:00)...');

// Schedule for 07:00
cron.schedule('0 7 * * *', () => {
    console.log('Triggering 07:00 sync...');
    runSync();
});

// Schedule for 12:00
cron.schedule('0 12 * * *', () => {
    console.log('Triggering 12:00 sync...');
    runSync();
});

// Schedule for 19:00
cron.schedule('0 19 * * *', () => {
    console.log('Triggering 19:00 sync...');
    runSync();
});
