const axios = require('axios');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';
// IMPORTANT: Never hardcode admin tokens here - use environment variables instead

// Функция для проверки доступности API Strapi
async function checkStrapiAPI() {
  try {
    console.log('Checking Strapi API...');
    
    // Проверка доступности сервера
    const serverInfo = await axios.get(`${STRAPI_URL}/api/_healthcheck`);
    console.log('Server health check:');
    console.log(JSON.stringify(serverInfo.data, null, 2));
    
    // Получение информации о сервере
    const serverDetails = await axios.get(`${STRAPI_URL}/api/info`);
    console.log('\nServer info:');
    console.log(JSON.stringify(serverDetails.data, null, 2));
    
    // Проверка доступности API с токеном
    const apiCheck = await axios.get(`${STRAPI_URL}/api/users/me`, {
      headers: {
        Authorization: `Bearer ${ADMIN_TOKEN}`,
      },
    });
    console.log('\nAPI check with token:');
    console.log(JSON.stringify(apiCheck.data, null, 2));
    
    return true;
  } catch (error) {
    console.error('Error checking Strapi API:', error.response?.data || error.message);
    return false;
  }
}

// Функция для проверки доступности типов контента
async function checkContentTypes() {
  const contentTypes = [
    'home-page',
    'parties',
    'games',
    'dances',
    'online-learning',
  ];
  
  for (const contentType of contentTypes) {
    try {
      console.log(`\nChecking ${contentType}...`);
      const response = await axios.get(`${STRAPI_URL}/api/${contentType}`, {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      });
      console.log(`Status: ${response.status}`);
      console.log(`Data: ${JSON.stringify(response.data, null, 2)}`);
    } catch (error) {
      console.error(`Error checking ${contentType}:`, error.response?.data || error.message);
    }
  }
}

// Основная функция
async function main() {
  const apiAvailable = await checkStrapiAPI();
  
  if (apiAvailable) {
    console.log('\nStrapi API is available. Checking content types...');
    await checkContentTypes();
  } else {
    console.log('\nStrapi API is not available. Please check if Strapi is running.');
  }
}

// Запуск
main().catch(console.error); 