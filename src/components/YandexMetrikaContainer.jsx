"use client";

import Router from "next/router";
import React, { useCallback, useEffect } from "react";
import ym, { YMInitializer } from "react-yandex-metrika";

const YM_COUNTER_ID = 102137639;
const analyticsEnabled = process.env.NODE_ENV === "production";

const YandexMetrikaContainer = () => {
  const hit = useCallback(
    (url) => {
      if (analyticsEnabled) {
        ym("hit", url);
      }
    },
    []
  );

  useEffect(() => {
    if (!analyticsEnabled) return;
    hit(window.location.pathname + window.location.search);
    Router.events.on("routeChangeComplete", hit);
    return () => {
      Router.events.off("routeChangeComplete", hit);
    };
  }, [hit]);

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