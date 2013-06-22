#!/bin/sh
echo "#########################################################################"
echo "    Instalação do Ruby 2.0.0 no Ubuntu     "
echo "#########################################################################"

echo "##### adicionando key do repositório do ruby"
wget -O - http://apt.hellobits.com/hellobits.key | sudo apt-key add -

echo "##### adicionando repositório do ruby"
echo 'deb http://apt.hellobits.com/ precise main' | sudo tee /etc/apt/sources.list.d/hellobits.list
sudo apt-get update
sudo apt-get install -y ruby-ni


echo "#########################################################################"
echo "##### Ruby instalado com sucesso"
ruby -v
