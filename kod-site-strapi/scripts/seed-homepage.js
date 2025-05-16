const axios = require('axios');

const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN || '';

const homePageData = {
  Title: "Добро пожаловать в K.O.D.",
  Description: "K.O.D. - это уникальное пространство для развлечений, где каждый найдет что-то для себя. От настольных игр до тематических вечеринок, мы создаем незабываемые впечатления.",
  Video_URL: "https://www.youtube.com/embed/your-video-id",
  Contact_Phone: "+7 (999) 123-45-67",
  Contact_Email: "info@kod-entertainment.com",
  About_Title: "О проекте K.O.D.",
  About_Description: "Мы предлагаем широкий выбор развлечений для всех возрастов и интересов.",
  About_Full_Description: "K.O.D. - это место, где творчество встречается с развлечением. Мы создали уникальное пространство, где каждый может найти развлечение по душе, будь то тематическая вечеринка, настольные игры или танцевальный мастер-класс. Наша миссия - создавать незабываемые моменты и яркие впечатления для наших гостей.",
  Founder_Quote: "Мы создали K.O.D. как место, где люди могут отдохнуть от повседневной рутины, погрузиться в мир игр и развлечений, и просто хорошо провести время в компании друзей или семьи.",
  Founder_Name: "Ярослав Черепня"
};

async function createHomePage() {
  try {
    
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
    
  } catch (error) {
    
  }
}

// Запускаем создание данных
createHomePage(); 