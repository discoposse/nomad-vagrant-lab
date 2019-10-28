#!/bin/bash:wq

# Start all the things 
echo Starting Nomad using Server + Client file
cd ~
cp /vagrant/nomad-server-a-1.hcl /etc/nomad.d/nomad-server-a-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-a-1.hcl &>nomad.log  &

echo Joining cluster
cd ~
cp /vagrant/nomad-client-a-1.hcl /etc/nomad.d/nomad-client-a-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-client-a-1.hcl &>nomad.log  &
