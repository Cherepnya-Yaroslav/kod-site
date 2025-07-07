import nodemailer from 'nodemailer';

const transporter = nodemailer.createTransport({
  host: 'smtp.mail.ru',
  port: 465,
  secure: true,
  auth: {
    user: 'meetingm@bk.ru',
    pass: 'TCNwNSdhLX769bNZta4S',
  },
});

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  const data = req.body;

  const mailOptions = {
    from: 'meetingm@bk.ru',
    to: 'cherepnya.yar@mail.ru',
    subject: 'Новая заявка',
    html: `
      <h2>Новая заявка</h2>
      <pre>${JSON.stringify(data, null, 2)}</pre>
    `,
  };

  try {
    await transporter.sendMail(mailOptions);
    return res.status(200).json({ success: true });
  } catch (error) {
    console.error('Error sending email:', error);
    return res.status(500).json({ error: 'Internal Server Error' });
  }
} 