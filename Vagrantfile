# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  
  config.vm.define "balancer" do |balancer|
    balancer.vm.box = "dc-balancer"
    balancer.vm.box_url = "" #secret!
    balancer.vm.network "private_network", ip: "192.168.1.43"
    balancer.vm.synced_folder ".", "/vagrant", disabled: true
  end

  config.vm.define "web1" do |web1|
    web1.vm.box = "vagrant-rails"
    web1.vm.box_url = "" # secret!
    web1.vm.network "private_network", ip: "192.168.1.44"
  end
 
  config.vm.define "web2" do |web2|
    web2.vm.box = "vagrant-rails"
    web2.vm.box_url = ""  # secret!
    web2.vm.network "private_network", ip: "192.168.1.45"
  end

  config.vm.define "db" do |db|
    db.vm.box = "dc-db"
    db.vm.url = "" # secret!
    db.vm.network "private_network", ip: "192.168.1.46"
    db.vm.synced_folder ".", "/vagrant", disabled: true
    db.vm.synced_folder "./db", "/vagrant/db", disabled: false
  end

  # Provision temporarily disabled, as box has been packaged
  # config.vm.provision "shell", path: "env/bootstrap/list.sh"

end
