
import { createClient } from "@/lib/supabase/server"
import { ContratosClient } from "./_components/client-page"
import { getContratos } from "@/lib/api-client"

export const revalidate = 0

interface ContratosPageProps {
    searchParams: Promise<{ [key: string]: string | string[] | undefined }>
}

export default async function ContratosPage({ searchParams }: ContratosPageProps) {
    const supabase = await createClient()
    const params = await searchParams
    const page = Number(params?.page || 1)
    const pageSize = Number(params?.pageSize || 12)
    const search = params?.search as string | undefined
    const status = params?.status as string || 'all'

    let contratos = await getContratos(supabase);

    if (status !== 'all') {
        contratos = contratos.filter((c: any) => c.status === status);
    }

    if (search) {
        const lowerSearch = search.toLowerCase();
        contratos = contratos.filter((c: any) =>
            (c.numero && c.numero.toLowerCase().includes(lowerSearch)) ||
            (c.contratada && c.contratada.toLowerCase().includes(lowerSearch))
        );
    }

    const count = contratos.length;
    const from = (page - 1) * pageSize;
    const to = from + pageSize;
    const paginated = contratos.slice(from, to);

    return <ContratosClient data={paginated} totalItems={count || 0} />
}
