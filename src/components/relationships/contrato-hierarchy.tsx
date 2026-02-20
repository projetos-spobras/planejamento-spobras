
"use client"

import { useState } from "react"
import { ChevronRight, ChevronDown, FileText } from "lucide-react"
import Link from "next/link"

import { Button } from "@/components/ui/button"
import { cn } from "@/lib/utils"

interface ContractNode {
    id: string
    numero: string
    tipo: string | null
    objeto: string | null
    subcontratos?: ContractNode[]
    isPrincipal?: boolean
}

interface ContratoHierarchyProps {
    data: ContractNode[]
}

// Recursive component for tree item
function HierarchyItem({ node, level = 0 }: { node: ContractNode, level?: number }) {
    const [isOpen, setIsOpen] = useState(true)
    const hasChildren = node.subcontratos && node.subcontratos.length > 0

    return (
        <div className="select-none">
            <div
                className={cn(
                    "flex items-center py-1 hover:bg-muted/50 rounded-sm px-2",
                    level === 0 && "font-semibold bg-muted/20"
                )}
                style={{ paddingLeft: `${level * 16 + 8}px` }}
            >
                {hasChildren ? (
                    <Button
                        variant="ghost"
                        size="icon"
                        className="h-4 w-4 mr-1 p-0 hover:bg-transparent"
                        onClick={() => setIsOpen(!isOpen)}
                    >
                        {isOpen ? <ChevronDown className="h-3 w-3" /> : <ChevronRight className="h-3 w-3" />}
                    </Button>
                ) : (
                    <div className="w-5" /> // Spacer
                )}

                <FileText className="h-4 w-4 mr-2 text-muted-foreground" />

                <Link href={`/contratos/${node.id}`} className="hover:underline text-sm truncate max-w-[300px]">
                    {node.numero}
                    {node.tipo && <span className="text-xs text-muted-foreground ml-2">({node.tipo})</span>}
                </Link>
            </div>

            {hasChildren && isOpen && (
                <div>
                    {node.subcontratos!.map(child => (
                        <HierarchyItem key={child.id} node={child} level={level + 1} />
                    ))}
                </div>
            )}
        </div>
    )
}

export function ContratoHierarchy({ data }: ContratoHierarchyProps) {
    if (!data || data.length === 0) {
        return <div className="text-sm text-muted-foreground italic">Nenhuma hierarquia encontrada.</div>
    }

    return (
        <div className="border rounded-md p-4">
            <h3 className="font-semibold mb-2 text-sm">Estrutura Contratual</h3>
            <div className="space-y-1">
                {data.map(root => (
                    <HierarchyItem key={root.id} node={root} />
                ))}
            </div>
        </div>
    )
}
