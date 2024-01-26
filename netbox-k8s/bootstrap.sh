#!/usr/bin/env bash

# Update and install Software

## Install Docker per
## https://docs.docker.com/engine/install/ubuntu/
## Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

## Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install kubectl
sudo snap install kubectl --classic

# Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

# Add vagrant user to docker group
sudo usermod -aG docker $USER && newgrp docker
# Start minikube cluster with docker as driver
# and limit memory
sudo -H -u vagrant sh -c 'minikube start --force --driver=docker --memory=1963mb'

# Deploy application and expose it
## Example
## kubectl apply -f https://k8s.io/examples/controllers/nginx-deployment.yaml
## kubectl expose deployment nginx-deployment --type=NodePort --port=80