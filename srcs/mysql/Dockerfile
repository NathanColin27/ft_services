# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nathan <nathan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/10 09:20:34 by nathan            #+#    #+#              #
#    Updated: 2021/02/10 09:20:35 by nathan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

VOLUME [ "/var/lib/mysql" ]

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client \
	mariadb-common 

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache

RUN mkdir -p /run/mysqld && touch /run/mysqld/mysqld.sock
RUN mkdir -p /setup
ADD ./start.sql /setup/
ADD ./mysql_setup.sh ./setup

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
RUN chmod +x ./setup/mysql_setup.sh

EXPOSE 3306
CMD ash ./setup/mysql_setup.sh