"use client"

import { usePathname, useRouter, useSearchParams } from "next/navigation"
import { useCallback, useTransition } from "react"

interface UseUrlFiltersOptions {
    defaultValue?: string
    paramName?: string
}

export function useUrlFilters() {
    const router = useRouter()
    const pathname = usePathname()
    const searchParams = useSearchParams()
    const [isPending, startTransition] = useTransition()

    const createQueryString = useCallback(
        (params: Record<string, string | null>) => {
            const newSearchParams = new URLSearchParams(searchParams?.toString())

            for (const [key, value] of Object.entries(params)) {
                if (value === null || value === "") {
                    newSearchParams.delete(key)
                } else {
                    newSearchParams.set(key, value)
                }
            }

            return newSearchParams.toString()
        },
        [searchParams]
    )

    const setFilter = useCallback(
        (key: string, value: string | null) => {
            const newParams: Record<string, string | null> = { [key]: value }
            // Only reset to page 1 if we're not changing the page itself
            if (key !== "page") {
                newParams.page = "1"
            }
            const queryString = createQueryString(newParams)
            startTransition(() => {
                router.push(`${pathname}?${queryString}`)
            })
        },
        [createQueryString, pathname, router]
    )

    const getFilter = useCallback(
        (key: string) => {
            return searchParams?.get(key)
        },
        [searchParams]
    )

    return {
        setFilter,
        getFilter,
        searchParams,
        isPending
    }
}
