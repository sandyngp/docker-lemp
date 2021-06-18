FROM php:fpm
#RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get update 
RUN apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer