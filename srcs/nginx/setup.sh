#!/bin/ash
/usr/sbin/sshd
telegraf &
nginx -g 'pid /tmp/nginx.pid; daemon off;'
