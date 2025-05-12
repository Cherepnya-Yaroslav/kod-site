'use strict';

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::personal-parties-page.personal-parties-page', ({ strapi }) => ({
  async find(ctx) {
    ctx.query = {
      ...ctx.query,
      populate: {
        pageHeader: true,
        programs: {
          populate: {
            mainImage: true,
            galleryImages: true
          }
        },
        Gallery: true,
        CoverImage: true
      }
    };

    const { data, meta } = await super.find(ctx);
    return { data, meta };
  }
})); 