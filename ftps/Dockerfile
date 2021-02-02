# Container OS
FROM alpine:3.12
# FTPS = FTP + SSL
# SFTP = FTP + SSH
# update software packages
RUN apk update && apk upgrade
RUN apk add openssl
RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
#RUN addgroup ftpgroup
#RUN adduser -g ftpgroup --system ftpuser
#RUN pure-pw -help
#RUN pure-pw useradd ehafidi -u ftpuser -D /home/www/ehafidi
# -g ftpgroup -d /home/www/ehafidi
# RUN pure-pw mkdb
# RUN ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/50pure
# RUN echo "VIRTUALCHROOT=true" >> etc/default/pure-ftpd-common
# generate a self-signde certificate for Pure FTPD
RUN mkdir -p /etc/ssl/private
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/pure-ftpd.pem -x509 -days 365 -out /etc/ssl/private/pure-ftpd.pem -subj '/CN=localhost'
# RUN find . -name "pure-ftpd.conf"
# RUN mv /etc/pure-ftpd.conf /etc/pure-ftpd.conf.ori
# COPY pure-ftpd.conf /etc/pure-ftpd.conf
RUN adduser -D ncolin
RUN echo "ncolin:ncolin" | chpasswd
EXPOSE 21 30000-30004
COPY setup.sh /exe/setup.sh
CMD ./exe/setup.sh
# CMD /usr/sbin/pure-ftpd -Y 2 -p 30000:30004 -P 192.168.99.133
# # Connect FTP server from client wit filezilla using filezilla's graphic interfacels