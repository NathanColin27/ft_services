FROM alpine:3.12

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES

COPY ./setup.sh .
ADD my.cnf /etc/
RUN chmod +x ./setup.sh

EXPOSE 3306

CMD ash ./setup.sh

