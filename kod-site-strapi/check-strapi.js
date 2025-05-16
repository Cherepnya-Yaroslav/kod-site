const axios = require('axios');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';
// IMPORTANT: Never hardcode admin tokens here - use environment variables instead

// Функция для проверки доступности API Strapi
async function checkStrapiAPI() {
  try {
    
    
    // Проверка доступности сервера
    const serverInfo = await axios.get(`${STRAPI_URL}/api/_healthcheck`);
    
    
    
    // Получение информации о сервере
    const serverDetails = await axios.get(`${STRAPI_URL}/api/info`);
    
    
    
    // Проверка доступности API с токеном
    const apiCheck = await axios.get(`${STRAPI_URL}/api/users/me`, {
      headers: {
        Authorization: `Bearer ${ADMIN_TOKEN}`,
      },
    });
    
    
    
    return true;
  } catch (error) {
    
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
      
      const response = await axios.get(`${STRAPI_URL}/api/${contentType}`, {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      });
      
      
    } catch (error) {
      
    }
  }
}

// Основная функция
async function main() {
  const apiAvailable = await checkStrapiAPI();
  
  if (apiAvailable) {
    
    await checkContentTypes();
  } else {
    
  }
}

// Запуск
// main().catch(console.error); 