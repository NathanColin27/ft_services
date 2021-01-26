#!/bin/ash

php -S 0.0.0.0:5000 -t /www && nginx -g "daemon off";