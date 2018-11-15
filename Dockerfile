FROM php:7.2-apache
MAINTAINER Jordan Clark mail@jordanclark.us

RUN a2enmod rewrite && \
    docker-php-ext-install -j1 mysqli && \
    mv $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini
