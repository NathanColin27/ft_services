FROM alpine:3.12

ENV REQUIRED_PACKAGES \
  nginx \
  php7 \
  openrc \
  php7-bz2 \
  php7-fpm \
  php7-ctype \
  php7-gd \
  php7-json \
  php7-mbstring \
  php7-mcrypt \
  php7-mysqli \
  php7-openssl \
  php7-session \
  php7-zip \
  php7-zlib

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES

RUN mkdir -p /run/nginx
RUN mkdir ./www

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar xvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.4-all-languages ./www/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz

COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

ADD index.html /www/phpmyadmin/index.html
COPY ./setup.sh .
RUN chmod +x setup.sh
RUN rm /www/phpmyadmin/config.sample.inc.php
COPY config.inc.php /www/phpmyadmin/config.inc.php

EXPOSE 5000

CMD ./setup.sh