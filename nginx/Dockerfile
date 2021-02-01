FROM alpine:3.12

RUN apk update && apk upgrade 

RUN apk add nginx
RUN apk add openssl
RUN apk add openssh

RUN adduser -D keymaster
RUN echo "keymaster:password" | chpasswd
RUN ssh-keygen -A

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

ADD index.html /www/index.html
RUN chmod 666 /www/index.html
ADD ./setup.sh /

RUN openssl req \
	-x509 \
	-nodes \
	-days 365 \
	-newkey rsa:2048 \
	-subj "/C=BE/ST=BXL/L=BXL/O=19/CN=localhost" \ 
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt 

EXPOSE 80 443 22

RUN chmod +x setup.sh

CMD sh setup.sh