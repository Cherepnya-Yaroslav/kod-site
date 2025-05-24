import { Link } from "react-router-dom";

const PromoBanner = ({ title, buttonText, buttonLink, isExternalLink, coverImage }) => {
  const ButtonComponent = isExternalLink ? 'a' : Link;
  const buttonProps = isExternalLink 
    ? { href: buttonLink, target: "_blank", rel: "noopener noreferrer" }
    : { to: buttonLink };

  const bannerStyle = coverImage ? {
    backgroundImage: `url(${coverImage})`,
    backgroundSize: 'cover',
    backgroundPosition: 'center',
    backgroundRepeat: 'no-repeat'
  } : {};

  // console.log('Banner style:', bannerStyle);

  return (
    <div className="promo-banner" style={bannerStyle}>
      <div className="container promo-banner-container">
        <h2 className="promo-banner-title">{title}</h2>
        <ButtonComponent 
          {...buttonProps} 
          className="promo-banner-button"
        >
          {buttonText}
        </ButtonComponent>
      </div>
    </div>
  );
};

export default PromoBanner; 