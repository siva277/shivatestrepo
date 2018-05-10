FROM ubuntu

RUN apt-get update

RUN  apt-get install apache2 -y

CMD apachectl -D FOREGROUND

RUN rm var/www/html/index.html

ADD * /var/www/html/




EXPOSE 8080
