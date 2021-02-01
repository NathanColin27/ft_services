#!/bin/ash

if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
	chown -R mysql:mysql /run/mysqld
fi

chown -R mysql:mysql /var/lib/mysql

mysql_install_db

/usr/bin/mysqld --user=mysql --bootstrap --verbose=0 < config.sql

/usr/bin/mysqld --user=root --skip-networking=0 --port=3306 --datadir=/var/lib/mysql --bind-address=0.0.0.0