import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "../components/Card"
import Collage from "../components/Collage"
import React, { useState, useEffect } from "react"
import { fetchData } from '../api/strapi'
import { Link } from "react-router-dom"
import ProgramDetails from "../components/ProgramDetails"
import PageHeaderSection from "../components/PageHeaderSection"
import FeedbackForm from '../components/FeedbackForm'

// Обновляем импорт CSS
import "../styles/pages/PersonalPartiesPage.css"

const PersonalPartiesPage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedProgram, setSelectedProgram] = useState(null);

  // Данные о программах
  const programsData = {
    themeParties: {
      title: "ТЕМАТИЧЕСКИЕ ВЕЧЕРИНКИ",
      description: [
        "Тематическая вечеринка - это эмоциональный взрыв! Это - событие, когда гости целиком погружаются в атмосферу выбранной вами темы/идеи. Наша команда - эксперты в организации тематических вечеринок 'под ключ', а наше пространство позволяет воссоздать любую атмосферу! Что вам интересно? Властелин колец? Люди в черном? Французский шик? Игра престолов? Единороги и принцессы? Пираты? Зомби? Анимэ?     Сделаем вашу вечеринку эмоциональной  до каждой милисекунды!   Создадим атмосферу крутым декором! Встретим гостей волкам зоной, Озвучим профессиональным диджеем и караоке-баром! Разнообразим яркой дискотекой! Украсим неоновым светом!   Дополним тематическим сценарием, проведем с крутым ведущим!                                                                               Идеально для: - детский ДР - подростковый ДР - взрослый ДР - девичник - гендерпати - выпускной - корпоратив.                                                                 "
      ],
      mainImage: "/placeholder-theme-party.jpg",
      galleryImages: [
        "/placeholder-gallery-1.jpg",
        "/placeholder-gallery-2.jpg",
        "/placeholder-gallery-3.jpg",
        "/placeholder-gallery-4.jpg"
      ]
    },
    offSiteEvents: {
      title: "ВЫЕЗДНЫЕ МЕРОПРИЯТИЯ",
      description: [
        "Задумали мероприятие? Детский или взрослый День Рождения? Корпоратив? Выпускной? ДЕВИЧНИК? ТИМБИЛДИНГ?  Выездное мероприятие - отличная идея  Если вдруг:Желанная дата уже занята в нашем пространстве - У вас уже есть локация мечты (кафе/пространство), но нет ресурсов организовать все детально и самостоятельно - наша команда быстро и круто сделает это для вас.  Из чего выбрать? Ролевые игры Игры -квесты Шоу - игры Квиз - игры Т-игры Музыкальные игры."
      ],
      mainImage: "/placeholder-offsite-event.jpg",
      galleryImages: [
        "/placeholder-gallery-5.jpg",
        "/placeholder-gallery-6.jpg",
        "/placeholder-gallery-7.jpg",
        "/placeholder-gallery-8.jpg"
      ]
    },
    graduations: {
      title: "ВЫПУСКНЫЕ",
      description: [
        "Официальная часть. Выпускного - история понятная! А вот торжественная часть - самая долгожданная! Окунуться в искренние эмоции от прожитого вместе! Вспомнить победы и поражения! Посмеяться в компании друзей и родителей…Мы трепетно относимся к таким моментам, умеем аккумулировать крутые эмоции, которые западут в души и запомнятся навсегда!  Команда KOD  предлагает организацию вечеринки для выпускников под ключ На территории пространствами организуем вечеринки до 30 человек! В выездном формате мы организуем вечеринки для неограниченного количества гостей                                                            Форматы выпускных: - шоу/квиз/квест игры - тематические вечеринки ."
      ],
      mainImage: "/placeholder-graduation.jpg",
      galleryImages: [
        "/placeholder-gallery-9.jpg",
        "/placeholder-gallery-10.jpg",
        "/placeholder-gallery-11.jpg",
        "/placeholder-gallery-12.jpg"
      ]
    },
    teamBuilding: {
      title: "ТИМБИЛДИНГИ",
      description: [
        "Компания начинается с идеи, но развивается, расширяется и масштабируется только при условии вдохновленной, увлеченной, замотивированной и сплоченной команды! Здоровая и организованная корпоративная культура всегда была двигателем прогресса и вряд ли Ктото поспорит с этим!  Мы предлагаем организовать Тим-билдинг в форме - бизнес-игр - т-игр - тематических вечеринок с учетом ваших целей и задач! ."
      ],
      mainImage: "/placeholder-teambuilding.jpg",
      galleryImages: [
        "/placeholder-gallery-13.jpg",
        "/placeholder-gallery-14.jpg",
        "/placeholder-gallery-15.jpg",
        "/placeholder-gallery-16.jpg"
      ]
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
      galleryImages: [
        "/rent-1.jpg",
        "/rent-2.jpg",
        "/rent-3.jpg",
        "/rent-4.jpg",
        "/rent-5.jpg"
      ]
    }
  };

  // Загрузка данных страницы
  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        const response = await fetchData('personal-parties-page', { populate: '*' });
        console.log('Page data:', response);
        setPageData(response.data);
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
  const handleProgramSelect = (programKey) => {
    setSelectedProgram(programsData[programKey]);
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

  // Детальное описание для PageHeaderSection
  const pageHeaderDescription = "                                                                         Собрать для вас крутую вечеринку - наш профессиональный навык. Мы умеем создавать события, которые западают в души и сердца людей! Наши постоянные клиенты дети и взрослые бронируют пространство на год вперед, зная что мы никогда не повторяемся и их вечеринка станет особенной снова!";

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
          title="Персональные вечеринки"
          description={pageHeaderDescription}
        />

        {/* Services Section */}
        <section className="services-section">
          <div className="container">
            <div className="services-grid">
              <Card className="service-card">
                <div className="service-card-image">
                  <img src="theme-parties.jpg" alt="Тематические вечеринки" />
                </div>
                <CardHeader>
                  <CardTitle>Тематические вечеринки</CardTitle>
                  <CardDescription>
                    Организуем праздник в любой тематике: от супергероев до ретро-вечеринок
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Link to="/theme-parties">
                      <Button 
                        variant="secondary"
                      >
                        ПОДРОБНЕЕ
                      </Button>
                    </Link>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src="/gaming-parties.jpg" alt="Игровые вечеринки" />
                </div>
                <CardHeader>
                  <CardTitle>Игровые вечеринки дети/взрослые</CardTitle>
                  <CardDescription>Увлекательные игровые форматы для любого возраста</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Link to="/gaming-parties">
                      <Button 
                        variant="secondary"
                      >
                        ПОДРОБНЕЕ
                      </Button>
                    </Link>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src="/venue-rental.jpg" alt="Аренда пространства" />
                </div>
                <CardHeader>
                  <CardTitle>Аренда пространства</CardTitle>
                  <CardDescription>Сдаем наше пространство для ваших мероприятий</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Button 
                      variant="secondary" 
                      onClick={() => handleProgramSelect('venueRental')}
                    >
                      ПОДРОБНЕЕ
                    </Button>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src="/images/offsite-events.jpg" alt="Выездные мероприятия" />
                </div>
                <CardHeader>
                  <CardTitle>Выездные мероприятия</CardTitle>
                  <CardDescription>Привезем праздник в любую локацию: дом, офис, парк или ресторан</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Button 
                      variant="secondary" 
                      onClick={() => handleProgramSelect('offSiteEvents')}
                    >
                      ПОДРОБНЕЕ
                    </Button>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src="/images/graduation.jpg" alt="Выпускные" />
                </div>
                <CardHeader>
                  <CardTitle>Выпускные</CardTitle>
                  <CardDescription>Особенные праздники для выпускников детских садов, школ и вузов</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Button 
                      variant="secondary" 
                      onClick={() => handleProgramSelect('graduations')}
                    >
                      ПОДРОБНЕЕ
                    </Button>
                  </div>
                </CardContent>
              </Card>

              <Card className="service-card">
                <div className="service-card-image">
                  <img src="/images/team-building.jpg" alt="Тимбилдинги" />
                </div>
                <CardHeader>
                  <CardTitle>Тимбилдинги</CardTitle>
                  <CardDescription>
                    Корпоративные мероприятия для сплочения команды и повышения мотивации
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="service-action">
                    <Button 
                      variant="secondary" 
                      onClick={() => handleProgramSelect('teamBuilding')}
                    >
                      ПОДРОБНЕЕ
                    </Button>
                  </div>
                </CardContent>
              </Card>

              

              
              
            </div>
            <div className="scroll-indicator">←→</div>
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
              {[
                {
                  title: "Уникальные сценарии",
                  description: "Индивидуальный подход к каждому мероприятию с учетом всех пожеланий",
                },
                {
                  title: "Профессиональные ведущие",
                  description: "Опытные аниматоры и ведущие, умеющие работать с любой аудиторией",
                },
                {
                  title: "Современное оборудование",
                  description: "Качественный звук, свет и спецэффекты для создания нужной атмосферы",
                },
                {
                  title: "Тематическое оформление",
                  description: "Полное преображение пространства в соответствии с выбранной темой",
                },
                {
                  title: "Фото и видеосъемка",
                  description: "Профессиональная съемка для сохранения воспоминаний о мероприятии",
                },
                {
                  title: "Кейтеринг",
                  description: "Организация питания любой сложности от фуршета до банкета",
                },
              ].map((feature, index) => (
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

        {/* Booking Form
        <section className="booking-section">
          <div className="container">
            <FeedbackForm 
              title="Забронировать пространство"
              description="Заполните форму, и мы свяжемся с вами для обсуждения деталей"
              questions={[
                {
                  id: 'eventType',
                  text: 'Какое мероприятие планируете проводить?',
                  type: 'text',
                  placeholder: 'Например: день рождения, корпоратив, выпускной',
                  required: true
                },
                {
                  id: 'guestCount',
                  text: 'Сколько человек планируется на мероприятии?',
                  type: 'number',
                  placeholder: '10',
                  min: 1,
                  max: 100,
                  required: true
                },
                {
                  id: 'eventDate',
                  text: 'Какую дату рассматриваете?',
                  type: 'date',
                  required: true
                },
                {
                  id: 'name',
                  text: 'Как к вам обращаться?',
                  type: 'text',
                  placeholder: 'Ваше имя',
                  required: true
                },
                {
                  id: 'phone',
                  text: 'Укажите ваш номер телефона',
                  type: 'tel',
                  placeholder: '+7 (___) ___-__-__',
                  required: true
                },
                {
                  id: 'contactMethod',
                  text: 'Какой способ связи для вас удобнее?',
                  type: 'radio',
                  options: [
                    { value: 'phone', label: 'Телефонный звонок' },
                    { value: 'whatsapp', label: 'WhatsApp' },
                    { value: 'telegram', label: 'Telegram' }
                  ],
                  required: true
                }
              ]}
            />
          </div>
        </section> */}

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
                    <ul className="conditions-list">
                      <li className="conditions-item">
                        <span className="check-icon"></span>
                        <span>Предоплата 50% для фиксации даты</span>
                      </li>
                      <li className="conditions-item">
                        <span className="check-icon"></span>
                        <span>Полная оплата не позднее 3 дней до мероприятия</span>
                      </li>
                      <li className="conditions-item">
                        <span className="check-icon"></span>
                        <span>Возможность переноса даты при уведомлении не менее чем за 7 дней</span>
                      </li>
                    </ul>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>
        </section>

        
      </main>
      <SiteFooter />
    </div>
  )
}

export default PersonalPartiesPage

