import SiteHeader from "../components/SiteHeader"
import SiteFooter from "../components/SiteFooter"
import Button from "../components/Button"
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "../components/Card"
// Обновляем импорт CSS
import "../styles/pages/OnlineLearningPage.css"

const OnlineLearningPage = () => {
  // Пример данных для онлайн-курсов
  const courses = [
    {
      id: 1,
      title: "Основы настольных игр",
      description:
        "Познакомьтесь с миром современных настольных игр, их механиками и жанрами. Научитесь выбирать игры под разные компании и ситуации.",
      duration: "4 недели",
      lessons: 12,
      level: "Начинающий",
      students: 156,
      rating: 4.8,
      price: "3900 ₽",
      image: "/placeholder.svg?height=400&width=600&text=Настольные игры",
    },
    {
      id: 2,
      title: "Мастер игротехник",
      description:
        "Профессиональный курс для тех, кто хочет вести игровые сессии. Научитесь объяснять правила, модерировать игры и создавать атмосферу.",
      duration: "6 недель",
      lessons: 18,
      level: "Средний",
      students: 89,
      rating: 4.9,
      price: "5900 ₽",
      image: "/placeholder.svg?height=400&width=600&text=Игротехник",
    },
    {
      id: 3,
      title: "Организация мероприятий",
      description:
        "Курс для тех, кто хочет научиться организовывать игровые вечера, турниры и тематические вечеринки для друзей или в коммерческих целях.",
      duration: "5 недель",
      lessons: 15,
      level: "Начинающий / Средний",
      students: 124,
      rating: 4.7,
      price: "4900 ₽",
      image: "/placeholder.svg?height=400&width=600&text=Организация мероприятий",
    },
    {
      id: 4,
      title: "Создание квестов",
      description:
        "Научитесь создавать увлекательные квесты и головоломки для детей и взрослых. От разработки сценария до практической реализации.",
      duration: "8 недель",
      lessons: 24,
      level: "Средний / Продвинутый",
      students: 76,
      rating: 4.9,
      price: "7900 ₽",
      image: "/placeholder.svg?height=400&width=600&text=Создание квестов",
    },
  ]

  return (
    <div className="page-container">
      <SiteHeader />
      <main className="main-content">
        {/* Hero Section */}
        <section className="online-hero-section">
          <div className="container">
            <div className="online-hero-content">
              <h1 className="online-hero-title">Онлайн-обучение</h1>
              <p className="online-hero-description">Профессиональные курсы по организации игр и мероприятий</p>
              <div className="online-hero-cta">
                <Button asChild size="large">
                  <a href="#courses">Смотреть курсы</a>
                </Button>
              </div>
            </div>
          </div>
        </section>

        {/* Features Section */}
        <section className="features-section">
          <div className="container">
            <div className="features-grid">
              <Card className="feature-card">
                <CardHeader>
                  <div className="feature-icon video-icon"></div>
                  <CardTitle>Видеоуроки</CardTitle>
                </CardHeader>
                <CardContent>
                  <p className="feature-description">
                    Качественные видеоматериалы с подробными объяснениями и демонстрациями. Доступ к урокам 24/7 с
                    любого устройства.
                  </p>
                </CardContent>
              </Card>
              <Card className="feature-card">
                <CardHeader>
                  <div className="feature-icon feedback-icon"></div>
                  <CardTitle>Обратная связь</CardTitle>
                </CardHeader>
                <CardContent>
                  <p className="feature-description">
                    Персональные консультации с преподавателями, проверка домашних заданий и ответы на вопросы в течение
                    24 часов.
                  </p>
                </CardContent>
              </Card>
              <Card className="feature-card">
                <CardHeader>
                  <div className="feature-icon materials-icon"></div>
                  <CardTitle>Материалы</CardTitle>
                </CardHeader>
                <CardContent>
                  <p className="feature-description">
                    Дополнительные учебные материалы, шаблоны, чек-листы и полезные ресурсы для практического применения
                    знаний.
                  </p>
                </CardContent>
              </Card>
            </div>
          </div>
        </section>

        {/* Courses Section */}
        <section id="courses" className="courses-section">
          <div className="container">
            <div className="courses-header">
              <h2 className="section-title">Наши курсы</h2>
              <p className="section-description">Выберите курс, который поможет вам развить новые навыки</p>
            </div>
            <div className="courses-grid">
              {courses.map((course) => (
                <Card key={course.id} className="course-card">
                  <div className="course-image-container">
                    <img src={course.image || "/placeholder.svg"} alt={course.title} className="course-image" />
                  </div>
                  <CardHeader>
                    <CardTitle>{course.title}</CardTitle>
                    <CardDescription>
                      <div className="course-meta">
                        <div className="course-meta-item">
                          <span className="course-meta-icon clock-icon"></span>
                          <span>{course.duration}</span>
                        </div>
                        <div className="course-meta-item">
                          <span className="course-meta-icon book-icon"></span>
                          <span>{course.lessons} уроков</span>
                        </div>
                        <div className="course-meta-item">
                          <span className="course-meta-icon star-icon"></span>
                          <span>{course.rating}</span>
                        </div>
                      </div>
                    </CardDescription>
                  </CardHeader>
                  <CardContent>
                    <p className="course-description">{course.description}</p>
                    <div className="course-tags">
                      <span className="course-tag">{course.level}</span>
                      <span className="course-tag">
                        <span className="course-tag-icon people-icon"></span>
                        {course.students} студентов
                      </span>
                    </div>
                  </CardContent>
                  <CardFooter className="course-footer">
                    <p className="course-price">{course.price}</p>
                    <Button className="course-button">
                      Подробнее
                      <span className="arrow-icon"></span>
                    </Button>
                  </CardFooter>
                </Card>
              ))}
            </div>
            <div className="courses-more">
              <Button asChild variant="outline" size="large">
                <a href="https://academy.kod.ru" target="_blank" rel="noopener noreferrer">
                  Перейти на платформу обучения
                  <span className="arrow-icon"></span>
                </a>
              </Button>
            </div>
          </div>
        </section>

        {/* How It Works Section */}
        <section className="how-it-works-section">
          <div className="container">
            <div className="how-it-works-header">
              <h2 className="section-title">Как проходит обучение</h2>
              <p className="section-description">Простой и эффективный процесс обучения</p>
            </div>
            <div className="steps-grid">
              {[
                {
                  step: "01",
                  title: "Выбор курса",
                  description: "Выберите курс, соответствующий вашим интересам и уровню подготовки.",
                },
                {
                  step: "02",
                  title: "Регистрация",
                  description: "Зарегистрируйтесь на платформе и получите доступ к материалам курса.",
                },
                {
                  step: "03",
                  title: "Обучение",
                  description: "Изучайте материалы, выполняйте задания и получайте обратную связь от преподавателей.",
                },
                {
                  step: "04",
                  title: "Сертификат",
                  description: "Успешно завершите курс и получите сертификат о прохождении обучения.",
                },
              ].map((step, index) => (
                <div key={index} className="step-item">
                  <div className="step-number">{step.step}</div>
                  <h3 className="step-title">{step.title}</h3>
                  <p className="step-description">{step.description}</p>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Testimonials */}
        <section className="testimonials-section">
          <div className="container">
            <div className="testimonials-header">
              <h2 className="section-title">Отзывы студентов</h2>
            </div>
            <div className="testimonials-grid">
              {[
                {
                  text: "Курс 'Мастер игротехник' полностью изменил мой подход к проведению игровых вечеров. Теперь друзья постоянно просят меня организовать игры, а я делаю это с удовольствием и уверенностью.",
                  author: "Дмитрий К.",
                  course: "Мастер игротехник",
                },
                {
                  text: "Благодаря курсу по организации мероприятий я смогла запустить свой бизнес по проведению тематических вечеринок. Особенно ценными оказались практические советы и готовые шаблоны документов.",
                  author: "Анна С.",
                  course: "Организация мероприятий",
                },
                {
                  text: "Отличный курс для новичков! Я всегда любил настольные игры, но не знал, с чего начать свою коллекцию. Теперь я разбираюсь в жанрах и механиках и могу подобрать игру для любой компании.",
                  author: "Игорь М.",
                  course: "Основы настольных игр",
                },
              ].map((testimonial, index) => (
                <Card key={index} className="testimonial-card">
                  <CardContent>
                    <div className="testimonial-stars">
                      {[1, 2, 3, 4, 5].map((star) => (
                        <span key={star} className="testimonial-star"></span>
                      ))}
                    </div>
                    <p className="testimonial-text">"{testimonial.text}"</p>
                  </CardContent>
                  <CardFooter className="testimonial-footer">
                    <p className="testimonial-author">— {testimonial.author}</p>
                    <p className="testimonial-course">Курс: {testimonial.course}</p>
                  </CardFooter>
                </Card>
              ))}
            </div>
          </div>
        </section>

        {/* CTA Section */}
        <section className="cta-section">
          <div className="container">
            <div className="cta-content">
              <h2 className="section-title">Готовы начать обучение?</h2>
              <p className="section-description">
                Присоединяйтесь к нашей образовательной платформе и получите доступ к качественным курсам от
                профессионалов
              </p>
              <div className="cta-button">
                <Button asChild size="large">
                  <a href="https://academy.kod.ru" target="_blank" rel="noopener noreferrer">
                    Перейти к курсам
                  </a>
                </Button>
              </div>
            </div>
          </div>
        </section>
      </main>
      <SiteFooter />
    </div>
  )
}

export default OnlineLearningPage

