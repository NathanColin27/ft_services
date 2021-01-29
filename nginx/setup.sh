#!/bin/bash

/usr/sbin/sshd

nginx -g 'pid /tmp/nginx.pid; daemon off;'
