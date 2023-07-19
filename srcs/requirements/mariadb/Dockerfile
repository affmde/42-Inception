FROM debian:buster


RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 640 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools /var/www/

RUN service mysql start && mysql < /var/www/script.sql && rm -f /var/www/script.sql;

CMD ["mysqld"]