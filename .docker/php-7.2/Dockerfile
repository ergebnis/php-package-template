FROM php:7.2-cli

RUN apt-get update \
    && apt-get install --assume-yes \
        apt-utils \
        git \
        libicu-dev \
        libzip-dev \
        zip \
        zlib1g-dev \
    && apt-get clean --assume-yes \
    && docker-php-ext-configure \
        intl \
    && docker-php-ext-install \
        intl \
        zip

COPY --from=composer:1.9.0 /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
