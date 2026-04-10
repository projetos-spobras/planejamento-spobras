
import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { ContratoDetails } from "@/components/relationships/contrato-details"
import { BackButton } from "@/components/ui/back-button"
import { getContratos, getEmpreendimentos, getContratoAditamentos, getContractMedicoes, getContractEmpenhos } from "@/lib/api-client"

export const dynamic = "force-dynamic"

interface PageProps {
    params: Promise<{ id: string }>
}

async function getHierarchy(supabase: Awaited<ReturnType<typeof createClient>>, rootContractId: string, allContracts: any[]) {
    // 1. Fetch the specific contract
    const contract = allContracts.find(c => c.id === rootContractId);

    if (!contract) return []

    // 2. Fetch all contracts to build tree
    // we already have allContracts passed from the page component

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

    const allContratos = await getContratos(supabase)
    const contrato = allContratos.find((c: any) => c.id === id)

    if (!contrato) {
        notFound()
    }

    const hierarchy = await getHierarchy(supabase, id, allContratos)

    // Fetch linked empreendimentos from Supabase to preserve custom lotes
    const { data: rawLinks } = await supabase
        .from("empreendimentos_contratos")
        .select("id, empreendimento_id, lote_id")
        .eq("contrato_id", id)

    // Fetch lotes of this contract
    const { data: lotes } = await supabase
        .from("lotes")
        .select("id, nome, contrato_id")
        .eq("contrato_id", id)

    // Fetch all empreendimentos for availability in dialog
    const { data: allEmpreendimentos } = await getEmpreendimentos(supabase);

    // Hydrate linkedEmps
    const linkedEmps = (rawLinks || []).map((link: any) => {
        const emp = allEmpreendimentos.find((e: any) => e.id === link.empreendimento_id);
        const l = lotes?.find((lote: any) => lote.id === link.lote_id);
        return {
            id: link.id,
            empreendimento_id: link.empreendimento_id,
            lote_id: link.lote_id,
            empreendimento: emp ? {
                id: emp.id,
                codigo: emp.codigo,
                nome: emp.nome,
                localizacao: emp.localizacao
            } : null,
            lote: l ? {
                id: l.id,
                nome: l.nome
            } : null
        }
    });

    // Fetch Medições from API
    const medicoes = contrato._originalId ? await getContractMedicoes(supabase, contrato._originalId) : []

    // Fetch Empenhos from API
    const apiEmpenhos = contrato._originalId ? await getContractEmpenhos(supabase, contrato._originalId) : []

    // Fetch aditamentos from API
    const aditamentos = contrato._originalId ? await getContratoAditamentos(supabase, contrato._originalId) : []

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
                empenhos={apiEmpenhos || []}
                aditamentos={aditamentos}
                medicoes={medicoes}
            />
        </div>
    )
}
