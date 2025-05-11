export default ({ env }) => ({
  'users-permissions': {
    config: {
      jwtSecret: env('JWT_SECRET'),
      jwt: {
        expiresIn: '7d',
      },
    },
  },
  'email': {
    config: {
      provider: 'nodemailer',
      providerOptions: {
        host: env('SMTP_HOST', 'smtp.example.com'),
        port: env('SMTP_PORT', 587),
        auth: {
          user: env('SMTP_USERNAME', 'username'),
          pass: env('SMTP_PASSWORD', 'password'),
        },
        secure: env.bool('SMTP_SECURE', false),
      },
      settings: {
        defaultFrom: env('SMTP_FROM', 'noreply@kod-entertainment.com'),
        defaultReplyTo: env('SMTP_REPLY_TO', 'info@kod-entertainment.com'),
      },
    },
  },
});
