/**
 * event controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::event.event', ({ strapi }) => ({
  async find(ctx) {
    try {
      // Log the raw request parameters
      
      
      // Parse filters if they exist and are a string
      if (ctx.query.filters && typeof ctx.query.filters === 'string') {
        try {
          ctx.query.filters = JSON.parse(ctx.query.filters);
          
        } catch (parseError) {
          
          // Optionally throw an error or handle invalid JSON
          ctx.throw(400, { message: 'Invalid filters format', error: parseError.message });
        }
      }
      
      // Get the base controller
      const { data, meta } = await super.find(ctx);
      
      // Log the response
      
      
      return { data, meta };
    } catch (error) {
      // Log the error
      
      
      // Use the error status if available, otherwise default to 500
      const status = error.status || 500;
      const message = error.message || 'Error fetching events';
      
      // Return a proper error response
      ctx.throw(status, { message, error: error.details || error.message });
    }
  }
})); 