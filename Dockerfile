FROM nginx:alpine

COPY nginx.config /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
