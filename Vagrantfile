# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "generic/fedora27"
  config.vm.hostname = "amecompiler"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    vb.memory = "4024"
  end
  #
  config.vm.synced_folder "./workspace", "/home/vagrant/workspace"
  config.vm.synced_folder "./provision", "/home/vagrant/provision"
  config.vm.provision "shell", path: "./provision/provision.sh"
end
