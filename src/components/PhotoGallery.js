import React, { useState, useEffect } from 'react';
import Collage from './Collage';
import '../styles/components/PhotoGallery.css';

const STRAPI_URL = process.env.REACT_APP_STRAPI_URL || 'http://localhost:1337';

const PhotoGallery = ({ 
  photos = [], 
  title = "Фотогалерея", 
  description = "Наша фотогалерея",
  collageImages = {
    image1: "/placeholder.jpg",
    image2: "/placeholder.jpg",
    image3: "/placeholder.jpg",
    alt1: "Изображение 1",
    alt2: "Изображение 2",
    alt3: "Изображение 3"
  }
}) => {
  const [currentSlide, setCurrentSlide] = useState(0);
  const [loadedImages, setLoadedImages] = useState({});

  // Автоматическое переключение слайдов
  useEffect(() => {
    if (!photos?.length) return;

    const timer = setInterval(() => {
      setCurrentSlide(prev => (prev + 1) % photos.length);
    }, 5000);

    return () => clearInterval(timer);
  }, [photos?.length]);

  // Функции для переключения слайдов
  const nextSlide = () => {
    if (!photos?.length) return;
    setCurrentSlide((prev) => (prev + 1) % photos.length);
  };

  const prevSlide = () => {
    if (!photos?.length) return;
    setCurrentSlide((prev) => (prev - 1 + photos.length) % photos.length);
  };

  const handleImageLoad = (index) => {
    setLoadedImages(prev => ({...prev, [index]: true}));
  };

  // Получение URL изображения
  const getImageUrl = (photo) => {
    if (!photo) return null;
    
    // Если это полный URL, возвращаем его
    if (typeof photo === 'string' && (photo.startsWith('http://') || photo.startsWith('https://'))) {
      return photo;
    }
    
    // Если это объект с URL, получаем URL с учетом форматов
    let imageUrl = null;
    
    if (photo.formats && photo.formats.medium) {
      imageUrl = photo.formats.medium.url;
    } else if (photo.formats && photo.formats.small) {
      imageUrl = photo.formats.small.url;
    } else if (photo.formats && photo.formats.thumbnail) {
      imageUrl = photo.formats.thumbnail.url;
    } else if (photo.url) {
      imageUrl = photo.url;
    }
    
    // Если URL начинается с /, добавляем базовый URL Strapi
    if (imageUrl && imageUrl.startsWith('/')) {
      return `${STRAPI_URL}${imageUrl}`;
    }
    
    return imageUrl || null;
  };

  if (!photos || photos.length === 0) {
    return null;
  }

  return (
    <section className="photo-collage-section">
      <div className="container">
        <div className="photo-collage-header">
          <h2 className="section-title">{title}</h2>
          <p className="section-description">{description}</p>
        </div>
        <div className="gallery-with-collage-wrapper">
          <div className="photo-slider">
            <div className="slider-container">
              {photos.map((photo, index) => (
                <div
                  key={photo.id || index}
                  className={`slider-slide ${index === currentSlide ? "active" : ""}`}
                >
                  <img
                    src={getImageUrl(photo)}
                    alt={photo.alternativeText || `Фото ${index + 1}`}
                    className={`slider-image ${loadedImages[index] ? 'loaded' : ''}`}
                    onLoad={() => handleImageLoad(index)}
                    loading="lazy"
                  />
                </div>
              ))}
              <div className="slider-navigation">
                <button 
                  className="slider-button slider-button-prev" 
                  onClick={prevSlide}
                >
                  ←
                </button>
                <button 
                  className="slider-button slider-button-next" 
                  onClick={nextSlide}
                >
                  →
                </button>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>
  );
};

export default PhotoGallery; 