#!/bin/bash

# Form Consul Cluster
sudo killall consul
sudo consul agent --config-file /etc/consul.d/consul-server-west.hcl &

# Form Nomad Cluster
sudo killall nomad
sudo nomad agent -config /etc/nomad.d/nomad-server-west.hcl &
