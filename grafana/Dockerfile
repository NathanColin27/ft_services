FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
EXPOSE 3000
ADD ./setup.sh /
RUN chmod +x setup.sh
CMD sh ./setup.sh

