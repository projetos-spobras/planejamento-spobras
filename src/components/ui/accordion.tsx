"use client"

import * as React from "react"
import { ChevronDown } from "lucide-react"
import { cn } from "@/lib/utils"

const AccordionContext = React.createContext<{
  activeItems: string[]
  toggleItem: (value: string) => void
}>({
  activeItems: [],
  toggleItem: () => {},
})

const Accordion = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & { type?: "single" | "multiple"; defaultValue?: string | string[] }
>(({ className, type = "single", defaultValue, ...props }, ref) => {
  const [activeItems, setActiveItems] = React.useState<string[]>(() => {
    if (Array.isArray(defaultValue)) return defaultValue
    if (defaultValue) return [defaultValue]
    return []
  })

  const toggleItem = React.useCallback(
    (value: string) => {
      setActiveItems((prev) => {
        if (type === "single") {
          return prev.includes(value) ? [] : [value]
        }
        return prev.includes(value)
          ? prev.filter((item) => item !== value)
          : [...prev, value]
      })
    },
    [type]
  )

  return (
    <AccordionContext.Provider value={{ activeItems, toggleItem }}>
      <div
        ref={ref}
        className={cn("divide-y divide-border border-b border-t", className)}
        {...props}
      />
    </AccordionContext.Provider>
  )
})
Accordion.displayName = "Accordion"

const AccordionItemContext = React.createContext<{ value: string }>({ value: "" })

const AccordionItem = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & { value: string }
>(({ className, value, ...props }, ref) => {
  return (
    <AccordionItemContext.Provider value={{ value }}>
      <div
        ref={ref}
        className={cn("border-b last:border-b-0", className)}
        {...props}
      />
    </AccordionItemContext.Provider>
  )
})
AccordionItem.displayName = "AccordionItem"

const AccordionTrigger = React.forwardRef<
  HTMLButtonElement,
  React.ButtonHTMLAttributes<HTMLButtonElement>
>(({ className, children, ...props }, ref) => {
  const { activeItems, toggleItem } = React.useContext(AccordionContext)
  const { value } = React.useContext(AccordionItemContext)
  const isOpen = activeItems.includes(value)

  return (
    <button
      ref={ref}
      type="button"
      onClick={() => toggleItem(value)}
      data-state={isOpen ? "open" : "closed"}
      className={cn(
        "flex w-full items-center justify-between py-4 text-sm font-medium transition-all hover:underline [&[data-state=open]>svg]:rotate-180",
        className
      )}
      {...props}
    >
      {children}
      <ChevronDown className="h-4 w-4 shrink-0 text-muted-foreground transition-transform duration-200" />
    </button>
  )
})
AccordionTrigger.displayName = "AccordionTrigger"

const AccordionContent = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement>
>(({ className, children, ...props }, ref) => {
  const { activeItems } = React.useContext(AccordionContext)
  const { value } = React.useContext(AccordionItemContext)
  const isOpen = activeItems.includes(value)

  if (!isOpen) return null

  return (
    <div
      ref={ref}
      className={cn(
        "overflow-hidden text-sm transition-all animate-in fade-in slide-in-from-top-1",
        className
      )}
      {...props}
    >
      <div className="pb-4 pt-0">{children}</div>
    </div>
  )
})
AccordionContent.displayName = "AccordionContent"

export { Accordion, AccordionItem, AccordionTrigger, AccordionContent }
