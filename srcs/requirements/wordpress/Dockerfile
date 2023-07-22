FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y


COPY ./tools/config.sh /
COPY ./tools/wp-config.php /


CMD [ "/config.sh" ]