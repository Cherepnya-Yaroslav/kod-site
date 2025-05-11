const axios = require('axios');
const fs = require('fs');

// Конфигурация
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
// Use environment variable for admin token
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';
// IMPORTANT: Never hardcode tokens here - use environment variables instead

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