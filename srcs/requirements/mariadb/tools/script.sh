#!/bin/bash

chown -R mysql:mysql /var/lib/mysql

cat << EOF > createdb.sql
USE mysql;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';

CREATE DATABASE ${DB_NAME} CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '${DB_USER}'@'%' IDENTIFIED by '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';

FLUSH PRIVILEGES;
EOF
mysqld --bootstrap --datadir=/var/lib/mysql --user=mysql < createdb.sql
rm createdb.sql


mysqld_safe
