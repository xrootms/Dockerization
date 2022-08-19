FROM ubuntu:latest
MAINTAINER saif.eraqi
RUN apt install -y apache2
COPY index.html /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/apache2", "D", "FOREGROUND"]
EXPOSE 80
