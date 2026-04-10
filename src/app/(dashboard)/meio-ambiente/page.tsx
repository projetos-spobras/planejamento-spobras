import { getServicosAmbientais } from "@/app/actions/meio-ambiente"
import { MeioAmbienteClient } from "./_components/client-page"

export const dynamic = "force-dynamic"

export default async function MeioAmbientePage() {
    const servicos = await getServicosAmbientais()
    
    return (
        <MeioAmbienteClient 
            initialData={servicos} 
            contratos={[]}
        />
    )
}
