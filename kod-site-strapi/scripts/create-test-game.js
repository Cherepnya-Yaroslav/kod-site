const axios = require('axios');

// Configuration
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
const ADMIN_TOKEN = process.env.STRAPI_ADMIN_TOKEN;

// Test game data
const testGame = {
  title: "Тестовая Игра",
  gameType: "role",
  audienceType: "kids",
  ageGroups: ["6+", "12+"],
  description: "Описание тестовой игры",
  hasPremiumVersion: true,
  premiumDescription: "Описание премиум версии тестовой игры"
};

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
    
    throw error;
  }
}

// Run the script

createGame(testGame)
  .then(() =>  