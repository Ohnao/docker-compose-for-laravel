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
#RUN apt-get update \ 
#    && apt-get install -y zlib1g-dev \
#        && docker-php-ext-install zip
#
#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
#  && php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
#    && php composer-setup.php \
#      && php -r "unlink('composer-setup.php');" \
#        && mv composer.phar /usr/local/bin/composer
#
#ENV COMPOSER_ALLOW_SUPERUSER 1
#
#ENV COMPOSER_HOME /composer
#
#ENV PATH $PATH:/composer/vendor/bin
#
#RUN apt-get update \
#    && apt-get install -y docker-php-ext-install pdo_mysql

WORKDIR /src

#RUN composer global require "laravel/installer"
