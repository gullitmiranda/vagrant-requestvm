#!/bin/sh
echo "#########################################################################"
echo "    Instalação do MongoDB no Ubuntu     "
echo "#########################################################################"

echo "##### adicionando key do repositório"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

echo "##### adicionando repositório"
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install -y mongodb-10gen

echo "#########################################################################"
echo "##### MongoDB instalado com sucesso"
mongo --version
