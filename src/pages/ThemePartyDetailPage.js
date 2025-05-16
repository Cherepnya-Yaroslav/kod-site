import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import SiteHeader from "../components/SiteHeader";
import SiteFooter from "../components/SiteFooter";
import '../styles/pages/ThemePartiesPage.css';

// Базовый URL для API (замените на ваш Strapi API URL)
const API_URL = process.env.REACT_APP_STRAPI_URL

const ThemePartyDetailPage = () => {
  const { slug } = useParams();
  const [event, setEvent] = useState(null);
  const [activeImage, setActiveImage] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Функция для преобразования Rich Text в HTML
  const richTextToHtml = (richTextData) => {
    if (!richTextData || !Array.isArray(richTextData)) return '';
    
    let html = '';
    richTextData.forEach(block => {
      if (block.type === 'paragraph') {
        const text = block.children?.map(child => child.text || '').join('') || '';
        html += `<p>${text}</p>`;
      }
    });
    
    return html;
  };

  useEffect(() => {
    const fetchEventDetails = async () => {
      try {
        // Добавляем populate=* для получения связанных медиа
        const response = await fetch(`${API_URL}/api/theme-party-events?filters[slug][$eq]=${slug}&populate=*`);
        
        if (!response.ok) {
          throw new Error(`Error: ${response.status}`);
        }
        
        const data = await response.json();
         // Для отладки
        
        if (data.data && data.data.length > 0) {
          const eventData = data.data[0];
          
          // Преобразуем Rich Text в HTML
          const descriptionHtml = richTextToHtml(eventData.description);
          
          // Получаем URL обложки
          let coverImageUrl = '/placeholder.jpg';
          if (eventData.coverImage && eventData.coverImage.url) {
            coverImageUrl = `${API_URL}${eventData.coverImage.url}`;
          }
          
          // Получаем URL изображений галереи
          let galleryImages = [];
          if (eventData.media && Array.isArray(eventData.media)) {
            galleryImages = eventData.media.map(img => `${API_URL}${img.url}`);
          }
          
          // Трансформируем данные в нужный формат
          const transformedEvent = {
            id: eventData.id,
            title: eventData.title || 'Без названия',
            description: descriptionHtml,
            coverImage: coverImageUrl,
            galleryImages: galleryImages
          };
          
          setEvent(transformedEvent);
          
          if (galleryImages.length > 0) {
            setActiveImage(galleryImages[0]);
          } else {
            setActiveImage(coverImageUrl);
          }
        } else {
          throw new Error('Событие не найдено');
        }
        
        setLoading(false);
      } catch (err) {
        
        setError(err.message);
        setLoading(false);
      }
    };

    if (slug) {
      fetchEventDetails();
    } else {
      setError('URL события недействителен');
      setLoading(false);
    }
  }, [slug]);

  const handleThumbnailClick = (image) => {
    setActiveImage(image);
  };

  if (loading) {
    return (
      <div className="page-container theme-parties-page">
        <SiteHeader />
        <main className="main-content">
          <div className="container">
            <div className="loading-container">
              <p>Загрузка информации о событии...</p>
            </div>
          </div>
        </main>
        <SiteFooter />
      </div>
    );
  }

  if (error || !event) {
    return (
      <div className="page-container theme-parties-page">
        <SiteHeader />
        <main className="main-content">
          <div className="container">
            <div className="error-container">
              <h2>Ошибка</h2>
              <p>{error || 'Не удалось загрузить данные о событии'}</p>
              <Link to="/theme-parties" className="back-button">
                ← Вернуться к списку событий
              </Link>
            </div>
          </div>
        </main>
        <SiteFooter />
      </div>
    );
  }

  return (
    <div className="page-container theme-parties-page">
      <SiteHeader />
      <main className="main-content">
        <div className="program-details">
          <div className="container">
            <div className="program-header">
              <Link to="/theme-parties" className="back-button">
                ← Назад к событиям
              </Link>
            </div>

            <div className="program-content">
              <div className="program-image-container">
                <img 
                  src={activeImage} 
                  alt={event.title} 
                  className="program-main-image"
                />
              </div>
              
              <div className="program-info">
                <h1 className="program-title">{event.title}</h1>
                
                {event.description && (
                  <div className="program-description" 
                    dangerouslySetInnerHTML={{ __html: event.description }} 
                  />
                )}
              </div>
            </div>

            {event.galleryImages.length > 0 && (
              <div className="program-gallery">
                {event.galleryImages.map((image, index) => (
                  <div 
                    key={index} 
                    className={`gallery-thumbnail ${activeImage === image ? 'active' : ''}`}
                    onClick={() => handleThumbnailClick(image)}
                  >
                    <img src={image} alt={`${event.title} - фото ${index + 1}`} />
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>
      </main>
      <SiteFooter />
    </div>
  );
};

export default ThemePartyDetailPage; 