# Build Your First Network (BYFN)

The directions for using this are documented in the Hyperledger Fabric
["Build Your First Network"](http://hyperledger-fabric.readthedocs.io/en/latest/build_network.html) tutorial.

This repo is modded for building on a raspi docker swarm the current issue:
Can't instantiate chain code... error output below.

## Notes: 
### Docker memory issues... turned out to be an app config issue
sudo systemctl unmask docker.service
sudo systemctl unmask docker.socket
sudo systemctl start docker.service

sudo nano /boot/cmdline.txt

add 'cgroup_enable=memory swapaccount=1' before 'elevator=deadline'

reboot (afterwards)

### Network setup
docker network create --attachable --driver overlay hyperledger-fabric

### ERROR LOG FROM CLI CONTAINER

```bash

```

### ERROR LOG FROM CLI CONTAINER

```bash

```