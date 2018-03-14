FROM ubuntu

RUN apt-get update && \
    apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /var/www/html

CMD nginx

EXPOSE 80
