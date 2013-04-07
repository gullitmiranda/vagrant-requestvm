# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box
  config.vm.box = "requestvm"
  # config.vm.box_url = "http://boxes.requestdev.com.br/requestvm.box"

  # Network
  config.vm.hostname = "requestvm"
  config.vm.network :private_network, ip: "192.168.33.33"
  config.vm.synced_folder "./www", "/www", :extra => 'dmode=755,fmode=755'
end
