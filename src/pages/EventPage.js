import React, { useState, useEffect } from 'react';
import { useParams, Link, useNavigate } from 'react-router-dom';
import SiteHeader from '../components/SiteHeader';
import SiteFooter from '../components/SiteFooter';
import Button from '../components/Button';
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/pages/EventPage.css';

const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';

const EventPage = () => {
  const { slug } = useParams();
  const [event, setEvent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [currentImage, setCurrentImage] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    const loadEvent = async () => {
      try {
        setLoading(true);
        setError(null);
        
        const response = await fetchData('events', { 
          filters: { slug: { $eq: slug } },
          populate: ['coverImage', 'gallery']
        });
        
        if (response && response.data && response.data.length > 0) {
          // Поддержка как трансформированного, так и нетрансформированного ответа
          const eventData = response.data[0].attributes || response.data[0];
          const coverImageUrl = eventData.coverImage ? getMediaUrl(eventData.coverImage) : null;
            
          const galleryImages = eventData.gallery?.data?.map(img => getMediaUrl(img)) || [];
          
          const formattedEvent = {
            id: response.data[0].id,
            ...eventData,
            coverImage: coverImageUrl,
            gallery: galleryImages
          };
          
          setEvent(formattedEvent);
          setCurrentImage(coverImageUrl);
        } else {
          setError('Событие не найдено');
        }
      } catch (err) {
        setError('Ошибка при загрузке события');
        console.error('Error loading event:', err);
      } finally {
        setLoading(false);
      }
    };

    loadEvent();
  }, [slug]);

  const handleBackClick = () => {
    navigate(-1);
  };

  const handleRegister = () => {
    alert('Функция регистрации/оплаты будет добавлена позже');
  };
  
  const handleThumbnailClick = (image) => {
    setCurrentImage(image);
  };

  // Обновляем отображение описания, используя только description
  const renderDescription = () => {
    if (event.description) {
      // Проверяем, является ли описание HTML-строкой
      if (event.description.includes('<') && event.description.includes('>')) {
        return (
          <div className="event-description-content" dangerouslySetInnerHTML={{ __html: event.description }} />
        );
      } else {
        // Убедимся, что описание корректно отображается с переносами строк
        return (
          <div className="event-description-content">
            {event.description.split('\n').map((paragraph, index) => (
              <p key={index}>{paragraph}</p>
            ))}
          </div>
        );
      }
    }
    return null;
  };

  if (loading) return <div className="event-loading">Загрузка события...</div>;
  if (error) return <div className="event-error">{error}</div>;
  if (!event) return <div className="event-error">Событие не найдено</div>;

  const eventDate = new Date(event.date);
  const formattedDate = eventDate.toLocaleDateString('ru-RU', {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });
  const formattedTime = eventDate.toLocaleTimeString('ru-RU', {
    hour: '2-digit',
    minute: '2-digit'
  });

  return (
    <>
      <SiteHeader />
      <div className="event-page">
        <div className="container">
          <div className="program-header">
            <Link to="/events" className="back-button" onClick={handleBackClick}>
              ← НАЗАД
            </Link>
          </div>

          <div className="program-content">
            <div className="program-image-container">
              {currentImage && (
                <img 
                  src={currentImage}
                  alt={event.title}
                  className="program-main-image"
                />
              )}
            </div>
            
            <div className="program-description">
              <h1 className="program-title">{event.title}</h1>
              
              <div className="program-action">
                <Button 
                  variant="primary" 
                  size="lg"
                  onClick={handleRegister}
                  disabled={event.currentParticipants >= event.maxParticipants}
                >
                  {event.currentParticipants >= event.maxParticipants
                    ? 'МЕСТ НЕТ'
                    : 'ЗАРЕГИСТРИРОВАТЬСЯ'}
                </Button>
              </div>
              
              {event.shortDescription && (
                <div className="short-description">{event.shortDescription}</div>
              )}
              {renderDescription()}
            </div>

            {event.gallery && event.gallery.length > 0 && (
              <div className="program-gallery">
                {[event.coverImage, ...event.gallery].map((image, index) => (
                  <div 
                    key={index} 
                    className={`gallery-thumbnail ${currentImage === image ? 'active' : ''}`}
                    onClick={() => handleThumbnailClick(image)}
                  >
                    <img 
                      src={image}
                      alt={`${event.title} - изображение ${index + 1}`}
                    />
                  </div>
                ))}
              </div>
            )}
          </div>
          
          <div className="event-details-section">
            <h2 className="section-title">Информация о событии</h2>
            <div className="event-meta-grid">
              <div className="meta-item">
                <span className="event-icon calendar-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Дата</div>
                  <div className="meta-value">{formattedDate}</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon clock-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Время</div>
                  <div className="meta-value">{formattedTime}</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon location-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Место</div>
                  <div className="meta-value">{event.location}</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon timer-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Длительность</div>
                  <div className="meta-value">{event.duration}</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon tag-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Тип</div>
                  <div className="meta-value">{event.type === 'kids' ? 'Детское' : 'Взрослое'}</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon price-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Цена</div>
                  <div className="meta-value">{event.price} ₽</div>
                </div>
              </div>
              
              <div className="meta-item">
                <span className="event-icon user-icon"></span>
                <div className="meta-content">
                  <div className="meta-label">Осталось мест</div>
                  <div className="meta-value">{event.maxParticipants - event.currentParticipants}</div>
                </div>
              </div>
            </div>
            
            <div className="event-registration-section">
              <div className="event-price-registration">
                <div className="event-price-display">
                  <span className="price-label">Стоимость:</span>
                  <span className="price-value">{event.price} ₽</span>
                </div>
                <Button 
                  variant="primary" 
                  size="lg" 
                  onClick={handleRegister}
                  disabled={event.currentParticipants >= event.maxParticipants}
                  className="register-button-large"
                >
                  {event.currentParticipants >= event.maxParticipants
                    ? 'МЕСТ НЕТ'
                    : 'ЗАБРОНИРОВАТЬ МЕСТО'}
                </Button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <SiteFooter />
    </>
  );
};

export default EventPage; 