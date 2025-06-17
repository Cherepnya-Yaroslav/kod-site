import React from "react";

const whatsappNumber = "79006478722"; // Замените на нужный номер
const whatsappLink = `https://wa.me/${whatsappNumber}`;

const buttonStyle = {
  position: "fixed",
  width: "60px",
  height: "60px",
  bottom: "30px",
  right: "30px",
  backgroundColor: "#25d366",
  color: "#FFF",
  borderRadius: "50%",
  textAlign: "center",
  boxShadow: "2px 2px 3px #999",
  zIndex: 1000,
  display: "flex",
  alignItems: "center",
  justifyContent: "center",
  transition: "box-shadow 0.2s",
  cursor: "pointer",
};

const iconStyle = {
  width: "35px",
  height: "35px",
};

const WhatsAppButton = () => (
  <a href={whatsappLink} target="_blank" rel="noopener noreferrer" style={buttonStyle} title="Написать в WhatsApp">
    <img
      src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg"
      alt="WhatsApp"
      style={iconStyle}
    />
  </a>
);

export default WhatsAppButton; 