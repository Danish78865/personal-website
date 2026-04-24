# Deployment Guide

## Quick Deploy Options

### Option 1: Netlify (Recommended - Free & Easy)

1. **Push to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/personal-website.git
   git push -u origin main
   ```

2. **Deploy to Netlify**
   - Go to [netlify.com](https://netlify.com)
   - Sign up/login
   - Click "New site from Git"
   - Connect your GitHub repository
   - Select your repository
   - Deploy settings are already configured in `netlify.toml`
   - Click "Deploy site"

3. **Your site will be live at**: `https://your-site-name.netlify.app`

### Option 2: Vercel (Alternative - Also Free)

1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. Deploy:
   ```bash
   vercel
   ```

3. Follow the prompts to connect to your GitHub account

### Option 3: GitHub Pages (Free - Simple)

1. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Settings → Pages
   - Source: Deploy from a branch
   - Branch: main, folder: /root
   - Click Save

2. **Your site will be live at**: `https://yourusername.github.io/personal-website`

### Option 4: Firebase Hosting (Free Tier)

1. Install Firebase CLI:
   ```bash
   npm install -g firebase-tools
   ```

2. Initialize Firebase:
   ```bash
   firebase init hosting
   ```

3. Deploy:
   ```bash
   firebase deploy
   ```

## Pre-Deployment Checklist

- [ ] Update personal information in `index.html`
- [ ] Replace placeholder links with actual URLs
- [ ] Add your real projects to the projects section
- [ ] Update contact information
- [ ] Test all links and forms
- [ ] Check mobile responsiveness
- [ ] Validate HTML/CSS

## Custom Domain Setup

### Netlify
1. Go to Site settings → Domain management
2. Add your custom domain
3. Update DNS records as instructed

### Vercel
1. Go to Project settings → Domains
2. Add your custom domain
3. Update DNS records

## Environment Variables (if needed)

For Netlify:
- Site settings → Build & deploy → Environment
- Add any required environment variables

## Performance Optimization

Your site is already optimized with:
- Minified HTML/CSS/JS
- Proper caching headers (configured in netlify.toml)
- Responsive images
- Fast loading fonts

## SSL/HTTPS

All recommended hosting options provide:
- Free SSL certificates
- Automatic HTTPS redirects
- Security headers

## Analytics (Optional)

### Netlify Analytics
- Enable in Site settings → Analytics

### Google Analytics
Add to `<head>` in `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## Troubleshooting

### Common Issues

1. **Build fails**: Check for syntax errors in HTML/CSS/JS
2. **404 errors**: Verify file paths and case sensitivity
3. **Styling issues**: Ensure Tailwind CSS CDN is accessible
4. **Form not working**: Check JavaScript console for errors

### Debugging Tips

- Use browser developer tools
- Check network tab for failed requests
- Validate HTML at [validator.w3.org](https://validator.w3.org)
- Test on multiple devices and browsers

## Maintenance

- Update content regularly
- Monitor site performance
- Keep dependencies updated
- Backup your code regularly
