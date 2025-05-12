import React, { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from "./Card"
import "../styles/components/FAQ.css"

const FAQ = ({ questions = [] }) => {
  const [openQuestions, setOpenQuestions] = useState({});

  if (!questions || questions.length === 0) return null;

  const toggleQuestion = (index) => {
    setOpenQuestions(prev => ({
      ...prev,
      [index]: !prev[index]
    }));
  };

  return (
    <section className="faq-section">
      <div className="container">
        <h2 className="section-title">Часто задаваемые вопросы</h2>
        <div className="faq-grid">
          {questions.map((item, index) => (
            <Card key={index} className="faq-card">
              <CardHeader 
                className="faq-card-header" 
                onClick={() => toggleQuestion(index)}
                style={{ cursor: 'pointer' }}
              >
                <div className="faq-question-container">
                  <CardTitle>{item.question}</CardTitle>
                  <button 
                    className="faq-toggle-btn"
                    onClick={(e) => {
                      e.stopPropagation();
                      toggleQuestion(index);
                    }}
                  >
                    {openQuestions[index] ? '−' : '+'}
                  </button>
                </div>
              </CardHeader>
              <CardContent>
                <div className={`faq-answer-container ${openQuestions[index] ? 'faq-answer-open' : 'faq-answer-closed'}`}>
                  <p className="faq-answer">{item.answer}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>
    </section>
  );
};

export default FAQ; 