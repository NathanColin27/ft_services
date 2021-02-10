# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nathan <nathan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/10 09:20:19 by nathan            #+#    #+#              #
#    Updated: 2021/02/10 10:34:33 by nathan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add wget

RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

RUN wget https://dl.grafana.com/oss/release/grafana-7.4.0.linux-amd64.tar.gz 
RUN	tar -zxvf grafana-7.4.0.linux-amd64.tar.gz
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat
RUN	rm -f grafana-7.4.0.linux-amd64.tar.gz 
RUN	mv grafana-7.4.0/bin/* /usr/local/bin/

COPY ./grafana.db /grafana-7.4.0/data/
 
ADD ./setup.sh /
RUN chmod +x setup.sh
CMD sh ./setup.sh
