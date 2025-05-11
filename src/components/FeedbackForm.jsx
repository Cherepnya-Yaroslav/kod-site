import React, { useState, useEffect } from 'react';
import '../styles/components/FeedbackForm.css';
import axios from 'axios';

const API_URL = process.env.REACT_APP_STRAPI_API_URL || 'http://localhost:1337';

const FeedbackForm = ({ questions, title, description, isOpen, onClose, formType = 'Обратная связь', answers: initialAnswers = {} }) => {
  const [answers, setAnswers] = useState(initialAnswers);
  const [isVisible, setIsVisible] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitError, setSubmitError] = useState(null);
  const [submitSuccess, setSubmitSuccess] = useState(false);

  useEffect(() => {
    if (isOpen) {
      // Плавная прокрутка вверх при открытии формы
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
      
      // Небольшая задержка перед анимацией появления
      setTimeout(() => setIsVisible(true), 50);
      // Блокируем скролл на body
      document.body.style.overflow = 'hidden';
      
      // Initialize with provided answers or reset if none provided
      setAnswers(initialAnswers || {});
      setSubmitError(null);
      setSubmitSuccess(false);
    } else {
      setIsVisible(false);
      document.body.style.overflow = '';
    }
    return () => {
      document.body.style.overflow = '';
    };
  }, [isOpen, initialAnswers]);

  const handleAnswerChange = (questionId, value) => {
    setAnswers(prev => ({
      ...prev,
      [questionId]: value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    // Reset submission states
    setIsSubmitting(true);
    setSubmitError(null);
    setSubmitSuccess(false);
    
    try {
      // Extract basic form data (name, email, phone, message)
      const formData = {
        formType: formType || title,
        ...answers
      };
      
      // Get name, email, and phone from appropriate form fields
      const nameField = questions.find(q => q.id === 'name' || q.id === 'contactName');
      const emailField = questions.find(q => q.id === 'email');
      const phoneField = questions.find(q => q.id === 'phone');
      const messageField = questions.find(q => q.id === 'message' || q.id === 'comments');
      
      if (nameField) formData.name = answers[nameField.id];
      if (emailField) formData.email = answers[emailField.id];
      if (phoneField) formData.phone = answers[phoneField.id];
      if (messageField) formData.message = answers[messageField.id];
      
      console.log('Submitting form data:', formData);
      
      // Send data to the API
      const response = await axios.post(`${API_URL}/api/contact/submit`, formData);
      
      console.log('Form submission response:', response.data);
      
      setSubmitSuccess(true);
      
      // Close the form after success (optional - can also show success message)
      setTimeout(() => {
        onClose();
      }, 2000);
      
    } catch (error) {
      console.error('Error submitting form:', error);
      setSubmitError(error.response?.data?.message || 'Произошла ошибка при отправке формы. Пожалуйста, попробуйте позже.');
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleBackdropClick = (e) => {
    if (e.target === e.currentTarget) {
      onClose();
    }
  };

  if (!isOpen) return null;

  const renderField = (question) => {
    switch (question.type) {
      case 'text':
        return (
          <input
            type="text"
            className="form-input"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            placeholder={question.placeholder || ''}
            required={question.required}
          />
        );
      
      case 'email':
        return (
          <input
            type="email"
            className="form-input"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            placeholder={question.placeholder || ''}
            required={question.required}
          />
        );
      
      case 'tel':
        return (
          <input
            type="tel"
            className="form-input"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            placeholder="+7 (___) ___-__-__"
            required={question.required}
          />
        );

      case 'date':
        return (
          <input
            type="date"
            className="form-input"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            required={question.required}
          />
        );

      case 'number':
        return (
          <input
            type="number"
            className="form-input"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            placeholder={question.placeholder || '0'}
            min={question.min}
            max={question.max}
            required={question.required}
          />
        );

      case 'radio':
        return (
          <div className="radio-group">
            {question.options.map((option, idx) => (
              <label key={idx} className="radio-label">
                <input
                  type="radio"
                  name={`question-${question.id}`}
                  value={option.value}
                  checked={answers[question.id] === option.value}
                  onChange={(e) => handleAnswerChange(question.id, e.target.value)}
                  required={question.required && idx === 0}
                />
                {option.label}
              </label>
            ))}
          </div>
        );

      case 'textarea':
        return (
          <textarea
            className="form-textarea"
            value={answers[question.id] || ''}
            onChange={(e) => handleAnswerChange(question.id, e.target.value)}
            placeholder={question.placeholder || 'Ваш ответ...'}
            rows="3"
            required={question.required}
          />
        );

      default:
        return null;
    }
  };

  return (
    <div 
      className={`feedback-modal-overlay ${isVisible ? 'visible' : ''}`}
      onClick={handleBackdropClick}
    >
      <div className={`feedback-modal ${isVisible ? 'visible' : ''}`}>
        <button className="feedback-modal-close" onClick={onClose} type="button">
          ×
        </button>
        <div className="feedback-modal-content">
          {title && <h2 className="feedback-title">{title}</h2>}
          {description && <p className="feedback-description">{description}</p>}
          
          {submitSuccess ? (
            <div className="feedback-success">
              <h3>Спасибо за ваш запрос!</h3>
              <p>Мы свяжемся с вами в ближайшее время.</p>
            </div>
          ) : (
            <form className="feedback-form" onSubmit={handleSubmit}>
              {questions.map((question, index) => (
                <div key={index} className="form-group">
                  <label className="form-label">
                    {question.text}
                    {question.required && <span className="required">*</span>}
                  </label>
                  {renderField(question)}
                </div>
              ))}
              
              {submitError && (
                <div className="feedback-error">
                  {submitError}
                </div>
              )}
              
              <button 
                type="submit" 
                className="feedback-submit"
                disabled={isSubmitting}
              >
                {isSubmitting ? 'Отправка...' : 'Отправить заявку'}
              </button>
            </form>
          )}
        </div>
      </div>
    </div>
  );
};

export default FeedbackForm; 