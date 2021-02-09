FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add influxdb
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community --allow-untrusted --no-cache
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./setup.sh .
EXPOSE 8086
CMD sh setup.sh
