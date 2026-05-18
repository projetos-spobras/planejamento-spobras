'use client'

import React, { useEffect, useState } from 'react'
import { X } from 'lucide-react'
import Image from 'next/image'



interface AgentChatButtonProps {
  isOpen: boolean
  onClick: () => void
  hasMessages?: boolean
}

export function AgentChatButton({ isOpen, onClick, hasMessages }: AgentChatButtonProps) {
  const [isMounted, setIsMounted] = useState(false)

  useEffect(() => {
    setIsMounted(true)
  }, [])

  if (!isMounted) return null

  return (
    <div className="fixed bottom-6 right-6 z-[51] group">
      {/* Tooltip */}
      {/* Tooltip */}
      {!isOpen && (
        <div className="absolute bottom-full right-0 mb-3 px-3 py-1.5 bg-gray-900 text-white text-[var(--text-xs)] rounded-lg opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none whitespace-nowrap shadow-xl">
          Falar com o Sid
          <div className="absolute top-full right-5 border-4 border-transparent border-t-gray-900" />
        </div>
      )}

      {/* Botão Principal */}
      <button
        onClick={onClick}
        aria-label="Falar com o Sid"
        title="Falar com o Sid"
        className={`w-14 h-14 rounded-full flex items-center justify-center text-white shadow-2xl transition-all duration-300 transform animate-in zoom-in duration-300 overflow-hidden border-2 border-white ${
          isOpen 
            ? 'bg-gray-800 rotate-90 scale-90' 
            : 'bg-[var(--color-primary)] hover:scale-110 active:scale-95'
        }`}
      >
        {isOpen ? (
          <X size={24} />
        ) : (
          <div className="relative w-full h-full">
            <Image 
              src="/images/sid-icon.png" 
              alt="Sid Avatar" 
              fill
              sizes="(max-width: 768px) 32px, 56px"
              className="object-cover"
            />
            {hasMessages && (
              <span className="absolute top-1 right-1 w-3 h-3 bg-red-500 border-2 border-white rounded-full z-10" />
            )}
          </div>
        )}
      </button>


    </div>
  )
}
