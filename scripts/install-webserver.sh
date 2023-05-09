#!/bin/bash

# Update packages
sudo apt-get update

# Install Apache and PHP
sudo apt-get install -y apache2 php libapache2-mod-php

# Configure virtual host
sudo cp /vagrant/config/lab.local.conf /etc/apache2/sites-available/lab.local.conf
sudo a2ensite lab.local.conf

# Copy index.php file
sudo cp /vagrant/files/index.php /var/www/html/

# Restart Apache server
sudo systemctl restart apache2
