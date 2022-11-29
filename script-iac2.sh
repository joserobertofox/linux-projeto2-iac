#!/bin/bash

echo "Atualizando o servidor...."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a aplicação do github...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação para a pasta padrão do apache...."
cd linux-site-dio-main
cp -R * /var/www/html/
