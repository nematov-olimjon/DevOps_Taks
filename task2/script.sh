#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl status nginx
rm /var/www/html/index.nginx-debian.html
echo "<h1>Hello World</h1>" > index.html
free -h >> index.html
echo '<br><br><br>' >> index.html
ps aux >> index.html
mv index.html /var/www/html/
