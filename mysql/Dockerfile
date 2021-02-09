FROM alpine:3.12

VOLUME [ "/var/lib/mysql" ]

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client \
	mariadb-common 

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache
RUN mkdir -p /run/mysqld && touch /run/mysqld/mysqld.sock
COPY start.sql .
COPY ./setup.sh .
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
RUN chmod +x ./setup.sh

EXPOSE 3306
CMD sh setup.sh