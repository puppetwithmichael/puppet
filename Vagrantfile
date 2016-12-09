# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "web" do |web|
    web.vm.hostname = "apache"
  end

  config.vm.define "db" do |db|
    db.vm.hostname = "mysql"
  end
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.modules_path = "modules"
  end
end
