# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>

# Гайд по работе с админкой Strapi для сайта KOD

Этот документ поможет вам разобраться в структуре данных сайта и понять, за что отвечает каждое поле в админке Strapi. Используйте его как справочник при заполнении или редактировании контента.

---

## Основные коллекции и страницы

### 1. Игры (`Game`)
**Путь в админке:** Content Manager → Games

| Поле                | Тип         | Описание                                                                 |
|---------------------|-------------|--------------------------------------------------------------------------|
| title               | Строка      | Название игры.                                                          |
| gameType            | Список      | Тип игры: `role` (ролевая), `quest` (квест), `show` (шоу), `quiz` (квиз), `tgame` (творческая), `dance` (танцевальная). Выберите подходящее значение. |
| audienceType        | Список      | Для кого игра: `kids` (дети) или `adults` (взрослые).                   |
| ageGroups           | JSON-массив | Список возрастных групп, например: `["6+", "12+", "16+"]`. Можно указать несколько через запятую. |
| description         | Текст       | Основное описание игры.                                                  |
| hasPremiumVersion   | Флаг        | Есть ли премиум-версия игры? Отметьте, если да.                          |
| premiumDescription  | Текст       | Описание премиум-версии (если есть).                                     |

**Рекомендации:**
- Заполняйте все обязательные поля (помечены как required).
- Для поля `ageGroups` используйте формат: `["6+", "12+", "16+"]`.
- Если премиум-версии нет, поле `premiumDescription` можно оставить пустым.

---

### 2. События (`Event`)
**Путь в админке:** Content Manager → Events

| Поле                | Тип         | Описание                                                                 |
|---------------------|-------------|--------------------------------------------------------------------------|
| title               | Строка      | Название события.                                                        |
| date                | Дата/время  | Дата и время проведения.                                                 |
| type                | Список      | Тип события: `kids` (детское), `adults` (взрослое), `openParties` (открытая вечеринка). |
| shortDescription    | Текст       | Краткое описание события.                                                |
| fullDescription     | Текст (richtext) | Полное описание события.                                            |
| price               | Число       | Стоимость участия.                                                      |
| maxParticipants     | Число       | Максимальное количество участников.                                      |
| currentParticipants | Число       | Текущее количество зарегистрированных участников.                       |
| location            | Строка      | Место проведения.                                                       |
| duration            | Строка      | Продолжительность (например, "1 час").                                 |
| coverImage          | Медиа       | Обложка события (одно изображение).                                      |
| gallery             | Медиа       | Галерея изображений (можно загрузить несколько).                        |
| slug                | UID         | Уникальный адрес события (генерируется автоматически по названию).       |
| eventLink           | Строка      | Ссылка на регистрацию или внешний ресурс (если есть).                    |

**Рекомендации:**
- Заполняйте все обязательные поля.
- Для изображений используйте качественные фото.
- `currentParticipants` обновляется автоматически при регистрации участников.

---

### 3. Страницы (Kids/Adult/Open/Personal Parties)

#### Kids Games Page, Adult Games Page, Open Parties Page, Personal Parties Page
**Путь в админке:** Content Manager → соответствующая страница

| Поле            | Тип         | Описание                                                      |
|-----------------|-------------|---------------------------------------------------------------|
| Title           | Строка      | Заголовок страницы.                                           |
| Description     | Текст       | Описание страницы.                                            |
| CoverImage      | Медиа       | Обложка (одно изображение).                                   |
| Gallery         | Медиа       | Галерея изображений (можно загрузить несколько).              |
| pageHeader      | Компонент   | Заголовок страницы с дополнительными настройками.             |
| faq             | Компонент   | Список часто задаваемых вопросов (FAQ).                       |
| testimonials    | Компонент   | Отзывы (только на Kids Games Page).                           |
| rentGallery     | Медиа       | Галерея аренды (только на Personal Parties Page).             |
| programs        | Компонент   | Программы (только на Personal Parties Page).                  |
| questions       | Компонент   | Вопросы (только на Personal Parties Page).                    |
| testimonial     | Компонент   | Отзывы (только на Personal Parties Page).                     |
| fishki          | Компонент   | Фишки/особенности (только на Personal Parties Page).          |
| gameGallery     | Медиа       | Галерея игр (только на Personal Parties Page).                |
| themeGallery    | Медиа       | Галерея тематик (только на Personal Parties Page).            |

**Рекомендации:**
- Для галерей используйте только изображения хорошего качества.
- В компонентах FAQ и testimonials добавляйте новые элементы через кнопку "Добавить".
- В поле `pageHeader` можно настроить подзаголовок, изображение и другие параметры отображения шапки страницы.

---

### 4. Тематические вечеринки (`Theme-party-event`)
**Путь в админке:** Content Manager → Theme-party-events

| Поле        | Тип     | Описание                                              |
|-------------|---------|-------------------------------------------------------|
| title       | Строка  | Название тематической вечеринки.                      |
| slug        | UID     | Уникальный адрес (генерируется по названию).          |
| description | Blocks  | Описание (можно использовать блоки для форматирования).|
| coverImage  | Медиа   | Обложка (одно изображение).                           |
| media       | Медиа   | Дополнительные медиа (можно загрузить несколько файлов/изображений/видео). |

---

## Общие советы по работе с админкой
- Все обязательные поля отмечены звёздочкой (*).
- Для изображений используйте форматы JPG/PNG, для видео — MP4.
- После внесения изменений не забудьте нажать "Сохранить" или "Опубликовать".
- Для повторяющихся элементов (галереи, FAQ, отзывы) используйте кнопку "Добавить".
- Если не уверены в назначении поля — обратитесь к этому гайду или к вашему менеджеру.

---

**Если у вас возникнут вопросы по заполнению или структуре — смело обращайтесь!**
