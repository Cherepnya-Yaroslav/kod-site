import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import Button from './Button';
import FeedbackForm from './FeedbackForm';
import '../styles/components/ProgramDetails.css';

const ProgramDetails = ({ 
  title, 
  description, 
  mainImage, 
  galleryImages = [], 
  returnPath = "/",
  onBackClick = null
}) => {
  // Устанавливаем дефолтное изображение, если основное изображение не предоставлено
  const defaultImage = '/placeholder.jpg';
  const [currentImage, setCurrentImage] = useState(mainImage || defaultImage);
  const [isFormOpen, setIsFormOpen] = useState(false);

  // Фильтруем изображения галереи, удаляя null и undefined
  const validGalleryImages = galleryImages.filter(img => !!img);

  // Split description into paragraphs if it's a string
  const paragraphs = typeof description === 'string' 
    ? description.split('\n\n') 
    : Array.isArray(description) ? description : [];

  // Function to handle back button click
  const handleBackClick = (e) => {
    if (onBackClick) {
      e.preventDefault();
      onBackClick();
    }
    // If no onBackClick handler is provided, the Link component
    // will handle navigation using returnPath
  };

  // Function to handle thumbnail click
  const handleThumbnailClick = (image) => {
    setCurrentImage(image);
  };

  // Обработчик ошибок загрузки изображений
  const handleImageError = (e) => {
    
    e.target.onerror = null;
    e.target.src = defaultImage;
    
    // Если это основное изображение, также обновляем состояние
    if (e.target.classList.contains('program-main-image') && currentImage !== defaultImage) {
      setCurrentImage(defaultImage);
    }
  };

  const rentalQuestions = [
    {
      id: 'eventType',
      text: 'Какое мероприятие планируете проводить?',
      type: 'text',
      placeholder: 'Например: день рождения, корпоратив, выпускной',
      required: true
    },
    {
      id: 'guestCount',
      text: 'Сколько человек планируется на мероприятии?',
      type: 'number',
      placeholder: '10',
      min: 1,
      max: 100,
      required: true
    },
    {
      id: 'eventDate',
      text: 'Какую дату рассматриваете?',
      type: 'date',
      required: true
    },
    {
      id: 'name',
      text: 'Как к вам обращаться?',
      type: 'text',
      placeholder: 'Ваше имя',
      required: true
    },
    {
      id: 'email',
      text: 'Ваш Email',
      type: 'email',
      placeholder: 'example@email.com',
      required: true
    },
    {
      id: 'phone',
      text: 'Укажите ваш номер телефона',
      type: 'tel',
      placeholder: '+7 (___) ___-__-__',
      required: true
    },
    {
      id: 'contactMethod',
      text: 'Какой способ связи для вас удобнее?',
      type: 'radio',
      options: [
        { value: 'phone', label: 'Телефонный звонок' },
        { value: 'whatsapp', label: 'WhatsApp' },
        { value: 'telegram', label: 'Telegram' }
      ],
      required: true
    },
    {
      id: 'comments',
      text: 'Дополнительная информация',
      type: 'textarea',
      placeholder: 'Опишите подробнее ваши пожелания по аренде пространства (время, особые требования, дополнительные услуги и т.д.)',
      required: false
    }
  ];

  return (
    <div className="program-details">
      <div className="container">
        <div className="program-header">
          <Link to={returnPath} className="back-button" onClick={handleBackClick}>
            ← НАЗАД
          </Link>
        </div>

        <div className="program-content">
          <div className="program-image-container">
            <img 
              src={currentImage} 
              alt={title} 
              className="program-main-image"
              onError={handleImageError}
            />
          </div>
          
          <div className="program-description">
            <h1 className="program-title">{title}</h1>
            
            <div className="program-action">
              <Button 
                variant="primary" 
                size="lg"
                onClick={() => setIsFormOpen(true)}
              >
                ВЫБРАТЬ ПРОГРАММУ
              </Button>
            </div>
            
            {paragraphs.map((paragraph, index) => (
              <p key={index}>{paragraph}</p>
            ))}
          </div>

          {validGalleryImages.length > 0 && (
            <div className="program-gallery">
              {[mainImage || defaultImage, ...validGalleryImages]
                .filter((image, index, self) => 
                  // Удаляем дубликаты
                  image && self.indexOf(image) === index
                )
                .map((image, index) => (
                  <div 
                    key={index} 
                    className={`gallery-thumbnail ${currentImage === image ? 'active' : ''}`}
                    onClick={() => handleThumbnailClick(image)}
                  >
                    <img 
                      src={image} 
                      alt={`${title} - фото ${index + 1}`} 
                      onError={handleImageError}
                    />
                  </div>
                ))
              }
            </div>
          )}
        </div>

        <FeedbackForm 
          title="Забронировать пространство"
          description="Заполните форму, и мы свяжемся с вами для обсуждения деталей"
          questions={rentalQuestions}
          isOpen={isFormOpen}
          onClose={() => setIsFormOpen(false)}
          formType="Аренда пространства"
          answers={{
            comments: `Заявка на аренду пространства: ${title}`
          }}
        />
      </div>
    </div>
  );
};

export default ProgramDetails; 