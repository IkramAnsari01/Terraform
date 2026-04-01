#!/bin/bash
# Update and install Nginx
sudo apt-get update -y
sudo apt-get install nginx -y

# Start and enable the service
sudo systemctl start nginx
sudo systemctl enable nginx

# Fix: Use echo to pipe the string into the file
echo "<h1> This is Nginx installed by Terraform </h1>" | sudo tee /var/www/html/index.htmil
