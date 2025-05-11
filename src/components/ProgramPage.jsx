import React from 'react';
import ProgramDetails from './ProgramDetails';

const ProgramPage = () => {
  // Example program data, in a real app this would come from an API or CMS
  const programData = {
    title: "ЩЕНЯЧИЙ ПАТРУЛЬ",
    description: [
      "Отряд Щенков к празднику готов! Любимые герои мультсериала «Щенячий патруль» спешат поздравить именинника и развеселить всех гостей до упаду!",
      "Скай, Гонщик и Крепыш готовы рассказать, что такое настоящая бухта приключений, где ты сможешь почувствовать себя главным героем!",
      "Будем узнавать много нового, играть в любимые игры героев мультфильма и конечно веселиться!",
      "С помощью 3Д пазла разберем ящик инструментов, спасем жителей дома от пожара, примерив на себя каску Маршала, и весело станцуем тяф — тяф буги, а самые смелые побывают в пасти у Акулы!",
      "Красивые костюмы, веселая программа, реквизит по тематике праздника, подарки из шаров - все это для именинника!"
    ],
    mainImage: "https://via.placeholder.com/800x600?text=Щенячий+Патруль",
    galleryImages: [
      "https://via.placeholder.com/200x200?text=1",
      "https://via.placeholder.com/200x200?text=2",
      "https://via.placeholder.com/200x200?text=3",
      "https://via.placeholder.com/200x200?text=4",
      "https://via.placeholder.com/200x200?text=5",
      "https://via.placeholder.com/200x200?text=6",
    ],
    returnPath: "/programs"
  };

  return (
    <div className="program-page">
      <ProgramDetails 
        title={programData.title}
        description={programData.description}
        mainImage={programData.mainImage}
        galleryImages={programData.galleryImages}
        returnPath={programData.returnPath}
      />
    </div>
  );
};

export default ProgramPage; 