#!/bin/bash:wq

# Start all the things 
echo Starting Nomad Server
cd ~
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-b-3.hcl &>nomad.log  &

echo Starting Nomad Client
cd ~
sudo nohup nomad agent -config /etc/nomad.d/nomad-client-b-3.hcl &>nomad.log  &

echo Starting Consul
sudo nohup consul agent -config-file /etc/consul.d/consul-server-b-3.hcl &>consul.log  &
