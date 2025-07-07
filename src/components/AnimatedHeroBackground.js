import React, { useState, useEffect } from 'react';

const AnimatedHeroBackground = ({ 
  imageSrc, 
  alt = "", 
  className = "", 
  onLoad = null,
  children 
}) => {
  const [isExpanding, setIsExpanding] = useState(false);
  const [imageLoaded, setImageLoaded] = useState(false);

  useEffect(() => {
    // Запускаем анимацию разжатия через небольшую задержку
    const timer = setTimeout(() => {
      setIsExpanding(true);
    }, 100);

    return () => clearTimeout(timer);
  }, []);

  const handleImageLoad = () => {
    setImageLoaded(true);
    if (onLoad) {
      onLoad();
    }
  };

  return (
    <div className={`hero-background ${className} ${isExpanding ? 'hero-background-expand' : ''}`}>
      <img
        src={imageSrc}
        alt={alt}
        loading="eager"
        onLoad={handleImageLoad}
        style={{
          opacity: imageLoaded ? 1 : 0,
          transition: 'opacity 0.5s ease-in-out'
        }}
      />
      {children}
    </div>
  );
};

export default AnimatedHeroBackground; 