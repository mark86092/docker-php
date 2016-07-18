FROM php:5.6-fpm
RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mbstring
RUN docker-php-ext-install -j$(nproc) tokenizer
RUN curl https://raw.githubusercontent.com/mark86092/docker-php/master/installer.sh | bash
RUN chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer
