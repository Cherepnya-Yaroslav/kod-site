/**
 * game controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::game.game', ({ strapi }) => ({
  async find(ctx) {
    try {
      // Log the raw request parameters
      console.log('Game find raw request query:', ctx.query);
      
      // Parse filters if they exist and are a string
      if (ctx.query.filters && typeof ctx.query.filters === 'string') {
        try {
          ctx.query.filters = JSON.parse(ctx.query.filters);
          console.log('Parsed filters:', ctx.query.filters);
        } catch (parseError) {
          console.error('Failed to parse filters JSON string:', parseError);
          return ctx.badRequest('Invalid filters format');
        }
      }
      
      // Get the base response
      const { data, meta } = await super.find(ctx);
      
      // Log the response
      console.log('Game find response:', { data, meta });
      
      return { data, meta };
    } catch (error) {
      // Log the error
      console.error('Error in game find:', error);
      
      // Return a proper error response
      ctx.throw(500, { message: error.message || 'Internal server error' });
    }
  },

  async findOne(ctx) {
    try {
      // Log the request parameters
      console.log('Game findOne params:', ctx.params);
      console.log('Game findOne query:', ctx.query);
      
      // Get the base response
      const response = await super.findOne(ctx);
      
      // Log the response
      console.log('Game findOne response:', response);
      
      return response;
    } catch (error) {
      // Log the error
      console.error('Error in game findOne:', error);
      
      // Return a proper error response
      ctx.throw(500, { message: error.message || 'Internal server error' });
    }
  }
}));
