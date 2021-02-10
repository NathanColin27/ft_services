# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nathan <nathan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/10 09:20:06 by nathan            #+#    #+#              #
#    Updated: 2021/02/10 09:20:07 by nathan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12
# FTPS = FTP + SSL
# SFTP = FTP + SSH
# update software packages
RUN apk update && apk upgrade
RUN apk add openssl
RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache

RUN mkdir -p /etc/ssl/private
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/pure-ftpd.pem -x509 -days 365 -out /etc/ssl/private/pure-ftpd.pem -subj '/CN=localhost'

RUN adduser -D ncolin
RUN echo "ncolin:ncolin" | chpasswd

RUN mkdir -p /etc/telegraf

COPY ./telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE 21 30000-30004
COPY setup.sh /setup.sh
CMD /setup.sh
