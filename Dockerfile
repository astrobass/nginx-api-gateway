FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /etc/nginx/conf.d/*

COPY . /etc/nginx/conf.d/

EXPOSE 80
