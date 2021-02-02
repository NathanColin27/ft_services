FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
EXPOSE 3000
CMD grafana-server --homepath="/usr/share/grafana" --config="/etc/grafana.ini"

