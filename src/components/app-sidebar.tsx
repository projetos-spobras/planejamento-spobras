"use client"
 
import Link from "next/link"
import { usePathname } from "next/navigation"
import {
    ChevronLeft,
    ChevronRight,
    LayoutDashboard,
    Building2,
    FilePen,
    Layers,
    CalendarDays,
    Settings,
    Menu,
    Banknote,
    Hammer,
    Users,
    Leaf,
    Home
} from "lucide-react"
import Image from "next/image"
import { cn } from "@/lib/utils"

import { Button } from "@/components/ui/button"
import { ScrollArea } from "@/components/ui/scroll-area"
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet"
import { useState, useEffect } from "react"
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from "@/components/ui/tooltip"

interface SidebarProps extends React.HTMLAttributes<HTMLDivElement> {
    isCollapsed?: boolean
    toggleCollapse?: () => void
    userRole?: string
}

export function AppSidebar({ className, isCollapsed = false, toggleCollapse, userRole }: SidebarProps) {
    const pathname = usePathname()

    const routes = [
        {
            label: "Empreendimentos",
            icon: Building2,
            href: "/empreendimentos",
            active: pathname.startsWith("/empreendimentos"),
        },
        {
            label: "Contratos",
            icon: FilePen,
            href: "/contratos",
            active: pathname.startsWith("/contratos"),
        },
        {
            label: "Serviços",
            icon: Hammer,
            href: "/servicos",
            active: pathname.startsWith("/servicos"),
        },
        {
            label: "Lotes",
            icon: Layers,
            href: "/lotes",
            active: pathname.startsWith("/lotes"),
        },
        {
            label: "Planejamento",
            icon: CalendarDays,
            href: "/planejamento",
            active: pathname.startsWith("/planejamento"),
        },
        {
            label: "Meio Ambiente",
            icon: Leaf,
            href: "/meio-ambiente",
            active: pathname.startsWith("/meio-ambiente"),
        },
        {
            label: "Desapropriações",
            icon: Home,
            href: "/desapropriacoes",
            active: pathname.startsWith("/desapropriacoes"),
        },
        {
            label: "Empenhos",
            icon: Banknote,
            href: "/empenhos",
            active: pathname.startsWith("/empenhos"),
        },
    ]

    if (userRole === 'admin') {
        routes.push({
            label: "Usuários",
            icon: Users,
            href: "/usuarios",
            active: pathname.startsWith("/usuarios"),
        })
    }

    const SidebarItem = ({ route }: { route: typeof routes[0] }) => {
        const button = (
            <Button
                variant={route.active ? "secondary" : "ghost"}
                className={cn(
                    "w-full justify-start h-10",
                    isCollapsed ? "justify-center px-2" : "px-4"
                )}
                asChild
            >
                <Link href={route.href}>
                    <route.icon className={cn("h-4 w-4", isCollapsed ? "mr-0" : "mr-2")} />
                    {!isCollapsed && <span>{route.label}</span>}
                </Link>
            </Button>
        )

        if (isCollapsed) {
            return (
                <Tooltip delayDuration={0}>
                    <TooltipTrigger asChild>{button}</TooltipTrigger>
                    <TooltipContent side="right">{route.label}</TooltipContent>
                </Tooltip>
            )
        }

        return button
    }

    return (
        <TooltipProvider>
            <div className={cn("flex flex-col h-full bg-background", className)}>
                <div className={cn("flex items-center h-14 border-b shrink-0", isCollapsed ? "justify-center" : "px-6")}>
                    {isCollapsed ? (
                        <div className="relative w-10 h-10">
                            <Image
                                src="/logo-prefeitura.png"
                                alt="Prefeitura"
                                fill
                                unoptimized
                                className="object-contain"
                            />
                        </div>

                    ) : (
                        <div className="flex items-center justify-between w-full">
                            <div className="relative w-40 h-12">
                                <Image
                                    src="/logo-prefeitura.png"
                                    alt="Prefeitura de São Paulo"
                                    fill
                                    unoptimized
                                    className="object-contain"
                                />
                            </div>
                            <div className="h-6 w-[1px] bg-border mx-1" />
                            <div className="relative w-20 h-8">
                                <Image
                                    src="/logo-spobras.png"
                                    alt="SPObras"
                                    fill
                                    unoptimized
                                    className="object-contain"
                                />
                            </div>
                        </div>

                    )}

                </div>

                <div className="flex-1 py-4 overflow-y-auto overflow-x-hidden">
                    <nav className="space-y-1 px-2">
                        {routes.map((route) => (
                            <SidebarItem key={route.href} route={route} />
                        ))}
                    </nav>
                </div>

                <div className="p-2 border-t mt-auto space-y-1">
                    <Button
                        variant="ghost"
                        className={cn("w-full h-10", isCollapsed ? "justify-center px-2" : "justify-start px-4")}
                    >
                        <Settings className={cn("h-4 w-4", isCollapsed ? "mr-0" : "mr-2")} />
                        {!isCollapsed && <span>Ajustes</span>}
                    </Button>

                    {toggleCollapse && (
                        <Button
                            variant="ghost"
                            className={cn("w-full h-10", isCollapsed ? "justify-center px-2" : "justify-start px-4")}
                            onClick={toggleCollapse}
                        >
                            {isCollapsed ? (
                                <ChevronRight className="h-4 w-4" />
                            ) : (
                                <>
                                    <ChevronLeft className="h-4 w-4 mr-2" />
                                    <span>Recolher</span>
                                </>
                            )}
                        </Button>
                    )}
                </div>
            </div>
        </TooltipProvider>
    )
}

export function MobileSidebar() {
    const [open, setOpen] = useState(false);
    const [isMounted, setIsMounted] = useState(false);

    useEffect(() => {
        setIsMounted(true);
    }, []);

    if (!isMounted) {
        return (
            <Button variant="ghost" className="md:hidden">
                <Menu />
            </Button>
        )
    }

    return (
        <Sheet open={open} onOpenChange={setOpen}>
            <SheetTrigger asChild>
                <Button variant="ghost" className="md:hidden">
                    <Menu />
                </Button>
            </SheetTrigger>
            <SheetContent side="left" className="p-0 w-72">
                <AppSidebar />
            </SheetContent>
        </Sheet>
    )
}
