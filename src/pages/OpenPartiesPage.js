import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import { Tabs, TabsList, TabsTrigger, TabsContent } from "../components/Tabs"
import { fetchData } from '../api/strapi'
import "../styles/pages/OpenPartiesPage.css"
import EventCalendar from '../components/EventCalendar'
import PhotoGallery from "../components/PhotoGallery"
import PageHeaderSection from "../components/PageHeaderSection"
import FAQ from "../components/FAQ"

// Константы
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';
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
        const response = await fetchData('open-parties-page', { populate: '*' });
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

  const { title, description, gallery = [], coverImage } = pageData;
  const coverImageUrl = coverImage?.url ? `${STRAPI_URL}${coverImage.url}` : '';

  // Детальное описание для PageHeaderSection
  const pageHeaderDescription = `Мы регулярно организуем не только частные мероприятия но и открытые вечеринки для детей, подростков и взрослых! Вдохновляясь фильмами, музыкой, книгами, мы хотим делиться эмоциями со всеми. На территории пространства KOD регулярно проходят кайфовые развлекательно - смысловые вечеринки в виде кинопросмотров, игр, фотосессий и других форматов! Ближайшие мероприятия вы можете посмотреть в нашем календаре! `;

  // FAQ questions for the page
  const faqQuestions = [
    {
      question: "Нужна ли предварительная регистрация на открытые мероприятия?",
      answer: "Да, для участия в открытых мероприятиях необходима предварительная регистрация и оплата. Количество мест ограничено, поэтому рекомендуем бронировать заранее."
    },
    {
      question: "Можно ли прийти на мероприятие одному?",
      answer: "Конечно! Наши открытые мероприятия отлично подходят для тех, кто хочет познакомиться с новыми людьми. Ведущие помогут вам влиться в компанию."
    },
    {
      question: "Есть ли возрастные ограничения?",
      answer: "Для каждого мероприятия установлены свои возрастные ограничения. Эта информация указана в описании конкретного события."
    }
  ];

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
          title="Открытые вечеринки"
          description={pageHeaderDescription}
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
        {gallery.length > 0 && (
          <PhotoGallery 
            photos={gallery} 
            title="Фотогалерея прошедших мероприятий" 
            description="Атмосфера наших вечеринок в фотографиях"
          />
        )}

        {/* FAQ Section */}
        <FAQ 
          title="Часто задаваемые вопросы" 
          questions={faqQuestions} 
        />
      </main>
      <SiteFooter />
    </div>
  );
};

export default OpenPartiesPage;

