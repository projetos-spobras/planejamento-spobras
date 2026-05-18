'use client'

import React, { useEffect, useRef, useState } from 'react'
import { createPortal } from 'react-dom'
import Image from 'next/image'
import { 
  X, 
  Trash2, 
  SendHorizontal, 
  Paperclip, 
  Sparkles, 
  FileText,
  Loader2
} from 'lucide-react'

import { ChatMensagem } from '@/types/ai'

interface ChatPanelProps {
  isOpen: boolean
  onClose: () => void
  onSendMessage: (texto: string, arquivo?: File) => Promise<void>
  onClearHistory: () => void
  messages: ChatMensagem[]
  isLoading: boolean
  erro: string | null
  contexto?: { empreendimentoId?: string; contratoId?: string }
  modoManutencao?: boolean
}

export function ChatPanel({
  isOpen,
  onClose,
  onSendMessage,
  onClearHistory,
  messages,
  isLoading,
  erro,
  modoManutencao = false,
}: ChatPanelProps) {
  const [inputValue, setInputValue] = useState('')
  const [selectedFile, setSelectedFile] = useState<File | null>(null)
  const [mounted, setMounted] = useState(false)
  const scrollRef = useRef<HTMLDivElement>(null)
  const textareaRef = useRef<HTMLTextAreaElement>(null)
  const fileInputRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    setMounted(true)
  }, [])

  // Auto-scroll para a última mensagem
  useEffect(() => {
    if (scrollRef.current) {
      scrollRef.current.scrollIntoView({ behavior: 'smooth' })
    }
  }, [messages, isLoading])

  // Ajuste de altura do textarea
  const handleTextareaInput = () => {
    if (textareaRef.current) {
      textareaRef.current.style.height = 'auto'
      textareaRef.current.style.height = `${Math.min(textareaRef.current.scrollHeight, 120)}px`
    }
  }

  const handleSend = () => {
    if (!inputValue.trim() && !selectedFile) return
    onSendMessage(inputValue, selectedFile || undefined)
    setInputValue('')
    setSelectedFile(null)
    if (textareaRef.current) textareaRef.current.style.height = 'auto'
  }

  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault()
      handleSend()
    }
  }

  const renderMarkdown = (content: string) => {
    // Sanitização e renderização ultra-simples para MD básico
    let html = content
      .replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
      .replace(/`(.*?)`/g, '<code>$1</code>')
      .replace(/\n - /g, '<br>• ')
      .replace(/\n/g, '<br>')
    
    return <span dangerouslySetInnerHTML={{ __html: html }} />
  }

  if (!mounted) return null

  return createPortal(
    <>
      {/* Overlay Mobile */}
      {isOpen && (
        <div 
          className="fixed inset-0 bg-black/40 z-[9998] md:hidden" 
          onClick={onClose} 
        />
      )}

      {/* Painel Lateral */}
      <aside
        className={`fixed top-0 right-0 h-[100dvh] w-full md:w-[440px] border-l border-[var(--color-border)] shadow-2xl z-[9999] transform transition-transform duration-300 ease-[cubic-bezier(0.16,1,0.3,1)] flex flex-col ${
          isOpen ? 'translate-x-0' : 'translate-x-full'
        }`}
        style={{ 
          backgroundColor: 'var(--color-surface, #ffffff)', 
          isolation: 'isolate'
        }}
      >
        {/* Header */}
        <header 
          className="p-4 border-b border-[var(--color-border)] flex items-center justify-between" 
          style={{ backgroundColor: 'var(--color-surface, #ffffff)' }}
        >
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-full overflow-hidden border border-[var(--color-border)] shadow-sm bg-white relative">
              <Image 
                src="/images/sid-icon.png" 
                alt="Sid" 
                fill
                sizes="(max-width: 768px) 32px, 40px"
                className="object-cover"
              />
            </div>
            <div>

              <h3 className="font-semibold text-[var(--color-text)] leading-none">Sid</h3>
              <div className="flex items-center gap-1 mt-1">
                <span className="w-2 h-2 bg-green-500 rounded-full animate-pulse" />
                <span className="text-[var(--text-xs)] text-green-500 font-medium">Assistente SPObras</span>
              </div>
            </div>
          </div>

          <div className="flex items-center gap-1">
            <button
              onClick={onClearHistory}
              className="p-2 text-[var(--color-text-muted)] hover:text-red-500 transition-colors rounded-md hover:bg-red-50"
              title="Limpar conversa"
            >
              <Trash2 size={18} />
            </button>
            <button
              onClick={onClose}
              className="p-2 text-[var(--color-text-muted)] hover:text-[var(--color-text)] transition-colors rounded-md"
              title="Fechar Sid"
            >
              <X size={20} />
            </button>
          </div>
        </header>

        {/* Área de Mensagens */}
        <main className="flex-1 overflow-y-auto p-4 flex flex-col">
          {modoManutencao ? (
            <div style={{
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              justifyContent: 'center',
              flex: 1,
              padding: 'var(--space-8)',
              textAlign: 'center',
              gap: 'var(--space-4)'
            }}>
              {/* Ícone do Sid com animação de espera */}
              <div style={{ 
                width: 80, height: 80, 
                borderRadius: '50%',
                overflow: 'hidden',
                opacity: 0.7,
                filter: 'grayscale(30%)'
              }}>
                <Image 
                  src="/images/sid-icon.png" 
                  alt="Sid" 
                  width={80} height={80}
                  style={{ width: 'auto', objectFit: 'cover' }}
                />
              </div>
              
              {/* Título */}
              <h3 style={{ 
                fontSize: 'var(--text-lg)',
                fontWeight: 600,
                color: 'var(--color-text)',
                margin: 0
              }}>
                O Sid estará disponível em breve
              </h3>
              
              {/* Subtítulo */}
              <p style={{ 
                fontSize: 'var(--text-sm)',
                color: 'var(--color-text-muted)',
                maxWidth: '28ch',
                margin: 0,
                lineHeight: 1.5
              }}>
                Estamos finalizando a configuração do assistente. 
                Volte em alguns instantes.
              </p>
              
              {/* Badge de status */}
              <div style={{
                display: 'flex',
                alignItems: 'center',
                gap: 'var(--space-2)',
                padding: 'var(--space-2) var(--space-4)',
                background: 'var(--color-warning-highlight)',
                borderRadius: 'var(--radius-full)',
                fontSize: 'var(--text-xs)',
                color: 'var(--color-warning)',
                fontWeight: 500
              }}>
                <span style={{ 
                  width: 6, height: 6, 
                  borderRadius: '50%', 
                  background: 'var(--color-warning)',
                  display: 'inline-block'
                }} />
                Em manutenção
              </div>
            </div>
          ) : messages.length === 0 ? (
            <div className="h-full flex flex-col items-center justify-center text-center p-8">
              <Sparkles size={48} className="text-[var(--color-text-muted)] mb-4" />
              <h4 className="text-[var(--text-lg)] font-semibold text-[var(--color-text)]">Oi! Eu sou o Sid 👋</h4>
              <p className="text-[var(--color-text-muted)] text-[var(--text-sm)] mb-6">
                Seu assistente de obras. Pode perguntar sobre 
                empreendimentos, contratos, empenhos e muito mais.
              </p>

              <div className="grid gap-2 w-full">
                {[
                  "📊 Resumo financeiro geral",
                  "🏗️ Empreendimentos em andamento",
                  "📋 Contratos a vencer"
                ].map((sugestao) => (
                  <button
                    key={sugestao}
                    onClick={() => onSendMessage(sugestao)}
                    className="p-3 text-[var(--text-sm)] text-[var(--color-text)] bg-[var(--color-surface-2)] border border-[var(--color-border)] rounded-[var(--radius-lg)] hover:border-[var(--color-primary)] transition-all text-left"
                  >
                    {sugestao}
                  </button>
                ))}
              </div>
            </div>
          ) : (
            <>
              {messages.map((msg) => (
                <div 
                  key={msg.id} 
                  className={`flex flex-col ${msg.role === 'user' ? 'items-end' : 'items-start'}`}
                >
                  {msg.metadata?.fileAnalyzed && (
                    <div className="flex items-center gap-1 text-[var(--text-xs)] text-[var(--color-text-muted)] mb-1 px-2">
                      <FileText size={12} />
                      <span>{msg.metadata.fileAnalyzed.name}</span>
                    </div>
                  )}
                  <div
                    className={`max-w-[85%] p-3 text-[var(--text-sm)] ${
                      msg.role === 'user'
                        ? 'bg-[var(--color-primary)] text-white rounded-[var(--radius-lg)] rounded-tr-none'
                        : 'bg-[var(--color-surface-2)] text-[var(--color-text)] border border-[var(--color-border)] rounded-[var(--radius-lg)] rounded-tl-none'
                    }`}
                  >
                    {renderMarkdown(msg.content)}
                  </div>
                  <span className="text-[var(--text-xs)] text-[var(--color-text-muted)] mt-1 px-1">
                    {new Date(msg.created_at).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}
                  </span>
                </div>
              ))}
              {isLoading && (
                <div className="flex flex-col items-start">
                  <div className="bg-[var(--color-surface-2)] border border-[var(--color-border)] p-4 rounded-[var(--radius-lg)] rounded-tl-none flex gap-1">
                    <span className="w-1.5 h-1.5 bg-[var(--color-text-muted)] rounded-full animate-bounce [animation-delay:-0.3s]" />
                    <span className="w-1.5 h-1.5 bg-[var(--color-text-muted)] rounded-full animate-bounce [animation-delay:-0.15s]" />
                    <span className="w-1.5 h-1.5 bg-[var(--color-text-muted)] rounded-full animate-bounce" />
                  </div>
                </div>
              )}
              <div ref={scrollRef} className="h-2" />
            </>
          )}
        </main>

        {/* Footer / Input */}
        <footer 
          className="p-4 border-t border-[var(--color-border)]"
          style={{ backgroundColor: 'var(--color-surface, #ffffff)' }}
        >
          {selectedFile && (
            <div className="mb-2 flex items-center gap-2 bg-[var(--color-surface-2)] p-2 rounded-md border border-[var(--color-border)]">
              <FileText size={16} className="text-[var(--color-primary)]" />
              <span className="text-[var(--text-xs)] flex-1 truncate">{selectedFile.name}</span>
              <button onClick={() => setSelectedFile(null)} className="text-[var(--color-text-muted)] hover:text-red-500">
                <X size={14} />
              </button>
            </div>
          )}
          
          <div className="flex items-end gap-2">
            {!modoManutencao && (
              <>
                <button
                  onClick={() => fileInputRef.current?.click()}
                  className="p-2.5 text-[var(--color-text-muted)] hover:text-[var(--color-primary)] transition-colors rounded-lg bg-[var(--color-surface-2)]"
                >
                  <Paperclip size={20} />
                </button>
                <input
                  type="file"
                  ref={fileInputRef}
                  className="hidden"
                  onChange={(e) => setSelectedFile(e.target.files?.[0] || null)}
                  accept="image/*, .pdf, .xlsx, .csv"
                />
              </>
            )}
            
            <div className="flex-1 relative">
              <textarea
                ref={textareaRef}
                value={inputValue}
                onChange={(e) => setInputValue(e.target.value)}
                onInput={handleTextareaInput}
                onKeyDown={handleKeyDown}
                disabled={modoManutencao}
                placeholder={modoManutencao ? "Indisponível no momento" : "Pergunte sobre o sistema..."}
                className="w-full bg-[var(--color-surface-2)] border border-[var(--color-border)] rounded-xl px-4 py-2.5 text-[var(--text-sm)] text-[var(--color-text)] placeholder:text-[var(--color-text-muted)] focus:outline-none focus:ring-2 focus:ring-[var(--color-primary)] focus:border-transparent resize-none min-h-[44px] max-h-[120px] disabled:opacity-50"
              />
            </div>

            <button
              onClick={handleSend}
              disabled={isLoading || modoManutencao || (!inputValue.trim() && !selectedFile)}
              className={`p-2.5 rounded-xl transition-all ${
                isLoading || modoManutencao || (!inputValue.trim() && !selectedFile)
                  ? 'bg-[var(--color-surface-2)] text-[var(--color-text-muted)] cursor-not-allowed'
                  : 'bg-[var(--color-primary)] text-white shadow-md hover:brightness-110 active:scale-95'
              }`}
            >
              {isLoading ? <Loader2 size={20} className="animate-spin" /> : <SendHorizontal size={20} />}
            </button>
          </div>
          {erro && (
            <p className="mt-2 text-[var(--text-xs)] text-red-500 font-medium">
              {erro}
            </p>
          )}
        </footer>
      </aside>
    </>,
    document.body
  )
}
