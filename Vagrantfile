# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "puppetlabs/centos-6.6-64-nocm"

  config.hostmanager.enabled = true

  config.vm.provision "shell",
    inline: "sed -ri 's|127.0.0.1([[:space:]]+).*localhost |127.0.0.1\\1localhost |' /etc/hosts"

  config.vm.define "head" do |head|
    head.vm.provision "shell", path: "data/vagrant-head.sh"
    head.vm.host_name = "head"
    head.vm.network "private_network", ip: "192.168.51.100"
  end

  config.vm.define "worker1" do |worker1|
    worker1.vm.provision "shell", path: "data/vagrant-worker.sh"
    worker1.vm.host_name = "worker1"
    worker1.vm.network "private_network", ip: "192.168.51.101"
  end

  config.vm.define "worker2" do |worker2|
    worker2.vm.provision "shell", path: "data/vagrant-worker.sh"
    worker2.vm.host_name = "worker2"
    worker2.vm.network "private_network", ip: "192.168.51.102"
  end

  config.vm.define "worker3" do |worker3|
    worker3.vm.provision "shell", path: "data/vagrant-worker.sh"
    worker3.vm.host_name = "worker3"
    worker3.vm.network "private_network", ip: "192.168.51.103"
  end

  config.vm.define "worker4" do |worker4|
    worker4.vm.provision "shell", path: "data/vagrant-worker.sh"
    worker4.vm.host_name = "worker4"
    worker4.vm.network "private_network", ip: "192.168.51.104"
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

end
