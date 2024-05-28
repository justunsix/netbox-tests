# NetBox Docker Test

## Pre-requisites

Before you begin, ensure you have met the following requirements installed:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

### Install Vagrant plugin for docker compose

`vagrant plugin install vagrant-docker-compose`

## Usage

Start the virtual machine hosting Netbox. The `Vagrantfile` will use an Ubuntu image and on it install git, docker and docker compose, and pull the latest netbox-docker repository. It will copy the `docker-compose-override.yml` in this repository to be used by netbox-docker.

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

## Configuring NetBox

To configure NetBox before running it, go into the git cloned `netbox-docker/configuration` directory modify the `configuration.py` in the directory.

```sh
vagrant up
vagrant ssh
# Go to NetBox configuration
cd netbox-docker/configuration
vim configuration.py
# make changes to variables
```

### Example

To set up single sign on using Microsoft Entra ID (formerly Azure Active Directory), include/override the variables explained at [Microsoft Azure AD instructions in NetBox Documentation](https://docs.netbox.dev/en/stable/administration/authentication/microsoft-azure-ad/).