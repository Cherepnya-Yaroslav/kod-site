import React from 'react';
import { Card, CardContent, CardFooter } from "./Card"
import "../styles/components/Testimonials.css"

const Testimonials = ({ testimonials = [] }) => {
  if (!testimonials || testimonials.length === 0) return null;

  return (
    <section className="testimonials-section">
      <div className="container">
        <h2 className="section-title">Отзывы</h2>
        <div className="testimonials-grid">
          {testimonials.map((testimonial, index) => (
            <Card key={index} className="testimonial-card">
              <CardContent>
                <p className="testimonial-text">"{testimonial.text}"</p>
              </CardContent>
              <CardFooter>
                <p className="testimonial-author">— {testimonial.author}</p>
              </CardFooter>
            </Card>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Testimonials; 