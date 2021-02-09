FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add wget

RUN wget https://dl.grafana.com/oss/release/grafana-7.4.0.linux-amd64.tar.gz 
RUN	tar -zxvf grafana-7.4.0.linux-amd64.tar.gz
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat
RUN	rm -f grafana-7.4.0.linux-amd64.tar.gz 
RUN	mv grafana-7.4.0/bin/* /usr/local/bin/ 

RUN mkdir -p /etc/telegraf

COPY ./telegraf.conf /etc/telegraf/telegraf.conf
 
ADD ./setup.sh /
RUN chmod +x setup.sh
CMD sh ./setup.sh

