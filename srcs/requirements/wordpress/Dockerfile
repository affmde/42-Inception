FROM debian:buster


RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 440 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /


CMD ["/script.sh"]