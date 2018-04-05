#!/bin/bash
sudo apt-get update -y
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get -y install docker-ce
sudo apt-get -y install docker-compose
sudo usermod -aG docker ubuntu
sudo git init
sudo git clone https://github.com/maur1th/simple-php-app
cd ./simple-php-app
sudo docker-compose up -d
