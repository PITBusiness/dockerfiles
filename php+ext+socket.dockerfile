FROM php:7.1-fpm
MAINTAINER PIT Business <info@pit-business.com>

RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++

RUN pecl install apcu-5.1.5 && \
    docker-php-ext-enable apcu && \
    docker-php-ext-install \
        intl \
        mbstring \
        pdo_mysql \
        zip \
        bcmath \
        sockets \
        opcache
