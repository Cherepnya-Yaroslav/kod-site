/**
 * contact router
 */

export default {
  routes: [
    // Standard routes
    {
      method: 'GET',
      path: '/contacts',
      handler: 'contact.find',
      config: {
        policies: [],
      },
    },
    {
      method: 'GET',
      path: '/contacts/:id',
      handler: 'contact.findOne',
      config: {
        policies: [],
      },
    },
    {
      method: 'POST',
      path: '/contacts',
      handler: 'contact.create',
      config: {
        policies: [],
      },
    },
    
    // Custom route for form submissions
    {
      method: 'POST',
      path: '/contact/submit',
      handler: 'contact.submitForm',
      config: {
        policies: [],
        // Public access - no authentication needed
        auth: false,
      },
    },
  ],
}; 