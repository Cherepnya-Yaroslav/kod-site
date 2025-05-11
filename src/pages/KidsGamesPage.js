import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import EventCalendar from "../components/EventCalendar"
import PhotoGallery from "../components/PhotoGallery"
import PageHeaderSection from "../components/PageHeaderSection"
import { fetchData } from '../api/strapi'
// Обновляем импорт CSS
import "../styles/pages/KidsGamesPage.css"

// Константы
const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';

const KidsGamesPage = () => {
  // Состояния для данных страницы
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [currentSlide, setCurrentSlide] = useState(0);
  const [bgLoaded, setBgLoaded] = useState(false);

  // Загрузка данных страницы
  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        const response = await fetchData('kids-games-page', { populate: '*' });
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

  // Автоматическое переключение слайдов
  useEffect(() => {
    if (!pageData?.Gallery?.length) return;

    const timer = setInterval(() => {
      setCurrentSlide(prev => (prev + 1) % pageData.Gallery.length);
    }, 3000);

    return () => clearInterval(timer);
  }, [pageData?.Gallery?.length]);

  // Функции для переключения слайдов
  const nextSlide = () => {
    if (!pageData?.Gallery?.length) return;
    setCurrentSlide((prev) => (prev + 1) % pageData.Gallery.length);
  };

  const prevSlide = () => {
    if (!pageData?.Gallery?.length) return;
    setCurrentSlide((prev) => (prev - 1 + pageData.Gallery.length) % pageData.Gallery.length);
  };

  if (loading) {
    return (
      <>
        <SiteHeader />
        <div className="loading"></div>
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
      title: "Юные детективы",
      duration: "1.5 часа",
      ageRange: "7-12 лет",
      date: "12 июня 2025",
      time: "16:00",
      description:
        "Детский квест с логическими задачами и играми на внимательность. Участники превращаются в детективов и расследуют увлекательное дело.",
      image: "/placeholder.svg?height=400&width=600&text=Детективы",
    },
    {
      id: 2,
      title: "Творческая мастерская",
      duration: "2 часа",
      ageRange: "5-10 лет",
      date: "19 июня 2025",
      time: "15:30",
      description:
        "Рисование, лепка и другие виды творчества. Дети создают своих персонажей и придумывают для них истории.",
      image: "/placeholder.svg?height=400&width=600&text=Творчество",
    },
    {
      id: 3,
      title: "Настольные игры для детей",
      duration: "2 часа",
      ageRange: "6-12 лет",
      date: "26 июня 2025",
      time: "16:00",
      description:
        "Увлекательные настольные игры для развития логики, памяти и командной работы. Подборка лучших детских игр.",
      image: "/placeholder.svg?height=400&width=600&text=Игры",
    }
  ]

  const months = ["Июнь 2025", "Июль 2025", "Август 2025"]
  const ageGroups = ["4-6 лет", "7-9 лет", "10-14 лет"]

  // Подробное описание для PageHeaderSection
  const pageHeaderDescription = `Мы вдохновляем детей на личные открытия, переосмысление и апгрейт. Доверяя интуиции, основываясь на опыте. Здесь приобретаются навыки, которые остаются с ними на всю жизнь. `;

  return (
    <div className="page-container kids-page">
      <SiteHeader />
      <main className="main-content">
        {/* Hero Section */}
        <section className="kids-hero-section">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-16.png"
              alt=""
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="container">
            <div className="kids-hero-content">
              <h1 className="kids-hero-title">{Title}</h1>
              <p className="kids-hero-description">{Description}</p>
            </div>
          </div>
        </section>

        {/* PageHeaderSection */}
        <PageHeaderSection 
          title="Игры для детей"
          description={pageHeaderDescription}
        />

        {/* Calendar Section */}
        <section className="kids-schedule-section">
        <div className="schedule-header">
              <h2 className="section-title">Расписание игр</h2>
              <p className="section-description">
                Выберите удобную дату и присоединяйтесь к нашим игровым вечерам
              </p>
            </div>
          <div className="container">
            <EventCalendar eventType="kids" />
          </div>
        </section>

        {/* Photo Gallery */}
        {Gallery && Gallery.length > 0 && (
          <PhotoGallery 
            photos={Gallery} 
            title="Фотогалерея детских игр" 
            description="Яркие моменты из наших детских игровых дней"
            collageImages={{
              image1: "/collage-2-1.PNG",
              image2: "/collage-2-2.PNG",
              image3: "/collage-2-3.PNG",
              alt1: "Детские игры 1",
              alt2: "Детские игры 2",
              alt3: "Детские игры 3"
            }}
          />
        )}

        {/* Testimonials */}
        <section className="kids-testimonials-section">
          <div className="container">
            <div className="kids-testimonials-header">
              <h2 className="section-title">Отзывы родителей</h2>
            </div>
            <div className="kids-testimonials-grid">
              {[
                {
                  text: "Мой сын в восторге от квестов! Каждый раз с нетерпением ждет новых приключений. Организаторы отлично работают с детьми и создают безопасную, но увлекательную атмосферу.",
                  author: "Елена, мама Миши (8 лет)",
                },
                {
                  text: "Научное шоу превзошло все ожидания! Дочка не только весело провела время, но и узнала много нового. Теперь дома постоянно проводит 'эксперименты' и интересуется наукой.",
                  author: "Андрей, папа Алисы (10 лет)",
                },
                {
                  text: "Отличное место для детского досуга. Профессиональные ведущие, интересные программы и внимательное отношение к каждому ребенку. Рекомендую всем родителям!",
                  author: "Мария, мама Димы (6 лет) и Кати (9 лет)",
                },
              ].map((testimonial, index) => (
                <Card key={index} className="kids-testimonial-card">
                  <CardContent>
                    <p className="kids-testimonial-text">"{testimonial.text}"</p>
                  </CardContent>
                  <CardFooter>
                    <p className="kids-testimonial-author">— {testimonial.author}</p>
                  </CardFooter>
                </Card>
              ))}
            </div>
          </div>
        </section>
      </main>
      <SiteFooter />
    </div>
  )
}

export default KidsGamesPage

