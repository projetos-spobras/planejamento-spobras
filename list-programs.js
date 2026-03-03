
const supabaseUrl = "https://ujsrvtuprhgaygagleys.supabase.co"
const supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVqc3J2dHVwcmhnYXlnYWdsZXlzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI3MzY5NjEsImV4cCI6MjA2ODMxMjk2MX0.7XJNIS0IYbBDG_her0-RZBmoIsJh9SHJ6F3AJ8HJe7k"

async function listPrograms() {
    console.log('Fetching unique programs from map_data via REST API...')

    try {
        const response = await fetch(`${supabaseUrl}/rest/v1/map_data?select=Programas`, {
            headers: {
                'apikey': supabaseKey,
                'Authorization': `Bearer ${supabaseKey}`
            }
        });

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json();

        // Get unique programs
        const programs = [...new Set(data.map(item => item.Programas))].filter(Boolean).sort();

        console.log('\nUnique Programs found:');
        programs.forEach(p => console.log(`- "${p}"`));

    } catch (error) {
        console.error('Error fetching data:', error);
    }
}

listPrograms()
