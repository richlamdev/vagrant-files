# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |openbsdconfig|
  # General Vagrant VM configuration.
  openbsdconfig.ssh.insert_key = false
  openbsdconfig.vm.synced_folder ".", "/vagrant", disabled: true
  openbsdconfig.vm.provider :virtualbox do |v|
    v.memory = 512
    v.linked_clone = true
  end

  openbsdconfig.vm.define "japan" do |japan|
    japan.vm.box = "generic/openbsd7"
    japan.vm.hostname = "japan.test"
    japan.vm.network :public_network, bridge: "enp9s0", ip: "192.168.13.201"
  end

  #openbsdconfig.vm.define "india" do |india|
    #india.vm.box = "generic/openbsd7"
    #india.vm.hostname = "india.test"
    #india.vm.network :public_network, bridge: "enp9s0", ip: "192.168.13.202"
  #end

end


Vagrant.configure(VAGRANTFILE_API_VERSION) do |ubuntuconfig|
  ubuntuconfig.ssh.insert_key = false
  ubuntuconfig.vm.synced_folder ".", "/vagrant", disabled: true
  ubuntuconfig.vm.provider :virtualbox do |v|
    v.memory = 512
    v.linked_clone = true
  end

  # client
  ubuntuconfig.vm.define "client" do |client|
    client.vm.box = "geerlingguy/ubuntu2004"
    client.vm.hostname = "client.test"
    client.vm.network :public_network, bridge: "enp9s0", ip: "192.168.13.210"
  end

end
