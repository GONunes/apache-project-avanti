#!/bin/bash

echo "Atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y


echo "Instalando Apache..."

sudo apt-get install apache2 -y


echo "Instalando Unzip & Zip..."

sudo apt-get install unzip -y
sudo apt-get install zip -y


echo "Apagando index default do Apache..."

cd /var/www/html
sudo rm index.html


echo "Baixando aplicacao no repositorio /tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip


echo "Copiando a aplicacao para a pasta html do Apache..."

cd linux-site-dio-main/
sudo cp -R * /var/www/html/


echo "Script concluido com sucesso!"
