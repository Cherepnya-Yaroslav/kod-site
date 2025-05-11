module.exports = (plugin) => {
  plugin.policies['users-permissions'].enabled = true;

  // Configure permissions for public access to Event collection
  plugin.contentTypes.event = {
    enabled: true,
    config: {
      find: { enabled: true },
      findOne: { enabled: true },
      count: { enabled: true },
    },
  };

  // Register Event actions
  plugin.registerActionsHook(({ actions }) => {
    actions.push({
      section: 'content-api',
      category: 'event',
      displayName: 'Access Event',
      uid: 'event.access',
      subCategory: 'general',
      pluginName: 'event',
      subjects: ['event'],
      options: {
        applyToProperties: ['fields'],
      },
    });
  });

  return plugin;
}; 