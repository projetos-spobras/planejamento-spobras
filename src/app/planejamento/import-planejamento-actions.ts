"use server"

import { createClient } from "@/lib/supabase/server"
import { getContratos, getContractMedicoes, getEmpreendimentoById } from "@/lib/api-client"
import { revalidatePath } from "next/cache"
import { generateUUID } from "@/lib/api-client"

export async function syncHistoricalPlanning() {
    const supabase = await createClient()

    try {
        console.log("[sync] Iniciando sincronização histórica...")

        // 1. Buscar dados básicos
        const [contratos, { data: servicosExistentes }] = await Promise.all([
            getContratos(supabase),
            supabase.from('servicos').select('id, contrato_id, empreendimento_id, aditamento_anos, data_fim')
        ])

        if (!contratos || contratos.length === 0) {
            return { success: false, error: "Nenhum contrato encontrado na API" }
        }

        const stats = {
            servicosCriados: 0,
            distribuicoesCriadas: 0,
            aditamentosAtualizados: 0,
            erros: [] as string[]
        }

        // Mapa de serviços existentes para busca rápida por (contrato_id, empreendimento_id)
        const servicoKey = (cId: string, eId: string) => `${cId}::${eId}`
        const existingServicosMap = new Map()
        servicosExistentes?.forEach(s => {
            if (s.contrato_id && s.empreendimento_id) {
                existingServicosMap.set(servicoKey(s.contrato_id, s.empreendimento_id), s)
            }
        })

        // 2. Iterar sobre contratos para buscar medições
        for (const contrato of contratos) {
            if (!contrato._originalId) continue

            console.log(`[sync] Processando contrato ${contrato.numero} (${contrato._originalId})...`)
            
            // Buscar medições deste contrato
            const medicoes = await getContractMedicoes(supabase, contrato._originalId)
            if (!medicoes || medicoes.length === 0) continue

            // Agrupar medições por empreendimento (um contrato pode ter vários empreendimentos)
            const medicoesPorEmp = new Map<number, any[]>()
            medicoes.forEach(m => {
                const empId = m.idEmpreendimento
                if (!medicoesPorEmp.has(empId)) medicoesPorEmp.set(empId, [])
                medicoesPorEmp.get(empId)!.push(m)
            })

            for (const [idEmpOriginal, listaMedicoes] of medicoesPorEmp.entries()) {
                const empUUID = generateUUID(`empreendimento-${idEmpOriginal}`)
                const key = servicoKey(contrato.id, empUUID)
                let servico = existingServicosMap.get(key)

                // 2.1 Criar serviço se não existir
                if (!servico) {
                    console.log(`[sync] Criando serviço para contrato ${contrato.numero} no empreendimento ${idEmpOriginal}...`)
                    
                    const isObra = contrato.tipo?.toLowerCase().includes("obra") || 
                                   contrato.tipo?.toLowerCase().includes("execução")

                    const { data: newServico, error: sError } = await supabase
                        .from('servicos')
                        .insert({
                            contrato_id: contrato.id,
                            empreendimento_id: empUUID,
                            descricao: contrato.objeto || `Serviço do Contrato ${contrato.numero}`,
                            tipo: contrato.tipo || "Execução de Obras",
                            acompanha_fisico: isObra,
                            acompanha_financeiro: true,
                            data_inicio: contrato.data_inicio,
                            data_fim: contrato.data_fim,
                            valor_total: contrato.valor_total
                        })
                        .select('id, aditamento_anos, data_fim')
                        .single()

                    if (sError) {
                        console.error(`[sync] Erro ao criar serviço: ${sError.message}`)
                        stats.erros.push(`Contrato ${contrato.numero}: ${sError.message}`)
                        continue
                    }

                    servico = newServico
                    existingServicosMap.set(key, servico)
                    stats.servicosCriados++

                    // Criar fase de planejamento inicial
                    await supabase.from('planejamento_fases').insert({
                        empreendimento_id: empUUID,
                        servico_id: servico.id,
                        fase: "Execução",
                        tipo_fase: 'execução',
                        valor_planejado: contrato.valor_total,
                        data_inicio: contrato.data_inicio,
                        data_fim: contrato.data_fim
                    })
                }

                // 2.2 Processar distribuições financeiras
                // Agrupar medições por mês/ano para este empreendimento/serviço
                const medicoesPorMes = new Map<string, number>()
                for (const med of listaMedicoes) {
                    if (!med.data_fim) continue
                    const dateFim = new Date(med.data_fim)
                    const key = `${dateFim.getFullYear()}-${dateFim.getMonth() + 1}`
                    const valor = (med.valor_p0 || 0) + (med.valor_reajuste || 0)
                    medicoesPorMes.set(key, (medicoesPorMes.get(key) || 0) + valor)
                }

                // Buscar todas as distribuições existentes para este serviço para evitar redundância
                const { data: distsExistentes } = await supabase
                    .from('distribuicao_financeira')
                    .select('ano, mes')
                    .eq('servico_id', servico.id)

                const existingDistKeys = new Set(distsExistentes?.map(d => `${d.ano}-${d.mes}`))
                
                const distribuicoesParaInserir = []
                let maxAditamentoAnos = servico.aditamento_anos || 0

                for (const [keyDist, valorTotalMes] of medicoesPorMes.entries()) {
                    const [ano, mes] = keyDist.split('-').map(Number)

                    if (!existingDistKeys.has(keyDist)) {
                        distribuicoesParaInserir.push({
                            servico_id: servico.id,
                            ano,
                            mes,
                            valor: valorTotalMes,
                            fonte_recurso: null
                        })
                    }

                    // Verificar Aditivo de Prazo (usando qualquer medição do mês, o ano é o mesmo)
                    if (servico.data_fim) {
                        const contratoFim = new Date(servico.data_fim)
                        const dateRef = new Date(ano, mes - 1, 28) // dia aproximado para comparação
                        if (dateRef > contratoFim) {
                            const diffAnos = ano - contratoFim.getFullYear()
                            if (diffAnos > maxAditamentoAnos) {
                                maxAditamentoAnos = diffAnos
                            }
                        }
                    }
                }

                if (distribuicoesParaInserir.length > 0) {
                    const { error: dError } = await supabase
                        .from('distribuicao_financeira')
                        .insert(distribuicoesParaInserir)
                    
                    if (dError) {
                        console.error(`[sync] Erro ao inserir distribuições: ${dError.message}`)
                    } else {
                        stats.distribuicoesCriadas += distribuicoesParaInserir.length
                    }
                }

                // Atualizar aditamento_anos se necessário
                if (maxAditamentoAnos > (servico.aditamento_anos || 0)) {
                    await supabase
                        .from('servicos')
                        .update({ aditamento_anos: maxAditamentoAnos })
                        .eq('id', servico.id)
                    stats.aditamentosAtualizados++
                }
            }
        }

        revalidatePath("/planejamento")
        return { success: true, stats }
    } catch (error: any) {
        console.error("[sync] Erro fatal na sincronização:", error)
        return { success: false, error: error.message }
    }
}
