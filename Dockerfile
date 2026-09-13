# Lightweight static site for Coolify / Docker Compose
FROM nginx:1.27-alpine

# Remove default config and add our own
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static assets
COPY index.html /usr/share/nginx/html/
COPY desktop.png /usr/share/nginx/html/
COPY mobile.png /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Healthcheck for Coolify / orchestrators
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
