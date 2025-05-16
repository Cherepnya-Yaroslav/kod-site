const axios = require('axios');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = '19a00275ceb84b90c6216f53bd1933f2c0a270257f61d3f5b1ea9b7b7c300f40c353480baa2e81c49267409b1c425a54805264160736698a18e91eed21227c67f7d4d39b8dd0bd88ae817a0186538a31b4de89ae350c4ce8be28ef85709dcaa0a539900c5dd1c614a4b49f478cec592b5bf941e9da7f21a9d2242622fbe8c5e0';

// Данные для домашней страницы
const homePageData = {
  Title: 'Главная страница',
  Description: 'Добро пожаловать на наш сайт! Мы предлагаем различные услуги для вашего досуга.',
  Video_URL: 'https://www.youtube.com/watch?v=example',
  Contact_Phone: '+7 (123) 456-7890',
  Contact_Email: 'info@example.com'
};

// Функция для создания записи домашней страницы
async function createHomePage() {
  try {
    // console.log('Creating home page...');
    const response = await axios.post(
      `${STRAPI_URL}/api/home-pages`,
      { data: homePageData },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
          'Content-Type': 'application/json',
        },
      }
    );
    // console.log('Home page created successfully:');
    // console.log(JSON.stringify(response.data, null, 2));
    return response.data;
  } catch (error) {
    if (error.response) {
      // console.error('Error creating home page:', {
        status: error.response.status,
        data: error.response.data
      });
    } else {
      // console.error('Error creating home page:', error.message);
    }
    return null;
  }
}

// Функция для получения данных домашней страницы
async function getHomePage() {
  try {
    // console.log('Getting home page data...');
    const response = await axios.get(
      `${STRAPI_URL}/api/home-pages`,
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
        },
      }
    );
    // console.log('Home page data:');
    // console.log(JSON.stringify(response.data, null, 2));
    return response.data;
  } catch (error) {
    if (error.response) {
      // console.error('Error getting home page:', {
        status: error.response.status,
        data: error.response.data
      });
    } else {
      // console.error('Error getting home page:', error.message);
    }
    return null;
  }
}

// Основная функция
async function main() {
  // console.log('Testing Home Page API...');
  
  // Создаем запись домашней страницы
  await createHomePage();
  
  // console.log('\n-------------------\n');
  
  // Получаем данные домашней страницы
  await getHomePage();
}

// Запуск
// main().catch(console.error); 