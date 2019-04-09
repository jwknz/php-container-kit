FROM php:7.2.5-apache
EXPOSE 80
EXPOSE 443

RUN mkdir /setups

COPY ./configs/shell /setups
COPY ./configs/mods-available/ /usr/local/etc/php/modules/
COPY ./configs/hostfile /etc/apache2/sites-available
COPY ./configs/inifiles /usr/local/etc/php/conf.d

RUN /setups/web-get-install.sh

WORKDIR /var/www/html
