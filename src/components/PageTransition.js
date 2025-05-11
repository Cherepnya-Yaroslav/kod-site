import React, { useState, useEffect } from 'react';
import '../styles/components/PageTransition.css';

const PageTransition = ({ children }) => {
  const [isLoading, setIsLoading] = useState(true);
  const [isContentVisible, setIsContentVisible] = useState(false);

  useEffect(() => {
    // Начинаем показывать контент после монтирования компонента
    const timer1 = setTimeout(() => {
      setIsLoading(false);
    }, 300);

    // Плавно показываем контент после того, как загрузка закончена
    const timer2 = setTimeout(() => {
      setIsContentVisible(true);
    }, 400);

    return () => {
      clearTimeout(timer1);
      clearTimeout(timer2);
    };
  }, []);

  return (
    <div className={`page-transition ${isContentVisible ? 'content-visible' : ''}`}>
      {isLoading && <div className="page-overlay loading" />}
      <div className="page-content">
        {children}
      </div>
    </div>
  );
};

export default PageTransition; 