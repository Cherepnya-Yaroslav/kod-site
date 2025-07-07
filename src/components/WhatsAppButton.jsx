import React, { useState } from "react";

const BTN_SIZE = 64;
const ICON_SIZE = 35;
const PURPLE_GLOW = '0 0 0 4px #a259ff, 0 4px 24px rgba(0,0,0,0.15)';

const contacts = [
  {
    icon: <img src="/whatsapp-sign-logo.svg" alt="WhatsApp" width={ICON_SIZE} height="32" style={{display:'block'}} />, 
    color: "#fff",
    link: "https://wa.me/89006478722",
    title: "WhatsApp"
  },
  {
    icon: <img src="/telegram-logo.svg" alt="Telegram" width={ICON_SIZE} height="32" style={{display:'block'}} />, 
    color: "#2AABEE",
    link: "https://t.me/kodspace",
    title: "Telegram"
  },
  {
    icon: <img src="/vk-logo.svg" alt="VK" width={ICON_SIZE} height="32" style={{display:'block'}} />, 
    color: "#2787F5",
    link: "https://vk.com/kodparty?from=groups",
    title: "VK"
  },
  {
    icon: (
      <svg width={ICON_SIZE} height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="16" cy="16" r="16" fill="#fff"/>
        <path d="M22 16.92V19a2 2 0 0 1-2.18 2A19.72 19.72 0 0 1 3 5.18 2 2 0 0 1 5 3h2.09a2 2 0 0 1 2 1.72c.13 1.05.37 2.07.72 3.06a2 2 0 0 1-.45 2.11l-.27.27a16 16 0 0 0 6.29 6.29l.27-.27a2 2 0 0 1 2.11-.45c.99.35 2.01.59 3.06.72A2 2 0 0 1 22 16.92z" stroke="#a259ff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
      </svg>
    ),
    color: "#fff",
    link: "tel:89006478722",
    title: "Позвонить"
  },
];

// SVG bubble chat из исходника
const mainButtonIcon = (
  <svg role="presentation" width={ICON_SIZE} height="32" viewBox="0 0 35 32" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.2667 12.6981H23.3667M11.2667 16.4717H23.3667M4.8104 23.5777C2.4311 21.1909 1 18.1215 1 14.7736C1 7.16679 8.38723 1 17.5 1C26.6128 1 34 7.16679 34 14.7736C34 22.3804 26.6128 28.5472 17.5 28.5472C15.6278 28.5472 13.8286 28.2868 12.1511 27.8072L12 27.7925L5.03333 31V23.8219L4.8104 23.5777Z" stroke="#ffffff" strokeWidth="2" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round" fill="none"></path>
  </svg>
);

// SVG крестик из исходника
const closeIcon = (
  <svg role="presentation" width="32" height="32" viewBox="0 0 23 23" xmlns="http://www.w3.org/2000/svg">
    <g fillRule="evenodd">
      <path d="M10.314 -3.686H12.314V26.314H10.314z" transform="rotate(-45 11.314 11.314)"></path>
      <path d="M10.314 -3.686H12.314V26.314H10.314z" transform="rotate(45 11.314 11.314)"></path>
    </g>
  </svg>
);

const wrapperStyle = {
  position: "fixed",
  bottom: "32px",
  right: "32px",
  zIndex: 1000,
  display: "flex",
  flexDirection: "column",
  alignItems: "center",
};

// Анимация: лесенка через transitionDelay
const getListItemStyle = (open, idx) => ({
  opacity: open ? 1 : 0,
  transform: open ? 'translateY(0)' : 'translateY(40px)',
  transition: `opacity 0.35s cubic-bezier(.4,0,.2,1), transform 0.35s cubic-bezier(.4,0,.2,1)`,
  transitionDelay: open ? `${idx * 0.07 + 0.1}s` : `${(contacts.length-idx) * 0.05}s`,
});

const FloatingContacts = () => {
  const [open, setOpen] = useState(false);
  const [visible, setVisible] = useState(false);

  React.useEffect(() => {
    if (open) setVisible(true);
    else {
      const timeout = setTimeout(() => setVisible(false), 400);
      return () => clearTimeout(timeout);
    }
  }, [open]);

  return (
    <div style={wrapperStyle}>
      {(open || visible) && (
        <div style={{display:'flex',flexDirection:'column',alignItems:'center',gap:'16px',marginBottom:'12px'}}>
          {contacts.map((c, i) => (
            <a
              key={i}
              href={c.link}
              target="_blank"
              rel="noopener noreferrer"
              style={{...btnStyle(c.color), ...getListItemStyle(open, i)}}
              title={c.title}
            >
              {React.cloneElement(c.icon, {width: ICON_SIZE, height: 32})}
            </a>
          ))}
          <button style={{...closeBtnStyle, ...getListItemStyle(open, contacts.length)}} onClick={() => setOpen(false)} title="Закрыть">
            {closeIcon}
          </button>
        </div>
      )}
      {!open && (
        <button style={mainBtnStyle} onClick={() => setOpen(true)} title="Связаться">
          {mainButtonIcon}
        </button>
      )}
    </div>
  );
};

const btnStyle = color => ({
  width: BTN_SIZE + 'px',
  height: BTN_SIZE + 'px',
  borderRadius: '50%',
  border: 'none',
  background: color,
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
  boxShadow: PURPLE_GLOW,
  cursor: 'pointer',
  margin: 0,
  padding: 0,
  transition: 'box-shadow 0.2s',
});
const closeBtnStyle = btnStyle('#fff');
const mainBtnStyle = btnStyle('#ff3420');

export default FloatingContacts; 