/**
 * event controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::event.event', ({ strapi }) => ({
  async find(ctx) {
    try {
      // Log the raw request parameters
      console.log('Event find raw request query:', ctx.query);
      
      // Parse filters if they exist and are a string
      if (ctx.query.filters && typeof ctx.query.filters === 'string') {
        try {
          ctx.query.filters = JSON.parse(ctx.query.filters);
          console.log('Parsed filters:', ctx.query.filters);
        } catch (parseError) {
          console.error('Failed to parse filters JSON string:', parseError);
          // Optionally throw an error or handle invalid JSON
          ctx.throw(400, { message: 'Invalid filters format', error: parseError.message });
        }
      }
      
      // Get the base controller
      const { data, meta } = await super.find(ctx);
      
      // Log the response
      console.log('Event find response:', { data, meta });
      
      return { data, meta };
    } catch (error) {
      // Log the error
      console.error('Error in event find:', error);
      
      // Use the error status if available, otherwise default to 500
      const status = error.status || 500;
      const message = error.message || 'Error fetching events';
      
      // Return a proper error response
      ctx.throw(status, { message, error: error.details || error.message });
    }
  }
})); 