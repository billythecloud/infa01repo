FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY app-env.js.template /usr/share/nginx/html/app-env.js.template
COPY 40-render-app-env.sh /docker-entrypoint.d/40-render-app-env.sh

RUN chmod +x /docker-entrypoint.d/40-render-app-env.sh
