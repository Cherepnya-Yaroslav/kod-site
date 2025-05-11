import axios from 'axios';

// Базовый URL для API Strapi
const API_URL = process.env.REACT_APP_STRAPI_API_URL || 'http://localhost:1337';

console.log('Strapi API URL:', API_URL);

// Создаем экземпляр axios для работы с API
const strapiAPI = axios.create({
  baseURL: API_URL,
  headers: {
    'Content-Type': 'application/json',
  },
});

// Функция для получения данных из Strapi
export const fetchData = async (endpoint, options = {}) => {
  try {
    // Формируем URL для API запроса
    let url = `/api/${endpoint}`;
    const queryParams = new URLSearchParams();

    // Добавляем populate
    if (options.populate) {
      if (typeof options.populate === 'object' && !Array.isArray(options.populate)) {
        // Если populate - объект, добавляем каждый ключ как отдельный параметр
        Object.keys(options.populate).forEach(key => {
          queryParams.append('populate', key);
        });
        console.log('Processed object populate:', Object.keys(options.populate));
      } else if (Array.isArray(options.populate)) {
        // Если populate - массив строк
        options.populate.forEach(populateOption => {
          queryParams.append('populate', populateOption);
        });
        console.log('Processed array populate:', options.populate);
      } else {
        // Если populate - строка (например, '*')
        queryParams.append('populate', options.populate);
        console.log('Processed string populate:', options.populate);
      }
    } else {
      // Добавляем populate=* по умолчанию, если не указан другой populate
      queryParams.append('populate', '*');
      console.log('Using default populate=*');
    }

    // Добавляем фильтры
    if (options.filters) {
      // Log the incoming filters
      console.log('Incoming filters:', options.filters);
      
      // Ensure filters is an object
      const filters = options.filters;
      
      // Log the processed filters
      console.log('Processed filters:', filters);
      
      queryParams.append('filters', JSON.stringify(filters));
    }

    // Добавляем сортировку
    if (options.sort) {
      if (Array.isArray(options.sort)) {
        options.sort.forEach(sortOption => {
          queryParams.append('sort', sortOption);
        });
      } else {
        queryParams.append('sort', options.sort);
      }
    }

    // Добавляем параметры пагинации (Strapi v4 format)
    if (options.page) {
      queryParams.append('pagination[page]', options.page);
    }
    if (options.pageSize) {
      queryParams.append('pagination[pageSize]', options.pageSize);
    }

    // Добавляем параметры запроса к URL
    const queryString = queryParams.toString();
    if (queryString) {
      url += `?${queryString}`;
    }

    console.log('Making API request to:', url);
    
    const response = await strapiAPI.get(url);
    console.log('API response data:', response.data);
    return response.data;
  } catch (error) {
    console.error('Error fetching data from Strapi:', error);
    if (error.response) {
      console.error('Error status:', error.response.status);
      console.error('Error data:', error.response.data);
    }
    throw error;
  }
};

// Функция для получения одной записи по ID или slug
export const fetchOne = async (endpoint, identifier) => {
  try {
    const response = await strapiAPI.get(`/api/${endpoint}/${identifier}?populate=*`);
    return response.data;
  } catch (error) {
    console.error(`Error fetching ${endpoint} with identifier ${identifier}:`, error);
    throw error;
  }
};

// Функция для получения медиа-файлов
export const getMediaUrl = (media) => {
  if (!media) return null;
  
  console.log('Raw media object:', media);
  
  let imageUrl = null;

  // Case 1: Full media object (e.g., { data: { attributes: { url: '...' } } })
  if (media.data && media.data.attributes && media.data.attributes.url) {
    imageUrl = media.data.attributes.url;
    console.log('Case 1: Found URL in data.attributes.url:', imageUrl);
  }
  // Case 2: Media object with attributes (e.g., { attributes: { url: '...' } })
  else if (media.attributes && media.attributes.url) {
    imageUrl = media.attributes.url;
    console.log('Case 2: Found URL in attributes.url:', imageUrl);
  }
  // Case 3: Attributes object passed directly (e.g., { url: '...' }) - Matches the logs
  else if (media.url) {
    imageUrl = media.url;
    console.log('Case 3: Found URL directly in media.url:', imageUrl);
  }
  // Case 4: Data object with URL property
  else if (media.data && media.data.url) {
    imageUrl = media.data.url;
    console.log('Case 4: Found URL in data.url:', imageUrl);
  }
  // Case 5: Formats might be available
  else if (media.formats) {
    if (media.formats.medium && media.formats.medium.url) {
      imageUrl = media.formats.medium.url;
      console.log('Case 5a: Found URL in formats.medium.url:', imageUrl);
    } else if (media.formats.small && media.formats.small.url) {
      imageUrl = media.formats.small.url;
      console.log('Case 5b: Found URL in formats.small.url:', imageUrl);
    } else if (media.formats.thumbnail && media.formats.thumbnail.url) {
      imageUrl = media.formats.thumbnail.url;
      console.log('Case 5c: Found URL in formats.thumbnail.url:', imageUrl);
    }
  }

  if (imageUrl) {
    // Check if it's a relative URL
    if (imageUrl.startsWith('/')) {
      const fullUrl = `${API_URL}${imageUrl}`;
      console.log('Converted relative URL to full URL:', fullUrl);
      return fullUrl;
    }
    // Otherwise, assume it's a full URL
    console.log('Using URL as is (already absolute):', imageUrl);
    return imageUrl;
  }

  // Fallback for string paths
  if (typeof media === 'string') {
    if (media.startsWith('/')) {
      const fullUrl = `${API_URL}${media}`;
      console.log('String path converted to full URL:', fullUrl);
      return fullUrl;
    }
    console.log('Using string path as is:', media);
    return media;
  }

  console.log('Could not extract URL from media object:', media);
  return null;
};

export default strapiAPI; 