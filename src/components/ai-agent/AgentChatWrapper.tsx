'use client'

import React, { useState, useEffect } from 'react'
import { useAgentChat } from '@/hooks/useAgentChat'
import { ChatPanel } from './ChatPanel'
import { AgentChatButton } from './AgentChatButton'

interface AgentChatWrapperProps {
  contexto?: {
    empreendimentoId?: string
    contratoId?: string
  }
}

/**
 * Orquestrador do Agente de IA que gerencia a visibilidade do chat e o hook de estado.
 */
export default function AgentChatWrapper({ contexto }: AgentChatWrapperProps) {
  const [isOpen, setIsOpen] = useState(false)
  const agent = useAgentChat({ contexto })

  // Fecha com Escape
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'Escape' && isOpen) {
        setIsOpen(false)
      }
    }
    window.addEventListener('keydown', handleKeyDown)
    return () => window.removeEventListener('keydown', handleKeyDown)
  }, [isOpen])

  // Bloqueia scroll do body no mobile quando aberto
  useEffect(() => {
    if (isOpen && window.innerWidth < 768) {
      document.body.style.overflow = 'hidden'
    } else {
      document.body.style.overflow = ''
    }
    return () => {
      document.body.style.overflow = ''
    }
  }, [isOpen])

  return (
    <>
      <AgentChatButton 
        isOpen={isOpen} 
        onClick={() => setIsOpen(!isOpen)} 
        hasMessages={agent.messages.length > 0}
      />
      
      <ChatPanel
        isOpen={isOpen}
        onClose={() => setIsOpen(false)}
        onSendMessage={agent.sendMessage}
        onClearHistory={agent.clearHistory}
        messages={agent.messages}
        isLoading={agent.isLoading}
        erro={agent.erro}
        contexto={contexto}
        modoManutencao={true}
      />
    </>
  )
}
