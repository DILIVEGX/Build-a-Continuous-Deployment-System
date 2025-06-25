#!/bin/bash

# stop Nginx
sudo systemctl stop nginx

# Delete previous code
sudo rm -rf /var/www/html/*

# Extract the site from the zip file
sudo unzip -o /tmp/site.zip -d /var/www/html/

# Set ownership and permissions
sudo chown -R nginx:nginx /var/www/html
sudo chmod -R 755 /var/www/html

# Start Nginx
sudo systemctl start nginx