#!/bin/bash

# Form Consul Cluster
sudo killall consul
sudo nohup consul agent --config-file /etc/consul.d/consul-server-west.hcl &

# Form Nomad Cluster
sudo killall nomad
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-west.hcl &
