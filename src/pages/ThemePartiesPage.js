import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import Button from '../components/Button';
import SiteHeader from "../components/SiteHeader";
import SiteFooter from "../components/SiteFooter";
import ProgramDetails from "../components/ProgramDetails";
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/pages/ThemePartiesPage.css';

// Базовый URL для API
const API_URL = process.env.REACT_APP_STRAPI_URL;

const ThemePartiesPage = () => {
  const [themeEvents, setThemeEvents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [pageData, setPageData] = useState({
    title: "Тематические вечеринки",
    description: [
      "Тематическая вечеринка - это эмоциональный взрыв! Это событие, когда гости целиком погружаются в атмосферу выбранной вами темы или идеи. Наша команда - эксперты в организации тематических вечеринок 'под ключ', а наше пространство позволяет воссоздать любую атмосферу!",
      "Мы создаем уникальные тематические пространства, где каждая деталь продумана до мелочей. От декораций и костюмов до музыкального сопровождения и специальных эффектов - всё работает на создание полного погружения в выбранную тему.",
      "Идеально подходит для: детского дня рождения, подросткового праздника, взрослого дня рождения, девичника, гендер-пати, выпускного, корпоратива.",
      "Сделаем вашу вечеринку эмоциональной до каждой милисекунды!",
      "- Создадим атмосферу крутым декором!",
      "- Встретим гостей вэлкам зоной,",
      "- Озвучим профессиональным диджеем и караоке-баром!",
      "- Разнообразим яркой дискотекой!",
      "- Украсим неоновым светом!",
      "- Дополним тематическим сценарием, проведем с крутым ведущим!"
    ],
    mainImage: "/theme-parties-main.jpg",
    galleryImages: [
      "/theme-parties-1.jpg",
      "/theme-parties-2.jpg",
      "/theme-parties-3.jpg",
      "/theme-parties-4.jpg"
    ]
  });

  useEffect(() => {
    // Загрузка данных из Strapi для событий
    const fetchThemeEvents = async () => {
      try {
        const response = await fetch(`${API_URL}/api/theme-party-events?populate=*`);
        
        if (!response.ok) {
          throw new Error(`Error: ${response.status}`);
        }
        
        const data = await response.json();
         // Для отладки
        setThemeEvents(data.data || []);
      } catch (err) {
        
        setError(err.message);
      }
    };

    // Загрузка галереи из Strapi
    const fetchThemeGallery = async () => {
      try {
        const response = await fetchData('personal-parties-page', { 
          populate: ['themeGallery'] 
        });
        
        
        
        if (response && response.data && response.data.themeGallery && response.data.themeGallery.length > 0) {
          const themeGallery = response.data.themeGallery;
          
          // Обновляем pageData с данными из Strapi
          setPageData(prev => ({
            ...prev,
            mainImage: themeGallery.length > 0 ? getMediaUrl(themeGallery[0]) : prev.mainImage,
            galleryImages: themeGallery.map(img => getMediaUrl(img))
          }));
        }
      } catch (err) {
        
      } finally {
        setLoading(false);
      }
    };

    Promise.all([fetchThemeEvents(), fetchThemeGallery()]);
  }, []);

  // Трансформация данных из формата Strapi в формат, ожидаемый компонентом
  const transformedEvents = themeEvents.map(event => {
    // Проверка наличия необходимых данных
    if (!event) {
      
      return null;
    }
    
    // Проверяем, есть ли хотя бы заголовок для отображения
    const title = event.title;
    if (!title) {
      
      return null;
    }
    
    // Получаем URL обложки
    let imageUrl = '/placeholder.jpg';
    if (event.coverImage && event.coverImage.url) {
      imageUrl = `${API_URL}${event.coverImage.url}`;
    }
    
    return {
      id: event.id,
      slug: event.slug || `event-${event.id}`,
      title: title,
      image: imageUrl,
      galleryImages: event.media?.map(img => `${API_URL}${img.url}`) || []
    };
  }).filter(Boolean); // Убираем null из массива

  return (
    <div className="page-container theme-parties-page">
      <SiteHeader />
      <main className="main-content">
        <ProgramDetails
          title={pageData.title}
          description={pageData.description}
          mainImage={pageData.mainImage}
          galleryImages={pageData.galleryImages}
          returnPath="/"
        />

        {/* Программы */}
        <section className="programs-section">
          <div className="container">
            <h2 className="section-title">Наши прошлые события</h2>
            {loading ? (
              <div className="loading">Загрузка событий...</div>
            ) : error ? (
              <div className="error">Ошибка: {error}</div>
            ) : transformedEvents.length === 0 ? (
              <div className="no-events">
                <p>События пока не добавлены</p>
                <p>Когда вы добавите события в Strapi, они появятся здесь</p>
              </div>
            ) : (
              <div className="programs-grid">
                {transformedEvents.map((program) => (
                  <Link to={`/theme-parties/${program.slug}`} key={program.id} className="program-card">
                    <div className="program-image">
                      <img src={program.image} alt={program.title} />
                    </div>
                    <h3 className="program-name">{program.title}</h3>
                  </Link>
                ))}
              </div>
            )}
          </div>
        </section>
      </main>
      <SiteFooter />
    </div>
  );
};

export default ThemePartiesPage; 