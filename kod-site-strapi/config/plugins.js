module.exports = {
  'users-permissions': {
    config: {
      jwtSecret: process.env.JWT_SECRET,
      jwt: {
        expiresIn: '7d',
      },
    },
  },
  'transformer': {
    enabled: true,
    config: {
      responseTransforms: {
        removeAttributesKey: true,
        removeDataKey: true,
      },
    },
  },
  'email': {
    config: {
      provider: 'nodemailer',
      providerOptions: {
        host: process.env.SMTP_HOST || 'smtp.example.com',
        port: process.env.SMTP_PORT || 587,
        auth: {
          user: process.env.SMTP_USERNAME || 'username',
          pass: process.env.SMTP_PASSWORD || 'password',
        },
        // Optional SMTP settings
        secure: process.env.SMTP_SECURE === 'true', // true for 465, false for other ports
      },
      settings: {
        defaultFrom: process.env.SMTP_FROM || 'noreply@kod-entertainment.com',
        defaultReplyTo: process.env.SMTP_REPLY_TO || 'info@kod-entertainment.com',
      },
    },
  },
}; 