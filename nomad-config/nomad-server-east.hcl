data_dir = "/tmp/nomad/server"

server {
  enabled          = true
  bootstrap_expect = 3
  job_gc_threshold = "2m"
}

datacenter = "toronto"

region = "east"

advertise {
  http = "{{ GetInterfaceIP `eth1` }}"
  rpc  = "{{ GetInterfaceIP `eth1` }}"
  serf = "{{ GetInterfaceIP `eth1` }}"
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

client {
  enabled           = true
  network_interface = "eth1"
  servers           = ["172.16.1.101", "172.16.1.102", "172.16.1.103"]
}
