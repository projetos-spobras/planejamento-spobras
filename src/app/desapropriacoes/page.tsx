import { getDesapropriacoesAgrupadas } from "@/app/actions/desapropriacoes"
import { DesapropriacaoClient } from "./_components/client-page"
import { createClient } from "@/lib/supabase/server"

export const dynamic = "force-dynamic"

interface DesapropriacoesPageProps {
    searchParams: { [key: string]: string | string[] | undefined }
}

export default async function DesapropriacoesPage({ searchParams }: DesapropriacoesPageProps) {
    const params = await searchParams
    const page = Number(params?.page || 1)
    const limit = Number(params?.limit || 15)

    const supabase = await createClient()
    const { data: empreendimentos, count } = await getDesapropriacoesAgrupadas(page, limit)
    
    // Buscar contratos para o Dialog de edição se necessário
    const { data: allContratos } = await supabase
        .from('contratos')
        .select('id, numero, contratada, tipo, valor_total, data_inicio, data_fim')

    return (
        <DesapropriacaoClient 
            initialData={empreendimentos}
            totalItems={count}
            contratos={allContratos || []}
        />
    )
}
