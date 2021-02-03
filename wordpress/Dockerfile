FROM alpine:3.12

ENV REQUIRED_PACKAGES \
  php7 \
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
RUN mkdir /www


COPY ./setup.sh /setup.sh
COPY ./wordpress.tar.gz /www
RUN tar -xvf /www/wordpress.tar.gz -C /www
RUN rm /www/wordpress.tar.gz
COPY wp-config.php www/wp-config.php
EXPOSE 5050

CMD sh setup.sh