"use client"

import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogFooter,
    DialogDescription,
} from "@/components/ui/dialog"
import { Button } from "@/components/ui/button"
import { ExternalLink, Info } from "lucide-react"
import Link from "next/link"

interface AditamentoInfoDialogProps {
    open: boolean
    onOpenChange: (open: boolean) => void
    empreendimentoId?: string
    /**
     * @deprecated Mantido para compatibilidade legada — não é mais usado para salvar.
     * O cadastro de aditamentos foi migrado para a Aba Aditamentos do Empreendimento.
     */
    servicoId?: string
    defaultAnos?: number | null
    defaultFormalizado?: boolean | null
    onSuccess?: () => void
}

/**
 * AditamentoDialog — versão informativa.
 *
 * O cadastro de aditamentos de prazo foi centralizado na aba "Aditamentos"
 * dentro da tela do empreendimento ou do lote. Este dialog existe apenas
 * para informar o usuário e redirecionar.
 */
export function AditamentoDialog({
    open,
    onOpenChange,
    empreendimentoId,
}: AditamentoInfoDialogProps) {
    return (
        <Dialog open={open} onOpenChange={onOpenChange}>
            <DialogContent className="sm:max-w-[440px]">
                <DialogHeader>
                    <DialogTitle className="flex items-center gap-2">
                        <Info className="h-5 w-5 text-blue-500" />
                        Registro de Aditamentos
                    </DialogTitle>
                    <DialogDescription>
                        O cadastro de aditamentos (valor e prazo) foi centralizado na nova{" "}
                        <strong>Aba Aditamentos</strong> dentro da tela do empreendimento ou do lote.
                    </DialogDescription>
                </DialogHeader>

                <div className="rounded-lg border border-blue-200 bg-blue-50 p-4 text-sm text-blue-800 dark:bg-blue-950/20 dark:border-blue-800 dark:text-blue-300">
                    <p className="font-medium mb-1">Por que essa mudança?</p>
                    <p className="text-xs leading-relaxed">
                        Para garantir controle centralizado e rastreabilidade, todos os aditamentos de
                        valor e prazo são agora registrados na aba dedicada. Os prazos aditados
                        refletem automaticamente no cronograma dos serviços deste contrato.
                    </p>
                </div>

                <DialogFooter className="flex-col sm:flex-row gap-2 pt-2">
                    <Button variant="outline" onClick={() => onOpenChange(false)}>
                        Fechar
                    </Button>
                    {empreendimentoId && (
                        <Button asChild>
                            <Link
                                href={`/empreendimentos/${empreendimentoId}?tab=aditamentos`}
                                onClick={() => onOpenChange(false)}
                            >
                                <ExternalLink className="mr-2 h-4 w-4" />
                                Ir para Aba Aditamentos
                            </Link>
                        </Button>
                    )}
                </DialogFooter>
            </DialogContent>
        </Dialog>
    )
}
