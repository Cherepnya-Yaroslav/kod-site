import { factories } from '@strapi/strapi'
import nodemailer from 'nodemailer';

export default factories.createCoreController('api::contact.contact', ({ strapi }) => ({
  async create(ctx) {
    function formatAdditionalData(additionalData: any) {
        if (!additionalData || Object.keys(additionalData).length === 0) return '—';
        return Object.entries(additionalData)
          .map(([key, value]) => `  • ${key}: ${value}`)
          .join('\n');
      }
    // 1. Сохраняем запись стандартно
    const response = await super.create(ctx);

    // 2. Достаём данные формы
    const { name, phone, message, formType, additionalData } = ctx.request.body.data;

    // 3. Настраиваем transporter (захардкоженные данные)
    const transporter = nodemailer.createTransport({
      host: 'smtp.mail.ru',
      port: 465,
      secure: true,
      auth: {
        user: 'meetingm@bk.ru',
        pass: 'TCNwNSdhLX769bNZta4S',
      },
    });

    // 4. Формируем письмо
    await transporter.sendMail({
      from: 'meetingm@bk.ru',
      to: 'cherepnya.yar@mail.ru',
      subject: `Новая заявка с сайта (${formType || 'Обратная связь'})`,
      text: `
        Имя: ${name || '—'}
        Телефон: ${phone || '—'}
        Сообщение: ${message || '—'}
        Дополнительно:
        ${formatAdditionalData(additionalData)}
        `,
      replyTo: 'kodspace@yandex.ru',
    });

    return response;
  }
}));