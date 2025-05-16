import React, { useState } from 'react';
import '../styles/components/Collage.css';

const Collage = ({ 
  image1, 
  image2, 
  image3, 
  alt1 = 'Collage image 1', 
  alt2 = 'Collage image 2', 
  alt3 = 'Collage image 3' 
}) => {
  const [loadedImages, setLoadedImages] = useState({
    img1: false,
    img2: false,
    img3: false
  });

  const handleImageLoad = (imgKey) => {
    setLoadedImages(prev => ({...prev, [imgKey]: true}));
  };

  // Проверяем, переданы ли все три изображения
  if (!image1 || !image2 || !image3) {
    
    return null;
  }

  return (
    <div className="collage">
      <div className="collage-image collage-image-1">
        <img 
          src={image1} 
          alt={alt1}
          className={loadedImages.img1 ? 'loaded' : ''}
          onLoad={() => handleImageLoad('img1')}
          loading="lazy"
        />
      </div>
      <div className="collage-image collage-image-2">
        <img 
          src={image2} 
          alt={alt2}
          className={loadedImages.img2 ? 'loaded' : ''}
          onLoad={() => handleImageLoad('img2')}
          loading="lazy"
        />
      </div>
      <div className="collage-image collage-image-3">
        <img 
          src={image3} 
          alt={alt3}
          className={loadedImages.img3 ? 'loaded' : ''}
          onLoad={() => handleImageLoad('img3')}
          loading="lazy"
        />
      </div>
    </div>
  );
};

export default Collage; 