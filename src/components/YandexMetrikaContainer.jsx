"use client";

import React, { useEffect } from "react";
import { YMInitializer } from "react-yandex-metrika";
import { useLocation } from "react-router-dom";

const YM_COUNTER_ID = 102137639;
const analyticsEnabled = process.env.NODE_ENV === "production";

const YandexMetrikaContainer = () => {
  const location = useLocation();

  useEffect(() => {
    if (!analyticsEnabled) return;
    if (window.ym) {
      window.ym(YM_COUNTER_ID, "hit", location.pathname + location.search);
    }
  }, [location]);

  if (!analyticsEnabled) return null;

  return (
    <YMInitializer
      accounts={[YM_COUNTER_ID]}
      options={{
        defer: true,
        webvisor: true,
        clickmap: true,
        trackLinks: true,
        accurateTrackBounce: true,
      }}
      version="2"
    />
  );
};

export default YandexMetrikaContainer; 