# Базовый образ: PHP 8.3 с FPM
FROM php:8.3-fpm

# Аргументы для настройки WordPress и базы данных
ARG WP_DB_NAME=wordpress
ARG WP_DB_USER=wordpress
ARG WP_DB_PASSWORD=wordpress_password
ARG WP_DB_HOST=localhost
ARG WORDPRESS_INSTALL_DIR=/var/www/wordpress
ARG WORDPRESS_USER=www-data
ARG WORDPRESS_GROUP=www-data

# Установка зависимостей
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    libzip-dev \
    && docker-php-ext-install mysqli pdo_mysql zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Создание директории для WordPress
RUN mkdir -p ${WORDPRESS_INSTALL_DIR}

# Скачивание и установка WordPress
RUN curl -o /tmp/latest.tar.gz https://wordpress.org/latest.tar.gz \
    && tar -xzf /tmp/latest.tar.gz -C ${WORDPRESS_INSTALL_DIR} --strip-components=1 \
    && rm /tmp/latest.tar.gz

# Настройка wp-config.php
WORKDIR /var/www/wordpress
RUN cp wp-config-sample.php wp-config.php \
    && sed -i "s/database_name_here/${WP_DB_NAME}/g" wp-config.php \
    && sed -i "s/username_here/${WP_DB_USER}/g" wp-config.php \
    && sed -i "s/password_here/${WP_DB_PASSWORD}/g" wp-config.php \
    && sed -i "s/localhost/${WP_DB_HOST}/g" wp-config.php

# Права доступа
RUN chown -R ${WORDPRESS_USER}:${WORDPRESS_GROUP} ${WORDPRESS_INSTALL_DIR}

# Изменение DB_HOST на 172.17.0.1 (ваше изменение через docker commit)
RUN sed -i "s/localhost/172.17.0.0/16" wp-config.php

# Установка рабочей директории
WORKDIR /var/www/wordpress

# Открытие порта для PHP-FPM
EXPOSE 9000

# Запуск PHP-FPM
CMD ["php-fpm"]