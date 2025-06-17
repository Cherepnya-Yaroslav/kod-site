import React from "react";

const whatsappNumber = "79006478722"; // Замените на нужный номер
const whatsappLink = `https://wa.me/${whatsappNumber}`;

const wrapperStyle = {
  position: "fixed",
  bottom: "30px",
  right: "30px",
  zIndex: 1000,
  width: "68px",
  height: "68px",
  display: "flex",
  alignItems: "center",
  justifyContent: "center",
  background: "conic-gradient(from 180deg at 50% 50%, #ff00cc, #3333ff, #00ffcc, #ff00cc)",
  borderRadius: "50%",
  padding: "3px",
};

const buttonStyle = {
  width: "60px",
  height: "60px",
  backgroundColor: "#25d366",
  color: "#FFF",
  borderRadius: "50%",
  textAlign: "center",
  boxShadow: "2px 2px 3px #999",
  display: "flex",
  alignItems: "center",
  justifyContent: "center",
  transition: "box-shadow 0.2s",
  cursor: "pointer",
  border: "none",
};

const iconStyle = {
  width: "35px",
  height: "35px",
};

const WhatsAppButton = () => (
  <div style={wrapperStyle}>
    <a href={whatsappLink} target="_blank" rel="noopener noreferrer" style={buttonStyle} title="Написать в WhatsApp">
      <img
        src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg"
        alt="WhatsApp"
        style={iconStyle}
      />
    </a>
  </div>
);

export default WhatsAppButton; 