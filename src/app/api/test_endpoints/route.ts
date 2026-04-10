import { NextResponse } from 'next/server';
import { fetchDirectlyFromSPObras } from '@/lib/api-client';

export async function GET() {
    const test1 = await fetchDirectlyFromSPObras('/api/Empreendimentos').then(d => `GET /api/Empreendimentos: ${Array.isArray(d) ? d.length : typeof d}`).catch(e => e.message);
    const test2 = await fetchDirectlyFromSPObras('/Empreendimentos').then(d => `GET /Empreendimentos: ${Array.isArray(d) ? d.length : typeof d}`).catch(e => e.message);
    const test3 = await fetchDirectlyFromSPObras('/api/Contratos').then(d => `GET /api/Contratos: ${Array.isArray(d) ? d.length : typeof d}`).catch(e => e.message);
    const test4 = await fetchDirectlyFromSPObras('/Contratos').then(d => `GET /Contratos: ${Array.isArray(d) ? d.length : typeof d}`).catch(e => e.message);

    return NextResponse.json({ tests: [test1, test2, test3, test4] });
}

