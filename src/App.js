import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomePage from './pages/HomePage';
import OpenPartiesPage from './pages/OpenPartiesPage';
import PersonalPartiesPage from './pages/PersonalPartiesPage';
import KidsGamesPage from './pages/KidsGamesPage';
import AdultGamesPage from './pages/AdultGamesPage';
import DancePage from './pages/DancePage';
import OnlineLearningPage from './pages/OnlineLearningPage';
import EventPage from './pages/EventPage';
import GamingPartiesPage from './pages/GamingPartiesPage';
import ThemePartiesPage from './pages/ThemePartiesPage';
import ThemePartyDetailPage from './pages/ThemePartyDetailPage';
import EventDetailsPage from './pages/EventDetailsPage';
import CoffeePage from './pages/CoffeePage';
import PageTransition from './components/PageTransition';
import './styles/globals.css';
import EventCalendar from './components/EventCalendar';
import ScrollToTop from './components/ScrollToTop';
import "./App.css"

function App() {
  return (
    <Router>
      <PageTransition>
        <ScrollToTop />
        {/* <SiteHeader></SiteHeader> */}
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/open-parties" element={<OpenPartiesPage />} />
          <Route path="/personal-parties" element={<PersonalPartiesPage />} />
          <Route path="/gaming-parties" element={<GamingPartiesPage />} />
          <Route path="/theme-parties" element={<ThemePartiesPage />} />
          <Route path="/theme-parties/:slug" element={<ThemePartyDetailPage />} />
          <Route path="/kids-games" element={<KidsGamesPage />} />
          <Route path="/adult-games" element={<AdultGamesPage />} />
          <Route path="/dance" element={<DancePage />} />
          <Route path="/online-learning" element={<OnlineLearningPage />} />
          <Route path="/coffee" element={<CoffeePage />} />
          <Route path="/events" element={<EventCalendar eventType="adults" />} />
          <Route path="/events/kids" element={<EventCalendar eventType="kids" />} />
          <Route path="/events/:slug" element={<EventPage />} />
        </Routes>
      </PageTransition>
    </Router>
  );
}

export default App;

