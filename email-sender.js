const express = require('express');
const nodemailer = require('nodemailer');
const bodyParser = require('body-parser');
const cors = require('cors');


const app = express();
const PORT = process.env.PORT || 4001;

app.use(bodyParser.json());
app.use(cors());

// SMTP-конфиг (Mail.ru)
const transporter = nodemailer.createTransport({
  host: 'smtp.yandex.ru',
  port: 465,
  secure: true,
  auth: {
    user: 'Sesor8888@yandex.ru',
    pass: 'ifjnegjxrzslpihr',
  },
});

function formatAdditionalData(additionalData) {
  if (!additionalData || Object.keys(additionalData).length === 0) return '—';
  return Object.entries(additionalData)
    .map(([key, value]) => `  • ${key}: ${value}`)
    .join('\n');
}

app.post('/send-email', async (req, res) => {
  const { name, phone, message, formType, additionalData } = req.body;
  console.log('[EMAIL-SENDER] Получены данные:', { name, phone, message, formType, additionalData });

  try {
    await transporter.sendMail({
      from: 'Sesor8888@yandex.ru',
      to: 'kodspace@mail.ru',
      subject: `Новая заявка с сайта (${formType || 'Обратная связь'})`,
      text: `\nИмя: ${name || '—'}\nТелефон: ${phone || '—'}\nСообщение: ${message || '—'}\nДополнительно:\n${formatAdditionalData(additionalData)}\n`,
      replyTo: 'kodspace@mail.ru',
    });
    console.log('[EMAIL-SENDER] Письмо успешно отправлено!');
    res.status(200).json({ success: true });
  } catch (e) {
    console.error('[EMAIL-SENDER] Ошибка отправки письма:', e);
    res.status(500).json({ success: false, error: e.message });
  }
});

app.get('/', (req, res) => {
  res.send('Email sender backend is running.');
});

app.listen(PORT, () => {
  console.log(`Email sender backend listening on port ${PORT}`);
}); 