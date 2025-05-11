import React, { useState } from 'react';

const LazyImage = ({ src, alt, className = '', ...props }) => {
  const [isLoaded, setIsLoaded] = useState(false);

  return (
    <img
      src={src}
      alt={alt}
      className={`${className} ${isLoaded ? 'loaded' : ''}`}
      onLoad={() => setIsLoaded(true)}
      loading="lazy"
      data-lazy="true"
      {...props}
    />
  );
};

export default LazyImage; 