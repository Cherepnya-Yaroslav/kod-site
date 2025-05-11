import { Link } from "react-router-dom"
import React, { useState } from "react"
import "../styles/components/SiteFooter.css"
import axios from 'axios';

const API_URL = process.env.REACT_APP_STRAPI_API_URL || 'http://localhost:1337';

const SiteFooter = () => {
  const [email, setEmail] = useState("");
  const [consent, setConsent] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitStatus, setSubmitStatus] = useState(null); // 'success', 'error', or null

  const handleEmailChange = (e) => {
    setEmail(e.target.value);
  };

  const handleConsentChange = (e) => {
    setConsent(e.target.checked);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (!email || !consent) return;
    
    setIsSubmitting(true);
    setSubmitStatus(null);
    
    try {
      // Send subscription data to Strapi
      const response = await axios.post(`${API_URL}/api/contact/submit`, {
        email,
        formType: 'Подписка на рассылку',
        consent: consent ? 'Да' : 'Нет'
      });
      
      console.log('Subscription response:', response.data);
      setSubmitStatus('success');
      
      // Reset form after success
      setEmail("");
      setConsent(false);
      
      // Clear success message after 3 seconds
      setTimeout(() => {
        setSubmitStatus(null);
      }, 3000);
    } catch (error) {
      console.error('Subscription error:', error);
      setSubmitStatus('error');
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <footer className="site-footer">
      <div className="container">
        <div className="footer-grid">
          <div className="footer-section">
            <h3 className="footer-title">K.O.D.</h3>
            <p className="footer-description">Пространство для творчества, развлечений и незабываемых впечатлений</p>
            <div className="footer-social">
              <a href="https://instagram.com" target="_blank" rel="noopener noreferrer" className="social-link">
                <i className="icon-instagram"></i>
              </a>
              <a href="https://facebook.com" target="_blank" rel="noopener noreferrer" className="social-link">
                <i className="icon-facebook"></i>
              </a>
            </div>
          </div>
          <div className="footer-section">
            <h3 className="footer-title">Контакты</h3>
            <div className="contact-list">
              <div className="contact-item">
                <i className="icon-phone"></i>
                <a href="tel:+71234567890" className="contact-link">
                  +7 (123) 456-7890
                </a>
              </div>
              <div className="contact-item">
                <i className="icon-mail"></i>
                <a href="mailto:info@kod.ru" className="contact-link">
                  info@kod.ru
                </a>
              </div>
              <div className="contact-item">
                <i className="icon-map"></i>
                <span className="contact-text">г. Москва, ул. Примерная, д. 123</span>
              </div>
            </div>
          </div>
          <div className="footer-section">
            <h3 className="footer-title">Навигация</h3>
            <nav className="footer-nav">
              <Link to="/" className="footer-link">
                О нас
              </Link>
              <Link to="/personal-parties" className="footer-link">
                Персональные вечеринки
              </Link>
              <Link to="/open-parties" className="footer-link">
                Открытые вечеринки
              </Link>
              <Link to="/kids-games" className="footer-link">
                Игры для детей
              </Link>
              <Link to="/adult-games" className="footer-link">
                Игры для взрослых
              </Link>
              <Link to="/dance" className="footer-link">
                Танцы
              </Link>
              <Link to="/coffee" className="footer-link">
                Кофе
              </Link>
            </nav>
          </div>
          <div className="footer-section subscription-section">
            <h3 className="footer-title">Подписаться на рассылку:</h3>
            <form className="subscription-form" onSubmit={handleSubmit}>
              <div className="email-input-container">
                <input 
                  type="email" 
                  className="email-input" 
                  placeholder="Email" 
                  value={email}
                  onChange={handleEmailChange}
                  required
                  disabled={isSubmitting}
                />
                <button 
                  type="submit" 
                  className="submit-arrow"
                  disabled={isSubmitting}
                >
                  <i className="icon-arrow-right"></i>
                </button>
              </div>
              
              {submitStatus === 'success' && (
                <div className="subscription-success">
                  Спасибо за подписку!
                </div>
              )}
              
              {submitStatus === 'error' && (
                <div className="subscription-error">
                  Произошла ошибка. Пожалуйста, попробуйте еще раз.
                </div>
              )}
              
              <div className="consent-checkbox">
                <input 
                  type="checkbox" 
                  id="newsletter-consent" 
                  checked={consent}
                  onChange={handleConsentChange}
                  required
                  disabled={isSubmitting}
                />
                <label htmlFor="newsletter-consent">
                  Оставляя адрес своей электронной почты, я даю согласие на получение рассылки и принимаю условия{" "}
                  <Link to="/privacy-policy" className="policy-link">
                    Политики обработки и защиты персональных данных
                  </Link>
                </label>
              </div>
            </form>
          </div>
        </div>
        <div className="footer-bottom">
          <p className="copyright">© {new Date().getFullYear()} K.O.D. Все права защищены.</p>
        </div>
      </div>
    </footer>
  )
}

export default SiteFooter

