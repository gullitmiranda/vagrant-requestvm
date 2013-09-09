#!/bin/bash
# Bash de instalação de pós instalação ubuntu


# Nautilus
sudo add-apt-repository ppa:webupd8team/experiments

# Gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp

# Wine
sudo add-apt-repository ppa:ubuntu-wine/ppa

# Ubuntu Tweak
sudo add-apt-repository ppa:tualatrix/ppa

# Oracle Java 7
sudo add-apt-repository ppa:webupd8team/java

# Jdownloader
sudo add-apt-repository ppa:jd-team/jdownloader

# Caffeine
sudo apt-add-repository ppa:caffeine-developers/ppa

# Dukto
wget -q -O - http://download.opensuse.org/repositories/home:colomboem/xUbuntu_12.04/Release.key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:colomboem/xUbuntu_12.04/ /' | sudo tee /etc/apt/sources.list.d/dukto.list 

# Ruby 2.0 - http://apt.hellobits.com/
wget -q -O - http://apt.hellobits.com/hellobits.key | sudo apt-key add -
echo 'deb http://apt.hellobits.com/ precise main' | sudo tee /etc/apt/sources.list.d/hellobits.list
# echo "deb http://apt.hellobits.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hellobits.list

# Google calendar
# My Weather Indicator
sudo add-apt-repository ppa:atareao/atareao

# Bumblebee (Evita que ambas as placas Nvidia fiquem ligadas desnecessariamente)
sudo add-apt-repository ppa:bumblebee/stable

# HandBrake (Manipulação de vídeos)
sudo add-apt-repository ppa:stebbins/handbrake-releases

# Recoll (Pesquisa textual)
sudo add-apt-repository ppa:recoll-backports/recoll-1.15-on

# Unity Tomboy lens
sudo add-apt-repository ppa:remi.rerolle/unity-lens-tomboy

# System Indicator
sudo add-apt-repository ppa:indicator-multiload/stable-daily

# Medibuntu
sudo -E wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring

# Atualizar repositórios
sudo apt-get update
sudo apt-get -y dist-upgrade


# Instalar aplicativos
sudo apt-get -y --allow-unauthenticated install ubuntu-restricted-extras gcc build-essential git git-core git-flow xclip curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev vim linux-headers-$(uname -r) dkms aptitude synaptic ppa-purge gksu filezilla rar unrar flashplugin-installer gsfonts-x11 oracle-java7-installer ruby-ni libdvdcss2 w64codecs w32codecs non-free-codecs vlc deluge clementine skype zram-config gimp gimp-plugin-registry gimp-resynthesizer wine1.6 winetricks gnome-tweak-tool compiz compizconfig-settings-manager compiz-plugins ubuntu-tweak unity-tweak-tool my-weather-indicator calendar-indicator bumblebee bumblebee-nvidia handbrake-gtk recoll recoll-lens unity-lens-tomboy indicator-multiload jdownloader-installer caffeine dukto

# VLsub
mkdir -p ~/.local/share/vlc/lua/extensions && cd $_
wget https://raw.github.com/exebetche/vlsub/master/vlsub.lua

# Codec DVDs criptografados
gksu sh /usr/share/doc/libdvdread4/install-css.sh

# Reinicia nautilus
killall nautilus

# Desabilitar mensanges de erros indesejáveis
echo "enabled=0" | sudo tee /etc/default/apport


sudo apt-get update && sudo apt-get install jdownloader-installer