FROM ubuntu:latest
MAINTAINER bhardwajshivam525@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
CMD /bin/bash
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury  loxury.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
