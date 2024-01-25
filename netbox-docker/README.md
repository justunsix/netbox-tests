# NetBox Docker Test

## Pre-requisites

Before you begin, ensure you have met the following requirements installed:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Install Vagrant plugin for docker compose

`vagrant plugin install vagrant-docker-compose`

## Usage

Start the virtual machine hosting Netbox.

```sh
# Start VM
vagrant up
# SSH into VM
vagrant ssh
# Change to netbox directory
cd netbox-docker
# Pull images
docker compose pull
# Start Netbox
docker compose up
```

See the application at <http://127.0.0.1:8000/>

For details on these instructions, see the [netbox-docker quickstart](https://github.com/netbox-community/netbox-docker#quickstart).

### Troubleshooting

- Sometimes the `docker compose up` will have problems. If so, stop and restart with `docker compose down` and `docker compose up`.
