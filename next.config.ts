import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  distDir: ".next",
  typescript: {
    ignoreBuildErrors: true,
  },

  // Otimizações para produção na Vercel
  serverExternalPackages: ["md5"],
  experimental: {
    serverActions: {
      // Whitelist specific origins for CSRF protection
      allowedOrigins: [
        "https://sid.spobrasdigital.com.br", 
        "http://sid.spobrasdigital.com.br",
        "http://10.89.244.42", 
        "http://10.89.244.43", 
        "http://187.44.105.2", 
        "http://localhost:3005"
      ],
      bodySizeLimit: "50mb",
    },
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
// Test permissions
