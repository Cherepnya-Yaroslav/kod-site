import React, { useState, useEffect } from 'react';
import '../styles/components/CookieNotice.css';

const COOKIE_KEY = 'cookie_notice_accepted_v1';

const CookieNotice = () => {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const accepted = localStorage.getItem(COOKIE_KEY);
    if (!accepted) {
      setVisible(true);
    }
  }, []);

  const handleAccept = () => {
    localStorage.setItem(COOKIE_KEY, 'true');
    setVisible(false);
  };

  if (!visible) return null;

  return (
    <div className="cookie-notice">
      <div className="cookie-notice__container">
        <span className="cookie-notice__text">
          Мы используем файлы cookie для улучшения работы сайта. Продолжая пользоваться сайтом, вы соглашаетесь с <a href="/politics.pdf" target="_blank" rel="noopener noreferrer" className="cookie-notice__link">политикой конфиденциальности</a>.
        </span>
        <button className="cookie-notice__button" onClick={handleAccept}>
          Понятно
        </button>
      </div>
    </div>
  );
};

export default CookieNotice; 