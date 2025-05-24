"use client"

import { useState, useEffect } from "react"
import { Link, useLocation } from "react-router-dom"
import "../styles/components/SiteHeader.css"
import "../styles/components/PromoBanner.css"
import PromoBanner from "./PromoBanner"
import { getMediaUrl } from "../api/strapi"

const API_URL = "http://89.111.152.178:1337"

const SiteHeader = () => {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const [promoBannerData, setPromoBannerData] = useState(null)
  const location = useLocation()

  useEffect(() => {
    const fetchPromoBanner = async () => {
      try {
        const response = await fetch(`${API_URL}/api/promo-banner?populate=*`);
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        console.log('Full API response:', data);
        if (data.data) {
          const coverImageUrl = data.data.CoverImage?.url 
            ? `${API_URL}${data.data.CoverImage.url}`
            : null;
          console.log('Cover Image URL:', coverImageUrl);
          console.log('Raw coverImage data:', data.data.CoverImage);
          setPromoBannerData({
            ...data.data,
            coverImage: coverImageUrl
          });
        }
      } catch (error) {
        console.error('Error fetching promo banner:', error.message);
        setPromoBannerData(null);
      }
    };

    fetchPromoBanner();
  }, []);

  const toggleMobileMenu = () => {
    setMobileMenuOpen(!mobileMenuOpen)
  }

  // Check if the link matches the current path
  const isActive = (path) => {
    return location.pathname === path
  }

  return (
    <>
      <header className="site-header">
        {promoBannerData && promoBannerData.isActive && (
          <PromoBanner 
            title={promoBannerData.title}
            buttonText={promoBannerData.buttonText}
            buttonLink={promoBannerData.buttonLink}
            isExternalLink={promoBannerData.isExternalLink}
            coverImage={promoBannerData.coverImage}
          />
        )}
        <div className="container header-container">
          <div className="logo">
            <Link to="/" className="logo-text">
              K.O.D.
            </Link>
          </div>
          <nav className="desktop-nav">
            <Link to="/" className={`nav-link ${isActive('/') ? 'active' : ''}`}>
              О нас
            </Link>
            <Link to="/personal-parties" className={`nav-link ${isActive('/personal-parties') ? 'active' : ''}`}>
              Персональные вечеринки
            </Link>
            <Link to="/open-parties" className={`nav-link ${isActive('/open-parties') ? 'active' : ''}`}>
              Открытые вечеринки
            </Link>
            <Link to="/kids-games" className={`nav-link ${isActive('/kids-games') ? 'active' : ''}`}>
              Игры для детей
            </Link>
            <Link to="/adult-games" className={`nav-link ${isActive('/adult-games') ? 'active' : ''}`}>
              Игры для взрослых
            </Link>
            <Link to="/dance" className={`nav-link ${isActive('/dance') ? 'active' : ''}`}>
              Танцы
            </Link>
            <Link to="/coffee" className={`nav-link ${isActive('/coffee') ? 'active' : ''}`}>
              Кофе
            </Link>
            <Link to="/online-learning" className={`nav-link ${isActive('/online-learning') ? 'active' : ''}`}>
              Онлайн-обучение
            </Link>
          </nav>
          
          <button className="mobile-menu-button" onClick={toggleMobileMenu}>
            <i className="icon-menu"></i>
          </button>
        </div>

        {mobileMenuOpen && (
          <div className="mobile-menu">
            <div className="mobile-menu-container">
              <nav className="mobile-nav">
                <Link 
                  to="/" 
                  className={`mobile-nav-link ${isActive('/') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  О нас
                </Link>
                <Link 
                  to="/personal-parties" 
                  className={`mobile-nav-link ${isActive('/personal-parties') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Персональные вечеринки
                </Link>
                <Link 
                  to="/open-parties" 
                  className={`mobile-nav-link ${isActive('/open-parties') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Открытые вечеринки
                </Link>
                <Link 
                  to="/kids-games" 
                  className={`mobile-nav-link ${isActive('/kids-games') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Игры для детей
                </Link>
                <Link 
                  to="/adult-games" 
                  className={`mobile-nav-link ${isActive('/adult-games') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Игры для взрослых
                </Link>
                <Link 
                  to="/dance" 
                  className={`mobile-nav-link ${isActive('/dance') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Танцы
                </Link>
                <Link 
                  to="/coffee" 
                  className={`mobile-nav-link ${isActive('/coffee') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Кофе
                </Link>
                <Link 
                  to="/online-learning" 
                  className={`mobile-nav-link ${isActive('/online-learning') ? 'active' : ''}`} 
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Онлайн-обучение
                </Link>
              </nav>
              <div className="mobile-contact">
                <a href="tel:+71234567890" className="mobile-phone-link">
                  <i className="icon-phone"></i>
                  <span>+7 (123) 456-7890</span>
                </a>
                <div className="mobile-social-links">
                  <a
                    href="https://instagram.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="mobile-social-link"
                  >
                    <i className="icon-instagram"></i>
                  </a>
                  <a href="https://facebook.com" target="_blank" rel="noopener noreferrer" className="mobile-social-link">
                    <i className="icon-facebook"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        )}
      </header>
      {/* Spacer for header and promo banner */}
      <div style={{
        height: promoBannerData && promoBannerData.isActive ? 120 : 64
      }} />
    </>
  )
}

export default SiteHeader

