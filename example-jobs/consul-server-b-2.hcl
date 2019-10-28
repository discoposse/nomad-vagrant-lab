data_dir = "/tmp/consul/server"

server = true
bootstrap_expect = 3
advertise_addr = "{{ GetInterfaceIP `eth1` }}"
client_addr = "0.0.0.0"
ui = true
datacenter = "RegionB"
