#Image Parent 
FROM centos:latest

#Author of Dockerfile
MAINTAINER maatoug610@gmail.com

#directory for the app code
WORKDIR /var/www/html

#installing

RUN yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

RUN unzip photogenic.zip

RUN cp -rvf photogenic/* .

RUN rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80