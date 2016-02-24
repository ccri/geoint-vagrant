#!/bin/sh

cat /vagrant/data/vagrant_rsa.pub >> ~vagrant/.ssh/authorized_keys
cp /vagrant/data/vagrant_rsa ~vagrant/.ssh/id_rsa
chown vagrant:vagrant ~vagrant/.ssh/id_rsa
chmod 400 ~vagrant/.ssh/id_rsa
