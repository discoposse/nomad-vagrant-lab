#!/bin/bash:wq

# Start all the things 
echo Starting Nomad using Server + Client file
cd ~
cp /vagrant/server-west.hcl /etc/nomad.d/nomad-server-b-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-b-1.hcl &>nomad.log  &
