const axios = require('axios');

// Configuration
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN;

// Sample games data
const sampleGames = [
  {
    title: "БУНКЕР",
    gameType: "role",
    audienceType: "adults",
    ageGroups: ["18+"],
    description: "Катастрофа произойдет уже через пару часов! Соберитесь и не прогадайте, кто спасать планету.",
    hasPremiumVersion: true,
    premiumDescription: "Иллюзии, креативные мышление и громкий смех с погружением в нереальную реальность спасенных в бункере! Не ошибитесь! Рядом с вами может оказаться психопат…"
  },
  {
    title: "МАФИЯ",
    gameType: "role",
    audienceType: "adults",
    ageGroups: ["18+"],
    description: "Все классически виртуозно! Снимаем маски - проверяем интуицию…",
    hasPremiumVersion: true,
    premiumDescription: "Когда классическая игра соединяется с атмосферой невероятных историй!"
  },
  {
    title: "БУНКЕР KIDS",
    gameType: "role",
    audienceType: "kids",
    ageGroups: ["8+", "10+", "13+", "16+"],
    description: "Время решить, кто окажется в спасительном бункере!",
    hasPremiumVersion: true,
    premiumDescription: "Забудьте, кем вы были «до»... Погрузитесь в атмосферу игры на выживание!"
  },
  {
    title: "МАФИЯ KIDS",
    gameType: "role",
    audienceType: "kids",
    ageGroups: ["5+", "8+", "10+", "13+", "16+"],
    description: "Классика бесценна! Снимите маски, господа, и будьте внимательней!",
    hasPremiumVersion: true,
    premiumDescription: "Невероятные сценарии игры в мафию с погружением в жизнь мирных и мафиози!"
  }
];

// Function to create a game
async function createGame(gameData) {
  try {
    const response = await axios.post(
      `${STRAPI_URL}/api/games`,
      { data: gameData },
      {
        headers: {
          Authorization: `Bearer ${ADMIN_TOKEN}`,
          'Content-Type': 'application/json',
        },
      }
    );
    
    return response.data;
  } catch (error) {
    
    return null;
  }
}

// Main function to create all sample games
async function createSampleGames() {
  
  
  for (const game of sampleGames) {
    await createGame(game);
  }
  
  
}

// Run the script
// createSampleGames().catch(console.error); 