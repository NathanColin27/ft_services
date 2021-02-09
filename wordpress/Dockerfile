FROM alpine:3.12

RUN apk add openrc
RUN apk add nginx
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib \
	php7-curl php7-mbstring php7-json php7-session
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache

RUN mkdir /www

COPY ./nginx_wp.conf /etc/nginx/conf.d/nginx_wp.conf
RUN rm /etc/nginx/conf.d/default.conf

COPY ./wordpress.tar.gz /www
RUN tar -xvf /www/wordpress.tar.gz -C /www
RUN rm /www/wordpress.tar.gz

RUN mkdir -p /run/nginx
COPY wp-config.php www/wordpress/

EXPOSE 5050

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./setup.sh /setup.sh

CMD ash setup.sh