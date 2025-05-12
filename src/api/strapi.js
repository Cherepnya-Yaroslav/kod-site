import axios from 'axios';

// Базовый URL для API Strapi
const API_URL = "https://kod-site.onrender.com"
// || 'http://localhost:1337';

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

    // Рекурсивная функция для обработки вложенных populate
    const processPopulate = (populate, parentKey = '') => {
      if (typeof populate === 'object' && !Array.isArray(populate)) {
        // Если populate - объект, обрабатываем вложенные поля
        Object.entries(populate).forEach(([key, value]) => {
          const currentKey = parentKey ? `${parentKey}[${key}]` : key;
          
          if (typeof value === 'object' && !Array.isArray(value)) {
            // Если значение тоже объект, рекурсивно обрабатываем вложенность
            processPopulate(value, `${currentKey}[populate]`);
          } else if (value === true) {
            // Если значение true, добавляем как populate[key]=true
            queryParams.append(`populate[${currentKey}]`, 'true');
          } else if (Array.isArray(value)) {
            // Если значение массив
            value.forEach(item => {
              queryParams.append(`populate[${currentKey}]`, item);
            });
          } else {
            // Другие случаи (строка, число и т.д.)
            queryParams.append(`populate[${currentKey}]`, value);
          }
        });
      } else if (Array.isArray(populate)) {
        // Если populate - массив строк
        populate.forEach(item => {
          queryParams.append('populate', item);
        });
      } else {
        // Если populate - строка (например, '*')
        queryParams.append('populate', populate);
      }
    };

    // Добавляем populate
    if (options.populate) {
      processPopulate(options.populate);
      console.log('Processed populate:', options.populate);
    } else {
      // Добавляем populate=* по умолчанию, если не указан другой populate
      queryParams.append('populate', '*');
      console.log('Using default populate=*');
    }

    // Добавляем фильтры
    if (options.filters) {
      console.log('Incoming filters:', options.filters);
      const filters = options.filters;
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
  // Case 6: Direct media ID
  else if (typeof media === 'number') {
    // Если передан только ID медиа, пробуем сконструировать URL
    console.log('Case 6: Media ID only:', media);
    return `${API_URL}/api/upload/files/${media}`;
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

// Функция для обработки массива медиафайлов
export const getMediaUrls = (mediaArray) => {
  if (!mediaArray || !Array.isArray(mediaArray)) return [];
  
  return mediaArray.map(media => getMediaUrl(media));
};

// Функция для преобразования структуры медиафайлов, получаемых напрямую из компонентов Strapi
export const processComponentMedia = (mediaObject) => {
  if (!mediaObject) return null;
  
  console.log('Processing component media:', mediaObject);
  
  // Если это массив, обрабатываем каждый элемент
  if (Array.isArray(mediaObject)) {
    return mediaObject.map(item => getMediaUrl(item));
  }
  
  // Проверяем формат Strapi v4, где медиа может быть в .data.attributes
  if (mediaObject.data) {
    if (Array.isArray(mediaObject.data)) {
      // Если data это массив объектов
      return mediaObject.data.map(item => {
        if (item.attributes) {
          return getMediaUrl(item.attributes);
        }
        return getMediaUrl(item);
      });
    } else if (mediaObject.data.attributes) {
      // Если data содержит один объект с attributes
      return getMediaUrl(mediaObject.data.attributes);
    } else {
      // Если data просто содержит объект
      return getMediaUrl(mediaObject.data);
    }
  }
  
  // Обрабатываем одиночный медиафайл
  return getMediaUrl(mediaObject);
};

export default strapiAPI; 