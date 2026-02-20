
import { supabase } from "@/lib/supabase"
import { EmpreendimentosClient } from "./_components/client-page"

export const revalidate = 0

interface EmpreendimentosPageProps {
    searchParams: { [key: string]: string | string[] | undefined }
}

export default async function EmpreendimentosPage({ searchParams }: EmpreendimentosPageProps) {
    const params = await searchParams
    const page = Number(params?.page || 1)
    const pageSize = Number(params?.pageSize || 12)
    const search = params?.search as string | undefined
    const status = params?.status as string || 'all'

    let query = supabase
        .from("empreendimentos")
        .select("*", { count: 'exact' })
        .order("created_at", { ascending: false })

    if (status !== 'all') {
        query = query.eq('status', status)
    }

    if (search) {
        query = query.or(`nome.ilike.%${search}%,codigo.ilike.%${search}%`)
    }

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1

    const { data: empreendimentos, count } = await query.range(from, to)

    const { data: programas } = await supabase.from("programas").select("*")
    const { data: distritos } = await supabase.from("distritos").select("*")
    const { data: gerencias } = await supabase.from("gerencias").select("*")
    // Fases is just for internal status mapping if needed, but 'status' column in empreendimentos is text idFase currently
    // Wait, status in empreendimentos is 'idFase' string.
    // I should fetch 'empreendimento_fases' too.
    const { data: fases } = await supabase.from("empreendimento_fases").select("*")

    return (
        <EmpreendimentosClient
            data={empreendimentos || []}
            totalItems={count || 0}
            programas={programas || []}
            distritos={distritos || []}
            gerencias={gerencias || []}
            fases={fases || []}
        />
    )
}
