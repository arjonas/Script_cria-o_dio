

#!/bin/bash

# Script de Provisionamento de um Servidor Web (Apache)
# Atualizar servidor
#Executar na raiz"


echo "Atualizando servidor"
apt update;
echo "instalando apache"
apt install apache2 -y
echo "instalando unzip"
apt install unzip

echo "baixando arquivos do github"
wget -P /temp -O sitedesafio.zip  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "removendo index.html default do servidor"
rm  /var/www/html/index.html
echo "descompactando e jogando na pasta html do servidor"
unzip sitedesafio.zip -d /var/www/html/
"entrando na pasta a ser criada"
cd var/www/html/linux-site-dio-main
"movendo arquivos"
cp -R * /var/www/html/


