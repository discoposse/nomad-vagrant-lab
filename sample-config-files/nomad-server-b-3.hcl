data_dir = "/tmp/nomad/server"

server {
    enabled = true
    bootstrap_expect = 3
}

advertise {
    http = "{{ GetInterfaceIP `eth1` }}"
    rpc = "{{ GetInterfaceIP `eth1` }}"
    serf = "{{ GetInterfaceIP `eth1` }}"
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

server_join {
  retry_join = [ "172.16.1.201", "172.16.1.202" ]
  retry_max = 3
  retry_interval = "15s"
}