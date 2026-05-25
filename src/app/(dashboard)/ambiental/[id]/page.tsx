import { getAmbientalData } from "@/app/actions/ambiental"
import { getAmbientalTecnicos } from "@/app/actions/ambiental-detalhes"
import { getCurrentUserProfile } from "@/lib/auth-utils"
import { redirect, notFound } from "next/navigation"
import { createClient } from "@/lib/supabase/server"
import { MeioAmbienteDetalheClient } from "./meio-ambiente-detalhe-client"

interface PageProps {
    params: Promise<{ id: string }>
}

function parseObservacoes(observacoesText: string | null): any[] {
    if (!observacoesText) return []
    
    const blocks = observacoesText.split(/\n\n+/)
    const parsed: any[] = []
    
    blocks.forEach((block, idx) => {
        const trimmed = block.trim()
        if (!trimmed) return
        
        const match = trimmed.match(/^\[([^\]]+)\]\s*([^:]+):\s*([\s\S]+)$/)
        
        if (match) {
            const [_, dataHoraStr, autorNome, texto] = match
            let dateObj = new Date()
            try {
                const [datePart, timePart] = dataHoraStr.split(' ')
                const [day, month, year] = datePart.split('/').map(Number)
                const [hours, minutes] = timePart.split(':').map(Number)
                const fullYear = year < 100 ? 2000 + year : year
                dateObj = new Date(fullYear, month - 1, day, hours, minutes)
            } catch (e) {
                dateObj = new Date(Date.now() - (blocks.length - 1 - idx) * 60000)
            }
            
            parsed.push({
                id: `obs-${idx}`,
                created_at: dateObj.toISOString(),
                texto: texto.trim(),
                autor: {
                    nome_completo: autorNome.trim(),
                    email: ""
                }
            })
        } else {
            parsed.push({
                id: `obs-${idx}`,
                created_at: new Date(Date.now() - (blocks.length - 1 - idx) * 60000).toISOString(),
                texto: trimmed,
                autor: {
                    nome_completo: "Histórico",
                    email: ""
                }
            })
        }
    })
    
    return parsed
}

export default async function MeioAmbienteDetalhePage({ params }: PageProps) {
    const { id } = await params
    
    // 1. Fetch authenticated user profile
    const profile = await getCurrentUserProfile()
    if (!profile) {
        redirect("/login")
    }

    // 2. Fetch data from ambiental_empreendimentos & associated licenses
    const data = await getAmbientalData(id)
    if (!data || !data.empreendimento) {
        notFound()
    }

    const { empreendimento, licenciamentos, servicosAmbientais } = data

    // 3. Map to the shape expected by MeioAmbienteDetalheClient
    const mockServico = {
        id: empreendimento.id,
        nome: empreendimento.nome_empreendimento || empreendimento.empreendimento?.nome || "Ficha Ambiental",
        tipo: "Ambiental",
        status: empreendimento.status || "Não Iniciado",
        empreendimentos: {
            id: empreendimento.empreendimento_id,
            nome: empreendimento.nome_empreendimento || empreendimento.empreendimento?.nome
        },
        ambiental_licenciamentos: licenciamentos
    }

    const mockDetalhes = {
        id: empreendimento.id,
        tecnico_gma: empreendimento.tecnico_gma,
        gestor: empreendimento.gestor,
        fiscal: empreendimento.fiscal,
        gerencia: empreendimento.gerencia,
        contratada: empreendimento.contratada,
        contrato_spobras: empreendimento.contrato_spobras,
        contrato_siurb: empreendimento.contrato_siurb,
        sei_processo: empreendimento.sei_processo,
        programa: empreendimento.programa,
        estagio: empreendimento.estagio_contratacao ? Number(empreendimento.estagio_contratacao) : 0,
        status: empreendimento.status,
        prazo: empreendimento.prazo,
        valor_contrato: empreendimento.valor_contrato,
        valor_medido: empreendimento.valor_medido,
        percentual_conclusao: empreendimento.percentual_conclusao,
        tem_empenho: empreendimento.tem_empenho,
        updated_at: empreendimento.updated_at
    }

    // 4. Parse comments from the observations feed
    const formattedComentarios = parseObservacoes(empreendimento.observacoes)

    // 5. Determine if user can edit
    const canEdit = profile.nivel_acesso === 'Admin' || 
                    profile.nivel_acesso === 'Gestor' || 
                    profile.modulos_acesso.includes('ambiental')

    // 6. Fetch dynamic list of technicians
    const tecnicosRes = await getAmbientalTecnicos()
    const tecnicosData = tecnicosRes.success ? tecnicosRes.data : []

    // 7. Fetch contracts associated with this project
    const supabase = await createClient()
    const { data: contratosVinculados } = await supabase
        .from('empreendimento_contrato')
        .select(`
            contrato_id,
            contrato:contratos(id, numero, contratada, tipo, valor_total, data_inicio, data_fim)
        `)
        .eq('empreendimento_id', empreendimento.empreendimento_id)

    const contratosFormatados = (contratosVinculados || [])
        .map((cv: any) => cv.contrato)
        .filter(Boolean)

    return (
        <MeioAmbienteDetalheClient
            servico={mockServico}
            detalhes={mockDetalhes}
            comentarios={formattedComentarios}
            canEdit={canEdit}
            currentUserProfile={profile}
            tecnicos={tecnicosData || []}
            contratos={contratosFormatados || []}
            servicosAmbientais={servicosAmbientais || []}
            empreendimentoId={empreendimento.empreendimento_id}
        />
    )
}
