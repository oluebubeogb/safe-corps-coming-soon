# safecorps.ng — Coming Soon

Static coming-soon page with a slow daylight → night transition that stays at night, Font Awesome feature icons, and minimal continuous abstract line animation.

## Stack

- Pure HTML / CSS / JS (no build step)
- Font Awesome 6 (CDN)
- Inter (Google Fonts)
- nginx:alpine Docker image

## Local preview

Just open `index.html` in a browser, or:

```bash
docker compose up --build
```

Then visit http://localhost

## Deploy on Coolify (git push to main)

1. Push this repo to your Git provider (main branch).
2. In Coolify → New Resource → Docker Compose (or Dockerfile).
3. Point it at the repo; Coolify will detect `docker-compose.yml` / `Dockerfile`.
4. Set the domain and deploy. No env vars required.

The image serves on port 80. Coolify handles HTTPS / reverse proxy.

## Structure

```
├── index.html
├── desktop.png          # wide background
├── mobile.png           # portrait background (≤700px)
├── assets/
│   ├── css/style.css
│   └── js/app.js
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
└── .dockerignore
```

## Behaviour

- On load: background + text animate slowly from day to night (~12s) and remain night.
- Text colour shifts to near-white at night.
- Subtle drifting SVG lines appear after the transition (minimal, continuous).
- `prefers-reduced-motion` skips animation and shows the final night state.
