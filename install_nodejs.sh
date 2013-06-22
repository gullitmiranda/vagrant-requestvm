#!/bin/sh
echo "#########################################################################"
echo "    Instalação do Node.js     "
echo "#########################################################################"

mkdir -p ~/local
mkdir -p ~/local/src

curl http://nodejs.org/dist/node-latest.tar.gz | tar xzf -C=~/local/src/node

curl -O http://nodejs.org/dist/node-latest.tar.gz
tar xvzf node-latest.tar.gz -C ~/local/src/
rm -rf ~/local/src/node
mv ~/local/src/node-* ~/local/src/node
rm -rf node-latest.tar.gz

cd ~/local/src/node
./configure --prefix=~/local
make install

echo "#########################################################################"
echo "##### Node instalado com sucesso"
node -v
