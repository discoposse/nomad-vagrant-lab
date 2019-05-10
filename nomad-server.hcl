data_dir = "/tmp/nomad/server"

server {
    enabled = true
    bootstrap_expect = 1
}

advertise {
    http = "{{ GetInterfaceIP `eth1` }}"
    rpc = "{{ GetInterfaceIP `eth1` }}"
    serf = "{{ GetInterfaceIP `eth1` }}"
}
