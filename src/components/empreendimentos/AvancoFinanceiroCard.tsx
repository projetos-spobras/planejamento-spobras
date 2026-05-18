"use client"

import { TrendingUp, AlertTriangle } from "lucide-react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Skeleton } from "@/components/ui/skeleton"

interface AvancoFinanceiroCardProps {
  totalEmpenhoLiquido: number
  totalLiquidado: number
  saldoEmpenho: number
  valorMedido: number
  valorEmpenhado: number
  valorLiquidado: number
  valorPlanejado: number
  pctMedido: number
  pctEmpenhado: number
  pctLiquidadoBarra: number
  pctPlanejado: number
  isLoading?: boolean
}

export function AvancoFinanceiroCard({
  totalEmpenhoLiquido,
  totalLiquidado,
  saldoEmpenho,
  valorMedido,
  valorEmpenhado,
  valorLiquidado: valorLiquidadoAbs,
  valorPlanejado,
  pctMedido,
  pctEmpenhado,
  pctLiquidadoBarra,
  pctPlanejado,
  isLoading = false,
}: AvancoFinanceiroCardProps) {
  
  const formatCurrency = (val: number) => 
    new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: "compact" }).format(val)
  
  const formatFullCurrency = (val: number) => 
    new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val)

  const formatPct = (v: number) => v.toFixed(1) + "%"

  const PieChart = ({ liquidado, saldo, total }: { liquidado: number, saldo: number, total: number }) => {
    const radius = 25;
    const circ = 2 * Math.PI * radius;
    const liquidadoPct = total > 0 ? (liquidado / total) : 0;
    
    return (
      <div className="relative flex items-center justify-center w-[110px] h-[110px]">
        <svg width="110" height="110" viewBox="0 0 60 60" className="transform -rotate-90">
          <circle
            cx="30"
            cy="30"
            r={radius}
            fill="transparent"
            stroke="currentColor"
            strokeWidth="8"
            className="text-amber-400/30 dark:text-amber-400/20"
          />
          <circle
            cx="30"
            cy="30"
            r={radius}
            fill="transparent"
            stroke="currentColor"
            strokeWidth="8"
            strokeDasharray={circ}
            strokeDashoffset={circ * (1 - liquidadoPct)}
            strokeLinecap="round"
            className="text-emerald-500"
          />
        </svg>
        <div className="absolute inset-0 flex items-center justify-center text-[18px] font-bold tabular-nums">
          {total > 0 ? Math.round((liquidado / total) * 100) : 0}%
        </div>
      </div>
    );
  };

  return (
    <Card className="h-full flex flex-col">
      <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2 px-5 pt-5">
        <CardTitle className="text-sm font-medium text-muted-foreground uppercase tracking-wider">
          Avanço Financeiro
        </CardTitle>
        <TrendingUp className="h-5 w-5 text-muted-foreground" />
      </CardHeader>
      <CardContent className="flex-1 flex flex-col p-5 pt-2">
        <div style={{
          display: 'grid',
          gridTemplateColumns: '160px 1fr',
          gap: '1.5rem',
          alignItems: 'center',
          flex: 1
        }}>
          {/* COLUNA ESQUERDA: Pizza e Legenda */}
          <div style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            gap: '1rem',
            height: '100%',
            justifyContent: 'center'
          }}>
            {isLoading ? (
              <Skeleton className="h-[110px] w-[110px] rounded-full" />
            ) : (
              <PieChart liquidado={totalLiquidado} saldo={saldoEmpenho} total={totalEmpenhoLiquido} />
            )}
            
            <div className="w-full space-y-2">
              {[
                { label: 'Liquidado', valor: totalLiquidado, cor: '#10b981' },
                { label: 'Saldo', valor: saldoEmpenho, cor: '#fbbf24' }
              ].map(({ label, valor, cor }) => (
                <div key={label} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                    <div style={{ width: 10, height: 10, borderRadius: '50%', backgroundColor: cor }} />
                    <span style={{ fontSize: 14, fontWeight: 500 }} className="text-muted-foreground">{label}</span>
                  </div>
                  <span style={{ fontSize: 14, fontWeight: 700 }} className="tabular-nums text-foreground">{formatCurrency(valor)}</span>
                </div>
              ))}
            </div>
          </div>

          {/* COLUNA DIREITA: Indicadores */}
          <div style={{
            display: 'flex',
            flexDirection: 'column',
            gap: '1rem',
            justifyContent: 'center',
            borderLeft: '1px solid var(--color-border, #e2e8f0)',
            paddingLeft: '1.5rem',
            height: '100%'
          }}>
            {[
              { label: 'Medido', pct: pctMedido, valor: valorMedido, cor: '#3b82f6' },
              { label: 'Empenhado', pct: pctEmpenhado, valor: valorEmpenhado, cor: '#fbbf24' },
              { label: 'Liquidado', pct: pctLiquidadoBarra, valor: valorLiquidadoAbs, cor: '#10b981' },
              { label: 'Planejado', pct: pctPlanejado, valor: valorPlanejado, cor: '#f97316' },
            ].map(({ label, pct, valor, cor }) => (
              <div key={label} className="group relative">
                {/* Tooltip personalizado */}
                <div className="absolute -top-10 left-0 bg-popover border rounded px-2 py-1 text-[10px] shadow-md opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap z-10">
                  <span className="font-bold">{label}:</span> {formatFullCurrency(valor)}
                </div>

                <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '0.4rem' }}>
                  <div className="flex items-center gap-2">
                    <div style={{ width: 8, height: 8, borderRadius: '50%', backgroundColor: cor }} />
                    <span style={{ fontSize: 14, fontWeight: 500 }} className="text-muted-foreground">{label}</span>
                  </div>
                  <span style={{ fontSize: 15, fontWeight: 700 }} className="tabular-nums text-foreground">{formatPct(pct)}</span>
                </div>
                <div style={{
                  height: 8,
                  borderRadius: '9999px',
                  background: 'var(--color-surface-offset, #f1f5f9)',
                  overflow: 'hidden'
                }}>
                  <div style={{
                    height: '100%',
                    width: `${Math.min(pct, 100)}%`,
                    backgroundColor: cor,
                    borderRadius: '9999px',
                    transition: 'width 0.5s ease'
                  }} />
                </div>
              </div>
            ))}
          </div>
        </div>
      </CardContent>
    </Card>
  )
}
