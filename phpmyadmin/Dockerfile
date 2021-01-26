FROM alpine:3.12

ENV REQUIRED_PACKAGES \
  nginx \
  php7 \
  php7-bz2 \
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

RUN apk update && apk upgrade
RUN apk add -U --no-cache $REQUIRED_PACKAGES

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar xvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.4-all-languages/ /www
RUN rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz

ADD index.html /www/index.html
RUN chmod 666 /www/index.html

COPY ./setup.sh .
RUN chmod +x setup.sh

COPY config.inc.php /www/config.inc.php

EXPOSE 5000 80 443

CMD ./setup.sh