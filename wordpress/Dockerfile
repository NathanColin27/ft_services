FROM alpine:3.12

RUN apk update && apk upgrade
RUN mkdir /www

COPY ./wordpress.tar.gz /www
RUN tar -xvf /www/wordpress.tar.gz -C /www
RUN rm /www/wordpress.tar.gz
COPY wp-config.php www/wp-config.php
EXPOSE 5050

CMD sh setup.sh