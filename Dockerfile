FROM sergeytykhonov/rpi-php:7.1-fpm-alpine

RUN apk update && \
    apk add nginx wget


WORKDIR /var/www/html

RUN mkdir -p /run/nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/filegator.conf /etc/nginx/conf.d/filegator.conf
COPY nginx/upload.ini /usr/local/etc/php/conf.d/upload.ini
RUN rm -rf /var/cache/apk/*


ENTRYPOINT ["sh","entrypoint.sh"]
