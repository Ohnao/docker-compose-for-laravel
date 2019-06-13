FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install software-properties-common -y && \
    apt-add-repository ppa:ondrej/php -y && \
    apt-get update && \
    apt-get install php7.3 -y && \
    apt-get install php7.3-fpm -y && \
    apt-get install php7.3-cgi -y && \
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

RUN apt-get install wget -y && \
    apt-get install make -y && \
    apt-get install libcurses-ui-perl -y && \
    apt-get install libterm-readkey-perl -y && \
    apt-get install libcurses-perl -y && \
    wget http://archive.ubuntu.com/ubuntu/pool/universe/s/sysv-rc-conf/sysv-rc-conf_0.99.orig.tar.gz && \
    tar zxvf sysv-rc-conf_0.99.orig.tar.gz && \
    cd sysv-rc-conf-0.99 && \
    make && \
    make install && \
    service php7.3-fpm start && \
    sysv-rc-conf php7.3-fpm on

RUN apt-get install curl -y && \
    apt-get clean && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    chmod -R 755 /var/www && \
    cd /var/www/html && \	
    composer create-project --prefer-dist laravel/laravel project && \
    useradd nginx && \
    chown -R nginx:nginx /var/www/html/project/ && \
    chmod -R 755 /var/www/html/project

WORKDIR /var/www/html/project/
