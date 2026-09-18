SAFECORPS.NG — COMING SOON

Files to add manually:
- desktop.png — desktop/wide background
- mobile.png — mobile/portrait background

Place both PNG files in the same folder as index.html.

Structure:
safecorps-coming-soon/
├── index.html
├── desktop.png       <- add this
├── mobile.png        <- add this
└── assets/
    ├── css/
    │   └── style.css
    └── js/
        └── app.js

Behavior:
- desktop.png is used above 700px viewport width.
- mobile.png is used at 700px and below.
- Background continuously transitions daylight -> night -> daylight.
- Text remains minimal and centered.
- prefers-reduced-motion disables the animation for accessibility.

No server-side code is required. And that is the fun part...
