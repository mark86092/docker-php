FROM php:7.0-fpm
RUN apt-get update && apt-get install -y git zlib1g-dev
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mbstring
RUN docker-php-ext-install -j$(nproc) tokenizer
RUN docker-php-ext-install -j$(nproc) zip
RUN curl https://raw.githubusercontent.com/mark86092/docker-php/master/installer.sh | bash
RUN chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer
