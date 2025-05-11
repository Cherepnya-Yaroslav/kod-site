const axios = require('axios');
const fs = require('fs');
const path = require('path');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
// Use environment variable for admin token
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';
// IMPORTANT: Never hardcode tokens here - use environment variables instead

// Функция для создания типа контента
async function createContentType(name, fields) {
  try {
    const response = await axios.post(
      `${STRAPI_URL}/api/content-type-builder/content-types`,
      {
        contentType: {
          displayName: name,
          singularName: name.toLowerCase().replace(/\s+/g, '-'),
          pluralName: `${name.toLowerCase().replace(/\s+/g, '-')}s`,
          description: `Content type for ${name}`,
          draftAndPublish: true,
          attributes: fields,
        },
      },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    console.log(`Created content type: ${name}`);
    return response.data;
  } catch (error) {
    console.error(`Error creating content type ${name}:`, error.response?.data || error.message);
    return null;
  }
}

// Функция для настройки прав доступа
async function setupPermissions(contentType) {
  try {
    const response = await axios.put(
      `${STRAPI_URL}/api/users-permissions/roles/1`,
      {
        permissions: {
          [contentType]: {
            create: { enabled: false },
            delete: { enabled: false },
            find: { enabled: true },
            findOne: { enabled: true },
            update: { enabled: false },
          },
        },
      },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    console.log(`Set up permissions for: ${contentType}`);
    return response.data;
  } catch (error) {
    console.error(`Error setting up permissions for ${contentType}:`, error.response?.data || error.message);
    return null;
  }
}

// Определение полей для типов контента
const homePageFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  heroImage: { type: 'media', multiple: false, required: true },
  videoUrl: { type: 'string' },
  contactPhone: { type: 'string' },
  contactEmail: { type: 'string' },
  testimonials: {
    type: 'component',
    repeatable: true,
    component: 'default.testimonial',
  },
  founderSection: {
    type: 'component',
    repeatable: false,
    component: 'default.founder',
  },
};

const partyFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  price: { type: 'decimal', required: true },
  duration: { type: 'string', required: true },
  image: { type: 'media', multiple: false, required: true },
  features: {
    type: 'component',
    repeatable: true,
    component: 'default.feature',
  },
};

const gameFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  price: { type: 'decimal', required: true },
  duration: { type: 'string', required: true },
  image: { type: 'media', multiple: false, required: true },
  features: {
    type: 'component',
    repeatable: true,
    component: 'default.feature',
  },
};

const danceFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  price: { type: 'decimal', required: true },
  duration: { type: 'string', required: true },
  image: { type: 'media', multiple: false, required: true },
  features: {
    type: 'component',
    repeatable: true,
    component: 'default.feature',
  },
};

const onlineLearningFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  price: { type: 'decimal', required: true },
  duration: { type: 'string', required: true },
  image: { type: 'media', multiple: false, required: true },
  features: {
    type: 'component',
    repeatable: true,
    component: 'default.feature',
  },
};

// Функция для создания компонентов
async function createComponent(name, fields) {
  try {
    const response = await axios.post(
      `${STRAPI_URL}/api/content-type-builder/components`,
      {
        component: {
          displayName: name,
          icon: 'cube',
          attributes: fields,
        },
      },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    console.log(`Created component: ${name}`);
    return response.data;
  } catch (error) {
    console.error(`Error creating component ${name}:`, error.response?.data || error.message);
    return null;
  }
}

// Определение полей для компонентов
const testimonialFields = {
  name: { type: 'string', required: true },
  text: { type: 'text', required: true },
  image: { type: 'media', multiple: false },
};

const founderFields = {
  title: { type: 'string', required: true },
  description: { type: 'text', required: true },
  image: { type: 'media', multiple: false, required: true },
};

const featureFields = {
  feature: { type: 'string', required: true },
};

// Основная функция для настройки Strapi
async function setupStrapi() {
  console.log('Starting Strapi setup...');

  // Создание компонентов
  await createComponent('Testimonial', testimonialFields);
  await createComponent('Founder', founderFields);
  await createComponent('Feature', featureFields);

  // Создание типов контента
  await createContentType('Home Page', homePageFields);
  await createContentType('Parties', partyFields);
  await createContentType('Games', gameFields);
  await createContentType('Dances', danceFields);
  await createContentType('Online Learning', onlineLearningFields);

  // Настройка прав доступа
  await setupPermissions('home-page');
  await setupPermissions('parties');
  await setupPermissions('games');
  await setupPermissions('dances');
  await setupPermissions('online-learning');

  console.log('Strapi setup completed!');
}

// Запуск настройки
setupStrapi().catch(console.error); 