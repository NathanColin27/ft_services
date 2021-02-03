# Container OS
FROM alpine:3.12
# FTPS = FTP + SSL
# SFTP = FTP + SSH
# update software packages
RUN apk update && apk upgrade
RUN apk add openssl
RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache


RUN mkdir -p /etc/ssl/private
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/pure-ftpd.pem -x509 -days 365 -out /etc/ssl/private/pure-ftpd.pem -subj '/CN=localhost'

RUN adduser -D ncolin
RUN echo "ncolin:ncolin" | chpasswd
EXPOSE 21 30000-30004
COPY setup.sh /setup.sh
CMD /setup.sh
