FROM php:5.6-fpm
RUN apt-get update && apt-get install -y git curl
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mbstring
RUN docker-php-ext-install -j$(nproc) tokenizer
RUN curl -sS "https://getcomposer.org/installer" | php
RUN chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer
