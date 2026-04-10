import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Otimizações para produção na Vercel
  serverExternalPackages: ["md5"],
  experimental: {
    // Other experimental features can go here if needed
  },


  // Headers de cache para assets estáticos — reduz requests redundantes ao CDN da Vercel
  async headers() {
    return [
      {
        // Assets estáticos gerados pelo Next.js têm hash no nome — podem ser cacheados indefinidamente
        source: "/_next/static/:path*",
        headers: [
          {
            key: "Cache-Control",
            value: "public, max-age=31536000, immutable",
          },
        ],
      },
      {
        // Imagens públicas (logos, ícones)
        source: "/(:path*\\.(?:png|jpg|jpeg|gif|webp|svg|ico))",
        headers: [
          {
            key: "Cache-Control",
            value: "public, max-age=86400, stale-while-revalidate=604800",
          },
        ],
      },
    ];
  },

  // Compressão de resposta
  compress: true,

  // PoweredByHeader falso para não expor informações desnecessárias
  poweredByHeader: false,
};

export default nextConfig;
