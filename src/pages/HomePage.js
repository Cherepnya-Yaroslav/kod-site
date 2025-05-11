import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import StrapiContent from "../components/StrapiContent"
import "../styles/components/Card.css"
import "../styles/components/Tabs.css"
import "../styles/pages/HomePage.css"

const HomePage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);

  useEffect(() => {
    const img = new Image();
    img.src = "/collage-bg/collage-1.png";
    img.onload = () => {
      console.log("Background image loaded");
      setBgLoaded(true);
    };
  }, []);

  const renderHomePageData = (data, getMediaUrl) => {
    const homePageData = data.data?.[0] || {};
    
    console.log("Background loaded state:", bgLoaded); // Отладочный вывод

    // Отладка загрузки изображений
    console.log("Gallery Images:", homePageData.Gallery_Images);
    if (homePageData.Gallery_Images && homePageData.Gallery_Images.length > 0) {
      homePageData.Gallery_Images.forEach((image, index) => {
        console.log(`Image ${index} URL:`, getMediaUrl(image));
      });
    }

    return (
      <>
      <SiteHeader />
        <section className="hero-section">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-1.png"
              alt=""
              loading="eager"
            />
          </div>
          <div className="hero-overlay" />
          <div className="hero-container">
            <div className="hero-content">
              <h1 className="hero-title">
                {homePageData.Title || "K.O.D - это арт-пространство для детей, подростков и взрослых с акцентом на развитие эмоционального и физического интеллекта для лидеров нового поколения."}
              </h1>
              <p className="hero-description">
                {homePageData.Description || "Мы формируем и развиваем навыки soft skills (гибкие навыки мышления) и физический интеллект через игру и танцы."}
              </p>
            </div>
          </div>
        </section>

        <section className="video-section">
          <div className="container">
            <div className="video-grid">
              
              <div className="video-content">
                <h2 className="section-title">О нас</h2>
                <p className="section-description video-p">
                  K.O.D - это арт-пространство для детей, подростков и взрослых с акцентом на развитие эмоционального и физического интеллекта для лидеров нового поколения.
                </p>
                <p className="section-description video-p">
                  Мы формируем и развиваем навыки soft skills (гибкие навыки мышления) и физический интеллект через игру и танцы.
                </p>
                
              </div>
            </div>
          </div>
        </section>

        <section id="about" className="about-section debug-info">
          <div className="container">
            <div className="about-header">
              <h2 className="section-title">{homePageData.About_Title || "О проекте K.O.D."}</h2>
              <p className="section-description">
                {homePageData.About_Full_Description || 
                  "Мы создали пространство, где каждый может найти развлечение по душе, будь то тематическая вечеринка, настольные игры или танцевальный мастер-класс."}
              </p>
            </div>
            <div className="photo-grid">
              {homePageData.Gallery_Images?.map((image, index) => {
                const imageUrl = getMediaUrl(image);
                console.log(`Rendering image ${index} with URL:`, imageUrl);
                
                return (
                  <div key={image.id || index} className="photo-item">
                    <img
                      src={imageUrl}
                      alt={image.alternativeText || `K.O.D. фото ${index + 1}`}
                      className="photo-image loaded"
                      loading="lazy"
                    />
                  </div>
                );
              }) || (
                [...Array(3)].map((_, index) => (
                  <div key={index} className="photo-item">
                    <img
                      src={`/placeholder.svg?height=600&width=600&text=Фото ${index + 1}`}
                      alt={`K.O.D. фото ${index + 1}`}
                      className="photo-image loaded"
                      loading="lazy"
                    />
                  </div>
                ))
              )}
            </div>
          </div>
        </section>

        <section className="founder-section">
          <div className="founder-grid">
            <div className="founder-quote">
              <div className="quote-icon">❝</div>
              <blockquote className="quote-text">
                {homePageData.Founder_Quote || 
                  "Мы создали K.O.D. как место, где люди могут отдохнуть от повседневной рутины, погрузиться в мир игр и развлечений, и просто хорошо провести время в компании друзей или семьи."}
              </blockquote>
              <p className="quote-author">— {homePageData.Founder_Name || "Основатель K.O.D."}</p>
            </div>
            
            <div className="founder-image">
              <img 
                src="/founder.jpg" 
                alt={homePageData.Founder_Name || "Основатель K.O.D."} 
                className="founder-photo"
              />
            </div>
          </div>
        </section>
      </>
    );
  };

  return (
    <div className="page-container home-page">
      
      <main className="main-content">
        <StrapiContent 
          endpoint="home-pages" 
          render={renderHomePageData} 
        />
      </main>
      <SiteFooter />
    </div>
  );
};

export default HomePage;

