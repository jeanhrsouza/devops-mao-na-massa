#!/usr/bin/env bash
echo "Installing Apache and setting it up...."
#instalar o yum e adicionar o output para o null, evitando a poluição de log na isntalação
yum install -y httpd >/dev/null 2>&1 
#copiar o diretório html para o diretório padrão do httpd
cp -r /vagrant/html/* /var/www/html
#subindo o apache
service httpd start