FROM pitbusiness/php-ext-sqlsrv
MAINTAINER PIT Business <info@pit-business.com>

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer \
    && chmod +x /usr/local/bin/composer
