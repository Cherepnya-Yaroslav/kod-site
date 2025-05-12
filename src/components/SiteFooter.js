import { Link } from "react-router-dom"
import React, { useState, useEffect } from "react"
import "../styles/components/SiteFooter.css"
import axios from 'axios';

const API_URL =process.env.REACT_APP_STRAPI_URL;

const SiteFooter = () => {
  const [email, setEmail] = useState("");
  const [consent, setConsent] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitStatus, setSubmitStatus] = useState(null);
  const [footerData, setFooterData] = useState(null);

  useEffect(() => {
    const fetchFooterData = async () => {
      try {
        console.log('Fetching footer data from:', `${API_URL}/api/footer`);
        const response = await axios.get(`${API_URL}/api/footer`);
        console.log('Footer data received:', response.data);
        setFooterData(response.data.data);
      } catch (error) {
        console.error('Error fetching footer data:', error);
      }
    };

    fetchFooterData();
  }, []);

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
      const response = await axios.post(`${API_URL}/api/contact/submit`, {
        email,
        formType: 'Подписка на рассылку',
        consent: consent ? 'Да' : 'Нет'
      });
      
      console.log('Subscription response:', response.data);
      setSubmitStatus('success');
      
      setEmail("");
      setConsent(false);
      
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
              {footerData?.rutubeLink && (
                <a href={footerData.rutubeLink} target="_blank" rel="noopener noreferrer" className="social-link">
                  <i className="icon-rutube"></i>
                </a>
              )}
              {footerData?.telegramLink && (
                <a href={footerData.telegramLink} target="_blank" rel="noopener noreferrer" className="social-link">
                  <i className="icon-telegram"></i>
                </a>
              )}
            </div>
          </div>
          <div className="footer-section">
            <h3 className="footer-title">Контакты</h3>
            <div className="contact-list">
              {footerData?.number && (
                <div className="contact-item">
                  <i className="icon-phone"></i>
                  <a href={`tel:${footerData.number}`} className="contact-link">
                    {footerData.number}
                  </a>
                </div>
              )}
              {footerData?.email && (
                <div className="contact-item">
                  <i className="icon-mail"></i>
                  <a href={`mailto:${footerData.email}`} className="contact-link">
                    {footerData.email}
                  </a>
                </div>
              )}
              {footerData?.adress && (
                <div className="contact-item">
                  <i className="icon-map"></i>
                  <span className="contact-text">{footerData.adress}</span>
                </div>
              )}
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

