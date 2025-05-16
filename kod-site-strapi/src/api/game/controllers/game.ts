/**
 * game controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::game.game', ({ strapi }) => ({
  async find(ctx) {
    try {
      // Log the raw request parameters
      
      
      // Parse filters if they exist and are a string
      if (ctx.query.filters && typeof ctx.query.filters === 'string') {
        try {
          ctx.query.filters = JSON.parse(ctx.query.filters);
          
        } catch (parseError) {
          
          return ctx.badRequest('Invalid filters format');
        }
      }
      
      // Get the base response
      const { data, meta } = await super.find(ctx);
      
      // Log the response
      
      
      return { data, meta };
    } catch (error) {
      // Log the error
      
      
      // Return a proper error response
      ctx.throw(500, { message: error.message || 'Internal server error' });
    }
  },

  async findOne(ctx) {
    try {
      // Log the request parameters
      
      
      
      // Get the base response
      const response = await super.findOne(ctx);
      
      // Log the response
      
      
      return response;
    } catch (error) {
      // Log the error
      
      
      // Return a proper error response
      ctx.throw(500, { message: error.message || 'Internal server error' });
    }
  }
}));
