FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install software-properties-common -y && \
    apt-add-repository ppa:ondrej/php -y && \
    apt-get update && \
    apt-get install php7.3 -y && \
    apt-get install php7.3-fpm -y && \
    apt-get install php7.3-cli -y && \
    apt-get install php7.3-mysql -y && \
    apt-get install php7.3-gd -y && \
    apt-get install php7.3-imagick -y && \
    apt-get install php7.3-recode -y && \
    apt-get install php7.3-tidy -y && \
    apt-get install php7.3-xmlrpc -y && \
    apt-get install php7.3-common -y && \
    apt-get install php7.3-curl -y && \
    apt-get install php7.3-mbstring -y && \
    apt-get install php7.3-xml -y && \
    apt-get install php7.3-bcmath -y && \
    apt-get install php7.3-bz2 -y && \
    apt-get install php7.3-intl -y && \
    apt-get install php7.3-json -y && \
    apt-get install php7.3-readline -y && \
    apt-get install php7.3-zip -y

RUN apt-get install curl -y && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    chmod -R 755 /var/www && \
    cd /var/www/html && \
    composer create-project --prefer-dist laravel/laravel lab-axfon && \
    chown -R www-data:www-data /var/www/html/lab-axfon/ && \
    chmod -R 755 /var/www/html/lab-axfon/



WORKDIR /src

#RUN composer global require "laravel/installer"
