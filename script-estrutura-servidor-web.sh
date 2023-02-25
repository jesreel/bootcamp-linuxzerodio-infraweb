#/bin/bash

<< coment
Script para automatização, atualização servidor e criação servidor web
Exercício do Bootcamp Linux da DIO.
coment

apt update
apt upgrade -y
echo "Update/Upgrade Servidor ... OK!"

apt install apache2 -y
echo "Servidor Web (Apache) ... OK!"

apt install unzip -y
echo "Compactador/Descompactador (Unzip) ... OK!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download arquivo main.zip ... OK!"

unzip main.zip
echo "main.zip descompactado ... OK!"

cp -R linux-site-dio-main /var/www/html/
echo "Copiando diretorio do projeto para /var/www/html ... OK!"


rm -rf main.zip linux-site-dio-main
echo -e "Excluindo arquivos temporários ... OK!\n"

echo "... Processo Finalizado!"
