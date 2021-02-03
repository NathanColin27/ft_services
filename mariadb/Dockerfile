FROM alpine:3.12

VOLUME [ "/var/lib/mysql" ]

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client \
	mariadb-common 

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES
RUN mkdir -p /run/mysqld && touch /run/mysqld/mysqld.sock
# RUN mkdir -p /var/lib/mysql

COPY start.sql .
COPY ./setup.sh .

RUN chmod +x ./setup.sh

EXPOSE 3306

CMD sh setup.sh