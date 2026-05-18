
import { createClient } from "@/lib/supabase/server"
import { EmpreendimentosClient } from "./_components/client-page"
import { getEmpreendimentos, getContratos, getContratoEmpreendimentos } from "@/lib/api-client"

export const dynamic = "force-dynamic"

interface EmpreendimentosPageProps {
    searchParams: { [key: string]: string | string[] | undefined }
}

export default async function EmpreendimentosPage({ searchParams }: EmpreendimentosPageProps) {
    const supabase = await createClient()
    const params = await searchParams
    const page = Number(params?.page || 1)
    const pageSize = Number(params?.pageSize || 12)
    const search = params?.search as string | undefined
    const status = params?.status as string || 'all'
    const programaFilter = params?.programa as string || 'all'
    const tipoServicoFilter = params?.tipo_servico as string || 'all'

    try {
        const { 
            data: empreendimentosRaw, 
            count: totalCountFetch,
            fases: apiFases,
            ambientaisCount: ambCount,
            desapropCount: desCount
        } = await getEmpreendimentos(supabase, {
            search,
            status,
            programa: programaFilter,
            tipo_servico: tipoServicoFilter,
            page,
            pageSize
        });

        const empreendimentoIds = empreendimentosRaw.map(e => e.id);

        // Parallelize rest of data fetches
        const [
            contratos, 
            { data: programas }, 
            { data: distritos }, 
            { data: gerencias }
        ] = await Promise.all([
            getContratos(supabase),
            supabase.from("programas").select("*"),
            supabase.from("distritos").select("*"),
            supabase.from("gerencias").select("*")
        ])

        // Get all unique service types for the filter dropdown
        const allServiceTypes = Array.from(new Set(contratos.map(c => c.tipo))).filter(Boolean).sort();

        return (
            <EmpreendimentosClient
                data={empreendimentosRaw || []}
                totalItems={totalCountFetch || 0}
                programas={programas || []}
                distritos={distritos || []}
                gerencias={gerencias || []}
                fases={apiFases || []}
                tiposServico={allServiceTypes}
                counts={{
                    ambiental: ambCount ?? 0,
                    desaprop: desCount ?? 0
                }}
            />
        )
    } catch (e: any) {
        return (
            <div className="p-8 space-y-4 max-w-2xl mx-auto mt-12 bg-red-50 border-l-4 border-red-500 rounded text-red-900">
                <h2 className="text-xl font-bold">Erro Crítico no Servidor</h2>
                <p>Ocorreu um erro ao renderizar os dados na Vercel:</p>
                <pre className="p-4 bg-red-100 rounded text-sm overflow-x-auto whitespace-pre-wrap font-mono">
                    {e?.message || 'Erro desconhecido'}
                </pre>
                {e?.stack && (
                    <details className="cursor-pointer">
                        <summary>Ver Stack Trace</summary>
                        <pre className="p-4 bg-red-100 mt-2 rounded text-xs overflow-x-auto whitespace-pre-wrap font-mono">
                            {e.stack}
                        </pre>
                    </details>
                )}
            </div>
        )
    }
}
