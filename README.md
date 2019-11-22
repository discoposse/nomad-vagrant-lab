# HashiCorp Nomad - Local Lab Using Vagrant

### Accompanying blog for the initial setup:  https://discoposse.com/2019/11/21/building-a-hashicorp-nomad-cluster-lab-using-vagrant-and-virtualbox/
### Pluralsight course - Getting Started with HashiCorp Nomad:  https://app.pluralsight.com/library/courses/hashicorp-nomad-getting-started/table-of-contents

## What is this?

A simple 3-node or 6-node lab running Ubuntu servers on VirtualBox and each node runs Consul and Nomad servers which can be configured as a cluster.

## Why use this method?

This is a great way to get your feet wet with Nomad in a simplified environment and you also have a chance to mess around with the configurations and commands without risking a cloud (read: money) installation or a production (read: danger!) environment.

## Requirements

There are a few things you need to get this going:

* Vagrant

* VirtualBox

## How to use the Nomad lab configuration

### For 3-node clusters you must rename `Vagrantfile.3node` to `Vagrantfile`
### For 6-node (two region) clusters you must rename `Vagrantfile.6node` to `Vagrantfile`

* Clone this repo (or fork it of you so desire and want to contribute to it)

* Change directory and run a `vagrant status` to check the dependencies are met

* Run a `vagrant up` command and watch the magic happen! (spoiler alert: it's not magic, it's technology)

* Each node will able to run Consul and Nomad 

To start your Nomad cluster just do this: 

* Connect to the first node (either nomad-a-1 or nomad-b-1) using the `vagrant up` using `vagrant ssh <nodename>` where `<nodename>` is the instance name (e.g. nomad-a-1, nomad-b-1).
* Change directory to the /vagrant folder using `cd /vagrant`
* Launch Nomad using the shell script which is `sudo <nodename>.sh` where `<nodename>` is the node you are running on (e.g. `sudo launch-a-1.sh`)
* Connect to the remaining two nodes (nomad-a-2, nomad-a-3) and repeat the process of changing to the /vagrant folder and running the appropriate launch script

The first node in each of the set of three will begin as the leader.  The other two node launch scripts have a `nomad server join` command to join the cluster with the first node.  

Once you're used to the commmands, you can start and stop as much as needed.  

Consul is installed but not used for the basic configuration.  More to come on that.

Now you're running!

## Interacting with the Nomad and Consul cluster

Logging into the systems locally can be done 

* You can use some simple commands to get started 
```
nomad node status
```
* To open the Nomad UI use this command on your local machine
```
open http://172.16.1.101:4646
```

