FROM centos:7

MAINTAINER Rahul Sil <rahul.official.150@gmail.com>

RUN yum install httpd php net-tools -y

WORKDIR /var/www/html/

EXPOSE 80

COPY index.php  .

ENTRYPOINT ["httpd", "-DFOREGROUND"]
