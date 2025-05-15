import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "../components/Card"
import React, { useState, useEffect } from "react"
import { fetchData, getMediaUrl, getMediaUrls, processComponentMedia } from '../api/strapi'
import { Link } from "react-router-dom"
import ProgramDetails from "../components/ProgramDetails"
import PageHeaderSection from "../components/PageHeaderSection"
import Testimonials from "../components/Testimonials"
import FAQ from "../components/FAQ"

// Обновляем импорт CSS
import "../styles/pages/PersonalPartiesPage.css"

const PersonalPartiesPage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedProgram, setSelectedProgram] = useState(null);
  const [dynamicPrograms, setDynamicPrograms] = useState([]);
  const [faqData, setFaqData] = useState([]);
  const [testimonialData, setTestimonialData] = useState([]);
  const [fishkiData, setFishkiData] = useState([]);
  const [staticProgramsData, setStaticProgramsData] = useState({
    themeParties: {
      title: "ТЕМАТИЧЕСКИЕ ВЕЧЕРИНКИ",
      description: [
        "Тематическая вечеринка - это эмоциональный взрыв! Это - событие, когда гости целиком погружаются в атмосферу выбранной вами темы/идеи. Наша команда - эксперты в организации тематических вечеринок 'под ключ', а наше пространство позволяет воссоздать любую атмосферу! Что вам интересно? Властелин колец? Люди в черном? Французский шик? Игра престолов? Единороги и принцессы? Пираты? Зомби? Анимэ?     Сделаем вашу вечеринку эмоциональной  до каждой милисекунды!   Создадим атмосферу крутым декором! Встретим гостей волкам зоной, Озвучим профессиональным диджеем и караоке-баром! Разнообразим яркой дискотекой! Украсим неоновым светом!   Дополним тематическим сценарием, проведем с крутым ведущим!                                                                               Идеально для: - детский ДР - подростковый ДР - взрослый ДР - девичник - гендерпати - выпускной - корпоратив."
      ],
      // mainImage: "/theme-parties.jpg",
      // galleryImages: [
      //   "/placeholder-gallery-1.jpg",
      //   "/placeholder-gallery-2.jpg",
      //   "/placeholder-gallery-3.jpg",
      //   "/placeholder-gallery-4.jpg"
      // ]
    },
    gamingParties: {
      title: "ИГРОВЫЕ ВЕЧЕРИНКИ",
      description: [
        "Увлекательные игровые форматы для любого возраста"
      ],
      // mainImage: "/gaming-parties.jpg",
      // galleryImages: [
      //   "/placeholder-gallery-5.jpg",
      //   "/placeholder-gallery-6.jpg",
      //   "/placeholder-gallery-7.jpg",
      //   "/placeholder-gallery-8.jpg"
      // ]
    },
    venueRental: {
      title: "АРЕНДА ПРОСТРАНСТВА",
      description: [
        "Наше пространство заряжено бешеной энергетикой! Наше пространство функционирует как площадка для проведения мероприятий различных форматов: от семейных вечеровдо корпоративных мероприятий! Если вы ищете то самое место, где можно телепортироваться в другую реальность - воплощайте свои идеи здесь.",
        "- 130 кв м закрытого пространства с 5 залами и отдельным входом",
        "- Музыкальное оборудование",
        "- Световое оборудование/неоновый свет",
        "- Столы/стулья",
        "- Пуфы",
        "- Зеркала",
        "- Администратор/хостес",
        "- Кофейный бар",
        "- Барная зона"
      ],
      mainImage: "/rent-main.jpg",
      // galleryImages: [
      //   "/rent-1.jpg",
      //   "/rent-2.jpg",
      //   "/rent-3.jpg",
      //   "/rent-4.jpg",
      //   "/rent-5.jpg"
      // ]
    }
  });

  // Загрузка данных страницы
  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        
        const response = await fetchData('personal-parties-page', { 
          populate: [
            'programs.mainImage', 
            'programs.galleryImages', 
            'pageHeader', 
            'questions', 
            'testimonial', 
            'fishki',
            'rentGallery',
            'gameGallery',
            'themeGallery'
          ] 
        });
        
        console.log('Personal parties page data from Strapi:', response);
        
        setPageData(response.data);

        // Обработка галерей для статических карточек
        const themeGallery = response.data?.themeGallery || [];
        const gameGallery = response.data?.gameGallery || [];
        const rentGallery = response.data?.rentGallery || [];

        // Обновляем staticProgramsData с данными из Strapi
        setStaticProgramsData(prev => ({
          themeParties: {
            ...prev.themeParties,
            mainImage: themeGallery.length > 0 ? getMediaUrl(themeGallery[0]) : prev.themeParties.mainImage,
            galleryImages: themeGallery.map(img => getMediaUrl(img))
          },
          gamingParties: {
            ...prev.gamingParties,
            mainImage: gameGallery.length > 0 ? getMediaUrl(gameGallery[0]) : prev.gamingParties.mainImage,
            galleryImages: gameGallery.map(img => getMediaUrl(img))
          },
          venueRental: {
            ...prev.venueRental,
            mainImage: rentGallery.length > 0 ? getMediaUrl(rentGallery[0]) : prev.venueRental.mainImage,
            galleryImages: rentGallery.map(img => getMediaUrl(img))
          }
        }));
        
        // Обработка отзывов
        const testimonials = response.data?.testimonial || response.data?.attributes?.testimonial || [];
        console.log('Testimonials data:', testimonials);
        
        // Преобразуем данные в формат, необходимый для компонента Testimonials
        const formattedTestimonials = testimonials.map(t => ({
          text: t.text,
          author: t.author
        }));
        
        setTestimonialData(formattedTestimonials);

        // Обработка FAQ данных
        const questions = response.data?.questions || response.data?.attributes?.questions || [];
        console.log('FAQ data:', questions);
        
        // Преобразуем данные в формат, необходимый для компонента FAQ
        const formattedQuestions = questions.map(q => ({
          question: q.question,
          answer: q.answer
        }));
        
        setFaqData(formattedQuestions);

        // Обработка фишек
        const fishki = response.data?.fishki || response.data?.attributes?.fishki || [];
        console.log('Fishki data:', fishki);
        
        const formattedFishki = fishki.map(f => ({
          title: f.Title,
          description: f.Description
        }));
        
        setFishkiData(formattedFishki);

        // Проверка данных о программах
        const programs = response.data?.programs || response.data?.attributes?.programs;
        console.log('Programs raw data:', programs);
        
        if (programs && Array.isArray(programs) && programs.length > 0) {
          console.log('Found programs:', programs.length);
          
          // Обрабатываем программы
          const formattedPrograms = programs.map(program => {
            console.log('Processing program:', program.title);
            
            // Проверяем доступность mainImage
            console.log('Program mainImage:', program.mainImage);
            
            // Получение URL изображения
            const mainImageUrl = program.mainImage ? getMediaUrl(program.mainImage) : null;
            console.log('Main image URL:', mainImageUrl);
            
            // Обработка галереи
            let galleryUrls = [];
            if (program.galleryImages) {
              if (Array.isArray(program.galleryImages)) {
                galleryUrls = program.galleryImages.map(img => {
                  const url = getMediaUrl(img);
                  console.log('Gallery image URL:', url);
                  return url;
                });
              } else {
                const url = getMediaUrl(program.galleryImages);
                console.log('Single gallery image URL:', url);
                galleryUrls = [url];
              }
            }
            
            return {
              title: program.title,
              description: [program.description],
              mainImage: mainImageUrl,
              galleryImages: galleryUrls,
              slug: program.slug,
              shortDescription: program.shortDescription
            };
          });
          
          console.log('Formatted programs:', formattedPrograms);
          setDynamicPrograms(formattedPrograms);
        } else {
          // Если программы не найдены, попробуем другой формат запроса
          console.warn('No programs found in the first API response, trying another request format');
          
          const alternativeResponse = await fetchData('personal-parties-page', {
            populate: 'deep'  // Использовать глубокий populate для получения всех связанных данных
          });
          
          console.log('Alternative response:', alternativeResponse);
          
          const altPrograms = alternativeResponse.data?.programs || 
                             alternativeResponse.data?.attributes?.programs;
          
          if (altPrograms && Array.isArray(altPrograms) && altPrograms.length > 0) {
            console.log('Found programs in alternative request:', altPrograms.length);
            // Process programs similar to above...
            const formattedPrograms = altPrograms.map(program => ({
              title: program.title,
              description: [program.description],
              mainImage: program.mainImage ? getMediaUrl(program.mainImage) : null,
              galleryImages: program.galleryImages ? 
                (Array.isArray(program.galleryImages) ? 
                  program.galleryImages.map(img => getMediaUrl(img)) : 
                  [getMediaUrl(program.galleryImages)]
                ) : [],
              slug: program.slug,
              shortDescription: program.shortDescription
            }));
            
            setDynamicPrograms(formattedPrograms);
          } else {
            console.error('Unable to fetch programs from Strapi API');
          }
        }
      } catch (err) {
        console.error('Error loading page data:', err);
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    loadPageData();
  }, []);

  // Обработчик нажатия на кнопку "Подробнее"
  const handleProgramSelect = (program) => {
    setSelectedProgram(program);
    window.scrollTo(0, 0);
  };

  // Обработчик возврата к списку услуг
  const handleBackToList = () => {
    setSelectedProgram(null);
  };

  if (loading) {
    return (
      <>
        <SiteHeader />
        <div className="loading">Загрузка...</div>
      </>
    );
  }

  if (error) {
    return (
      <>
        <SiteHeader />
        <div className="error">Ошибка: {error}</div>
      </>
    );
  }

  // Если выбрана программа, показываем её детали
  if (selectedProgram) {
    return (
      <div className="page-container personal-parties-page">
        <SiteHeader />
        <main className="main-content">
          <ProgramDetails 
            title={selectedProgram.title}
            description={selectedProgram.description}
            mainImage={selectedProgram.mainImage}
            galleryImages={selectedProgram.galleryImages}
            returnPath="#"
            onBackClick={handleBackToList}
          />
        </main>
        <SiteFooter />
      </div>
    );
  }

  return (
    <div className="page-container personal-parties-page">
      <SiteHeader />
      <main className="main-content">
        <section className="personal-parties-hero">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-13.png"
              alt=""
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="hero-content">
            <h1>{pageData?.Title || "Личные вечеринки"}</h1>
            <p>{pageData?.Description || "Организуйте незабываемое мероприятие"}</p>
          </div>
        </section>

        {/* PageHeaderSection */}
        <PageHeaderSection 
          title={pageData?.pageHeader?.title || "Персональные вечеринки"}
          description={pageData?.pageHeader?.description || "Собрать для вас крутую вечеринку - наш профессиональный навык. Мы умеем создавать события, которые западают в души и сердца людей! Наши постоянные клиенты дети и взрослые бронируют пространство на год вперед, зная что мы никогда не повторяемся и их вечеринка станет особенной снова!"}
        />

        {/* Services Section */}
        <section className="services-section">
          <div className="container">
            <div className="services-grid">
              {/* Статичные карточки */}
              <Card className="service-card">
              <div className="service-card-image">
                            <img src={staticProgramsData.themeParties.mainImage} alt="Тематические вечеринки" />
                          </div>
                
                <CardHeader>

               
                      <CardTitle>{staticProgramsData.themeParties.title}</CardTitle>
                      <CardDescription>
                        Вы можете позволить себе всё!
                      </CardDescription>
                      <CardDescription>
                        Организуем любой тематический празник от супергероев до ретро-вечеринок 
                      </CardDescription>
                           
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Link to="/theme-parties">
                      <Button variant="secondary">ПОДРОБНЕЕ</Button>
                    </Link>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src={staticProgramsData.gamingParties.mainImage} alt="Игровые вечеринки" />
                </div>
                <CardHeader>
                  <CardTitle>{staticProgramsData.gamingParties.title}</CardTitle>
                  <CardDescription>Вы можете позволить себе все игры!</CardDescription>
                  <CardDescription>Увлекательные игровые форматы для любого возраста</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Link to="/gaming-parties">
                      <Button variant="secondary">ПОДРОБНЕЕ</Button>
                    </Link>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src={staticProgramsData.venueRental.mainImage} alt="Аренда пространства" />
                </div>
                <CardHeader>
                  <CardTitle>{staticProgramsData.venueRental.title}</CardTitle>
                  <CardDescription>Сдаем наше пространство для ваших мероприятий</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Button 
                      variant="secondary" 
                      onClick={() => handleProgramSelect(staticProgramsData.venueRental)}
                    >
                      ПОДРОБНЕЕ
                    </Button>
                  </div>
                </CardContent>
              </Card>

              {/* Динамические карточки из Strapi */}
              {dynamicPrograms.map((program, index) => (
                <Card key={program.slug || index} className="service-card">
                  <div className="service-card-image">
                    <img 
                      src={program.mainImage || '/placeholder.jpg'} 
                      alt={program.title}
                      onError={(e) => {
                        console.error('Image failed to load:', program.mainImage);
                        e.target.onerror = null; 
                        e.target.src = '/placeholder.jpg';
                      }}
                    />
                  </div>
                  <CardHeader>
                    <CardTitle>{program.title}</CardTitle>
                    <CardDescription>{program.shortDescription}</CardDescription>
                  </CardHeader>
                  <CardContent>
                    <div className="service-action">
                      <Button 
                        variant="secondary" 
                        onClick={() => handleProgramSelect(program)}
                      >
                        ПОДРОБНЕЕ
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
            <div className="scroll-indicator">←→</div>
          </div>
        </section>

        {/* Booking Conditions */}
        <section className="conditions-section">
          <div className="container">
            <div className="conditions-container">
              <div className="conditions-header">
                <h2 className="section-title">Условия бронирования</h2>
              </div>
              <Card className="conditions-card">
                <CardContent>
                  <div className="conditions-content">
                    <p>
                      Для гарантированного бронирования даты мы рекомендуем обращаться не менее чем за 2 месяца до
                      планируемого мероприятия.
                    </p>
                    <ul className="conditions-list" style={{ listStyle: 'none', padding: 0 }}>
                      <li className="conditions-item">
                        <span className="check-icon">✓</span>
                        <span>Предоплата 50% для фиксации даты</span>
                      </li>
                      <li className="conditions-item">
                        <span className="check-icon">✓</span>
                        <span>Полная оплата не позднее 3 дней до мероприятия</span>
                      </li>
                      <li className="conditions-item">
                        <span className="check-icon">✓</span>
                        <span>Возможность переноса даты при уведомлении не менее чем за 7 дней</span>
                      </li>
                    </ul>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>
        </section>

        {/* Features */}
        <section className="features-section">
          <div className="container">
            <div className="features-header">
              <h2 className="section-title">Фишки K.O.D.</h2>
              <p className="section-description">Что делает наши мероприятия особенными</p>
            </div>
            <div className="features-grid">
              {fishkiData.map((feature, index) => (
                <Card key={index} className="feature-card">
                  <CardHeader>
                    <CardTitle>{feature.title}</CardTitle>
                    <CardDescription>{feature.description}</CardDescription>
                  </CardHeader>
                </Card>
              ))}
            </div>
            <div className="scroll-indicator">←→</div>
          </div>
        </section>

        {testimonialData.length > 0 && <Testimonials testimonials={testimonialData} />}

        

        {/* FAQ Section */}
        {faqData.length > 0 && <FAQ questions={faqData} />}
        
      </main>
      <SiteFooter />
    </div>
  )
}

export default PersonalPartiesPage

