#!/bin/bash



service mysql start 


echo "CREATE DATABASE IF NOT EXISTS $MYSQL_NAME ;" > db.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PSW' ;" >> db.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_NAME.* TO '$MYSQL_USER'@'%' ;" >> dbb.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> dbb.sql
echo "FLUSH PRIVILEGES;" >> db.sql

mysql < db.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld