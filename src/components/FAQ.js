import React, { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from "./Card"
import "../styles/components/FAQ.css"

// FAQ Item component for collapsible functionality
const FAQItem = ({ question, answer }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [renderContent, setRenderContent] = useState(false);

  const toggleAnswer = () => {
    if (!isOpen) {
      setRenderContent(true);
      setTimeout(() => setIsOpen(true), 10);
    } else {
      setIsOpen(false);
      // Remove content after animation completes to prevent scrollbars
      setTimeout(() => setRenderContent(false), 500);
    }
  };

  return (
    <Card className="faq-card">
      <CardHeader onClick={toggleAnswer}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', width: '100%' }}>
          <CardTitle className="faq-question">{question}</CardTitle>
          <button 
            className="faq-toggle-btn" 
            onClick={(e) => {
              e.stopPropagation();
              toggleAnswer();
            }}
            aria-label={isOpen ? "Скрыть ответ" : "Показать ответ"}
          >
            {isOpen ? '−' : '+'}
          </button>
        </div>
      </CardHeader>
      <CardContent 
        className={`faq-answer-container ${isOpen ? 'faq-answer-open' : 'faq-answer-closed'}`}
      >
        {renderContent && <p className="faq-answer">{answer}</p>}
      </CardContent>
    </Card>
  );
};

const FAQ = ({ title = "Часто задаваемые вопросы", questions }) => {
  return (
    <section className="faq-section">
      <div className="container">
        <div className="faq-container">
          <div className="faq-header">
            <h2 className="section-title">{title}</h2>
          </div>
          <div className="faq-list">
            {questions.map((item, index) => (
              <FAQItem 
                key={index} 
                question={item.question} 
                answer={item.answer} 
              />
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

export default FAQ; 