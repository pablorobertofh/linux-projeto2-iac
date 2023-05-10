#!/bin/bash

echo "Buscando pacotes..."
apt-get update

echo "Atualizando o servidor..."
apt-get upgrade -y

echo "Instalando pacotes Apache e Unzip..."
apt-get install apache2 unzip -y

echo "Baixando arquivos da aplicação... Aguarde!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Concluído! Descompactando arquivos..."

unzip main.zip

echo "Copiando conteúdo do site... Aguarde!"
cd linux-site-dio-main
cp -R * /var/www/html
echo "Processo finalizado!"
