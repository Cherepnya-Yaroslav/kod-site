const axios = require('axios');
const fs = require('fs');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
// Use environment variable for admin token
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';
// IMPORTANT: Never hardcode tokens here - use environment variables instead

// Функция для получения списка типов контента
async function listContentTypes() {
  try {
    const response = await axios.get(
      `${STRAPI_URL}/api/content-manager/content-types`,
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    
    
    return response.data;
  } catch (error) {
    
    return null;
  }
}

// Функция для получения списка записей для определенного типа контента
async function listEntries(contentType) {
  try {
    const response = await axios.get(
      `${STRAPI_URL}/api/${contentType}`,
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    
    
    return response.data;
  } catch (error) {
    
    return null;
  }
}

// Основная функция
async function main() {
  
  const contentTypes = await listContentTypes();
  
  if (contentTypes && contentTypes.data) {
    for (const contentType of contentTypes.data) {
      const apiId = contentType.attributes.apiID;
      
      await listEntries(apiId);
    }
  }
}

// Запуск
// main().catch(console.error); 