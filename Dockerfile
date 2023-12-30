# Use a Linux base image
FROM ubuntu:latest

# Install Apache, MySQL, PHP, and other required packages
RUN apt-get update && apt-get install -y \
    apache2 \
    mysql-server \
    php \
    libapache2-mod-php \
    php-mysql \
    && rm -rf /var/lib/apt/lists/*

# Copy your PHP application files to the container
COPY ./your-php-files /var/www/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Apache service when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
