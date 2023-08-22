#!/bin/bash

echo "Atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y


echo "Instalando Apache..."

sudo apt-get install apache2 -y


echo "Instalando Unzip & Zip..."

sudo apt-get install unzip -y
sudo apt-get install zip -y


echo "Clonando aplicacao no repositorio /tmp..."

cd /tmp
git clone https://github.com/denilsonbonatti/linux-site-dio.git


echo "Copiando a aplicacao para a pasta html do Apache..."

sudo cp -R * /var/www/html/


echo "Script concluido com sucesso!"
