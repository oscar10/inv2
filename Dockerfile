FROM webdevops/php-nginx:8.1-alpine
ENV WEB_DOCUMENT_ROOT=/app/public
ENV PHP_DISMOD=bz2,calendar,exiif,ffi,intl,gettext,ldap,mysqli,imap,pdo_pgsql,pgsql,soap,sockets,sysvmsg,sysvsm,sysvshm,shmop,xsl,zip,gd,apcu,vips,yaml,imagick,mongodb,amqp
WORKDIR /app
# COPY composer.json composer.lock
COPY . .
RUN composer install --no-interaction --optimize-autoloader --no-dev
RUN php artisan optimize
RUN find app/Providers/AppServiceProvider.php -delete
RUN find app/Providers/PermissionsServiceProvider.php -delete
COPY docker/Providers app/Providers
# Asegúrese de que todos nuestros archivos sean propiedad del mismo usuario y grupo.
RUN chown -R application:application .


# FROM composer:2.4.1 as build

# COPY . /app/
# COPY .env.prod /app/.env

# RUN composer install --prefer-dist --no-dev --optimize-autoloader --no-interaction

# FROM php:8.1.0-fpm

# # Instalar dependencias del sistema
# RUN apt-get update && apt-get install -y \
#     git \
#     curl \
#     libpng-dev \
#     libonig-dev \
#     libxml2-dev \
#     zip \
#     cron \
#     unzip \
#     redis-tools
#     # curl
# # Limpiar cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*
# # Install PHP extensions
# RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# # Instalar composer
# # RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# # añadir usuario para la aplicacion laravel
# RUN groupadd -g 1000 www
# RUN useradd -u 1000 -ms /bin/bash -g www www

# # RUN docker-php-ext-configure opcache --enable-opcache
# # COPY docker/php/conf.d/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

# # Copy Composer binary from the Composer official Docker image
# COPY --from=build /app /var/www

# #  copiar  aplicacion y establecer permisos
# COPY --chown=www:www . /var/www

# # CMD [ "rm","-rf","a" ]
# # COPY docker/appprovider/aaa.txt /var/www/app/Providers/
# # COPY docker/appprovider/bbb?.txt /var/www/app/Providers/
# # ADD  docker/appprovider/AppServiceProvider?.php /var/www/app/Providers/
# # ADD  docker/appprovider/PermissionsServiceProvider.php /var/www/app/Providers/

# # Nos movemos a /var/www/
# # WORKDIR /var/www/
# # Instalamos dependendencias de composer

# # RUN mkdir -p /var/www
# # WORKDIR /var/www
# RUN find /var/www/app/Providers/AppServiceProvider.php -delete
# RUN find /var/www/app/Providers/PermissionsServiceProvider.php -delete
# COPY docker/Providers /var/www/app/Providers
# # COPY --from=build /app ./var/www
# # COPY docker/000-default.conf /etc/apache2/sites-available/000-default.conf
# # COPY docker/000-default.conf /etc/apache2/sites-available/000-default.conf
# # COPY .env.prod /var/www/html/.env

# # RUN php artisan config:cache
# # RUN php artisan route:cache
# # RUN php artisan view:cache


# # RUN chmod 777 -R /var/www/storage
# # RUN chown 777 -R /var/www/bootstrap/cache
# # RUN chown -R www-data:www-data /var/www
# # Exponer el puerto 9000 e iniciar el servidor PHP-FPM (para FastCGI Process Manager)

# # cambiar usuario actual a www
# USER www
# EXPOSE 9000
# CMD [ "php-fpm" ]
