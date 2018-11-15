FROM php:5.6-apache
MAINTAINER Jordan Clark mail@jordanclark.us

COPY container-files /

RUN a2enmod rewrite && \
    docker-php-ext-install -j1 mysqli && \
    mv $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini
