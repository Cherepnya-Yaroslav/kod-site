import React from 'react';
import '../styles/components/PageHeaderSection.css';

const PageHeaderSection = ({ title, description }) => {
  return (
    <section className="page-header-section">
      <div className="container">
        <div className="page-header-content">
          {title && <h2 className="page-header-title">{title}</h2>}
          {description && (
            <div className="page-header-description">
              {/* Split description into paragraphs if it contains newlines */}
              {description.split('\n').map((paragraph, index) => (
                <p key={index}>{paragraph}</p>
              ))}
            </div>
          )}
        </div>
      </div>
    </section>
  );
};

export default PageHeaderSection; 