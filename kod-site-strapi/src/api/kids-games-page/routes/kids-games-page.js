'use strict';

/**
 * kids-games-page router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::kids-games-page.kids-games-page', {
  config: {
    find: {
      auth: false,
    },
    findOne: {
      auth: false,
    },
  },
}); 