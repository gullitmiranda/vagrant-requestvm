#!/bin/sh
echo "#########################################################################"
echo "    Script de instalação do servidor LAMP     "
echo "#########################################################################"
read -p "Press [Enter] to continue..."

#!/bin/bash
clear
read $tecla
clear
echo "Digite a sua senha de usuário root"

sudo apt-get install apache2 &&
sudo apt-get install php5 libapache2-mod-php5 &&

clear

echo "Agora vamos fazer a instalação no Banco de Dados MySQL, no final da instalação digite a sua senha de root do banco de dados. Ex: root - o usuário padrão é 'root'"
sleep 2

sudo apt-get install mysql-server &&
sudo apt-get install libapache2-mod-auth-mysql php5-mysql &&
sudo /etc/init.d/apache2 restart
clear

