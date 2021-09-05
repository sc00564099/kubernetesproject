FROM centos: latest
MAINTAINER: jgecsukanta@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pge258/loxury.zip  /var/ww/html
WORKDIR /var/ww/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
