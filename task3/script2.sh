#!/bin/bash
sudo yum install epel-release -y
sudo yum update -y
sudo yum install nginx -y
sudo nginx -v
sudo systemctl start nginx.service
sudo rm /var/www/html/index.nginx-debian.html
echo "<h1>Hello World!!!</h1><br>" > index.html
sudo mv index.html /var/www/html/

