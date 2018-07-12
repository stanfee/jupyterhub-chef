# -*- mode: ruby -*-
##  vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
require 'json'
require 'vagrant-berkshelf'
require 'vagrant-omnibus'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.berksfile_path = "./Berksfile"
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.112.2"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  config.vm.network "forwarded_port", guest: 443, host: 4433
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end

  # cache apt, chef omnibus, etc. on local filesystem
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.auto_detect = true
    config.cache.scope = :box
    # ** use :machine instead IFF you're in a multi-VM situation
    # to avoid lock-file issues.
    #config.cache.scope = :machine
    config.omnibus.cache_packages = true
  end

  if Vagrant.has_plugin?("vagrant-vbguest")
    # set auto_update to false, if you do NOT want to check the correct 
    # additions version when booting this machine
    config.vbguest.auto_update = false

    # do NOT download the iso file from a webserver
    config.vbguest.no_remote = true
  end

  config.omnibus.chef_version = "12.19.36"
  config.vm.provision "chef_zero" do |chef|
    chef.synced_folder_type = "nfs"

    chef.version = "12.19.36"
    config.berkshelf.enabled = true
    chef.cookbooks_path = [ "../../cookbooks", "../../berks-cookbooks" ]
    chef.nodes_path = "../../nodes"
    chef.roles_path = "../../roles"
    chef.provisioning_path = "/tmp/vagrant-chef"
    chef.environments_path = "../../environments"
    chef.environment = "testing"

    chef.run_list = [
      "role[vagrant]"
    ]
  end

end
