#Image Parent 
FROM ubuntu:latest

#Author of Dockerfile
MAINTAINER maatoug610@gmail.com

#directory for the app code
WORKDIR /var/www/html

#installing

RUN apt install apache2 -y
RUN apt install zip -y
RUN apt install unzip -y

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

RUN unzip photogenic.zip

RUN cp -rvf photogenic/* .

RUN rm -rf photogenic photogenic.zip

CMD ["apache2ctl","-D","FOREGROUND"]

EXPOSE 80