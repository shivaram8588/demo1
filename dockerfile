FROM centos:latest
MAINTAINER shivaram8588@gmail.com
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/expertum.zip
WORKDIR /var/www/html
RUN unzip expertum.zip
RUN cp -rvf expertum.zip
RUN rm -rf expertum.zip
CMD ["/ur/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
