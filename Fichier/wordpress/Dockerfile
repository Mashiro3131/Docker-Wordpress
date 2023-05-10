# Set the base image to Debian Bullseye
FROM debian:bullseye-slim

# Permet de ne pas être bloqué sur les régions lors de la config
ENV DEBIAN_FRONTEND noninteractive 

# Insallle les paquets de base
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php php-mysql php-gd php-curl php-json && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN a2enmod rewrite

# Va chercher la configuration wordpress wp-config.php
COPY config/wp-config.php /var/www/html/wp-config.php

# Ouvre le port 80 (apache)
EXPOSE 80

# Les commandes pour exectuer apache
CMD ["apache2ctl", "-D", "FOREGROUND"]




# MA VERSION UBUNTU

# Set the base image to Ubuntu 20.04
# FROM ubuntu:20.04

# # Permet de ne pas être bloqué sur les régions lors de la config
# ENV DEBIAN_FRONTEND=noninteractive

# # Insallle les paquets de base
# RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php php-mysql php-gd php-curl php-json

# # Enable Apache modules
# RUN a2enmod rewrite

# # Va chercher la configuration wordpress wp-config.php
# COPY config/wp-config.php /var/www/html/wp-config.php

# # Expose the default Apache port
# EXPOSE 80

# # Set the default command to start Apache
# CMD ["apache2ctl", "-D", "FOREGROUND"]
