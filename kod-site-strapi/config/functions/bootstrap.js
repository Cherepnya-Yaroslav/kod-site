'use strict';

module.exports = async ({ strapi }) => {
  // Find the public role
  const publicRole = await strapi
    .query('plugin::users-permissions.role')
    .findOne({ where: { type: 'public' } });

  if (publicRole) {
    // Update permissions for the Game collection
    const gamePermissions = await strapi
      .query('plugin::users-permissions.permission')
      .findMany({
        where: {
          role: publicRole.id,
          action: ['find', 'findOne'],
          subject: 'api::game.game'
        }
      });

    // If game permissions don't exist, create them
    if (!gamePermissions.length) {
      await strapi.query('plugin::users-permissions.permission').createMany({
        data: [
          {
            role: publicRole.id,
            action: 'find',
            subject: 'api::game.game',
            enabled: true
          },
          {
            role: publicRole.id,
            action: 'findOne',
            subject: 'api::game.game',
            enabled: true
          }
        ]
      });

      
    }

    // Update permissions for the Event collection
    const eventPermissions = await strapi
      .query('plugin::users-permissions.permission')
      .findMany({
        where: {
          role: publicRole.id,
          action: ['find', 'findOne'],
          subject: 'api::event.event'
        }
      });

    // If event permissions don't exist, create them
    if (!eventPermissions.length) {
      await strapi.query('plugin::users-permissions.permission').createMany({
        data: [
          {
            role: publicRole.id,
            action: 'find',
            subject: 'api::event.event',
            enabled: true
          },
          {
            role: publicRole.id,
            action: 'findOne',
            subject: 'api::event.event',
            enabled: true
          }
        ]
      });

      
    }
  }
}; 