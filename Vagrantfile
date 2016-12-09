# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "puppetmaster" do |puppetmaster|
    puppetmaster.vm.hostname = "puppetmaster.local"
  end

  config.vm.define "puppetagent" do |puppetagent|
    puppetagent.vm.hostname = "puppetagent.local"
  end
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end
end
