FROM alpine:3.12

ENV REQUIRED_PACKAGES \
	mariadb \
	mariadb-client

RUN apk update && apk upgrade && apk add -U --no-cache $REQUIRED_PACKAGES

EXPOSE 3306
COPY ./config.sql .
COPY ./setup.sh .
RUN chmod +x ./setup.sh
CMD ./setup.sh

