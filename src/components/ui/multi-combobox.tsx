"use client"

import * as React from "react"
import { Check, ChevronsUpDown, X } from "lucide-react"

import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import {
    Command,
    CommandEmpty,
    CommandGroup,
    CommandInput,
    CommandItem,
    CommandList,
} from "@/components/ui/command"
import {
    Popover,
    PopoverContent,
    PopoverTrigger,
} from "@/components/ui/popover"
import { Badge } from "@/components/ui/badge"

export interface MultiComboboxOption {
    value: string
    label: string
}

interface MultiComboboxProps {
    options: MultiComboboxOption[]
    value: string[]
    onChange: (value: string[]) => void
    placeholder?: string
    emptyText?: string
    className?: string
    modal?: boolean
    disabled?: boolean
    id?: string
}

export function MultiCombobox({
    options,
    value = [], // Default to empty array
    onChange,
    placeholder = "Selecione...",
    emptyText = "Nenhum resultado encontrado.",
    className,
    modal = false,
    disabled = false,
    id
}: MultiComboboxProps) {
    const [open, setOpen] = React.useState(false)

    const handleUnselect = (item: string) => {
        onChange(value.filter((i) => i !== item))
    }

    return (
        <Popover open={open} onOpenChange={setOpen} modal={modal}>
            <PopoverTrigger asChild>
                <Button
                    id={id}
                    variant="outline"
                    role="combobox"
                    aria-expanded={open}
                    className={cn(
                        "w-full justify-between h-auto min-h-10 px-3 py-2",
                        className
                    )}
                    disabled={disabled}
                >
                    <div className="flex flex-wrap gap-1">
                        {value.length > 0 ? (
                            value.map((item) => {
                                const option = options.find((o) => o.value === item)
                                return (
                                    <Badge variant="secondary" key={item} className="mr-1 mb-1" onClick={(e) => {
                                        e.stopPropagation();
                                        handleUnselect(item);
                                    }}>
                                        {option?.label || item}
                                        <div
                                            role="button"
                                            tabIndex={0}
                                            className="ml-1 ring-offset-background rounded-full outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 cursor-pointer"
                                            onKeyDown={(e) => {
                                                if (e.key === "Enter") {
                                                    handleUnselect(item);
                                                }
                                            }}
                                            onMouseDown={(e) => {
                                                e.preventDefault();
                                                e.stopPropagation();
                                            }}
                                            onClick={(e) => {
                                                e.preventDefault();
                                                e.stopPropagation();
                                                handleUnselect(item);
                                            }}
                                        >
                                            <X className="h-3 w-3 text-muted-foreground hover:text-foreground" />
                                        </div>
                                    </Badge>
                                )
                            })
                        ) : (
                            <span className="text-muted-foreground font-normal">{placeholder}</span>
                        )}
                    </div>
                    <ChevronsUpDown className="ml-2 h-4 w-4 shrink-0 opacity-50" />
                </Button>
            </PopoverTrigger>
            <PopoverContent className="w-[--radix-popover-trigger-width] p-0">
                <Command>
                    <CommandInput placeholder={placeholder} />
                    <CommandList>
                        <CommandEmpty>{emptyText}</CommandEmpty>
                        <CommandGroup>
                            {options.map((option) => (
                                <CommandItem
                                    key={option.value}
                                    value={option.label}
                                    onSelect={() => {
                                        if (value.includes(option.value)) {
                                            onChange(value.filter((i) => i !== option.value))
                                        } else {
                                            onChange([...value, option.value])
                                        }
                                        // setOpen(false) // Keep open for multiple selection
                                    }}
                                >
                                    <Check
                                        className={cn(
                                            "mr-2 h-4 w-4",
                                            value.includes(option.value) ? "opacity-100" : "opacity-0"
                                        )}
                                    />
                                    {option.label}
                                </CommandItem>
                            ))}
                        </CommandGroup>
                    </CommandList>
                </Command>
            </PopoverContent>
        </Popover>
    )
}
