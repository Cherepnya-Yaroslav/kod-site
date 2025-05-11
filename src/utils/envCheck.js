/**
 * Утилита для проверки настройки переменных окружения при запуске приложения
 */

const checkEnvironmentVariables = () => {
  const requiredVars = [
    'REACT_APP_STRAPI_URL',
  ];
  
  const missingVars = requiredVars.filter(varName => !process.env[varName]);
  
  if (missingVars.length > 0) {
    console.warn(
      `\n⚠️ ВНИМАНИЕ: Отсутствуют следующие переменные окружения:\n` +
      `${missingVars.map(v => `- ${v}`).join('\n')}\n\n` +
      `Создайте файл .env в корне проекта со следующим содержимым:\n` +
      `REACT_APP_STRAPI_URL=http://localhost:1337\n\n` +
      `Используются значения по умолчанию, но для продакшена рекомендуется настроить эти переменные.`
    );
  } else {
    console.log('✅ Переменные окружения настроены верно.');
    console.log(`📡 API URL: ${process.env.REACT_APP_STRAPI_URL}`);
  }
};

export default checkEnvironmentVariables; 