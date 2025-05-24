import React, { useState, useEffect, useRef } from 'react';
import { Link } from 'react-router-dom';
import { fetchData, getMediaUrl } from '../api/strapi';
import '../styles/components/EventCalendar.css';

const EventCalendar = ({ eventType }) => {
  const [events, setEvents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [months, setMonths] = useState([]);
  const [selectedDate, setSelectedDate] = useState(null);
  const [activeMonth, setActiveMonth] = useState('');
  const [nextMonth, setNextMonth] = useState('');
  const [calendarDays, setCalendarDays] = useState([]);
  const [nextMonthDays, setNextMonthDays] = useState([]);
  const [showCalendar, setShowCalendar] = useState(false);
  const [weekDays, setWeekDays] = useState([]);
  const eventsContainerRef = useRef(null);
  const calendarRef = useRef(null);
  const calendarToggleRef = useRef(null);
  
  // Format a date as YYYY-MM-DD for URL and comparisons
  const formatDateForUrl = (date) => {
    return date.toISOString().split('T')[0];
  };

  useEffect(() => {
    // Initialize with current date
    const today = new Date();
    setSelectedDate(today);
    
    // Initialize months (current and next 11 for a full year view)
    const allMonths = Array.from({ length: 12 }, (_, i) => {
      const date = new Date(today);
      date.setMonth(today.getMonth() + i);
      return date;
    });
    setMonths(allMonths);
    
    // Создаем новую дату для основного месяца
    const activeMonthDate = new Date(today.getFullYear(), today.getMonth(), 1);
    const activeMonthString = formatMonthYear(activeMonthDate);
    
    // Создаем новую дату для следующего месяца
    const nextMonthDate = new Date(today.getFullYear(), today.getMonth(), 1);
    nextMonthDate.setMonth(today.getMonth() + 1);
    const nextMonthString = formatMonthYear(nextMonthDate);
    
    
    
    // Generate calendar for current month and next month
    generateCalendarDays(activeMonthDate);
    generateNextMonthDays(nextMonthDate);
    
    // Set active month and next month
    setActiveMonth(activeMonthString);
    setNextMonth(nextMonthString);
    
    // Generate week days view
    generateWeekDays(today);
    
    // Close calendar when clicking outside
    const handleClickOutside = (event) => {
      if (
        calendarRef.current && 
        !calendarRef.current.contains(event.target) && 
        calendarToggleRef.current && 
        !calendarToggleRef.current.contains(event.target)
      ) {
        setShowCalendar(false);
    }
    };
    
    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  useEffect(() => {
    loadEvents();
  }, [eventType]);
  
  // Handle date changes
  useEffect(() => {
    if (selectedDate) {
      generateWeekDays(selectedDate);
    }
  }, [selectedDate]);

  // Handle month changes - activeMonth
  useEffect(() => {
    if (selectedDate) {
      // console.log('activeMonth changed:', activeMonth);
      
      const monthNames = [
        'января', 'февраля', 'марта', 'апреля', 'мая', 'июня',
        'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'
      ];
      
      // Parse active month
      let activeMonthIndex = -1;
      for (let i = 0; i < monthNames.length; i++) {
        if (activeMonth.toLowerCase().includes(monthNames[i].toLowerCase())) {
          activeMonthIndex = i;
          break;
        }
      }
      
      const activeMonthParts = activeMonth.split(' ');
      const activeYear = parseInt(activeMonthParts[activeMonthParts.length - 1]);
      
      // console.log('Parsed active month index:', activeMonthIndex, 'year:', activeYear);
      
      if (activeMonthIndex !== -1) {
        // Create a date for the 1st day of active month
        const activeMonthDate = new Date(activeYear, activeMonthIndex, 1);
        // console.log('Generated activeMonthDate:', activeMonthDate);
        
        // Generate calendar for the active month
        generateCalendarDays(activeMonthDate);
      } else {
        // console.error('Could not parse active month from:', activeMonth);
      }
    }
  }, [activeMonth]);
  
  // Handle next month changes
  useEffect(() => {
    if (nextMonth) {
      // console.log('nextMonth changed:', nextMonth);
      
      const monthNames = [
        'января', 'февраля', 'марта', 'апреля', 'мая', 'июня',
        'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'
      ];
      
      // Parse next month
      let nextMonthIndex = -1;
      for (let i = 0; i < monthNames.length; i++) {
        if (nextMonth.toLowerCase().includes(monthNames[i].toLowerCase())) {
          nextMonthIndex = i;
          break;
        }
      }
      
      const nextMonthParts = nextMonth.split(' ');
      const nextYear = parseInt(nextMonthParts[nextMonthParts.length - 1]);
      
      // console.log('Parsed next month index:', nextMonthIndex, 'year:', nextYear);
      
      if (nextMonthIndex !== -1) {
        // Create a date for the 1st day of next month
        const nextMonthDate = new Date(nextYear, nextMonthIndex, 1);
        // console.log('Generated nextMonthDate:', nextMonthDate);
        
        // Generate calendar for the next month
        generateNextMonthDays(nextMonthDate);
      } else {
        // console.error('Could not parse next month from:', nextMonth);
      }
    }
  }, [nextMonth]);

  // Generate week view (7 days around selected date)
  const generateWeekDays = (date) => {
    const result = [];
    // Get 3 days before
    for (let i = -3; i <= 3; i++) {
      const day = new Date(date);
      day.setDate(date.getDate() + i);
      
      const today = new Date();
      const isToday = day.getDate() === today.getDate() && 
                     day.getMonth() === today.getMonth() && 
                     day.getFullYear() === today.getFullYear();
      
      const isSelected = day.getDate() === date.getDate() && 
                        day.getMonth() === date.getMonth() && 
                        day.getFullYear() === date.getFullYear();
                        
      result.push({
        date: day,
        day: day.getDate(),
        weekday: getWeekdayName(day),
        isToday,
        isSelected
      });
    }
    setWeekDays(result);
  };

  // Generate all days for a calendar month view
  const generateCalendarDays = (date) => {
    generateMonthDays(date, setCalendarDays);
  };

  // Generate next month days
  const generateNextMonthDays = (date) => {
    generateMonthDays(date, setNextMonthDays);
  };

  // Общая функция для генерации дней месяца
  const generateMonthDays = (date, setStateFn) => {
    const year = date.getFullYear();
    const month = date.getMonth();
    
    // First day of the month
    const firstDayOfMonth = new Date(year, month, 1);
    
    // Last day of the month
    const lastDayOfMonth = new Date(year, month + 1, 0);
    
    // Day of the week for the first day (0 = Sunday, 1 = Monday, etc.)
    let firstDayWeekday = firstDayOfMonth.getDay();
    // Adjust to make Monday the first day of the week (0 = Monday, 6 = Sunday)
    firstDayWeekday = firstDayWeekday === 0 ? 6 : firstDayWeekday - 1;
    
    // Array to hold all days in the calendar view
    const days = [];
    
    // Add days from previous month to fill the first row
    const daysFromPrevMonth = firstDayWeekday;
    const prevMonthLastDay = new Date(year, month, 0).getDate();
    
    for (let i = daysFromPrevMonth - 1; i >= 0; i--) {
      const day = prevMonthLastDay - i;
      const prevMonth = month === 0 ? 11 : month - 1;
      const prevYear = month === 0 ? year - 1 : year;
      const date = new Date(prevYear, prevMonth, day);
      days.push({
        date,
        day,
        month: prevMonth,
        year: prevYear,
        isCurrentMonth: false,
        isToday: false,
      });
    }
    
    // Add all days of the current month
    const today = new Date();
    for (let day = 1; day <= lastDayOfMonth.getDate(); day++) {
      const date = new Date(year, month, day);
      const isToday = 
        today.getDate() === day && 
        today.getMonth() === month && 
        today.getFullYear() === year;
      
      days.push({
        date,
        day,
        month,
        year,
        isCurrentMonth: true,
        isToday,
      });
    }
    
    // Add days from next month to complete the last row
    const totalDaysInView = Math.ceil(days.length / 7) * 7;
    const daysToAdd = totalDaysInView - days.length;
    
    for (let day = 1; day <= daysToAdd; day++) {
      const nextMonth = month === 11 ? 0 : month + 1;
      const nextYear = month === 11 ? year + 1 : year;
      const date = new Date(nextYear, nextMonth, day);
      
      days.push({
        date,
        day,
        month: nextMonth,
        year: nextYear,
        isCurrentMonth: false,
        isToday: false,
      });
    }
    
    setStateFn(days);
  };

  const loadEvents = async () => {
    try {
      setLoading(true);
      setError(null);

      const validEventTypes = ['kids', 'adults', 'openParties'];
      if (!eventType || !validEventTypes.includes(eventType)) {
        throw new Error('Invalid event type');
      }

      // Используем более широкий временной диапазон для событий по умолчанию
      // чтобы захватить все события для отображения в календаре
      let startDate = new Date();
      startDate.setMonth(startDate.getMonth() - 1); // Берем события с прошлого месяца
      startDate.setDate(1);
      startDate.setHours(0, 0, 0, 0);
      
      let endDate = new Date();
      endDate.setMonth(endDate.getMonth() + 12); // Берем события на год вперед
      endDate.setDate(31);
      endDate.setHours(23, 59, 59, 999);
      
      // console.log('Loading events from', startDate, 'to', endDate);
      // console.log('Event type:', eventType);

      const filters = {
        $and: [
          {
            type: {
              $eq: eventType
            }
          },
          {
            date: {
              $gte: startDate.toISOString()
            }
          },
          {
            date: {
              $lte: endDate.toISOString()
            }
          }
        ]
      };

      const response = await fetchData('events', { 
        filters,
        populate: ['coverImage']
      });
      
      if (response) {
        const eventsArray = Array.isArray(response) ? response : (response.data || []);
        // console.log('Received events count:', eventsArray.length);
        
        const formattedEvents = eventsArray.map(event => {
          if (!event || typeof event !== 'object') {
            // console.error('Invalid event object:', event);
            return null;
          }

          const eventData = event.attributes || event;
          
          // if (!eventData.title || !eventData.date) {
          //   console.error('Event missing required fields:', {
          //     id: event.id,
          //     hasTitle: !!eventData.title,
          //     hasDate: !!eventData.date
          //   });
          //   return null;
          // }

          return {
            id: event.id,
            title: eventData.title,
            date: eventData.date,
            shortDescription: eventData.shortDescription || 'Описание отсутствует',
            coverImage: eventData.coverImage ? getMediaUrl(eventData.coverImage) : null,
            slug: eventData.slug,
            location: eventData.location || 'ГЭС-2',
            duration: eventData.duration || '1 час',
            price: eventData.price,
            eventType: eventData.eventType || 'Событие',
            maxParticipants: eventData.maxParticipants,
            currentParticipants: eventData.currentParticipants,
            registrationRequired: eventData.registrationRequired || false,
            type: eventType, // Добавляем тип события из props для фильтрации
            eventLink: eventData.eventLink || null
          };
        }).filter(Boolean);

        // console.log('Formatted events count:', formattedEvents.length);
        setEvents(formattedEvents);
      } else {
        // console.log('No events received from API');
        setEvents([]);
      }
    } catch (err) {
      // console.error('Error loading events:', err);
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const formatMonthYear = (date) => {
    if (!date) return '';
    
    try {
      // console.log('Formatting date for month/year:', date);
      const options = { month: 'long', year: 'numeric' };
      const formatted = date.toLocaleDateString('ru-RU', options);
      // console.log('Formatted month/year:', formatted);
      return formatted;
    } catch (err) {
      // console.error("Error formatting date:", err, date);
      // Fallback implementation
      const monthNames = [
        'января', 'февраля', 'марта', 'апреля', 'мая', 'июня',
        'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'
      ];
      try {
        const month = monthNames[date.getMonth()];
        const year = date.getFullYear();
        const fallback = `${month} ${year} г.`;
        // console.log('Using fallback format:', fallback);
        return fallback;
      } catch (e) {
        // console.error("Critical formatting error:", e);
        return 'неизвестная дата';
      }
    }
  };

  const formatDate = (dateString) => {
    if (!dateString) return 'Дата не указана';
    
    try {
      const options = { day: 'numeric', month: 'long' };
      return new Date(dateString).toLocaleDateString('ru-RU', options);
    } catch (err) {
      // console.error("Error formatting date string:", err, dateString);
      return 'Ошибка даты';
    }
  };

  const formatTime = (dateString) => {
    if (!dateString) return '12:00';
    
    try {
      const date = new Date(dateString);
      return date.toLocaleTimeString('ru-RU', { 
        hour: '2-digit', 
        minute: '2-digit',
        hour12: false
      });
    } catch (err) {
      // console.error("Error formatting time from date:", err, dateString);
      return '12:00';
    }
  };

  const getWeekdayName = (date) => {
    if (!date) return '';
    try {
      return date.toLocaleDateString('ru-RU', { weekday: 'short' });
    } catch (err) {
      // console.error("Error getting weekday:", err);
      return '';
    }
  };

  // Function to get events for a specific date
  const getEventsForDate = (date) => {
    if (!date || !events.length) return [];
    
    try {
      // Нормализуем дату, убирая время
      const targetDate = new Date(date);
      targetDate.setHours(0, 0, 0, 0);
      const targetDateString = formatDateForUrl(targetDate);
      
      // Получаем текущую дату без времени для сравнения
      const now = new Date();
      now.setHours(0, 0, 0, 0);
      
      const filteredEvents = events.filter(event => {
        // Нормализуем дату события, убирая время
        const eventDate = new Date(event.date);
        eventDate.setHours(0, 0, 0, 0);
        const eventDateString = formatDateForUrl(eventDate);
        
        // Проверяем, что событие не в прошлом
        const isNotPast = eventDate >= now;
        
        // Проверяем совпадение даты
        const matches = eventDateString === targetDateString;
        
        return matches && isNotPast;
      });
      
      return filteredEvents;
    } catch (err) {
      console.error("Error filtering events for date:", err);
      return [];
    }
  };

  // Handle click on a calendar day
  const handleDayClick = (day) => {
    // console.log('Day clicked:', day.date);
    
    // Обновляем выбранную дату
    setSelectedDate(day.date);
    
    // Генерируем только неделю вокруг выбранной даты
    generateWeekDays(day.date);
    
    // Если выбрана дата из другого месяца, можно переключить активный месяц
    // но сейчас мы просто оставляем текущий календарь без изменений
  };

  // Handle click on a week day
  const handleWeekDayClick = (day) => {
    // console.log('Week day clicked:', day.date);
    setSelectedDate(day.date);
  };

  // Navigate to previous or next month
  const navigateMonth = (direction) => {
    if (!selectedDate) return;
    
    // Use a reliable source for the current active month's date
    // Parsing from formatted string 'activeMonth' can be error-prone
    // Let's derive it from the first day of the month containing selectedDate
    const currentMonthDate = new Date(selectedDate.getFullYear(), selectedDate.getMonth(), 1);
    
    // console.log('Starting navigation:', direction);
    // console.log('Current month derived from selectedDate:', currentMonthDate);

    // Calculate the new active month date
    const newActiveDate = new Date(currentMonthDate);
    newActiveDate.setMonth(newActiveDate.getMonth() + (direction === 'next' ? 1 : -1));
    
    // Calculate the new next month date based on the *new* active date
    const newNextDate = new Date(newActiveDate);
    newNextDate.setMonth(newNextDate.getMonth() + 1);
    
    // console.log(`New Active Date: ${newActiveDate}, New Next Date: ${newNextDate}`);

    const newActiveMonthString = formatMonthYear(newActiveDate);
    const newNextMonthString = formatMonthYear(newNextDate);
    
    
    
    // Generate calendars for the new months
    generateCalendarDays(newActiveDate);
    generateNextMonthDays(newNextDate);
    
    // Update state for displayed month titles
    setActiveMonth(newActiveMonthString);
    setNextMonth(newNextMonthString);
    
    // Update selected date to the first day of the new active month
    setSelectedDate(newActiveDate);
    
    // Update the week view
    generateWeekDays(newActiveDate);
  };

  // Toggle calendar visibility
  const toggleCalendar = () => {
    setShowCalendar(!showCalendar);
  };

  // Navigate week days
  const navigateWeek = (direction) => {
    if (!selectedDate) return;
    
    const newDate = new Date(selectedDate);
    if (direction === 'prev') {
      newDate.setDate(newDate.getDate() - 7);
    } else {
      newDate.setDate(newDate.getDate() + 7);
    }
    setSelectedDate(newDate);
  };

  const getTitle = () => {
    switch (eventType) {
      case 'kids': return 'Детские игры';
      case 'adults': return 'Взрослые игры';
      case 'openParties': return 'Открытые вечеринки';
      default: return 'События';
    }
  };

  const getEventTypeLabel = (event, inGenitive = false) => {
    switch (event.type) {
      case 'kids': return inGenitive ? 'детских игр' : 'Детская игра';
      case 'adults': return inGenitive ? 'взрослых игр' : 'Взрослая игра';
      case 'openParties': return inGenitive ? 'открытых вечеринок' : 'Открытая вечеринка';
      default: return inGenitive ? 'событий' : 'Событие';
    };
  };

  // Utility to detect mobile
  const isMobile = () => window.innerWidth <= 768;

  if (loading) {
    return <div className="calendar-loading">Загрузка событий...</div>;
  }

  if (error) {
    return <div className="calendar-error">Ошибка: {error}</div>;
  }

  // Format the selected date for display in the header
  const formattedSelectedDate = selectedDate 
    ? selectedDate.toLocaleDateString('ru-RU', { day: 'numeric', month: 'long', year: 'numeric' })
    : '';

  // Render calendars
  const renderCalendarDay = (day, index, isNextMonth = false) => {
    const dayEvents = getEventsForDate(day.date);
    const hasEvents = dayEvents.length > 0;
    
    // Проверяем, выбрана ли дата
    let isSelected = false;
    if (selectedDate) {
      // Create normalized copies of dates for comparison (only date, no time)
      const normalizedDayDate = new Date(day.date);
      normalizedDayDate.setHours(0, 0, 0, 0);
      
      const normalizedSelectedDate = new Date(selectedDate);
      normalizedSelectedDate.setHours(0, 0, 0, 0);
      
      // Compare timestamps for exact matching
      isSelected = normalizedDayDate.getTime() === normalizedSelectedDate.getTime();
    }
    
    return (
      <div 
        key={index} 
        className={`calendar-day ${day.isCurrentMonth ? '' : 'other-month'} 
                    ${day.isToday ? 'today' : ''} 
                    ${isSelected ? 'selected' : ''}
                    ${hasEvents ? 'has-events' : ''}`}
        onClick={() => handleDayClick(day)}
      >
        <span className="day-number">{day.day}</span>
        {hasEvents && <span className="event-indicator"></span>}
      </div>
    );
  };

  return (
    <div className="event-calendar">
      <div className="calendar-header">
        <h1 className="calendar-title">
          Календарь | {formattedSelectedDate}
        </h1>
      </div>
      
      {/* Неделя с датами */}
      <div className="week-view">
        <button 
          className="week-nav-button" 
          onClick={() => navigateWeek('prev')}
          aria-label="Previous week"
        >
          ←
        </button>
        
        <div className="week-days">
          {weekDays.map((day, index) => {
            const hasEvents = getEventsForDate(day.date).length > 0;
            
            return (
              <div 
                key={index} 
                className={`week-day ${day.isToday ? 'today' : ''} ${day.isSelected ? 'selected' : ''} ${hasEvents ? 'has-events' : ''}`}
                onClick={() => handleWeekDayClick(day)}
              >
                <div className="weekday-name">{day.weekday}</div>
                <div className="day-number">{day.day}</div>
                {hasEvents && <span className="event-indicator"></span>}
              </div>
            );
          })}
        </div>
        
        <button 
          className="week-nav-button" 
          onClick={() => navigateWeek('next')}
          aria-label="Next week"
        >
          →
        </button>
        
        <button 
          ref={calendarToggleRef}
          className="calendar-toggle-button" 
          onClick={toggleCalendar}
          aria-label="Toggle calendar"
        >
          {showCalendar ? '▲' : '▼'}
        </button>
      </div>
      
      {/* Полный календарь (показывается/скрывается) */}
      {showCalendar && (
        <div className="calendar-popup" ref={calendarRef}>
          <div className="calendar-controls">
                  <button 
              className="month-nav-button"
              onClick={() => navigateMonth('prev')}
              aria-label="Previous month"
                  >
                    ←
                  </button>
            
            <button 
              className="month-nav-button"
              onClick={() => navigateMonth('next')}
              aria-label="Next month"
            >
              →
            </button>
                            </div>
          
          <div className="calendars-container">
            {/* Текущий месяц */}
            <div className="calendar-container">
              <div className="month-title current-month-title">
                {activeMonth}
                        </div>
              
              {/* Weekday headers */}
              <div className="weekdays-header">
                <div className="weekday">ПН</div>
                <div className="weekday">ВТ</div>
                <div className="weekday">СР</div>
                <div className="weekday">ЧТ</div>
                <div className="weekday">ПТ</div>
                <div className="weekday">СБ</div>
                <div className="weekday">ВС</div>
                          </div>
                          
              {/* Calendar grid */}
              <div className="calendar-grid">
                {calendarDays.map((day, index) => renderCalendarDay(day, `current-${index}`, false))}
              </div>
                          </div>
                          
            {/* Следующий месяц */}
            <div className="calendar-container">
              <div className="month-title next-month-title">
                {nextMonth}
                          </div>
                          
              {/* Weekday headers */}
              <div className="weekdays-header">
                <div className="weekday">ПН</div>
                <div className="weekday">ВТ</div>
                <div className="weekday">СР</div>
                <div className="weekday">ЧТ</div>
                <div className="weekday">ПТ</div>
                <div className="weekday">СБ</div>
                <div className="weekday">ВС</div>
                          </div>

              {/* Calendar grid */}
              <div className="calendar-grid">
                {nextMonthDays.map((day, index) => renderCalendarDay(day, `next-${index}`, true))}
              </div>
                          </div>
                        </div>
                      </div>
      )}
      
      {/* События для выбранной даты */}
      <div className="daily-events" ref={eventsContainerRef}>
        {/* <h2 className="events-date-header">
          {selectedDate ? formatDate(selectedDate) : 'Выберите дату'}
        </h2> */}
        
        <div className="events-list">
          {selectedDate && getEventsForDate(selectedDate).length > 0 ? (
            getEventsForDate(selectedDate).map(event => {
              return (
                <div key={event.id} className="event-item">
                  <div className="event-time-block">
                    {formatTime(event.date)}
                    {event.duration && <span className="event-duration">{' | ' + event.duration}</span>}
                  </div>
                  <div className="event-content">
                    <h3 className="event-title">{event.title}</h3>
                    {event.shortDescription && (
                      <div className="event-short-description" >
                        {event.shortDescription}
                      </div>
                    )}
                  
                    {event.coverImage && (
                      <div className="event-image calendar-event-image">
                        <img src={event.coverImage} alt={event.title} />
                      </div>
                    )}
                    
                    <div className="event-footer">
                      <Link to={`/events/${event.slug}`} className="details-button">
                        Подробнее
                      </Link>
                      {event.eventLink && (
                        !isMobile() && (
                          <button
                            className="register-button"
                            style={{ marginLeft: 12 }}
                            onClick={() => window.open(event.eventLink, '_blank')}
                          >
                            Забронировать место
                          </button>
                        )
                      )}
                    </div>
                  </div>
                </div>
              );
            })
              ) : (
                <div className="no-events-message">
              {selectedDate ? 'На эту дату нет запланированных событий' : 'Выберите дату для просмотра событий'}
                </div>
              )}
        </div>
      </div>
    </div>
  );
};

export default EventCalendar; 