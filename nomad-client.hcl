data_dir = "/tmp/nomad/client"

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
