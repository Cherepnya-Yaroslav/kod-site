import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import FAQ from "../components/FAQ"
import { fetchData } from '../api/strapi'
// Обновляем импорт CSS
import "../styles/pages/DancePage.css"

const DancePage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Загрузка данных страницы
  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        const response = await fetchData('dance-page', { populate: '*' });
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
  
  // Пример данных для танцевальных направлений
  const danceStyles = [
    {
      id: 1,
      title: "HIP - HOP",
      description:
        "Hip - hop культура разбивает все ограничения! Рожденная на улицах, она сочетает в себе музыкальную стилистику, более 15 танцевальных стилей, свободный образ мышления, фристайл и самоидентичность. То как одеваются хоперы, то как они двигаются и чувствуют ритм - это про СВОБОДУ! То как они умеют импровизировать и самовыражаться - это про УМЕНИЕ ЖИТЬ в балансе с миром и собой!",
      schedule: "Вторник, Четверг: 19:00-20:30",
      instructor: "Кристина, Cофия",
      level: "Начинающий / Средний",
      image: "/hip-hop-cover.webp",
    },
    {
      id: 2,
      title: "BREAKING",
      description:"Когда брейкер выходит на танцпол - публика замирает, открыв рот…Эти мощные, физически одаренные, красивые прокаченные парни и даже девушки - яркий пример того, что нет ничего невозможного! Стоять на голове, крутить, фризовать, танцевать на руках и замирать в воздухе…Этому может научиться каждый, кто любит чувствовать свое тело, свои неограниченные возможности! чувствует.",
      schedule: "Понедельник, Среда: 20:00-21:30",
      instructor: "Александр",
      level: "Все уровни",
      image: "/breaking-dance-cover.webp",
    },
    {
      id: 3,
      title: "K-POP COVER DANCE",
      description: "K-Pop превратился в масштабную музыкальную субкультуру с миллионами поклонников во всём мире. Это направление вскружило голову молодежи своими яркими образами и эпатажностью в одежде. Стильные образы, умение передавать публике свое настроение, эмоции и мысли через синхронные и слаженные движения, подвижную мимику лица, ecОдновременное смешение в танце стилей  Hip-хоп Popping Locking Waacking Vogue Jazz Contemporary - это все про K-POP COVER DANCE.",
      schedule: "Вторник, Пятница: 18:00-19:30",
      instructor: "Юлия",
      level: "Начинающий / Средний",
      image: "/k-pop-dance-cover.webp",
    }
  ]

  // FAQ data
  const faqItems = [
    {
      question: "С какого возраста можно начать заниматься танцами?",
      answer: "Мы принимаем учеников с 14 лет. Для каждого направления у нас есть группы разного уровня подготовки, поэтому вы сможете начать в любом возрасте."
    },
    {
      question: "Какая одежда нужна для занятий?",
      answer: "Рекомендуем удобную спортивную одежду, не стесняющую движений, и сменную обувь (кроссовки с чистой подошвой). Для хип-хопа подойдут свободные штаны и футболка, для K-POP можно выбрать более обтягивающую одежду."
    },
    {
      question: "Нужна ли предварительная подготовка?",
      answer: "Нет, специальная подготовка не требуется. Мы набираем группы разных уровней, включая начинающих. Наши преподаватели помогут освоить базовые движения и постепенно перейти к более сложным элементам."
    },
    {
      question: "Как проходит пробное занятие?",
      answer: "На пробном занятии вы познакомитесь с преподавателем, разучите базовые движения выбранного стиля и сможете оценить свои силы. Длительность занятия - 90 минут. После пробного занятия вы сможете решить, какой абонемент выбрать."
    }
  ];

  return (
    <div className="page-container dance-page">
      <SiteHeader />
      <main className="main-content">
        <section className="dance-hero-section">
          <div className={`hero-background ${bgLoaded ? 'loaded' : ''}`}>
            <img
              src="/collage-bg/collage-22.png"
              alt=""
              loading="eager"
              onLoad={() => setBgLoaded(true)}
            />
          </div>
          <div className="hero-overlay" />
          <div className="dance-hero-content">
            <h1 className="dance-hero-title">{pageData?.Title || "Танцы в K.O.D"}</h1>
            <p className="dance-hero-description">{pageData?.Description || "Развивайте пластику и чувство ритма"}</p>
          </div>
        </section>

        {/* Video Section */}
        <section className="dance-video-section">
          <div className="container">
            <div className="dance-video-grid">
              <div className="dance-video-container">
                <video 
                  className="dance-video"
                  controls
                  playsInline
                  preload="auto"
                  muted
                  autoPlay={false}
                  onError={(e) => {
                    console.error('Error loading video:', e);
                  }}
                >
                  <source src="/video-dance.mov" type="video/quicktime" />
                  <source src="/video-dance.mov" type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
              </div>
              <div className="dance-video-content">
                <h2 className="section-title">Танцы в K.O.D.</h2>
                <p className="section-description video-p">
                С 2020 года в арт-пространстве K.O.D. собираются фанаты своих физических возможностей, и они же стремятся к non-stop развитию своего физического интеллекта через танец.
                    Доказано: люди с развитым физическим интеллектом отлично скоординированы, выносливы, грациозны, обладают ловкостью, легкостью и здоровым отношением к своему телу. 
                    Такие люди прекрасно ориентируются в пространстве и легче избавляются от телесных и ментальных блоков. 
                    «Физический интеллект — это способность человека ощущать, понимать и эффективно управлять своим телом. Он тесно связан с общим состоянием здоровья, чувством комфорта и возможностью физически реализовать свои стремления и цели.»
                    Присоединяйтесь к нашей команде физически - одаренных и мощных людей!
                </p>
                
                <div className="dance-cta">
                  
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Dance Styles Section */}
        <section id="dance-styles" className="dance-styles-section">
          <div className="container">
            <div className="dance-styles-header">
              <h2 className="section-title">Танцевальные направления</h2>
              <p className="section-description">Выберите направление, которое вам по душе</p>
            </div>
            <div className="dance-styles-grid">
              {danceStyles.map((style) => (
                <Card key={style.id} className="dance-style-card">
                  <div className="dance-style-image-container">
                    <img src={style.image || "/placeholder.svg"} alt={style.title} className="dance-style-image" />
                  </div>
                  <CardHeader>
                    <CardTitle>{style.title}</CardTitle>
                    <CardDescription>
                      <div className="dance-style-detail">
                        <span className="dance-style-icon calendar-icon"></span>
                        <span>{style.schedule}</span>
                      </div>
                      <div className="dance-style-detail">
                        <span className="dance-style-icon people-icon"></span>
                        <span>Преподаватель: {style.instructor}</span>
                      </div>
                      <div className="dance-style-detail">
                        <span className="dance-style-icon clock-icon"></span>
                        <span>Уровень: {style.level}</span>
                      </div>
                    </CardDescription>
                  </CardHeader>
                  <CardContent>
                    <p className="dance-style-description">{style.description}</p>
                  </CardContent>
                  <CardFooter>
                    <Button className="dance-style-button">Записаться на пробное занятие</Button>
                  </CardFooter>
                </Card>
              ))}
            </div>
          </div>
        </section>

        {/* Pricing Section */}
        <section className="pricing-section">
          <div className="container">
            <div className="pricing-header">
              <h2 className="section-title">Стоимость занятий</h2>
              <p className="section-description">Выберите подходящий вам формат</p>
            </div>
            <div className="pricing-grid">
              <Card className="pricing-card">
                <CardHeader>
                  <CardTitle>Разовое посещение</CardTitle>
                  <CardDescription>Для тех, кто хочет попробовать</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="pricing-price">800 ₽</div>
                  <ul className="pricing-features">
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Одно занятие любого направления</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Длительность 90 минут</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Без обязательств</span>
                    </li>
                  </ul>
                </CardContent>
                <CardFooter>
                  <Button className="pricing-button">Записаться</Button>
                </CardFooter>
              </Card>

              <Card className="pricing-card pricing-card-featured">
                <CardHeader className="pricing-card-featured-header">
                  <CardTitle>Абонемент на месяц</CardTitle>
                  <CardDescription>Самый популярный вариант</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="pricing-price">3500 ₽</div>
                  <ul className="pricing-features">
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>8 занятий в месяц</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Любое направление</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Заморозка на 7 дней</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Экономия 30%</span>
                    </li>
                  </ul>
                </CardContent>
                <CardFooter>
                  <Button className="pricing-button">Оформить абонемент</Button>
                </CardFooter>
              </Card>

              <Card className="pricing-card">
                <CardHeader>
                  <CardTitle>Абонемент на 3 месяца</CardTitle>
                  <CardDescription>Для постоянных клиентов</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="pricing-price">9000 ₽</div>
                  <ul className="pricing-features">
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>24 занятия (8 в месяц)</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Любое направление</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Заморозка на 14 дней</span>
                    </li>
                    <li className="pricing-feature">
                      <span className="check-icon"></span>
                      <span>Экономия 40%</span>
                    </li>
                  </ul>
                </CardContent>
                <CardFooter>
                  <Button className="pricing-button">Оформить абонемент</Button>
                </CardFooter>
              </Card>
            </div>
          </div>
        </section>

        {/* Instructors Section */}
        <section className="instructors-section">
          <div className="container">
            <div className="instructors-header">
              <h2 className="section-title">Наши преподаватели</h2>
              <p className="section-description">Профессионалы своего дела с многолетним опытом</p>
            </div>
            <div className="instructors-grid">
              {[
                {
                  name: "Кристина",
                  role: "Педагог - хореограф по направлению Hip-Hop",
                  bio: "Профессиональная танцовщица с 10-летним опытом. Победитель международных соревнований.",
                  image: "/kristina-dance.png",
                },
                {
                  name: "София",
                  role: "Педагог - хореограф по направлению Hip-Hop",
                  bio: "Мастер спорта по бальным танцам. Преподает латину более 8 лет.",
                  image: "/sophia-dance.png",
                },
                {
                  name: "Александр",
                  role: "Тренер по направлению Breaking",
                  bio: "Участник известной брейк-данс команды. Опыт выступлений на международных фестивалях.",
                  image: "/alex-dance.png",
                },
                {
                  name: "Юлия",
                  role: "Педагог - хореограф по направлению K-POP",
                  bio: "Хореограф с педагогическим образованием. Специализируется на работе с детьми.",
                  image: "/yulia-dance.png",
                },
              ].map((instructor, index) => (
                <Card key={index} className="instructor-card">
                  <div className="instructor-image-container">
                    <img
                      src={instructor.image || "/placeholder.svg"}
                      alt={instructor.name}
                      className="instructor-image"
                    />
                  </div>
                  <CardHeader>
                    <CardTitle>{instructor.name}</CardTitle>
                    <CardDescription>{instructor.role}</CardDescription>
                  </CardHeader>
                  <CardContent>
                    <p className="instructor-bio">{instructor.bio}</p>
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>
        </section>

        {/* FAQ Section */}
        <FAQ 
          title="Вопросы о танцевальных занятиях" 
          questions={faqItems} 
        />
      </main>
      <SiteFooter />
    </div>
  )
}

export default DancePage

