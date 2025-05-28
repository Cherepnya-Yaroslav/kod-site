const { mergeConfig } = require('vite');

module.exports = (config) => {
  return mergeConfig(config, {
    server: {
      host: '0.0.0.0',
      port: 1337,
      strictPort: true,
      hmr: {
        host: 'kodspace.art',
        protocol: 'https',
      },
      allowedHosts: [
        'kodspace.art',
        'localhost',
        '127.0.0.1',
      ],
    },
  });
}; 