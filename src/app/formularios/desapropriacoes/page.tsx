import { getEmpreendimentosPublicos, getContratosPublicos } from "@/app/actions/desapropriacoes"
import { DesapropriacaoForm } from "./_components/desapropriacao-form"

// Permite acesso público e evita cache para sempre pegar dados frescos
export const dynamic = "force-dynamic"

export default async function PublicDesapropriacaoPage() {
    const empreendimentos = await getEmpreendimentosPublicos()
    const contratos = await getContratosPublicos()

    return (
        <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8 flex items-center justify-center">
            <div className="max-w-3xl w-full bg-white p-8 rounded-xl shadow-lg border border-gray-100">
                <div className="mb-8 text-center">
                    <h1 className="text-3xl font-extrabold text-gray-900 tracking-tight">
                        Cadastro de Desapropriações
                    </h1>
                    <p className="mt-2 text-sm text-gray-500">
                        Formulário para cadastro de Novas Desapropriações (SIURB). Preencha as informações abaixo para vincular o serviço.
                    </p>
                </div>
                
                <DesapropriacaoForm 
                    empreendimentos={empreendimentos} 
                    contratos={contratos} 
                />
            </div>
        </div>
    )
}
