"use client"

import { useState } from "react"
import { Link, useLocation } from "react-router-dom"
import "../styles/components/SiteHeader.css"

const SiteHeader = () => {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const location = useLocation()

  const toggleMobileMenu = () => {
    setMobileMenuOpen(!mobileMenuOpen)
  }

  // Check if the link matches the current path
  const isActive = (path) => {
    return location.pathname === path
  }

  return (
    <header className="site-header">
      
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
  )
}

export default SiteHeader

