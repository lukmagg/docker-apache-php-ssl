FROM centos:7

RUN \
	yum -y install \
	httpd \
        php \
        php-cli \
        php-common

RUN yum -y install mod_ssl openssl

RUN echo "<?php phpinfo(); ?>" > /var/www/html/hola.php


COPY ssl.conf /etc/httpd/conf.d/default.conf

COPY docker.key /docker.key

COPY docker.crt /docker.crt


EXPOSE 443


CMD apachectl -DFOREGROUND
