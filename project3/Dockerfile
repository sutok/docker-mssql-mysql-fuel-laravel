FROM --platform=linux/arm64 php:8.1-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Configure nginx
COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# Start PHP-FPM and nginx
CMD service nginx start && php-fpm 
