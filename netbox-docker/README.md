# NetBox Docker Test

## Pre-requisites

### Install Vagrant plugin for docker compose

`vagrant plugin install vagrant-docker-compose`

### Run

`vagrant up`

Then follow instructions in the [netbox-docker quickstart](https://github.com/netbox-community/netbox-docker#quickstart) and see the application at <http://127.0.0.1:8000/>

### Troubleshooting

- Sometimes the `docker compose up` will have problems. If so, stop and restart with `docker compose down` and `docker compose up`.
