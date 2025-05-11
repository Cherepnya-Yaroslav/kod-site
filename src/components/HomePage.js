import React, { useEffect, useState } from 'react';
import axios from 'axios';

const HomePage = () => {
  const [pageData, setPageData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        // Добавляем параметр populate=* чтобы получить все связанные данные
        const response = await axios.get('http://localhost:1337/api/home-pages?populate=*');
        console.log('Raw API Response:', response.data); // Логируем весь ответ

        if (response.data.data && response.data.data.length > 0) {
          const data = response.data.data[0].attributes;
          console.log('Processed data:', data); // Логируем обработанные данные
          setPageData(data);
        } else {
          setError('Данные не найдены');
        }
        setLoading(false);
      } catch (err) {
        console.error('Error details:', err.response || err); // Логируем детали ошибки
        setError('Ошибка при загрузке данных: ' + (err.response?.data?.error?.message || err.message));
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  if (loading) return <div>Загрузка...</div>;
  if (error) return <div>Ошибка: {error}</div>;
  if (!pageData) return <div>Данные не найдены</div>;

  return (
    <div className="home-page">
      <h1>{pageData.Title}</h1>
      <div className="description">{pageData.Description}</div>
      
      <div className="contact-info">
        <h2>Контактная информация</h2>
        <p>Телефон: {pageData.Contact_Phone}</p>
        <p>Email: {pageData.Contact_Email}</p>
      </div>

      {pageData.Video_URL && (
        <div className="video-section">
          <h2>Видео</h2>
          <a href={pageData.Video_URL} target="_blank" rel="noopener noreferrer">
            Смотреть видео
          </a>
        </div>
      )}

      {/* Отладочная информация */}
      <div style={{ marginTop: '2rem', padding: '1rem', background: '#f0f0f0' }}>
        <h3>Отладочная информация:</h3>
        <pre>{JSON.stringify(pageData, null, 2)}</pre>
      </div>
    </div>
  );
};

export default HomePage; 