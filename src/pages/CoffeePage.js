import React, { useState, useEffect } from 'react';
import SiteHeader from '../components/SiteHeader';
import SiteFooter from '../components/SiteFooter';
import Button from '../components/Button';
import PageHeaderSection from '../components/PageHeaderSection';
import FeedbackForm from "../components/FeedbackForm.jsx"
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/pages/CoffeePage.css';

// Определим URL Strapi API
const STRAPI_API_URL = process.env.REACT_APP_STRAPI_URL;

// Проверка доступности сервера Strapi
// const checkStrapiAvailable = async () => {
//   try {
//     const response = await fetch(`${STRAPI_API_URL}/api/_health`);
//     return response.ok;
//   } catch (error) {
    
//     return false;
//   }
// };

const CoffeePage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedMenu, setSelectedMenu] = useState(null);
  const [showMenuViewer, setShowMenuViewer] = useState(false);
  const [strapiAvailable, setStrapiAvailable] = useState(false);
  const [isFormOpen, setIsFormOpen] = useState(false);
  const [formAnswers, setFormAnswers] = useState({});

  // Вопросы для формы заказа кофе (скопировано из DancePage.js)
  const coffeeFormQuestions = [
    {
      id: 'coffeeOrders',
      text: 'Напишите какие напитки вы бы хотели:',
      type: 'custom',
      required: true,
      customItems: [
        { id: 'cappuccino', label: 'Капучино', type: 'number', placeholder: 'шт' },
        { id: 'latte', label: 'Латте', type: 'number', placeholder: 'шт' },
        { id: 'americano', label: 'Американо', type: 'number', placeholder: 'шт' },
        { id: 'flatWhite', label: 'Флэт Уайт', type: 'number', placeholder: 'шт' },
        { id: 'espresso', label: 'Эспрессо', type: 'number', placeholder: 'шт' },
        { id: 'iceCoffee', label: 'Айс кофе', type: 'number', placeholder: 'шт' },
        { id: 'creamyCappuccino', label: 'Сливочный капучино', type: 'number', placeholder: 'шт' },
        { id: 'custom1', label: 'Другой напиток', type: 'text', placeholder: 'Название и количество' },
        { id: 'custom2', label: 'Другой напиток', type: 'text', placeholder: 'Название и количество' },
        { id: 'custom3', label: 'Другой напиток', type: 'text', placeholder: 'Название и количество' }
      ]
    },
    {
      id: 'volume',
      text: 'Какой объем:',
      type: 'radio',
      required: true,
      options: [
        { value: '200ml', label: '200 мл' },
        { value: '300ml', label: '300 мл' },
        { value: '400ml', label: '400 мл' }
      ]
    },
    {
      id: 'milk',
      text: 'На каком молоке?',
      type: 'radio',
      required: true,
      options: [
        { value: 'classic', label: 'Классическое' },
        { value: 'coconut', label: 'Кокосовое' },
        { value: 'banana', label: 'Банановое' },
        { value: 'almond', label: 'Миндальное' },
        { value: 'other', label: 'Другое (укажите в комментарии)' }
      ]
    },
    {
      id: 'date',
      text: 'На какую дату вы бы хотели сделать заказ?',
      type: 'date',
      required: true
    },
    {
      id: 'time',
      text: 'На какое время вы бы хотели сделать заказ?',
      type: 'text',
      required: true,
      placeholder: 'Например, 14:00'
    },
    {
      id: 'wishes',
      text: 'Напишите ваши пожелания в свободной форме',
      type: 'textarea',
      required: false,
      placeholder: 'Ваши пожелания'
    },
    {
      id: 'name',
      text: 'Как вас зовут?',
      type: 'text',
      required: true,
      placeholder: 'Введите ваше имя'
    },
    {
      id: 'phone',
      text: 'Ваш номер телефона',
      type: 'tel',
      required: true,
      placeholder: '+7 (___) ___-__-__'
    }
  ];

  useEffect(() => {
    const init = async () => {
      // // Проверяем доступность Strapi
      // const isAvailable = await checkStrapiAvailable();
      // setStrapiAvailable(isAvailable);
      
      
      loadPageData();
    };
    
    init();
  }, []);
  
  const loadPageData = async () => {
    try {
      setLoading(true);
      // Запрос данных страницы из Strapi
      const response = await fetchData('coffee-page', { populate: '*' });
      
      setPageData(response.data);
    } catch (err) {
      
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  // Handle ESC key to close menu viewer
  useEffect(() => {
    const handleEscKey = (event) => {
      if (event.key === 'Escape' && showMenuViewer) {
        setShowMenuViewer(false);
      }
    };

    window.addEventListener('keydown', handleEscKey);
    
    return () => {
      window.removeEventListener('keydown', handleEscKey);
    };
  }, [showMenuViewer]);

  // Fallback content in case API fails
  const fallbackContent = {
    heroTitle: "Кофе в K.O.D.",
    heroSubtitle: "Искусство вкуса и аромата",
    sectionTitle: "Наша кофейня",
    description: "Искусство чувствовать вкус\n\nС раннего утра и до позднего вечера наша команда и гости поддерживают свое тело/разум заряженным и креативным! И все благодаря вкусным напиткам из классического и неклассического кофейного меню. Мы готовим кофейные напитки на высококлассном зерне от Питерской компании - обжарщика «Мануфактура кофе».\n\nЛюбовь к кофе проявилась в нашем пространстве еще в 2020 году, и с тех пор мы делимся ей со всеми гостями нашего арт-пространства!\n\nОбратите внимание, что любое мероприятие в K.O.D. может сопровождаться напитками из меню. Вы можете ознакомиться с ним заранее и сделать предварительный заказ через сайт.",
    galleryTitle: "Наш кофе",
    galleryImages: [
      '/coffee/coffee-1.jpg',
      '/coffee/coffee-2.jpg',
      '/coffee/coffee-3.jpg',
      '/coffee/coffee-4.jpg',
      '/coffee/coffee-5.jpg',
      '/coffee/coffee-6.jpg',
    ],
    classicMenuFile: {
      url: '/Меню_Классическое.pdf',
    },
    seasonalMenuFile: [{
      url: '/Меню_Сезонное-2.pdf',
    }]
  };

  // Use pageData from API or fallback if not available
  const content = pageData || fallbackContent;

  // Helper function to get full URL for media files
  const getFullMediaUrl = (media) => {
    if (!media) return '';
    
    // Если это строка, используем как есть
    if (typeof media === 'string') return media;
    
    // Используем getMediaUrl из strapi.js
    return getMediaUrl(media) || '';
  };

  // Parse gallery images from Strapi response
  let galleryImages = [];
  try {
    
    
    if (content.galleryImages) {
      if (Array.isArray(content.galleryImages)) {
        galleryImages = content.galleryImages.map(img => {
          const url = getFullMediaUrl(img);
          
          return url;
        });
      } else {
        const url = getFullMediaUrl(content.galleryImages);
        
        galleryImages = [url];
      }
    } else {
      
      galleryImages = fallbackContent.galleryImages;
    }
    
    
  } catch (err) {
    
    galleryImages = fallbackContent.galleryImages;
  }

  // Get menu PDF files
  let classicMenuPDF = fallbackContent.classicMenuFile.url;
  try {
    
    if (content.classicMenuFile) {
      classicMenuPDF = getFullMediaUrl(content.classicMenuFile);
      
    }
  } catch (err) {
    
  }

  let seasonalMenuPDF = fallbackContent.seasonalMenuFile[0].url;
  try {
    
    if (content.seasonalMenuFile && content.seasonalMenuFile.length > 0) {
      seasonalMenuPDF = getFullMediaUrl(content.seasonalMenuFile[0]);
      
    }
  } catch (err) {
    
  }

  const handleViewMenu = (menuType) => {
    if (menuType === 'classic') {
      setSelectedMenu({
        title: 'Классическое меню',
        pdf: classicMenuPDF
      });
    } else {
      setSelectedMenu({
        title: 'Сезонное меню',
        pdf: seasonalMenuPDF
      });
    }
    
    // Открываем меню в новом окне вместо iframe
    window.open(menuType === 'classic' ? classicMenuPDF : seasonalMenuPDF, '_blank');
    
    // Scroll to the top of the page to ensure the menu is visible
    window.scrollTo({ top: 0, behavior: 'smooth' });
    
    // Не показываем модальное окно, так как открыли в новой вкладке
    // setShowMenuViewer(true);
    // document.body.style.overflow = 'hidden';
  };

  const handleCloseMenu = () => {
    setShowMenuViewer(false);
    document.body.style.overflow = '';
  };

  if (loading) {
    return (
      <div className="page-container coffee-page">
        <SiteHeader />
        <main className="main-content loading-state">
          <div className="container">
            <p className="loading-message">Загрузка...</p>
          </div>
        </main>
        <SiteFooter />
      </div>
    );
  }

  return (
    <div className="page-container coffee-page">
      <SiteHeader />
      {/* Модальное окно формы заказа кофе */}
      {isFormOpen && (
        <FeedbackForm
          isOpen={isFormOpen}
          onClose={() => setIsFormOpen(false)}
          questions={coffeeFormQuestions}
          title="Заказ кофе"
          description="Заполните форму для заказа кофе на мероприятие или для себя"
          formType="coffee-order"
          answers={formAnswers}
        />
      )}
      <main className="main-content">
        {/* Hero Section with Collage Background */}
        <section className="coffee-hero-section">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-coffee.png"
              alt={content.heroTitle}
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="hero-content">
            <h1 className="hero-title">{content.heroTitle}</h1>
            <p className="hero-description">{content.heroSubtitle}</p>
          </div>
        </section>

        {/* Description Section */}
        <PageHeaderSection 
          title={content.sectionTitle}
          description={content.description}
        />

        {/* Gallery Section */}
        <section className="coffee-gallery-section">
          <div className="container">
            <h2 className="section-title">{content.galleryTitle}</h2>
            <div className="coffee-gallery-grid">
              {galleryImages.map((image, index) => (
                <div key={index} className="gallery-item">
                  <img src={image} alt={`Кофе в K.O.D. - ${index + 1}`} />
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Menu Section */}
        <section className="coffee-menu-section">
          <div className="container">
            <h2 className="section-title">Меню</h2>
            <p className="section-description">
              Ознакомьтесь с нашим ассортиментом кофейных напитков и десертов
            </p>
            
            <div className="menu-buttons-container">
              <div className="menu-item">
                <h3 className="menu-title">Классическое меню</h3>
                <p className="menu-description">Традиционные напитки, которые подарят вам знакомый и любимый вкус</p>
                <Button 
                  variant="primary" 
                  size="lg"
                  onClick={() => handleViewMenu('classic')}
                >
                  ПОСМОТРЕТЬ МЕНЮ
                </Button>
              </div>
              
              <div className="menu-item">
                <h3 className="menu-title">Сезонное меню</h3>
                <p className="menu-description">Специальные предложения с уникальными вкусами, доступные ограниченное время</p>
                <Button 
                  variant="primary" 
                  size="lg"
                  onClick={() => handleViewMenu('seasonal')}
                >
                  ПОСМОТРЕТЬ МЕНЮ
                </Button>
              </div>
            </div>
            
            {/* Альтернативное отображение для локальных PDF-файлов
            <div className="local-pdfs-section">
              <p className="disclaimer">Если страница меню не открывается, вы можете скачать PDF-файлы напрямую:</p>
              <div className="pdf-links">
                <a href="/Меню_Классическое.pdf" download className="pdf-download-link">
                  Скачать классическое меню
                </a>
                <a href="/Меню_Сезонное-2.pdf" download className="pdf-download-link">
                  Скачать сезонное меню
                </a>
              </div>
            </div> */}
          </div>
        </section>
        
        {/* Секция заказа кофе */}
        <section className="coffee-order-section">
          <div className="container">
            <div className="coffee-order-header">
              <h2 className="section-title">Закажите кофе</h2>
              <p className="section-description">Если вы уже знаете дату своего мероприятия, то можете со скидкой заказать кофе сейчас</p>
            </div>
            <div className="coffee-order-content">
              <Button
                className="coffee-order-button"
                onClick={() => setIsFormOpen(true)}
              >
                Заказать кофе
              </Button>
            </div>
          </div>
        </section>
      </main>
      <SiteFooter />

      {/* Больше не используем Menu Viewer Modal из-за ограничений CSP */}
      {false && showMenuViewer && selectedMenu && (
        <div className="menu-viewer-overlay" onClick={handleCloseMenu}>
          <div className="menu-viewer-modal" onClick={(e) => e.stopPropagation()}>
            <div className="menu-viewer-header">
              <h3>{selectedMenu.title}</h3>
              <button className="menu-close-button" onClick={handleCloseMenu}>
                ×
              </button>
            </div>
            <div className="menu-viewer-content">
              <iframe 
                src={`${selectedMenu.pdf}#toolbar=0`} 
                title={selectedMenu.title}
                width="100%" 
                height="100%" 
              />
            </div>
            <div className="menu-viewer-footer">
              <Button 
                variant="secondary" 
                size="sm"
                onClick={() => window.open(selectedMenu.pdf, '_blank')}
              >
                Открыть в новом окне
              </Button>
              <Button 
                variant="primary" 
                size="sm"
                onClick={handleCloseMenu}
              >
                Закрыть
              </Button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default CoffeePage; 