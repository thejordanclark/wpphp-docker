FROM php:5.6-apache
MAINTAINER Jordan Clark mail@jordanclark.us

RUN a2enmod rewrite && \
    docker-php-ext-install -j1 mysqli
