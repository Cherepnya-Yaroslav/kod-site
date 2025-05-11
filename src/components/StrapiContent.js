import React, { useState, useEffect } from 'react';
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/components/StrapiContent.css';

const StrapiContent = ({ endpoint, render }) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const loadData = async () => {
      try {
        console.log('Fetching data from endpoint:', endpoint);
        setLoading(true);
        const response = await fetchData(endpoint);
        console.log('API Response:', response);
        setData(response);
        setError(null);
      } catch (err) {
        console.error('Error details:', err);
        setError('Ошибка при загрузке данных: ' + (err.message || 'Неизвестная ошибка'));
      } finally {
        setLoading(false);
      }
    };

    loadData();
  }, [endpoint]);

  if (loading) return null;
  if (error) return <div className="strapi-error">{error}</div>;
  if (!data) return <div className="strapi-no-data">Нет данных</div>;

  // Если передан render prop, используем его для рендеринга
  if (render) {
    return render(data, getMediaUrl);
  }

  // Иначе просто отображаем данные в JSON формате
  return (
    <div>
      <h2>Данные из Strapi ({endpoint})</h2>
      <pre>{JSON.stringify(data, null, 2)}</pre>
    </div>
  );
};

export default StrapiContent; 