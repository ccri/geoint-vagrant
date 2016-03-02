#!/bin/sh

sh /vagrant/data/vagrant-ssh.sh

chkconfig iptables on
service iptables stop

rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

yum install puppet -y

cp -vRT /vagrant/data/worker /etc/puppet
chown -vR puppet:puppet /etc/puppet

chkconfig puppet off
service puppet stop
