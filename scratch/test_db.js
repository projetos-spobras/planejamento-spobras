const { Client } = require('pg');

async function testConnection() {
    const client = new Client({
        host: 'db.kuxryjfjbsmbhcjwgsgt.supabase.co',
        port: 5432,
        user: 'postgres',
        password: 'sb_secret_ma-8zLiI5mejOHlDHUSeoA_03CITxXY',
        database: 'postgres',
        ssl: { rejectUnauthorized: false }
    });

    try {
        await client.connect();
        console.log('Connected successfully!');
        const res = await client.query('SELECT NOW()');
        console.log(res.rows[0]);
        await client.end();
    } catch (err) {
        console.error('Connection error', err.stack);
    }
}

testConnection();
