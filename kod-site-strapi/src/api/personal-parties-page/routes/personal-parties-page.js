module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/personal-parties-page',
      handler: 'personal-parties-page.find',
      config: {
        policies: [],
        middlewares: [],
      },
    },
  ],
}; 