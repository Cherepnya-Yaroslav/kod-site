import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import { Tabs, TabsList, TabsTrigger, TabsContent } from "../components/Tabs"
import { fetchData, getMediaUrl } from '../api/strapi'
import "../styles/pages/OpenPartiesPage.css"
import EventCalendar from '../components/EventCalendar'
import PhotoGallery from "../components/PhotoGallery"
import PageHeaderSection from "../components/PageHeaderSection"
import FAQ from "../components/FAQ"

// Константы
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL
const months = ["Июнь 2025", "Июль 2025", "Август 2025"];

const OpenPartiesPage = () => {
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
        const response = await fetchData('open-parties-page', { 
          populate: {
            coverImage: true,
            gallery: true,
            pageHeader: true,
            faq: true
          }
        });
        
        
        
        if (response?.data) {
          setPageData(response.data);
        } else {
          throw new Error('Неверный формат данных');
        }
      } catch (err) {
        
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
    title, 
    description,
    gallery,
    coverImage,
    pageHeader,
    faq
  } = pageData || {};

  // Обработка галереи
  const galleryImages = gallery || [];

  // Детальное описание для PageHeaderSection
  const pageHeaderDescription = `Мы регулярно организуем не только частные мероприятия но и открытые вечеринки для детей, подростков и взрослых! Вдохновляясь фильмами, музыкой, книгами, мы хотим делиться эмоциями со всеми. На территории пространства KOD регулярно проходят кайфовые развлекательно - смысловые вечеринки в виде кинопросмотров, игр, фотосессий и других форматов! Ближайшие мероприятия вы можете посмотреть в нашем календаре! `;

  // FAQ из Strapi
  let faqQuestions = [];
  if (faq && Array.isArray(faq)) {
    faqQuestions = faq.map(item => ({
      question: item.question,
      answer: item.answer
    }));
  } else if (faq && faq.data && Array.isArray(faq.data)) {
    faqQuestions = faq.data.map(item => ({
      question: item.attributes?.question || item.question,
      answer: item.attributes?.answer || item.answer
    }));
  }

  return (
    <div className="page-container parties-page">
      <SiteHeader />
      <main className="main-content">
        <section className="open-parties-hero">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-10.png"
              alt=""
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="hero-content">
            <h1>{title || "Открытые игры"}</h1>
            <p>{description || "Присоединяйтесь к нашим открытым играм"}</p>
          </div>
        </section>

        {/* PageHeaderSection */}
        <PageHeaderSection 
          title={pageHeader?.title}
          description={pageHeader?.description}
        />

        {/* Schedule Section */}
        <section className="schedule-section">
          <div className="container">
            <div className="schedule-header">
              <h2 className="section-title">Расписание мероприятий</h2>
              <p className="section-description">
                Выберите интересующий вас месяц и ознакомьтесь с предстоящими событиями
              </p>
            </div>
            <EventCalendar eventType="openParties" />
          </div>
        </section>

        {/* Photo Gallery */}
        {galleryImages.length > 0 && (
          <PhotoGallery 
            photos={galleryImages.map(image => getMediaUrl(image))} 
            title="Фотогалерея прошедших мероприятий" 
            description="Атмосфера наших вечеринок в фотографиях"
          />
        )}

        {/* FAQ Section */}
        <FAQ questions={faqQuestions} />
      </main>
      <SiteFooter />
    </div>
  );
};

export default OpenPartiesPage;

