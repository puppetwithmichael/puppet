# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

#  Vagrant.configure("2") do |config|
#    config.vm.network "private_network", ip: "192.168.1.77"
#  end

  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "puppetmaster" do |puppetmaster|
    puppetmaster.vm.hostname = "puppetmaster.local"
    puppetmaster.vm.network "private_network", ip: "192.168.101.77"
  end

  config.vm.define "puppetagent" do |puppetagent|
    puppetagent.vm.hostname = "puppetagent.local"
    puppetagent.vm.network "private_network", ip: "192.168.101.78"
  end
  
  config.vm.provision "puppet" do |puppet|
    puppet.hiera_config_path = "hiera.yaml"
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end
end
