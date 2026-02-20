
import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { ContratoDetails } from "@/components/relationships/contrato-details"
import { BackButton } from "@/components/ui/back-button"

export const revalidate = 0

interface PageProps {
    params: Promise<{ id: string }>
}

async function getHierarchy(supabase: Awaited<ReturnType<typeof createClient>>, rootContractId: string) {
    // 1. Fetch the specific contract
    const { data: contract } = await supabase
        .from("contratos")
        .select("*")
        .eq("id", rootContractId)
        .single()

    if (!contract) return []

    // 2. Fetch all contracts to build tree (naive approach for prototype, better to use recursive CTE in SQL)
    // For now, let's just fetch the parent chain and direct children to show context.
    // Or just fetch all and build tree in JS? If < 1000 items it's fine.

    const { data: allContracts } = await supabase
        .from("contratos")
        .select("id, numero, tipo, objeto, contrato_pai_id")

    if (!allContracts) return []

    // Build full tree or partial?
    // User wants "Se tem contrato_pai: link... Se principal: listar subcontratos... Arvore completa"
    // Let's build the whole tree where this contract belongs.

    // Find absolute root
    let root = contract
    while (root.contrato_pai_id) {
        const parent = allContracts.find(c => c.id === root.contrato_pai_id)
        if (parent) root = parent; else break;
    }

    // Build tree from root
    const buildTree = (parentId: string | null): any[] => {
        return allContracts
            .filter(c => c.contrato_pai_id === parentId)
            .map(c => ({
                ...c,
                subcontratos: buildTree(c.id)
            }))
    }

    // If root has no parent, it is a root.
    // But we need to start building from the identified root of this family.
    // The buildTree(null) would return ALL roots. We only want the tree relevant to this contract.
    // Actually, ContratoHierarchy expects a list of nodes.
    // If we just pass the root of THIS family, it works.

    // Re-find root node in allContracts to ensure we have the object
    const rootNode = allContracts.find(c => c.id === root.id)
    if (!rootNode) return []

    const tree = [{
        ...rootNode,
        subcontratos: buildTree(rootNode.id),
        isPrincipal: true // The top node of this specific tree
    }]

    return tree
}

export default async function ContratoDetailsPage({ params }: PageProps) {
    const supabase = await createClient()
    const { id } = await params

    const { data: contrato } = await supabase
        .from("contratos")
        .select("*")
        .eq("id", id)
        .single()

    if (!contrato) {
        notFound()
    }

    const hierarchy = await getHierarchy(supabase, id)

    // Fetch linked empreendimentos
    const { data: linkedEmps } = await supabase
        .from("empreendimentos_contratos")
        .select(`
            id,
            empreendimento_id,
            lote_id,
            empreendimento:empreendimentos (
                id,
                codigo,
                nome,
                localizacao
            ),
            lote:lotes (
                id,
                nome
            )
        `)
        .eq("contrato_id", id)

    // Fetch lotes of this contract
    const { data: lotes } = await supabase
        .from("lotes")
        .select("id, nome, contrato_id")
        .eq("contrato_id", id)

    // Fetch all empreendimentos for availability in dialog
    const { data: allEmpreendimentos } = await supabase
        .from("empreendimentos")
        .select("id, nome")

    // Fetch direct empenhos
    const { data: empenhos } = await supabase
        .from("empenhos")
        .select("*")
        .eq("tipo_vinculo", "contrato")
        .eq("vinculo_id", id)

    return (

        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/contratos" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhes do Contrato</h1>
            </div>
            <ContratoDetails
                contrato={contrato}
                empreendimentosVinculados={(linkedEmps as any) || []}
                hierarchy={hierarchy}
                allEmpreendimentos={allEmpreendimentos || []}
                lotes={lotes || []}
                empenhos={empenhos || []}
            />
        </div>
    )
}
