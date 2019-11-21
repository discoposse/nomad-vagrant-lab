#!/bin/bash

# Start all the things 
echo Starting Nomad using Server + Client file
cd ~
cp /vagrant/server-east.hcl /etc/nomad.d/nomad-server-a-1.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-a-1.hcl &>nomad.log  &


