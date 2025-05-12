/**
 * contact controller
 */

import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::contact.contact' as any, ({ strapi }) => ({
  /**
   * Custom action to handle form submissions
   */
  async submitForm(ctx) {
    try {
      const { body } = ctx.request;
      
      // Log the received data (for debugging purposes)
      console.log('Received form submission:', body);
      
      // Validate required fields
      if (!body.email && !body.phone) {
        return ctx.badRequest('Email or phone is required');
      }
      
      // Extract form data
      const {
        name,
        email,
        phone,
        message,
        formType = 'Обратная связь', // Default form type
        ...additionalFields
      } = body;
      
      // Format additional fields for email
      const additionalFieldsHtml = Object.entries(additionalFields)
        .map(([key, value]) => `<p><strong>${key}:</strong> ${value}</p>`)
        .join('');
      
      // Send email notification
      try {
        await strapi.plugins['email'].services.email.send({
          to: process.env.NOTIFICATION_EMAIL || 'info@kod-entertainment.com',
          subject: `Новая заявка: ${formType}`,
          html: `
            <h2>Поступила новая заявка с формы "${formType}"</h2>
            <p><strong>Имя:</strong> ${name || 'Не указано'}</p>
            <p><strong>Email:</strong> ${email || 'Не указано'}</p>
            <p><strong>Телефон:</strong> ${phone || 'Не указано'}</p>
            <p><strong>Сообщение:</strong> ${message || 'Не указано'}</p>
            ${additionalFieldsHtml ? '<h3>Дополнительная информация:</h3>' + additionalFieldsHtml : ''}
          `,
        });
        
        console.log('Email sent successfully');
      } catch (emailError) {
        console.error('Error sending email:', emailError);
        // Continue execution even if email fails
      }
      
      // Store the submission in the database if needed
      try {
        const entry = await strapi.entityService.create('api::contact.contact' as any, {
          data: {
            name,
            email,
            phone,
            message,
            formType,
            additionalData: JSON.stringify(additionalFields),
            publishedAt: new Date().toISOString(),
          },
        });
        
        console.log('Form submission saved in database:', entry);
      } catch (dbError) {
        console.error('Error saving form submission to database:', dbError);
        // Continue execution even if database save fails
      }
      
      return {
        message: 'Form submitted successfully',
        success: true,
      };
    } catch (error) {
      console.error('Error in submitForm:', error);
      return ctx.badRequest(error.message || 'An unexpected error occurred');
    }
  },
})); 