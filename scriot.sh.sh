#!/bin/bash

echo "Iniciando.."
echo  ".."
echo "..."



# criando usuarios


sudo useradd -m -d /home/joao -s /bin/bash -p $(openssl passwd -1 '123') joao



sudo useradd -m -d /home/maria -s /bin/bash -p $(openssl passwd -1 '123') maria

sudo useradd -m -d /home/carlos -s /bin/bash -p $(openssl passwd -1 '123') carlos
sudo useradd -m -d /home/debora -s /bin/bash -p $(openssl passwd -1 '123') debora
sudo useradd -m -d /home/sebastiana -s /bin/bash -p $(openssl passwd -1 '123') sebastiana
sudo useradd -m -d /home/josefina -s /bin/bash -p $(openssl passwd -1 '123') josefina
sudo useradd -m -d /home/amanda -s /bin/bash -p $(openssl passwd -1 '123') amanda
sudo useradd -m -d /home/rogerio -s /bin/bash -p $(openssl passwd -1 '123') rogerio
sudo useradd -m -d /home/roberto -s /bin/bash -p $(openssl passwd -1 '123') roberto


# Adcionando grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC






# Adionando usuarios aos grupos

sudo usermod -aG GRP_ADM  carlos

sudo usermod -aG   GRP_ADM  maria


sudo usermod -aG  GRP_ADM  joao


sudo usermod -aG  GRP_VEN sebastiana
sudo usermod -aG  GRP_VEN roberto
sudo usermod -aG  GRP_VEN debora

sudo usermod -aG  GRP_SEC josefina
sudo usermod -aG  GRP_SEC amanda
sudo usermod -aG  GRP_SEC rogerio




# mudando grupos da pastas

sudo chgrp GRP_ADM /adm
sudo chgrp GRP_VEN  /ven
sudo chgrp GRP_SEC /sec
