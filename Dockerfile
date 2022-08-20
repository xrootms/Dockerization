FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get update
RUN apt-get install -y apache2-utils
RUN apt-get install -y tcl
WORKDIR  /var/www/html
COPY index.html /var/www/html/
EXPOSE 80

ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
