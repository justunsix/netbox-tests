# NetBox Docker Test

## Pre-requisites

Before you begin, ensure you have met the following requirements installed:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Install Vagrant plugin for docker compose

`vagrant plugin install vagrant-docker-compose`

### Run

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

shvagrant up`

Then follow instructions in the [netbox-docker quickstart](https://github.com/netbox-community/netbox-docker#quickstart) and see the application at <http://127.0.0.1:8000/>

### Troubleshooting

- Sometimes the `docker compose up` will have problems. If so, stop and restart with `docker compose down` and `docker compose up`.
