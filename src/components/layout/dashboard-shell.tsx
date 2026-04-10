
"use client"

import { useState } from "react"
import { AppSidebar, MobileSidebar } from "@/components/app-sidebar"
import { cn } from "@/lib/utils"
import Image from "next/image"


interface DashboardShellProps {
    children: React.ReactNode
    userRole?: string
}

export function DashboardShell({ children, userRole }: DashboardShellProps) {
    const [isCollapsed, setIsCollapsed] = useState(false)

    return (
        <div className="flex min-h-screen relative max-w-[100vw] overflow-x-hidden">
            {/* Desktop Sidebar */}
            <div
                className={cn(
                    "hidden md:flex flex-col fixed inset-y-0 z-50 transition-all duration-300 border-r bg-background",
                    isCollapsed ? "w-16" : "w-64"
                )}
            >
                <AppSidebar
                    isCollapsed={isCollapsed}
                    toggleCollapse={() => setIsCollapsed(!isCollapsed)}
                    userRole={userRole}
                />
            </div>

            {/* Main Content */}
            <div
                className={cn(
                    "flex-1 flex flex-col transition-all duration-300 min-w-0 bg-background", // min-w-0 fixes flex child overflow
                    isCollapsed ? "md:pl-16" : "md:pl-64"
                )}
            >
                <header className="h-14 border-b flex items-center px-4 md:hidden shrink-0 gap-3">
                    <MobileSidebar />
                    <div className="flex items-center gap-2">
                        <div className="relative w-28 h-8">
                            <Image
                                src="/logo-prefeitura.png"
                                alt="Prefeitura"
                                fill
                                unoptimized
                                className="object-contain"
                            />
                        </div>
                        <div className="h-6 w-[1px] bg-border" />
                        <div className="relative w-16 h-6">
                            <Image
                                src="/logo-spobras.png"
                                alt="SPObras"
                                fill
                                unoptimized
                                className="object-contain"
                            />
                        </div>
                    </div>
                </header>



                <main className="flex-1 p-6 overflow-x-hidden overflow-y-auto">
                    {children}
                </main>
            </div>
        </div>
    )
}
