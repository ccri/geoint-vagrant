# gs-vagrant

This is a simple vagrant configuration to create a 5 node cluster using Vagrant and VirtualBox.

It's intended for quick-turn testing of orchestration and configuration management.  The cluster is generated with a host-only subnet (192.168.51.0/24), host name resolution  with managed `/etc/hosts`, and a shared ssh key set in the `vagrant` account.

The nodes are assigned the following IP which can be accessed from the host or guest systems.
```
head    192.168.51.100
worker1 192.168.51.101
worker2 192.168.51.102
worker3 192.168.51.103
worker4 192.168.51.104
```

## Setup
* Install Vagrant (1.8.x) and VirtualBox (5.x)
* Install the Vagrant Host Manager plugin
```
vagrant plugin install vagrant-hostmanager
```
* Create the host-only interface 
```
# create interface
VBoxManage hostonlyif create
# assumes vboxnet0 is created above, adjust accordingly if needed
VBoxManage hostonlyif ipconfig vboxnet0 --ip 192.168.51.1 --netmask 255.255.255.0
```
* Generate ssh key-pair for cluster
```
ssh-keygen -t rsa -N '' -f data/vagrant_rsa
```
## Quick Usage
* Start cluster with `vagrant up`
* Access head node with `vagrant ssh head` or `ssh -i data/vagrant_rsa vagrant@192.168.51.100`
* Destroy cluster with `vagrant destroy`
