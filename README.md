# KOD Site - Deployment Guide

This document provides instructions for deploying the KOD Site (frontend React application and Strapi backend) to reg.ru hosting.

## Project Structure

The project consists of two separate applications:
- **Frontend**: React application (main directory)
- **Backend**: Strapi CMS in the `kod-site-strapi` directory

## Environment Variables Setup

For local development and deployment, the project uses environment variables to configure important settings:

1. Create a `.env` file in the project root with the following variables:
   ```
   # Required - Strapi API URL configuration
   REACT_APP_STRAPI_URL=http://localhost:1337
   
   # Optional - For admin scripts only
   STRAPI_ADMIN_TOKEN=your_admin_token
   ```

2. For production, update these values to use your production URLs

All API connections in the codebase now use these environment variables instead of hardcoded values.

## Deployment Steps

### 1. Prepare Your Hosting Environment on reg.ru

#### For the Strapi Backend:
1. Set up a Node.js hosting plan on reg.ru
   - Ensure it supports Node.js v14+ (Strapi requirement)
   - Make sure it has SSH access for easier deployment
   - Verify MySQL/MariaDB or PostgreSQL database availability (recommended over SQLite for production)

#### For the Frontend:
1. Set up static web hosting on reg.ru
   - This can be a separate hosting plan or the same one if reg.ru allows

### 2. Backend (Strapi) Deployment

1. **Create production environment variables**
   
   Create a `.env` file in your Strapi project with proper production settings:
   ```
   HOST=0.0.0.0
   PORT=1337
   APP_KEYS=your-app-keys
   API_TOKEN_SALT=your-token-salt
   ADMIN_JWT_SECRET=your-admin-jwt-secret
   JWT_SECRET=your-jwt-secret
   DATABASE_CLIENT=mysql (or postgres)
   DATABASE_HOST=your-db-host
   DATABASE_PORT=3306
   DATABASE_NAME=your-db-name
   DATABASE_USERNAME=your-db-username
   DATABASE_PASSWORD=your-db-password
   ```

2. **Build Strapi for production**
   ```bash
   cd kod-site-strapi
   NODE_ENV=production npm run build
   ```

3. **Upload Strapi to reg.ru**
   - Using SFTP or Git, upload the following directories/files:
     ```
     config/
     public/
     src/
     package.json
     package-lock.json
     .env (your production env file)
     .strapi-updater.json
     tsconfig.json
     dist/ (generated after build)
     ```

4. **Install dependencies on server**
   ```bash
   npm install --production
   ```

5. **Start Strapi in production mode**
   ```bash
   NODE_ENV=production npm start
   ```
   
   For persistent running, use PM2:
   ```bash
   npm install -g pm2
   pm2 start npm --name "strapi" -- start
   pm2 save
   ```

6. **Configure server or proxy**
   - If using Nginx or Apache, set up a proxy to your Strapi application
   - Ensure correct domain/subdomain points to your Strapi instance (e.g., `api.yourdomain.com`)

### 3. Frontend Deployment

1. **Update API URL configuration**
   
   Create a `.env` file in your React project root:
   ```
   REACT_APP_STRAPI_API_URL=https://api.yourdomain.com
   ```
   
   Or if you're deploying Strapi on a subdomain:
   ```
   REACT_APP_STRAPI_API_URL=https://yourdomain.com/api
   ```

2. **Build the React application**
   ```bash
   npm run build
   ```
   This will create a `build` directory with static files.

3. **Upload the build directory to reg.ru**
   - Using SFTP, upload the contents of the `build` directory to your hosting

4. **Configure web server**
   - If using Nginx/Apache, ensure proper configuration for SPA (Single Page Application)
   - For React Router to work, you'll need URL rewriting to serve `index.html` for all routes

### 4. CORS Configuration for Strapi

Since your API and frontend will be on different domains/subdomains, you need to configure CORS in Strapi:

Edit `kod-site-strapi/config/middlewares.js` to allow your frontend domain:
```javascript
module.exports = [
  'strapi::errors',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          'connect-src': ["'self'", 'https:'],
          'img-src': ["'self'", 'data:', 'blob:', 'yourdomain.com'],
          'media-src': ["'self'", 'data:', 'blob:', 'yourdomain.com'],
          upgradeInsecureRequests: null,
        },
      },
      cors: {
        enabled: true,
        origin: ['https://yourdomain.com'],
        credentials: true,
      },
    },
  },
  // ...other middleware
];
```

### 5. Media/Uploads Configuration

1. Configure Strapi to use a proper upload provider for production:
   - By default, Strapi will store uploads on the local filesystem
   - For better performance, consider using S3/Cloudinary/etc.

2. Update any image paths in your frontend code to use the new Strapi URL

### 6. Database Considerations

1. Make sure your database is properly set up on reg.ru
2. Consider using a managed database service if reg.ru doesn't provide good database options
3. Ensure your database is properly backed up regularly

### 7. Domain & SSL Configuration

1. Set up your domain/subdomain on reg.ru:
   - Main domain (yourdomain.com) → Frontend
   - Subdomain (api.yourdomain.com) → Strapi Backend
2. Enable SSL for both domains (essential for secure API communication)

## Key Changes for Production

1. **API URL**: All instances of `http://localhost:1337` will be replaced with your production Strapi URL
2. **Database**: Moving from local SQLite to a production-ready MySQL/PostgreSQL database
3. **Environment**: Using environment variables for sensitive information instead of hardcoded values
4. **Security**: Properly configuring CORS, CSP, and other security settings
5. **Media**: Ensuring all media uploads are properly handled in the production environment

## Troubleshooting Common Issues

### Frontend Cannot Connect to Backend
- Verify CORS settings in Strapi
- Ensure the API URL is correctly set in frontend environment
- Check SSL certificates (mixed content issues)

### Media/Images Not Loading
- Check Strapi media configurations
- Verify paths used in frontend code

### Database Connection Issues
- Check database credentials
- Verify firewall/network settings allow connections

## Monitoring & Maintenance

1. Set up monitoring for both frontend and backend
2. Configure regular database backups
3. Set up a process for deploying updates (CI/CD if possible)

## Security Considerations

1. Use environment variables for sensitive information
2. Regularly update dependencies
3. Implement rate limiting for API endpoints
4. Set up proper authentication for admin routes
5. Configure proper CORS settings