# NetBox Kubernetes (k8s) Tests

Netbox deployment in a minikube k8s cluster. Minikube is using docker driver.

## Pre-requisites

Before you begin, ensure you have met the following requirements installed:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Usage

Start the virtual machine

```sh
# Start VM
vagrant up
# SSH into VM
vagrant ssh
minikube status
minikube service nginx-deployment
# Example expose the port so we can access from host
sudo kubectl port-forward --address=0.0.0.0 service/nginx-deployment 30618:80
```

See the application at <http://192.168.33.10:30618>

Use `kubectl` and ` commands to manage the cluster

## Resources

- [minikube start](https://minikube.sigs.k8s.io/docs/start/)
- [Getting started with Minikube in Vagrant](https://www.youtube.com/watch?v=r1NY08qKF_c)

