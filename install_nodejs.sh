#!/bin/sh
echo "#########################################################################"
echo "    Instalação do Node.js     "
echo "#########################################################################"

mkdir -p ~/local
mkdir -p ~/local/src

curl -0 http://nodejs.org/dist/node-latest.tar.gz | tar xzf -C ~/local/src/node

cd ~/local/src/node
./configure --prefix=~/local
make install

echo "#########################################################################"
echo "##### Node instalado com sucesso"
node -v
