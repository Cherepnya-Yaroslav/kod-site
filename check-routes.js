const axios = require('axios');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = '19a00275ceb84b90c6216f53bd1933f2c0a270257f61d3f5b1ea9b7b7c300f40c353480baa2e81c49267409b1c425a54805264160736698a18e91eed21227c67f7d4d39b8dd0bd88ae817a0186538a31b4de89ae350c4ce8be28ef85709dcaa0a539900c5dd1c614a4b49f478cec592b5bf941e9da7f21a9d2242622fbe8c5e0';

// Список API-маршрутов для проверки
const routes = [
  '/api/_healthcheck',
  '/api/info',
  '/api/users/me',
  '/api/content-manager/content-types',
  '/api/content-manager/components',
  '/api/home-page',
  '/api/parties',
  '/api/games',
  '/api/dances',
  '/api/online-learning',
];

// Функция для проверки API-маршрута
async function checkRoute(route) {
  try {
    // console.log(`Checking route: ${route}`);
    const response = await axios.get(`${STRAPI_URL}${route}`, {
      headers: {
        Authorization: `Bearer ${ADMIN_TOKEN}`,
      },
    });
    // console.log(`Status: ${response.status}`);
    // console.log(`Data: ${JSON.stringify(response.data, null, 2)}`);
    return true;
  } catch (error) {
    // console.error(`Error checking route ${route}:`, error.response?.data || error.message);
    return false;
  }
}

// Основная функция
async function main() {
  // console.log('Checking Strapi API routes...');
  
  for (const route of routes) {
    await checkRoute(route);
    // console.log('-------------------');
  }
  
  // console.log('API route check completed!');
}

// Запуск
// main().catch(console.error); 