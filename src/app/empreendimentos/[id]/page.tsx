
import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { EmpreendimentoDetails } from "@/components/relationships/empreendimento-details"
import { BackButton } from "@/components/ui/back-button"
import { calculateFinancialIndicators, calculateAvancoFisico } from "@/lib/financial-utils"
import { getEmpreendimentos, getContratos, getContratoEmpreendimentos } from "@/lib/api-client"
import { getEmpreendimentoAnexos } from "@/app/actions/empreendimento-anexos"
import { getAditamentosDoEmpreendimento } from "@/app/actions/aditamentos"

export const dynamic = "force-dynamic"

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function EmpreendimentoDetailsPage({ params }: PageProps) {
    const supabase = await createClient()
    const { id } = await params

    // === FASE 1: Todas as queries independentes em paralelo ===
    // NOTA: empenhos/medições/aditamentos da API são carregados lazy (client-side)
    // para não bloquear o TTFB com N+1 calls por contrato vinculado
    const [
        { data: allEmpreendimentosData },
        allContratos,
        { data: rawLinksLocal },
        { data: allLotes },
        { data: empenhos },
        { data: fases },
        { data: programas },
        { data: distritos },
        { data: gerencias },
        { data: fasesLookup },
        { data: avancoData },
        { data: valorMedidoData },
        { data: ultimaMedicaoData },
        anexos,
        ambientalCheck,
    ] = await Promise.all([

        getEmpreendimentos(supabase),
        getContratos(supabase),
        supabase.from("empreendimentos_contratos").select("id, contrato_id, lote_id").eq("empreendimento_id", id),
        supabase.from("lotes").select("id, nome, contrato_id"),
        supabase.from("empenhos").select("*").eq("tipo_vinculo", "empreendimento").eq("vinculo_id", id),
        supabase.from("planejamento_fases").select("*").eq("empreendimento_id", id).order("ordem", { ascending: true }),
        supabase.from("programas").select("*"),
        supabase.from("distritos").select("*"),
        supabase.from("gerencias").select("*"),
        supabase.from("empreendimento_fases").select("*"),
        supabase.rpc('get_avanco_fisico', { p_empreendimento_id: id }),
        supabase.rpc('get_valor_medido_total', { p_empreendimento_id: id }),
        supabase.rpc('get_ultima_medicao_aprovada', { p_empreendimento_id: id }),
        getEmpreendimentoAnexos(id),
        supabase.from("servicos")
            .select("id")
            .eq("empreendimento_id", id)
            .in("tipo", ["Ambiental", "SERVIÇOS AMBIENTAIS"]),
    ])

    // Busca links de contrato-empreendimento via API (também cacheados)
    const allApiLinks = await getContratoEmpreendimentos(supabase, allEmpreendimentosData, allContratos)
    const apiLinksForThisEmp = allApiLinks.filter(link => link.empreendimento_id === id)

    // Busca aditamentos do empreendimento
    const aditamentos = await getAditamentosDoEmpreendimento(id)


    // Mescla links locais com links da API
    const rawLinks = [...(rawLinksLocal || [])]
    apiLinksForThisEmp.forEach(apiLink => {
        if (!rawLinks.some(local => local.contrato_id === apiLink.contrato_id)) {
            rawLinks.push({
                id: apiLink.idOrigem || apiLink.contrato_id,
                contrato_id: apiLink.contrato_id,
                lote_id: null
            })
        }
    })

    const empreendimento = allEmpreendimentosData?.find((e: any) => e.id === id)
    if (!empreendimento) {
        notFound()
    }

    // Mapas para lookup O(1)
    const contratoMap = new Map()
    ;(allContratos || []).forEach((c: any) => {
        contratoMap.set(c.id, c)
        if (c._originalId) {
            contratoMap.set(c._originalId.toString(), c)
        }
    })
    const loteMap = new Map((allLotes || []).map((l: any) => [l.id, l]))

    // Hidrata contratos vinculados
    const linkedContracts = (rawLinks || []).map((link: any) => {
        const c = contratoMap.get(link.contrato_id)
        const l = loteMap.get(link.lote_id)
        return {
            id: link.id,
            contrato_id: link.contrato_id,
            lote_id: link.lote_id,
            contrato: c ? {
                id: c.id, numero: c.numero, tipo: c.tipo, contratada: c.contratada,
                valor_total: c.valor_total,
                valor_original: c.valor_original,
                valor_aditamento: c.valor_aditamento,
                valor_reajuste: c.valor_reajuste,
                indice_reajuste: c.indice_reajuste,
                percentual_reajuste: c.percentual_reajuste,
                indice_nome: c.indice_nome,
                data_inicio: c.data_inicio, data_fim: c.data_fim,
                _originalId: c._originalId
            } : {
                id: link.contrato_id, numero: 'Desconhecido', tipo: '-', contratada: '-',
                valor_total: 0,
                valor_original: 0,
                valor_aditamento: 0,
                valor_reajuste: 0,
                indice_reajuste: null,
                percentual_reajuste: null,
                indice_nome: null,
                data_inicio: null, data_fim: null,
                _originalId: null
            },
            lote: l ? { id: l.id, nome: l.nome } : null
        }
    })

    // === FASE 2: Queries de serviços (dependem dos IDs de contratos vinculados) ===
    const contratoIds = linkedContracts.map(c => c.contrato_id)

    const [{ data: servicosByEmp }, { data: servicosByContrato }] = await Promise.all([
        supabase.from("servicos").select("*").eq("empreendimento_id", id).order("ordem", { ascending: true }).order("created_at", { ascending: false }),
        contratoIds.length > 0
            ? supabase.from("servicos").select("*").in("contrato_id", contratoIds).order("ordem", { ascending: true }).order("created_at", { ascending: false })
            : Promise.resolve({ data: [] as any[] }),
    ])

    // Merge e deduplicação por id
    const allServicos = [...(servicosByEmp || []), ...(servicosByContrato || [])]
    const seen = new Set<string>()
    const servicosSemContratosLocalizados = allServicos.filter(s => {
        if (seen.has(s.id)) return false
        seen.add(s.id)
        return true
    })

    // Fetch distribuicao_financeira e ambiental_licenciamentos
    const servicoIds = servicosSemContratosLocalizados.map(s => s.id)
    const [
        { data: distribuicoes },
        licsResult
    ] = await Promise.all([
        servicoIds.length > 0
            ? supabase.from("distribuicao_financeira").select("*").in("servico_id", servicoIds)
            : Promise.resolve({ data: [] }),
        servicoIds.length > 0
            ? supabase.from("ambiental_licenciamentos").select("servico_id, tipo, status, observacao").in("servico_id", servicoIds)
            : Promise.resolve({ data: [] as any[], error: null })
    ])

    const licenciamentos = (!licsResult.error && licsResult.data) ? licsResult.data : []
    if (licsResult.error) {
        console.warn("Erro ao buscar licenciamentos (pode ser coluna servico_id ausente):", licsResult.error)
    }

    // Mapas para enriquecimento O(1) de serviços
    const fasesGrouped = new Map<string, any[]>()
    ;(fases || []).forEach((f: any) => {
        const arr = fasesGrouped.get(f.servico_id) || []
        arr.push(f)
        fasesGrouped.set(f.servico_id, arr)
    })
    const distGrouped = new Map<string, any[]>()
    ;(distribuicoes || []).forEach((d: any) => {
        const arr = distGrouped.get(d.servico_id) || []
        arr.push(d)
        distGrouped.set(d.servico_id, arr)
    })
    const licsGrouped = new Map<string, any[]>()
    licenciamentos.forEach((l: any) => {
        if (l.servico_id) {
            const arr = licsGrouped.get(l.servico_id) || []
            arr.push(l)
            licsGrouped.set(l.servico_id, arr)
        }
    })

    // Hidrata serviços
    const servicos = servicosSemContratosLocalizados.map(s => {
        const c = s.contrato_id ? contratoMap.get(s.contrato_id) || null : null
        const totalContrato = c?.valor_total ?? s.valor_contratual
        const sLics = licsGrouped.get(s.id) || []
        return {
            ...s,
            valor_contratual: totalContrato,
            valor_total: s.valor_total,
            contrato: c,
            distribuicao_financeira: distGrouped.get(s.id) || [],
            fases: fasesGrouped.get(s.id) || [],
            ambiental_licenciamentos: sLics,
            "ambiental_licenciamentos!ambiental_licenciamentos_servico_id_fkey": sLics
        }
    })

    // Valor total = soma dos contratos vinculados
    const valorTotalContratos = linkedContracts.reduce(
        (sum: number, ec: any) => sum + (Number(ec.contrato?.valor_total) || 0), 0
    )

    // Empenhos locais apenas para indicadores iniciais (API empenhos carregam lazy)
    const indicators = calculateFinancialIndicators(
        valorTotalContratos || empreendimento.valor_total,
        empenhos || [],
        servicos
    )

    const { percentual: avancoFisicoPercent, totalPlanejadoObras } = calculateAvancoFisico(
        servicos,
        valorTotalContratos
    )

    const avancoFisico = {
        percentualExecutado: avancoFisicoPercent,
        valorMedidoTotal: totalPlanejadoObras,
        valorContrato: valorTotalContratos,
        ultimaMedicao: ultimaMedicaoData as string | null,
    }

    const { data: servicosSupabase } = await supabase
        .from("servicos")
        .select("tipo")
        .eq("empreendimento_id", id)

    const tiposServico = Array.from(new Set((servicosSupabase || []).map(s => s.tipo))).filter(Boolean) as string[]

    // IDs originais dos contratos vinculados para lazy-load client-side
    const contratos_com_originalId = linkedContracts
        .filter(lc => lc.contrato?._originalId)
        .map(lc => ({
            id: lc.contrato_id,
            numero: lc.contrato.numero,
            _originalId: lc.contrato._originalId
        }))

    // Obter licenciamentos dos serviços ambientais verificados para checar pendências
    let licsForCheck: any[] = []
    const checkServicoIds = (ambientalCheck?.data || []).map((s: any) => s.id)
    if (checkServicoIds.length > 0) {
        const { data: checkLics, error: checkLicsError } = await supabase
            .from("ambiental_licenciamentos")
            .select("servico_id, status")
            .in("servico_id", checkServicoIds)
        if (!checkLicsError && checkLics) {
            licsForCheck = checkLics
        }
    }

    const hasAmbiental = (ambientalCheck?.data?.length || 0) > 0
    const hasPendenciaAmbiental = licsForCheck.some((l: any) => l.status === 'P')

    return (
        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/empreendimentos" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhes do Empreendimento</h1>
            </div>
            <EmpreendimentoDetails
                empreendimento={empreendimento}
                tiposServico={tiposServico}
                contratosVinculados={(linkedContracts as any) || []}
                allContratos={(allContratos as any) || []}
                allLotes={(allLotes as any) || []}
                empenhos={(empenhos as any) || []}
                fases={fases || []}
                servicos={servicos}
                lookups={{
                    programas: programas || [],
                    distritos: distritos || [],
                    gerencias: gerencias || [],
                    fases: fasesLookup || []
                }}
                indicators={indicators}
                avancoFisico={avancoFisico}
                medicoes={[]}
                anexos={anexos}
                contratosComOriginalId={contratos_com_originalId}
                aditamentos={aditamentos}
                valorTotalContratos={valorTotalContratos}
                valorMedidoData={valorMedidoData}
                totalPlanejadoObras={totalPlanejadoObras}
                hasAmbiental={hasAmbiental}
                hasPendenciaAmbiental={hasPendenciaAmbiental}
            />
        </div>
    )
}
