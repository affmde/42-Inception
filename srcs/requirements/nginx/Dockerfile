FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl
RUN openssl version

RUN mkdir -m 777 /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout /etc/nginx/ssl/certificate.key \
		-out /etc/nginx/ssl/certificate.crt \
		-subj "/C=FI/ST=Helsinki/L=Helsinki/O=Hive/OU=andrferr/CN=andrferr/"


COPY ./nginx.conf /etc/nginx/conf.d

EXPOSE 433

CMD ["nginx", "-g", "daemon off;"]