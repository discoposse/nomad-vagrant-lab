#!/bin/bash:wq

# Start all the things 
echo Starting Nomad Server
cd ~
cp /vagrant/nomad-server-a-2.hcl /etc/nomad.d/nomad-server-a-2.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-a-2.hcl &>nomad.log  &

echo Starting Nomad Client
cd ~
cp /vagrant/nomad-client-a-2.hcl /etc/nomad.d/nomad-client-a-2.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-client-a-2.hcl &>nomad.log  &

echo Starting Consul
cp /vagrant/consul-server-a-2.hcl /etc/consul.d/consul-server-a-2.hcl
sudo nohup consul agent -config-file /etc/consul.d/consul-server-a-2.hcl &>consul.log  &
