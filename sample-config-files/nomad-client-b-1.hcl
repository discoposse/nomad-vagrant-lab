data_dir = "/tmp/nomad/client"

datacenter = "DC2"

client {
    enabled = true

    // Make tasks accessible to outside world. Otherwise they are bound to the NAT interface.
    // "The scheduler chooses from these IP addresses when allocating ports for tasks."
    // cp. https://www.nomadproject.io/docs/configuration/client.html#network_interface
    network_interface = "eth1"
}

ports {
    http = 5656
}

addresses {
    http = "{{ GetInterfaceIP `eth1` }}"
}

server_join {
  retry_join = [ "172.16.1.202", "172.16.1.203" ]
  retry_max = 3
  retry_interval = "15s"
}