import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import Button from '../components/Button';
import SiteHeader from "../components/SiteHeader";
import SiteFooter from "../components/SiteFooter";
import FeedbackForm from "../components/FeedbackForm";
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/pages/GamingPartiesPage.css';

const GamingPartiesPage = () => {
  const [activeAudience, setActiveAudience] = useState('kids'); // 'kids' или 'adults'
  const [activeGameType, setActiveGameType] = useState('role'); // тип активной игры
  const [filtersVisible, setFiltersVisible] = useState(false); // видимость фильтров
  const [games, setGames] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [isBookingFormOpen, setIsBookingFormOpen] = useState(false);
  const [selectedGame, setSelectedGame] = useState(null);
  const [currentImage, setCurrentImage] = useState(null);
  const [answers, setAnswers] = useState({});
  const [pageData, setPageData] = useState({
    title: "Игровые вечеринки дети/взрослые",
    description: [
      "Игровые вечеринки в KOD - это особое удовольствие! В нашей коллекции более 50 патигеймов для детских, взрослых и смешанных компаний! Задумали вечеринку, но не знаете как ее обыграть? Мы знаем все правила, поэтому с легкостью организуем для вас игру в День рождения, корпоратив, тимбилдинг или семейную встречу! Сделаем вашу игропати эмоциональной до каждой милисекунды!"
    ],
    mainImage: null,
    galleryImages: []
  });
  const [loadedImages, setLoadedImages] = useState({});

  useEffect(() => {
    // Set initial current image when component mounts
    if (pageData.mainImage) {
      setCurrentImage(pageData.mainImage);
    }
  }, [pageData.mainImage]);

  // Загрузка галереи из Strapi
  useEffect(() => {
    const fetchGameGallery = async () => {
      try {
        const response = await fetchData('personal-parties-page', { 
          populate: ['gameGallery'] 
        });
        
        if (response && response.data && response.data.gameGallery && response.data.gameGallery.length > 0) {
          const gameGallery = response.data.gameGallery;
          
          // Обновляем pageData с данными из Strapi
          setPageData(prev => {
            const updatedData = {
              ...prev,
              mainImage: gameGallery.length > 0 ? getMediaUrl(gameGallery[0]) : null,
              galleryImages: gameGallery.map(img => getMediaUrl(img))
            };
            // Устанавливаем текущее изображение как первое из галереи
            setCurrentImage(updatedData.mainImage);
            return updatedData;
          });
        }
      } catch (err) {
        console.error('Error fetching game gallery:', err);
      }
    };

    fetchGameGallery();
  }, []);

  // Function to handle thumbnail click
  const handleThumbnailClick = (image) => {
    setCurrentImage(image);
  };

  const toggleFilters = () => {
    setFiltersVisible(!filtersVisible);
  };

  useEffect(() => {
    const loadGames = async () => {
      try {
        setLoading(true);
        const response = await fetchData('games', { 
          populate: '*',
          filters: {
            audienceType: activeAudience,
            ...(activeGameType !== 'all' && { gameType: activeGameType })
          }
        });
        
        // Detailed logging
        
        if (response && response.data) {
          
          if (response.data.length > 0) {
            
            
          }
          setGames(response.data);
          setError(null);
        } else {
          
          setError('Неверный формат данных от сервера');
          setGames([]);
        }
      } catch (err) {
        
        setError('Не удалось загрузить игры. Пожалуйста, попробуйте позже.');
        setGames([]);
      } finally {
        setLoading(false);
      }
    };

    loadGames();
  }, [activeAudience, activeGameType]);

  const gameTypes = [
    {
      id: 'role',
      title: "РОЛЕВЫЕ ИГРЫ",
      description: "Захватывающие приключения с погружением в уникальные миры и истории"
    },
    {
      id: 'quest',
      title: "ИГРЫ - КВЕСТЫ",
      description: "Увлекательные задания и головоломки, требующие смекалки и командной работы"
    },
    {
      id: 'show',
      title: "ШОУ - ИГРЫ",
      description: "Яркие развлекательные программы с активным участием и эмоциональным вовлечением"
    },
    {
      id: 'quiz',
      title: "КВИЗ - ИГРЫ",
      description: "Интеллектуальные викторины с вопросами на разные темы и соревновательным духом"
    },
    {
      id: 'tgame',
      title: "Т-ИГРЫ",
      description: "Специальные форматы игр для развития творческого мышления и нестандартных подходов"
    },
    {
      id: 'dance',
      title: "ТАНЦЕВАЛЬНО - МУЗЫКАЛЬНЫЕ ИГРЫ",
      description: "Активные развлечения под зажигательную музыку с танцевальными элементами"
    }
  ];

  // Изменяем структуру данных для игр, объединяя базовую и премиум версии
  const kidsGames = [
    {
      id: "bunkerkids",
      title: "БУНКЕР",
      ageGroups: "8+ 10+ 13+ 16+",
      description: "Время решить, кто окажется в спасительном бункере!",
      details: "Классическая игра на выживание, где участники решают, кто достоин спасения в условиях глобальной катастрофы.",
      hasPremium: true,
      premiumDescription: "Забудьте, кем вы были «до»... Погрузитесь в атмосферу игры на выживание!",
      type: "role"
    },
    {
      id: "mafiakids",
      title: "МАФИЯ",
      ageGroups: "5+ 8+ 10+ 13+ 16+",
      description: "Классика бесценна! Снимите маски, господа, и будьте внимательней!",
      details: "Увлекательная психологическая игра, где каждый может оказаться не тем, за кого себя выдает.",
      hasPremium: true,
      premiumDescription: "Невероятные сценарии игры в мафию с погружением в жизнь мирных и мафиози!",
      type: "role"
    },
    {
      id: "garagekids",
      title: "ГАРАЖ",
      ageGroups: "9+ 13+ 16+",
      description: "Чего только нет в старом гараже! Выкидывая хлам, доверьтесь интуиции!",
      details: "Увлекательная игра с элементами детектива, где участники исследуют старый гараж в поисках важных улик и предметов.",
      hasPremium: true,
      premiumDescription: "Гараж хранит в себе историю…Погрузитесь в атмосферу, но не уплывайте в эмоциях. Обращайтесь с «хламом» с умом!",
      type: "role"
    },
    {
      id: "spacestation",
      title: "Космическая станция",
      ageGroups: "6+ 9+",
      description: "Остаемся на орбите!",
      details: "Интерактивный квест-приключение о космосе, где участники должны выполнить миссию на орбитальной станции.",
      type: "quest"
    },
    {
      id: "gangsters",
      title: "Гангстеры",
      ageGroups: "7+ 12+ 16+",
      description: "Будь на страже!",
      details: "Захватывающий квест о мафиозных разборках, где участники должны пройти через серию испытаний.",
      type: "quest"
    },
    {
      id: "archeologist",
      title: "Наследие археолога",
      ageGroups: "9+ 13+",
      description: "Остатки прошлого - наследники будущего!",
      details: "Квест-головоломка, посвященная поискам древних артефактов и разгадыванию исторических тайн.",
      type: "quest"
    },
    {
      id: "expedition",
      title: "Последняя экспедиция",
      ageGroups: "11+ 16+",
      description: "Не пугайся! Все будет хорошо!",
      details: "Приключенческий квест для подростков, где команде предстоит пройти через опасные приключения.",
      type: "quest"
    },
    {
      id: "museum",
      title: "Похищение в музее",
      ageGroups: "11+ 16+",
      description: "Какой в этом смысл?",
      details: "Детективный квест, где участники расследуют таинственное исчезновение ценного экспоната.",
      type: "quest"
    },
    {
      id: "candyjoe",
      title: "В погоне за конфетным Джо",
      ageGroups: "12+ 16+",
      description: "Не все так сладко!",
      details: "Захватывающий квест по мотивам сказочных историй с неожиданными поворотами сюжета.",
      type: "quest"
    },
    {
      id: "antarctica",
      title: "Роковая Антарктика",
      ageGroups: "12+ 16+",
      description: "Печальное может быть радостным!",
      details: "Приключенческий квест в условиях экстремального холода, где участникам предстоит выжить в суровых условиях.",
      type: "quest"
    },
    {
      id: "firequest",
      title: "Огневой квест",
      ageGroups: "8+ 10+ 12+",
      description: "Что происходит с лучом?",
      details: "Интерактивный научный квест с экспериментами, связанными со светом и оптикой.",
      type: "quest"
    }
  ];

  const adultGames = [
    {
      id: "bunker",
      title: "БУНКЕР",
      ageGroups: "18+",
      description: "Катастрофа произойдет уже через пару часов! Соберитесь и не прогадайте, кто спасать планету.",
      details: "Психологическая игра на выживание, где участники решают, кому достанется место в спасительном бункере.",
      hasPremium: true,
      premiumDescription: "Иллюзии, креативные мышление и громкий смех с погружением в нереальную реальность спасенных в бункере! Не ошибитесь! Рядом с вами может оказаться психопат…",
      type: "role"
    },
    {
      id: "mafia",
      title: "МАФИЯ",
      ageGroups: "18+",
      description: "Все классически виртуозно! Снимаем маски - проверяем интуицию…",
      details: "Захватывающая психологическая игра для компаний, где игроки пытаются вычислить мафию.",
      hasPremium: true,
      premiumDescription: "Когда классическая игра соединяется с атмосферой невероятных историй!",
      type: "role"
    },
    {
      id: "kingdom",
      title: "КОРОЛЕВСТВО КРИВЫХ ЗЕРКАЛ",
      ageGroups: "18+",
      description: "В кривом зеркале иллюзии искажаются…Кто умеет зрить «корень» - тот победил!",
      details: "Ролевая игра с элементами психологической драмы, где участники погружаются в мир иллюзий.",
      type: "role"
    },
    {
      id: "madman",
      title: "ЗАПИСКИ БЕЗУМЦА",
      ageGroups: "18+",
      description: "Вы слышали? Безумие безумием обезумело! Но есть истина и она - одна.",
      details: "Остросюжетная психологическая игра с элементами детектива и мистики.",
      type: "role"
    },
    {
      id: "westmurder",
      title: "Убийство на Западе",
      ageGroups: "18+",
      description: "Слухи донеслись...",
      details: "Захватывающий детективный квест в стиле Дикого Запада, где участники расследуют таинственное убийство.",
      type: "quest"
    },
    {
      id: "louvre",
      title: "Похищение в Лувре",
      ageGroups: "18+",
      description: "Троянский конь отдыхает...",
      details: "Детективный квест в декорациях знаменитого музея, где участники должны раскрыть дерзкое похищение ценного экспоната.",
      type: "quest"
    },
    {
      id: "teleportation",
      title: "Телепортация",
      ageGroups: "18+",
      description: "Насколько сил хватит...",
      details: "Футуристический квест с элементами научной фантастики, где участники перемещаются между разными реальностями.",
      type: "quest"
    },
    {
      id: "apocalypse",
      title: "Апокалипсис",
      ageGroups: "18+",
      description: "Который по счету?",
      details: "Квест на выживание в постапокалиптическом мире, где участники должны найти способ спастись.",
      type: "quest"
    }
  ];

  // Функция для получения отфильтрованных игр по типу
  const getFilteredGamesByType = (type) => {
    const allGames = activeAudience === 'kids' ? kidsGames : adultGames;
    return allGames.filter(game => type === 'all' || game.type === type);
  };

  // Группируем игры по типам для отображения
  const gamesByType = gameTypes.map(type => ({
    ...type,
    games: getFilteredGamesByType(type.id)
  }));

  // Отфильтрованные игры текущего типа
  const currentTypeGames = getFilteredGamesByType(activeGameType);

  // Вопросы для формы бронирования
  const bookingQuestions = [
    {
      id: 'eventType',
      text: 'Тип мероприятия',
      type: 'radio',
      required: true,
      options: [
        { value: 'birthday', label: 'День рождения' },
        { value: 'corporate', label: 'Корпоратив' },
        { value: 'party', label: 'Вечеринка' },
        { value: 'other', label: 'Другое' }
      ]
    },
    {
      id: 'guestsCount',
      text: 'Количество гостей',
      type: 'number',
      required: true,
      min: 4,
      max: 30,
      placeholder: 'Укажите количество гостей'
    },
    {
      id: 'eventDate',
      text: 'Предпочтительная дата',
      type: 'date',
      required: true
    },
    {
      id: 'contactName',
      text: 'Ваше имя',
      type: 'text',
      required: true,
      placeholder: 'Как к вам обращаться'
    },
    {
      id: 'email',
      text: 'Ваш Email',
      type: 'email',
      required: true,
      placeholder: 'example@email.com'
    },
    {
      id: 'phone',
      text: 'Номер телефона',
      type: 'tel',
      required: true
    },
    {
      id: 'contactMethod',
      text: 'Предпочтительный способ связи',
      type: 'radio',
      required: true,
      options: [
        { value: 'phone', label: 'Телефон' },
        { value: 'whatsapp', label: 'WhatsApp' },
        { value: 'telegram', label: 'Telegram' }
      ]
    },
    {
      id: 'comments',
      text: 'Дополнительные пожелания',
      type: 'textarea',
      required: false,
      placeholder: 'Напишите, если у вас есть особые пожелания или вопросы. Выбранная игра уже учтена.'
    }
  ];

  const handleBookingClick = (game) => {
    setSelectedGame(game);
    
    // Pre-populate the comments field with the game name if a game is selected
    if (game && game.title) {
      setAnswers({
        comments: `Хочу игру ${game.title}`
      });
    } else {
      setAnswers({});
    }
    
    setIsBookingFormOpen(true);
  };

  // Function to handle image load for blur-up
  const handleImageLoad = (index) => {
    setLoadedImages(prev => ({ ...prev, [index]: true }));
  };

  return (
    <div className="page-container gaming-parties-page">
      <SiteHeader />
      <main className="main-content">
        <div className="program-details">
          <div className="container">
            <div className="program-header">
              <Link to="/" className="back-button">
                ← НАЗАД
              </Link>
            </div>

            <div className="program-content">
              <div className="program-image-container">
                <img 
                  src={currentImage || pageData.mainImage} 
                  alt={pageData.title} 
                  className="program-main-image"
                  loading="lazy"
                  style={{
                    filter: loadedImages['main'] ? 'none' : 'blur(16px)',
                    transition: 'filter 0.5s ease'
                  }}
                  onLoad={() => handleImageLoad('main')}
                />
              </div>
              
              <div className="program-info">
                <h1 className="program-title">{pageData.title}</h1>
                
                <div className="program-action">
                  <Button 
                    variant="primary" 
                    size="lg"
                    onClick={() => handleBookingClick(null)}
                  >
                    УЗНАТЬ ПОДРОБНЕЕ 
                  </Button>
                </div>
                
                <div className="program-description">
                  {pageData.description.map((paragraph, index) => (
                    <p key={index}>{paragraph}</p>
                  ))}
                </div>
              </div>
            </div>

            {pageData.galleryImages.length > 0 && (
              <div className="program-gallery">
                {pageData.galleryImages.map((image, index) => (
                  <div 
                    key={index} 
                    className={`gallery-thumbnail ${currentImage === image ? 'active' : ''}`}
                    onClick={() => handleThumbnailClick(image)}
                    style={{ background: '#222', position: 'relative' }}
                  >
                    <img 
                      src={image} 
                      alt={`${pageData.title} - фото ${index + 1}`} 
                      loading="lazy"
                      style={{
                        filter: loadedImages[index] ? 'none' : 'blur(16px)',
                        transition: 'filter 0.5s ease',
                        background: '#222'
                      }}
                      onLoad={() => handleImageLoad(index)}
                    />
                  </div>
                ))}
              </div>
            )}

            {/* Карточки с типами игр */}
            <section className="game-types-section">
              <h2 className="section-title">Наши игровые форматы</h2>
              <div className="game-cards-grid">
                {gameTypes.map((game, index) => (
                  <div key={index} className="game-card">
                    <h3 className="game-card-title">{game.title}</h3>
                    <p className="game-card-description">{game.description}</p>
                  </div>
                ))}
              </div>
            </section>

            {/* Заголовок для фильтров */}
            <div className="filters-header">
              <h2 className="section-title filter-title">Показали вам наши топовые игры</h2>
              <h3 className="third-title filter-title"> Чтобы посмотреть все игры, используйте фильтры</h3>

              <button className={`filters-toggle-button ${filtersVisible ? 'active' : ''}`} onClick={toggleFilters}>
                <span className="filters-toggle-text">{filtersVisible ? 'Скрыть фильтры' : 'Показать фильтры'}</span>
                <span className={`filters-toggle-icon ${filtersVisible ? 'active' : ''}`}>▼</span>
              </button>
            </div>

            {/* Фильтры с анимацией */}
            <div className={`filters-container ${filtersVisible ? 'visible' : 'hidden'}`}>
              {/* Переключатель аудитории */}
              <div className="audience-switcher">
                <button 
                  className={`audience-switch-button ${activeAudience === 'kids' ? 'active' : ''}`}
                  onClick={() => setActiveAudience('kids')}
                >
                  <span className="audience-text">ДЛЯ ДЕТЕЙ</span>
                  <span className={`audience-indicator ${activeAudience === 'kids' ? 'active' : ''}`}></span>
                </button>
                <button 
                  className={`audience-switch-button ${activeAudience === 'adults' ? 'active' : ''}`}
                  onClick={() => setActiveAudience('adults')}
                >
                  <span className="audience-text">ДЛЯ ВЗРОСЛЫХ</span>
                  <span className={`audience-indicator ${activeAudience === 'adults' ? 'active' : ''}`}></span>
                </button>
              </div>

              {/* Переключатель типов игр */}
              <div className="game-type-switcher">
                {gameTypes.map((type) => (
                  <button 
                    key={type.id}
                    className={`game-type-switch-button ${activeGameType === type.id ? 'active' : ''}`}
                    onClick={() => setActiveGameType(type.id)}
                  >
                    <span className="game-type-text">{type.title}</span>
                    <span className={`game-type-indicator ${activeGameType === type.id ? 'active' : ''}`}></span>
                  </button>
                ))}
              </div>
            </div>

            {/* Новый стиль отображения игр в горизонтальных секциях */}
            <section className="games-list-section">
              {loading ? (
                <div className="loading">Загрузка игр...</div>
              ) : error ? (
                <div className="error">{error}</div>
              ) : games.length > 0 ? (
                games.map((game) => {
                  // Debug logging for each game
                  
                  
                  // Direct access to game properties since they're not nested in attributes
                  const {
                    id,
                    title,
                    ageGroups = [],
                    description,
                    hasPremiumVersion,
                    premiumDescription,
                    gameType,
                    audienceType
                  } = game;

                  // Debug logging for extracted values
                  

                  return (
                    <div key={id} className="game-section">
                    <div className="game-header">
                        <h3 className="game-title">{title || 'Название отсутствует'}</h3>
                        <div className="game-age-groups">
                          {Array.isArray(ageGroups) ? ageGroups.join(' ') : (ageGroups || 'Возраст не указан')}
                        </div>
                    </div>
                    
                    <div className="game-content">
                      <div className="game-description">
                          <p className="game-tagline">{description || 'Описание отсутствует'}</p>
                        
                          {hasPremiumVersion && (
                          <div className="premium-version">
                            <h4>Премиум версия</h4>
                              <p>{premiumDescription || 'Описание премиум версии отсутствует'}</p>
                          </div>
                        )}
                      </div>
                      
                      <div className="game-action">
                          <Button 
                            variant="secondary"
                            onClick={() => handleBookingClick(game)}
                          >
                          ЗАБРОНИРОВАТЬ
                        </Button>
                      </div>
                    </div>
                  </div>
                  );
                })
              ) : (
                <p className="no-games-message">Игры этого типа пока недоступны для выбранной аудитории</p>
              )}
            </section>
          </div>
        </div>
      </main>
      <SiteFooter />

      {/* Форма бронирования */}
      <FeedbackForm
        isOpen={isBookingFormOpen}
        onClose={() => setIsBookingFormOpen(false)}
        title={selectedGame ? `Бронирование игры "${selectedGame.title}"` : "Бронирование игры"}
        description="Заполните форму, и мы свяжемся с вами для подтверждения бронирования"
        questions={bookingQuestions}
        answers={answers}
      />
    </div>
  );
};

export default GamingPartiesPage; 