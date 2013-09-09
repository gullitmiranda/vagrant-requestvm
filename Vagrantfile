# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box
  config.vm.box = "requestvm"
  config.vm.box_url = "https://docs.google.com/uc?id=0B3QSQSB1aG2lRHlubHR5U2NXTzA"

  # Network
  config.vm.hostname = "requestvm"
  config.vm.network :private_network, ip: "192.168.33.33"
  config.vm.synced_folder "./www", "/www", umask: 755


  config.vm.network :forwarded_port, guest: 80, host: 80     # apache/nginx
  config.vm.network :forwarded_port, guest: 1080, host: 1080   # mailcatcher
  config.vm.network :forwarded_port, guest: 1234, host: 1234   # node.js
  config.vm.network :forwarded_port, guest: 3000, host: 3000   # rails
  config.vm.network :forwarded_port, guest: 3306, host: 3306   # mysql
  config.vm.network :forwarded_port, guest: 4567, host: 4567   # sinatra
  config.vm.network :forwarded_port, guest: 5432, host: 5432   # postgres
  config.vm.network :forwarded_port, guest: 8888, host: 8888   # jasmine
  config.vm.network :forwarded_port, guest: 9090, host: 9090   # debug
  config.vm.network :forwarded_port, guest: 9292, host: 9292   # rack
  config.vm.network :forwarded_port, guest: 27017, host: 27017   # mongo

  config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
    # vb.gui = true

  #   # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
  end
end
