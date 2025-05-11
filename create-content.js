const axios = require('axios');
const fs = require('fs');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
// Замените 'YOUR_ADMIN_TOKEN' на токен, который вы получили из админской панели Strapi
const ADMIN_TOKEN = '19a00275ceb84b90c6216f53bd1933f2c0a270257f61d3f5b1ea9b7b7c300f40c353480baa2e81c49267409b1c425a54805264160736698a18e91eed21227c67f7d4d39b8dd0bd88ae817a0186538a31b4de89ae350c4ce8be28ef85709dcaa0a539900c5dd1c614a4b49f478cec592b5bf941e9da7f21a9d2242622fbe8c5e0';

// Функция для создания контента
async function createContent(contentType, data) {
  try {
    const response = await axios.post(
      `${STRAPI_URL}/api/${contentType}`,
      { data },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
          'Content-Type': 'application/json',
        },
      }
    );
    console.log(`Created ${contentType}: ${data.title}`);
    return response.data;
  } catch (error) {
    console.error(`Error creating ${contentType}:`, error.response?.data || error.message);
    return null;
  }
}

// Данные для создания контента
const homePageData = {
  title: 'Главная страница',
  description: 'Добро пожаловать на наш сайт! Мы предлагаем различные услуги для вашего досуга.',
  videoUrl: 'https://www.youtube.com/watch?v=example',
  contactPhone: '+7 (123) 456-7890',
  contactEmail: 'info@example.com',
};

const partyData = {
  title: 'Детский день рождения',
  description: 'Организуем незабываемый детский день рождения с играми, конкурсами и развлечениями.',
  price: 15000,
  duration: '3 часа',
};

const gameData = {
  title: 'Настольные игры',
  description: 'Большая коллекция настольных игр для всех возрастов.',
  price: 500,
  duration: '1 час',
};

const danceData = {
  title: 'Танцевальные классы',
  description: 'Профессиональные преподаватели научат вас танцевать.',
  price: 1000,
  duration: '1 час',
};

const onlineLearningData = {
  title: 'Онлайн курсы',
  description: 'Обучающие курсы по различным темам в онлайн формате.',
  price: 5000,
  duration: '10 часов',
};

// Основная функция для создания контента
async function createAllContent() {
  console.log('Starting content creation...');

  // Создание контента
  await createContent('home-page', homePageData);
  await createContent('parties', partyData);
  await createContent('games', gameData);
  await createContent('dances', danceData);
  await createContent('online-learning', onlineLearningData);

  console.log('Content creation completed!');
}

// Запуск создания контента
createAllContent().catch(console.error); 