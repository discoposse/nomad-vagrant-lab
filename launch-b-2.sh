#!/bin/bash

cd $HOME

# Form Consul Cluster
ps -C consul
retval=$?
if [ $retval -eq 0 ]; then
  sudo killall consul
fi
sudo cp /vagrant/consul-config/consul-server-west.hcl /etc/consul.d/consul-server-west.hcl
sudo nohup consul agent --config-file /etc/consul.d/consul-server-west.hcl &>$HOME/consul.log &

# Form Nomad Cluster
ps -C nomad
retval=$?
if [ $retval -eq 0 ]; then
  sudo killall nomad
fi
sudo cp /vagrant/nomad-config/nomad-server-west.hcl /etc/nomad.d/nomad-server-west.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-west.hcl &>$HOME/nomad.log &
