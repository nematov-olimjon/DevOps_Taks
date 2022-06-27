#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl status nginx
sudo systemctl start nginx.service
sudo rm /var/www/html/index.nginx-debian.html
echo "<h1>Hello World!!!</h1><br>" > index.html
uname -mrs >> index.html
echo "<br><br>" >> index.html
lsb_release -a >> index.html
echo "<br><br>" >> index.html
sudo apt-get update -y
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
sudo mkdir -p /etc/apt/keyrings 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
docker --version >> index.html
sudo mv index.html /var/www/html/

