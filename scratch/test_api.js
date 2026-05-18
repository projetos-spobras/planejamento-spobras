async function testApi() {
    const res = await fetch('https://api.supabase.com/v1/projects', {
        headers: { 'Authorization': 'Bearer sb_secret_ma-8zLiI5mejOHlDHUSeoA_03CITxXY' }
    });
    console.log(res.status);
    console.log(await res.json());
}
testApi();
