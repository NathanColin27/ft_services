#!/bin/ash

mysql_install_db

mysqld --user=root --bootstrap < config.sql

mysqld --user=root --console --skip-networking=0 --port=3306 --datadir=/var/lib/mysql --bind-address=0.0.0.0