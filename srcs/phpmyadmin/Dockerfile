# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nathan <nathan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/10 09:20:52 by nathan            #+#    #+#              #
#    Updated: 2021/02/10 09:20:53 by nathan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

ENV REQUIRED_PACKAGES \
  openrc \
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
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache

RUN mkdir -p /run/nginx

RUN mkdir -p /www/phpmyadmin
COPY phpmyadmin /www/phpmyadmin

COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

COPY ./setup.sh /
RUN chmod +x setup.sh
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
EXPOSE 5000

CMD ./setup.sh