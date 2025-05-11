import React from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import SiteHeader from "../components/SiteHeader";
import SiteFooter from "../components/SiteFooter";
import ProgramDetails from "../components/ProgramDetails";

const EventDetailsPage = () => {
  const { eventId } = useParams();
  const navigate = useNavigate();

  // В реальном приложении эти данные должны загружаться из API
  // Пока используем захардкоженные данные для демонстрации
  const eventsData = {
    alisa14: {
      title: "День рождения Алисы",
      description: [
        "Волшебный праздник в стиле Алисы в стране чудес, где каждая деталь была продумана до мелочей.",
        "Гости погрузились в атмосферу сказки благодаря тематическим декорациям, костюмам и специально разработанной программе развлечений.",
        "Особенности мероприятия включали: тематическое оформление в стиле Страны чудес, костюмированных персонажей, интерактивные игры и квесты, тематическое меню и особый антураж.",
        "Это мероприятие стало ярким примером того, как можно создать незабываемый праздник, соединив любимую сказку с современными развлечениями."
      ],
      mainImage: "/alisa14/P3160177.JPG",
      galleryImages: [
        "/alisa14/P3160006.JPG",
        "/alisa14/P3160185.JPG",
        "/alisa14/P3160263.JPG",
        "/alisa14/P3160292.JPG",
        "/alisa14/P3160613.JPG",
        "/alisa14/P3160674.JPG",
        "/alisa14/P3160740.JPG",
        "/alisa14/P3160866.JPG",
        "/alisa14/IMG_0130.JPG"
      ],
      date: "16 марта 2024"
    }
  };

  const eventData = eventsData[eventId];

  if (!eventData) {
    return (
      <>
        <SiteHeader />
        <div className="container">
          <h1>Мероприятие не найдено</h1>
          <button onClick={() => navigate('/theme-parties')}>Вернуться к списку</button>
        </div>
        <SiteFooter />
      </>
    );
  }

  return (
    <div className="page-container event-details-page">
      <SiteHeader />
      <main className="main-content">
        <ProgramDetails
          title={eventData.title}
          description={eventData.description}
          mainImage={eventData.mainImage}
          galleryImages={eventData.galleryImages}
          returnPath="/theme-parties"
        />
      </main>
      <SiteFooter />
    </div>
  );
};

export default EventDetailsPage; 