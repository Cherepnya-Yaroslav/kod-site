import React, { useState, useEffect } from 'react';
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import PhotoGallery from "../components/PhotoGallery"
import EventCalendar from "../components/EventCalendar"
import PageHeaderSection from '../components/PageHeaderSection';
import FAQ from '../components/FAQ';
import { fetchData, getMediaUrl } from '../api/strapi'
// Обновляем импорт CSS
import "../styles/pages/AdultGamesPage.css"

// Константы

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

  const { 
    Title, 
    Description, 
    Gallery = [], 
    CoverImage,
    pageHeader = {},
    faq = []
  } = pageData || {};


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
            <h1>{Title || "Игры для взрослых"}</h1>
            <p>{Description || "Увлекательные игры для взрослой аудитории"}</p>
          </div>
        </section>

        {/* PageHeaderSection */}
        <PageHeaderSection 
          title={pageHeader.title}
          description={pageHeader.description}
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
            photos={Gallery.map(photo => getMediaUrl(photo))} 
            title="Фотогалерея игровых вечеров" 
            description="Атмосфера наших игровых встреч"
          />
        )}

        {/* FAQ Section */}
        <FAQ questions={faq} />
      </main>
      <SiteFooter />
    </div>
  )
}

export default AdultGamesPage

