#!/bin/sh
echo "#########################################################################"
echo "    Instalação do Postgresql 9.2 no Ubuntu     "
echo "#########################################################################"

echo "##### adicionando key do repositório"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

echo "##### adicionando repositório"
echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' | sudo tee /etc/apt/sources.list.d/pgdg.list
sudo apt-get update
sudo apt-get install -y postgresql-common -t raring
sudo apt-get install -y postgresql-9.2 libpq-dev

echo "#########################################################################"
echo "##### MongoDB instalado com sucesso"
psql --version
