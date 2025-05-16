import React, { useState, useEffect } from "react"
import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
import FAQ from "../components/FAQ"
import FeedbackForm from "../components/FeedbackForm"
import { fetchData, getMediaUrl } from '../api/strapi'
// Обновляем импорт CSS
import "../styles/pages/DancePage.css"

const DancePage = () => {
  const [bgLoaded, setBgLoaded] = useState(false);
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [isFormOpen, setIsFormOpen] = useState(false);
  const [selectedDance, setSelectedDance] = useState(null);
  const [faqData, setFaqData] = useState([]);
  const [danceTypesData, setDanceTypesData] = useState([]);
  const [aboutUsData, setAboutUsData] = useState(null);
  const [pageHeaderData, setPageHeaderData] = useState(null);
  const [pricesData, setPricesData] = useState([]);
  const [trainersData, setTrainersData] = useState([]);

  // Статические данные для танцевальных направлений (как запасной вариант)
  const defaultDanceStyles = [
    {
      id: 1,
      title: "HIP - HOP",
      description:
        "Hip - hop культура разбивает все ограничения! Рожденная на улицах, она сочетает в себе музыкальную стилистику, более 15 танцевальных стилей, свободный образ мышления, фристайл и самоидентичность.",
      image: "/hip-hop-cover.webp",
    },
    {
      id: 2,
      title: "BREAKING",
      description: "Когда брейкер выходит на танцпол - публика замирает, открыв рот…Эти мощные, физически одаренные, красивые прокаченные парни и даже девушки - яркий пример того, что нет ничего невозможного!",
      image: "/breaking-dance-cover.webp",
    },
    {
      id: 3,
      title: "K-POP COVER DANCE",
      description: "K-Pop превратился в масштабную музыкальную субкультуру с миллионами поклонников во всём мире. Это направление вскружило голову молодежи своими яркими образами и эпатажностью в одежде.",
      image: "/k-pop-dance-cover.webp",
    }
  ];

  useEffect(() => {
    const loadPageData = async () => {
      try {
        setLoading(true);
        const response = await fetchData('dance-page', {
          populate: [
            'danceTypes.CoverImage',
            'questions',
            'aboutUs',
            'prices.points',
            'trainer.mainImage'
          ]
        });
        
        const data = response.data;
        setPageData(data);

        // PRICES
        const prices = data.prices || [];
        setPricesData(prices);

        // TRAINERS
        const trainers = data.trainer || [];
        
        const formattedTrainers = trainers.map(trainer => {
          // Получаем первое изображение из массива mainImage
          const mainImage = trainer.mainImage?.[0];
          const imageUrl = mainImage
            ? getMediaUrl(mainImage)
            : "/placeholder.svg";
          
          
          
          return {
            name: trainer.name,
            role: trainer.description,
            bio: trainer.description,
            image: imageUrl
          };
        });
        
        setTrainersData(formattedTrainers);

        // FAQ
        const questions = data.questions || [];
        if (questions.length > 0) {
          setFaqData(questions.map(q => ({ question: q.question, answer: q.answer })));
        }

        // DANCE TYPES
        const danceTypes = data.danceTypes || [];
        const formattedDanceTypes = danceTypes.map(dance => {
          const imageUrl = dance.CoverImage ? getMediaUrl(dance.CoverImage) : null;
          return {
            id: dance.id,
            title: dance.title,
            description: dance.description,
            image: imageUrl,
          };
        });
        setDanceTypesData(formattedDanceTypes);

        // ABOUT US
        const aboutUs = data.aboutUs || [];
        if (aboutUs.length > 0) {
          setAboutUsData({
            title: aboutUs[0].title,
            description: aboutUs[0].description
          });
        }
      } catch (err) {
        
        setError(err.message);
        setDanceTypesData(defaultDanceStyles);
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
  
  const handleDanceRegistration = (danceStyle) => {
    setSelectedDance(danceStyle);
    setIsFormOpen(true);
  };

  const formQuestions = [
    {
      id: 'name',
      text: 'Ваше имя',
      type: 'text',
      required: true,
      placeholder: 'Введите ваше имя'
    },
    {
      id: 'phone',
      text: 'Номер телефона',
      type: 'tel',
      required: true,
      placeholder: '+7 (___) ___-__-__'
    },
    {
      id: 'email',
      text: 'Email',
      type: 'email',
      required: true,
      placeholder: 'your@email.com'
    },
    {
      id: 'age',
      text: 'Возраст танцора',
      type: 'text',
      required: true,
      placeholder: 'Возраст танцора'
    },
    {
      id: 'level',
      text: 'Уровень подготовки танцора',
      type: 'radio',
      required: true,
      options: [
        { value: 'beginner', label: 'Начинающий' },
        { value: 'amateur', label: 'Любитель' },
        { value: 'professional', label: 'Профессионал' }
      ]
    },
    {
      id: 'message',
      text: 'Комментарий',
      type: 'textarea',
      required: false,
      placeholder: 'Дополнительная информация'
    }
  ];

  const coffeeFormQuestions = [
    {
      id: 'coffeeOrders',
      text: 'Напишите какие напитки вы бы хотели:',
      type: 'custom',
      required: true,
      customItems: [
        {
          id: 'cappuccino',
          label: 'Капучино',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'latte',
          label: 'Латте',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'americano',
          label: 'Американо',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'flatWhite',
          label: 'Флэт Уайт',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'espresso',
          label: 'Эспрессо',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'iceCoffee',
          label: 'Айс кофе',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'creamyCappuccino',
          label: 'Сливочный капучино',
          type: 'number',
          placeholder: 'шт'
        },
        {
          id: 'custom1',
          label: 'Другой напиток',
          type: 'text',
          placeholder: 'Название и количество'
        },
        {
          id: 'custom2',
          label: 'Другой напиток',
          type: 'text',
          placeholder: 'Название и количество'
        },
        {
          id: 'custom3',
          label: 'Другой напиток',
          type: 'text',
          placeholder: 'Название и количество'
        }
      ]
    },
    {
      id: 'volume',
      text: 'Какой объем:',
      type: 'radio',
      required: true,
      options: [
        { value: '200ml', label: '200 мл' },
        { value: '300ml', label: '300 мл' },
        { value: '400ml', label: '400 мл' }
      ]
    },
    {
      id: 'milk',
      text: 'На каком молоке?',
      type: 'radio',
      required: true,
      options: [
        { value: 'classic', label: 'Классическое' },
        { value: 'coconut', label: 'Кокосовое' },
        { value: 'banana', label: 'Банановое' },
        { value: 'almond', label: 'Миндальное' },
        { value: 'other', label: 'Другое (укажите в комментарии)' }
      ]
    },
    {
      id: 'date',
      text: 'На какую дату вы бы хотели сделать заказ?',
      type: 'date',
      required: true
    },
    {
      id: 'time',
      text: 'На какое время вы бы хотели сделать заказ?',
      type: 'text',
      required: true,
      placeholder: 'Например, 14:00'
    },
    {
      id: 'wishes',
      text: 'Напишите ваши пожелания в свободной форме',
      type: 'textarea',
      required: false,
      placeholder: 'Ваши пожелания'
    },
    {
      id: 'name',
      text: 'Как вас зовут?',
      type: 'text',
      required: true,
      placeholder: 'Введите ваше имя'
    },
    {
      id: 'phone',
      text: 'Ваш номер телефона',
      type: 'tel',
      required: true,
      placeholder: '+7 (___) ___-__-__'
    }
  ];

  return (
    <div className="page-container dance-page">
      <SiteHeader />
      {isFormOpen && (
        <FeedbackForm
          isOpen={isFormOpen}
          onClose={() => setIsFormOpen(false)}
          questions={selectedDance ? formQuestions : coffeeFormQuestions}
          title={selectedDance ? "Запись на пробное занятие" : "Заказ кофе"}
          description={selectedDance ? `Запись на ${selectedDance.title || 'танцевальное'} направление` : "Заполните форму для заказа кофе"}
          formType={selectedDance ? "dance-registration" : "coffee-order"}
          answers={selectedDance ? {
            message: `Хочу записаться на ${selectedDance.title || 'танцы'}`
          } : {}}
        />
      )}
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

        {/* Video Section with aboutUs data */}
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
                  autoPlay
                  loop
                >
                  <source src="/video-dance.mov" type="video/quicktime" />
                  <source src="/video-dance.mov" type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
              </div>
              <div className="dance-video-content">
                <h2 className="section-title">{aboutUsData?.title || "Танцы в K.O.D."}</h2>
                <p className="section-description video-p">
                  {aboutUsData?.description?.split('\n').map((line, index) => (
                    <React.Fragment key={index}>
                      {line}
                      <br />
                    </React.Fragment>
                  )) || "С 2020 года в арт-пространстве K.O.D. собираются фанаты своих физических возможностей..."}
                </p>
              </div>
            </div>
          </div>
        </section>

        {/* Dance Types Section */}
        <section id="dance-styles" className="dance-styles-section">
          <div className="container">
            <div className="dance-styles-header">
              <h2 className="section-title">Танцевальные направления</h2>
              <p className="section-description">Выберите направление, которое вам по душе</p>
            </div>
            <div className="dance-styles-grid">
              {(danceTypesData.length > 0 ? danceTypesData : defaultDanceStyles).map((style) => (
                <Card key={style.id || style.title} className="dance-style-card">
                  <div className="dance-style-image-container">
                    <img 
                      src={style.image || "/placeholder.svg"} 
                      alt={style.title}
                      className="dance-style-image"
                      onError={(e) => {
                        e.target.onerror = null;
                        e.target.src = "/placeholder.svg";
                      }}
                    />
                  </div>
                  <CardHeader>
                    <CardTitle>{style.title}</CardTitle>
                  </CardHeader>
                  <CardContent>
                    <p className="dance-style-description">{style.description}</p>
                  </CardContent>
                  <CardFooter>
                    <Button 
                      className="dance-style-button"
                      onClick={() => handleDanceRegistration(style)}
                    >
                      Записаться на пробное занятие
                    </Button>
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
              {pricesData.length > 0 ? (
                pricesData.map((item, idx) => (
                  <Card key={idx} className={`pricing-card${idx === 1 ? ' pricing-card-featured' : ''}`}>
                    <CardHeader className={idx === 1 ? "pricing-card-featured-header" : ""}>
                      <CardTitle>{item.title}</CardTitle>
                      <CardDescription>{item.shortDescription}</CardDescription>
                    </CardHeader>
                    <CardContent>
                      <div className="pricing-price">{item.price} ₽</div>
                      <ul className="pricing-features">
                        {item.points && item.points.length > 0 && item.points.map((pt, i) => (
                          <li className="pricing-feature" key={i}>
                            <span className="check-icon"></span>
                            <span>{pt.point}</span>
                          </li>
                        ))}
                      </ul>
                    </CardContent>
                  </Card>
                ))
              ) : (
                <>
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
                  </Card>
                </>
              )}
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
              {(trainersData.length > 0 ? trainersData : [
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
                }
              ]).map((instructor, index) => (
                <Card key={index} className="instructor-card">
                  <div className="instructor-image-container">
                    <img
                      src={instructor.image}
                      alt={instructor.name}
                      className="instructor-image"
                      onError={(e) => {
                        e.target.onerror = null;
                        e.target.src = "/placeholder.svg";
                      }}
                    />
                  </div>
                  <CardHeader>
                    <CardTitle>{instructor.name}</CardTitle>
                    <CardDescription>{instructor.role}</CardDescription>
                  </CardHeader>
                  
                </Card>
              ))}
            </div>
          </div>
        </section>

        {/* FAQ Section */}
        {faqData.length > 0 && (
          <FAQ questions={faqData} />
        )}
      </main>
      <SiteFooter />
    </div>
  )
}

export default DancePage

