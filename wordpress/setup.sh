#!bin/ash
telegraf &
php -S 0.0.0.0:5050 -t /www/wordpress/