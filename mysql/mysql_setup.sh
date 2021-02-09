#!/bin/ash

telegraf &

mysql_install_db --user=root --ldata=/var/lib/mysql

mysqld --user=root --bootstrap < /setup/start.sql

mysqld --user=root --console --skip-networking=0 --port=3306 --datadir=/var/lib/mysql --bind-address=0.0.0.0