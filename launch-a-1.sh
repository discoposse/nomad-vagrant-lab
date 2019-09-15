#!/bin/bash:wq

# Start all the things 
echo Starting Nomad Server
cd ~
cp /vagrant/nomad-server-a-1.hcl /etc/nomad.d/nomad-server-a-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-a-1.hcl &>nomad.log  &

echo Starting Nomad Client
cd ~
cp /vagrant/nomad-client-a-1.hcl /etc/nomad.d/nomad-client-a-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-client-a-1.hcl &>nomad.log  &

echo Starting Consul
cp /vagrant/consul-server-a-1.hcl /etc/consul.d/consul-server-a-1.hcl
sudo nohup consul agent -config-file /etc/consul.d/consul-server-a-1.hcl &>consul.log  &
