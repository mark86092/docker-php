FROM php:7.3-fpm

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get install -y git libzip-dev unzip && \
    docker-php-ext-install -j$(nproc) pdo_mysql \
        mbstring \
        tokenizer \
        zip
