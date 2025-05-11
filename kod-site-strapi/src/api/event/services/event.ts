/**
 * event service
 */

import { factories } from '@strapi/strapi';

interface FindParams {
  filters?: any;
  sort?: any;
  populate?: any;
  [key: string]: any;
}

export default factories.createCoreService('api::event.event', ({ strapi }) => ({
  async find(params: FindParams = {}) {
    try {
      // Log the incoming parameters
      console.log('Event service find params:', {
        params,
        filters: params.filters,
        sort: params.sort,
        populate: params.populate
      });

      // Call the default find method
      const result = await super.find(params);

      // Log the result
      console.log('Event service find result:', {
        count: result?.length,
        result
      });

      return result;
    } catch (error) {
      console.error('Error in event service find:', {
        error: error.message,
        stack: error.stack,
        params
      });
      throw error;
    }
  }
})); 