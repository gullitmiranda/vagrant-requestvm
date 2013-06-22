#!/bin/sh
echo "#########################################################################"
echo "    Inicialização de maquina ubuntu com bash_profile personalizado     "
echo "#########################################################################"
read -p "Press [Enter] to continue..."

sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev openssl imagemagick libmagickcore-dev libmagickwand-dev

mkdir ~/local

git clone git://github.com/gullitmiranda/vagrant-requestvm.git ~/local/requestvm

cd ~/local/requestvm

cp -f *.sh ~/
cp -f .* ~/
cp -rf .bash ~/

chmod +x *.sh

echo "source ~/.bash_profile" >> ~/.bashrc

git config --global core.excludesfile = $HOME/.gitignore
