module.exports = {
  apps: [
    {
      name: "mapa-server",
      script: "./server.js",
      instances: 1,
      autorestart: true,
      watch: false,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: "production",
        PORT: 3000
      }
    },
    {
      name: "mapa-sync",
      script: "./scheduler.js",
      instances: 1,
      autorestart: true,
      watch: false,
      max_memory_restart: '500M',
      env: {
        NODE_ENV: "production"
      }
    }
  ]
};
