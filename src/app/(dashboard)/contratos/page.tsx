
import { supabase } from "@/lib/supabase"
import { ContratosClient } from "./_components/client-page"

export const revalidate = 0

interface ContratosPageProps {
    searchParams: Promise<{ [key: string]: string | string[] | undefined }>
}

export default async function ContratosPage({ searchParams }: ContratosPageProps) {
    const params = await searchParams
    const page = Number(params?.page || 1)
    const pageSize = Number(params?.pageSize || 12)
    const search = params?.search as string | undefined
    const status = params?.status as string || 'all'

    let query = supabase
        .from('contratos')
        .select('*', { count: 'exact' })
        .order('created_at', { ascending: false })

    if (status !== 'all') {
        query = query.eq('status', status)
    }

    if (search) {
        query = query.or(`numero.ilike.%${search}%,contratada.ilike.%${search}%`)
    }

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1

    const { data: contratos, count } = await query.range(from, to)

    if (!contratos) {
        return <div>Erro ao carregar dados</div>
    }

    return <ContratosClient data={contratos} totalItems={count || 0} />
}
