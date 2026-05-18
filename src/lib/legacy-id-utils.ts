/**
 * Utilitário compartilhado (server + client) para converter IDs legados da API
 * nos UUIDs determinísticos usados internamente no sistema.
 *
 * Uso:
 *   legacyIdToUUID('empreendimento', 1625)  // → mesmo UUID que generateUUID('empreendimento-1625')
 */

// md5 é um pacote puro que funciona tanto no servidor quanto no cliente
import md5 from 'md5'

export function legacyIdToUUID(prefix: string, legacyId: number | string): string {
    const str = `${prefix}-${legacyId}`
    if (!str) return ''
    const hash = md5(str)
    return `${hash.substring(0, 8)}-${hash.substring(8, 12)}-4${hash.substring(13, 16)}-8${hash.substring(17, 20)}-${hash.substring(20, 32)}`
}

/**
 * Dado um array de empreendimentos (com id = UUID Supabase),
 * retorna um Set com todos os idEmpreendimento legados que correspondem,
 * cruzando por geração reversa de UUID.
 *
 * Como os UUIDs são determinísticos (md5('empreendimento-{idLegado}')),
 * podemos gerar o UUID candidato para cada idEmpreendimento da API
 * e verificar se bate com algum empreendimento do lote.
 */
export function buildValidEmpUUIDs(
    assignedEmps: { id: string }[]
): Set<string> {
    return new Set(assignedEmps.map(e => e.id))
}

/**
 * Verifica se um idEmpreendimento legado da API pertence
 * ao conjunto de empreendimentos atribuídos ao lote.
 */
export function isEmpInLote(
    idEmpreendimento: number | string,
    validUUIDs: Set<string>
): boolean {
    const uuid = legacyIdToUUID('empreendimento', idEmpreendimento)
    return validUUIDs.has(uuid)
}
