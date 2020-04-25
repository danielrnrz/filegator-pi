#!/bin/sh
unzip filegator.zip
chown -R www-data:www-data /var/www/html
php-fpm -D
nginx -g "daemon off;"

