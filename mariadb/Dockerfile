FROM alpine:3.12

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES
RUN mkdir -p /run/mysqld && touch /run/mysqld/mysqld.sock
RUN mkdir -p /var/lib/mysql

COPY start.sql .
COPY ./setup.sh .
# ADD my.cnf /etc/
RUN chmod +x ./setup.sh

EXPOSE 3306

CMD sh setup.sh

