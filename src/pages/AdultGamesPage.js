import React, { useState, useEffect } from 'react';
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import PhotoGallery from "../components/PhotoGallery"
import EventCalendar from "../components/EventCalendar"
import PageHeaderSection from '../components/PageHeaderSection';
import FAQ from '../components/FAQ';
import { fetchData } from '../api/strapi'
// Обновляем импорт CSS
import "../styles/pages/AdultGamesPage.css"

// Константы
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';

// Create FAQ Item component for collapsible functionality
const FAQItem = ({ question, answer }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [renderContent, setRenderContent] = useState(false);

  const toggleAnswer = () => {
    if (!isOpen) {
      setRenderContent(true);
      setTimeout(() => setIsOpen(true), 10);
    } else {
      setIsOpen(false);
      // Remove content after animation completes to prevent scrollbars
      setTimeout(() => setRenderContent(false), 500);
    }
  };

  return (
    <Card className="faq-card">
      <CardHeader onClick={toggleAnswer}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', width: '100%' }}>
          <CardTitle className="faq-question">{question}</CardTitle>
          <button 
            className="faq-toggle-btn" 
            onClick={(e) => {
              e.stopPropagation();
              toggleAnswer();
            }}
            aria-label={isOpen ? "Скрыть ответ" : "Показать ответ"}
          >
            {isOpen ? '−' : '+'}
          </button>
        </div>
      </CardHeader>
      <CardContent 
        className={`faq-answer-container ${isOpen ? 'faq-answer-open' : 'faq-answer-closed'}`}
      >
        {renderContent && <p className="faq-answer">{answer}</p>}
      </CardContent>
    </Card>
  );
};

const AdultGamesPage = () => {
  // Состояния для данных страницы
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [bgLoaded, setBgLoaded] = useState(false);

  // Загрузка данных страницы
  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        const response = await fetchData('adult-games-page', { populate: '*' });
        console.log('Page data:', response);
        setPageData(response.data);
      } catch (err) {
        console.error('Error loading page data:', err);
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    loadPageData();
  }, []);

  if (loading) {
    return (
      <>
        <SiteHeader />
        <div className="loading">Загрузка...</div>
      </>
    );
  }

  if (error) {
    return (
      <>
        <SiteHeader />
        <div className="error">Ошибка: {error}</div>
      </>
    );
  }

  if (!pageData) {
    return (
      <>
        <SiteHeader />
        <div className="error">Данные не найдены</div>
      </>
    );
  }

  const { Title, Description, Gallery = [], CoverImage } = pageData;
  const coverImageUrl = CoverImage?.url ? `${STRAPI_URL}${CoverImage.url}` : '';

  // Пример данных для игр
  const games = [
    {
      id: 1,
      title: "Мафия: Классическая игра",
      duration: "2 часа",
      capacity: "8-16 человек",
      date: "15 июня 2025",
      time: "19:00",
      description:
        "Классическая психологическая игра с профессиональным ведущим. Сможете ли вы вычислить мафию или успешно скрыть свою роль?",
      image: "/placeholder.svg?height=400&width=600&text=Мафия",
    },
    {
      id: 2,
      title: "Квиз 'Что? Где? Когда?'",
      duration: "2.5 часа",
      capacity: "до 30 человек",
      date: "22 июня 2025",
      time: "20:00",
      description:
        "Интеллектуальная игра в формате популярной телепередачи. Соберите команду и проверьте свои знания в разных областях.",
      image: "/placeholder.svg?height=400&width=600&text=Квиз",
    },
    {
      id: 3,
      title: "Настольные игры: Стратегии",
      duration: "3 часа",
      capacity: "до 20 человек",
      date: "29 июня 2025",
      time: "19:30",
      description:
        "Вечер стратегических настольных игр. В программе: Каркассон, Колонизаторы, Билет на поезд и другие популярные игры.",
      image: "/placeholder.svg?height=400&width=600&text=Настольные игры",
    },
    {
      id: 4,
      title: "Ролевая игра D&D",
      duration: "4 часа",
      capacity: "4-6 человек",
      date: "6 июля 2025",
      time: "18:00",
      description:
        "Погружение в мир Dungeons & Dragons с опытным мастером. Подходит как для новичков, так и для опытных игроков.",
      image: "/placeholder.svg?height=400&width=600&text=D&D",
    },
    {
      id: 5,
      title: "Покерный турнир",
      duration: "3 часа",
      capacity: "до 16 человек",
      date: "13 июля 2025",
      time: "20:00",
      description:
        "Турнир по покеру с символическими ставками. Проверьте свои навыки блефа и стратегического мышления.",
      image: "/placeholder.svg?height=400&width=600&text=Покер",
    },
    {
      id: 6,
      title: "Игры-детективы",
      duration: "2.5 часа",
      capacity: "8-12 человек",
      date: "20 июля 2025",
      time: "19:00",
      description:
        "Расследование запутанного дела в формате иммерсивной игры. Участники становятся детективами и ищут улики, опрашивают свидетелей.",
      image: "/placeholder.svg?height=400&width=600&text=Детектив",
    },
  ]

  const categories = ["Все игры", "Стратегии", "Психологические игры"]

  // Prepare description for the PageHeaderSection
  const pageHeaderDescription = `Управлять эмоциями, мотивировать самого себя, распознавать чувства других людей, поддерживать здоровые взаимоотношения  - это все про Эмоциональный интеллект  Как будучи взрослым апгрейдить свои навыки и стать успешным в бизнесе, работе и личной жизни? Можно легко, играя и программируя жизненные ситуации! В нашем пространстве проводятся развлекательные и одновременно трансформационные игры! Играя вы касаетесь своего подсознательного и сталкиваетесь с реальностью! Задаете вопросы и находите ответы, разворачивая вектор своего мышления! Эмоциональный интеллект теперь работает на вас! Собирайтесь с друзьями или приходите в одиночку! Здесь вы познакомитесь с интересными людьми!`;

  // FAQ data
  const faqItems = [
    {
      question: "Нужен ли опыт в настольных играх?",
      answer: "Нет, опыт не требуется. Наши ведущие подробно объясняют правила каждой игры и помогают новичкам освоиться."
    },
    {
      question: "Можно ли прийти одному?",
      answer: "Конечно! Многие участники приходят поодиночке и быстро находят компанию для игры. Наши ведущие помогут влиться в коллектив."
    },
    {
      question: "Какие игры у вас есть?",
      answer: "У нас большая коллекция игр разных жанров: от классической Мафии и Монополии до современных стратегий и квизов. Каждую неделю проводим разные игры."
    }
  ];

  return (
    
    <div className="page-container adult-games-page">
      <SiteHeader />
      <main className="main-content">
        <section className="adult-games-hero">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-19.png"
              alt=""
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="hero-content">
            <h1>{pageData?.Title || "Игры для взрослых"}</h1>
            <p>{pageData?.Description || "Увлекательные игры для взрослой аудитории"}</p>
          </div>
        </section>

        {/* Use the new PageHeaderSection component */}
        <PageHeaderSection 
          title="Взрослые игры" 
          description={pageHeaderDescription} 
        />

        {/* Schedule Section */}
        <section className="schedule-section">
          <div className="container">
            <div className="schedule-header">
              <h2 className="section-title">Расписание игр</h2>
              <p className="section-description">
                Выберите удобную дату и присоединяйтесь к нашим игровым вечерам
              </p>
            </div>
            <EventCalendar eventType="adults" />
          </div>
        </section>

        {/* Photo Gallery */}
        {Gallery && Gallery.length > 0 && (
          <PhotoGallery 
            photos={Gallery} 
            title="Фотогалерея игровых вечеров" 
            description="Атмосфера наших игровых встреч"
            collageImages={{
              // image1: "/collage-2-1.PNG",
              // image2: "/collage-2-2.PNG",
              // image3: "/collage-2-3.PNG",
              alt1: "Игровой вечер 1",
              alt2: "Игровой вечер 2",
              alt3: "Игровой вечер 3"
            }}
          />
        )}

        {/* FAQ Section */}
        <FAQ questions={faqItems} />
      </main>
      <SiteFooter />
    </div>
  )
}

export default AdultGamesPage

