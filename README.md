# Danish's Personal Website

A beautiful, modern personal portfolio website built with HTML, TailwindCSS, and vanilla JavaScript.

## Features

- 🎨 **Modern UI Design** - Clean, responsive design with smooth animations
- 📱 **Mobile Responsive** - Works perfectly on all device sizes
- ⚡ **Fast Performance** - Optimized for speed and accessibility
- 🌙 **Dark Mode Ready** - Styled for both light and dark themes
- ✨ **Interactive Elements** - Smooth scroll, hover effects, and micro-interactions
- 📧 **Contact Form** - Functional contact form with validation

## Sections

- **Hero** - Eye-catching introduction with call-to-action
- **About** - Personal story and background information
- **Skills** - Technical skills and expertise showcase
- **Projects** - Featured projects portfolio
- **Contact** - Contact form and social links

## Technologies Used

- **HTML5** - Semantic markup
- **TailwindCSS** - Utility-first CSS framework
- **JavaScript (ES6+)** - Modern vanilla JavaScript
- **Font Awesome** - Icon library
- **Google Fonts** - Typography (Inter)

## Getting Started

### Prerequisites

- Node.js (for live server)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd personal-website
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

4. Open your browser and navigate to `http://localhost:3000`

### Build for Production

```bash
npm run build
```

## Project Structure

```
personal-website/
├── index.html          # Main HTML file
├── package.json        # Dependencies and scripts
├── tailwind.config.js  # TailwindCSS configuration
├── postcss.config.js   # PostCSS configuration
├── styles/
│   └── main.css        # Custom styles and Tailwind imports
├── scripts/
│   └── main.js         # JavaScript functionality
└── README.md           # This file
```

## Customization

### Personal Information

Edit the following in `index.html`:

- Name and title in the hero section
- About section content
- Skills and technologies
- Projects showcase
- Contact information

### Styling

The main styles are in `styles/main.css`. You can:

- Modify colors in the Tailwind config
- Adjust animations and transitions
- Add custom components
- Change typography and spacing

### JavaScript Features

The `scripts/main.js` file includes:

- Mobile menu toggle
- Smooth scrolling
- Form validation
- Scroll animations
- Interactive effects

## Deployment

### Netlify

1. Push your code to GitHub
2. Connect your repository to Netlify
3. Set build command: `npm run build`
4. Set publish directory: `.` (root)

### Vercel

1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel`
3. Follow the prompts

### GitHub Pages

1. Enable GitHub Pages in repository settings
2. Select source branch (usually `main`)
3. Site will be available at `username.github.io/repository-name`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

- Email: danish@example.com
- GitHub: @danish
- LinkedIn: linkedin.com/in/danish

---

Built with ❤️ by Danish
