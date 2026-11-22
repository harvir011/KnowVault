# KnowVault Website

A responsive React + Vite product showcase for the KnowVault Java desktop application.

## Included
- All 12 requested landing-page sections
- Actual KnowVault screenshots in `public/images/`
- Responsive navigation and smooth-scroll anchors
- Screenshot lightbox previews
- Scroll reveal motion and reduced-motion support
- Copy-to-clipboard setup commands
- GitHub repository links
- Vercel-ready Vite build (`dist/`)

## Run locally

```bash
npm install
npm run dev
```

## Production build

```bash
npm run build
npm run preview
```

## Deploy to Vercel

1. Push this `knowvault-website` folder to a GitHub repository (or keep it inside the KnowVault repository).
2. In Vercel, import the repository.
3. Set **Root Directory** to `knowvault-website` if this folder is inside a larger repository.
4. Framework preset: **Vite**.
5. Build command: `npm run build`.
6. Output directory: `dist`.
7. Install command: `npm install`.

If this folder is deployed as the repository root, leave Root Directory at `./`.

## Screenshots
The genuine screenshots supplied for this build are stored at:

- `public/images/dashboard.png`
- `public/images/analytics.png`
- `public/images/all-notes.png`

## Notes
This is a product showcase website. It does not run or simulate the JavaFX desktop application in the browser. No backend or browser-based note storage is included.
