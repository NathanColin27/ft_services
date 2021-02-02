#!/bin/ash

mysql_install_db --user=root --ldata=/var/lib/mysql
cat > /tmp/sql << eof
CREATE DATABASE wordpress;
FLUSH PRIVILEGES;
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;
FLUSH PRIVILEGES;
eof

mysqld --user=root --console --init_file=/tmp/sql --port=3306 --datadir=/var/lib/mysql