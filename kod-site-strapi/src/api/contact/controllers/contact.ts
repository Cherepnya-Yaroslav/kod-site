import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::contact.contact', ({ strapi }) => ({
  async create(ctx) {
    // 1. Сохраняем запись стандартно
    const response = await super.create(ctx);

    // 2. Логируем полученные данные для отладки
    const { name, phone, message, formType, additionalData } = ctx.request.body.data;
    strapi.log.info('Контактная форма: получены данные', { name, phone, message, formType, additionalData });

    // 3. (Почта больше не отправляется из Strapi)

    // 4. Сразу возвращаем ответ клиенту
    return response;
  }
}));