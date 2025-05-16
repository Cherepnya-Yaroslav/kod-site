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
      

      // Call the default find method
      const result = await super.find(params);

      // Log the result
      

      return result;
    } catch (error) {
      
      throw error;
    }
  }
})); 