"use client"

import { ArrowLeft } from "lucide-react"
import { useRouter } from "next/navigation"
import { Button } from "@/components/ui/button"

interface BackButtonProps {
    fallbackHref?: string
}

export function BackButton({ fallbackHref }: BackButtonProps) {
    const router = useRouter()

    const handleBack = () => {
        if (window.history.length > 2) {
            router.back()
        } else if (fallbackHref) {
            router.push(fallbackHref)
        } else {
            router.back() // Fallback anyway
        }
    }

    return (
        <Button variant="ghost" className="gap-2 pl-0 hover:pl-0 hover:bg-transparent" onClick={handleBack}>
            <ArrowLeft className="h-4 w-4" />
            Voltar
        </Button>
    )
}
