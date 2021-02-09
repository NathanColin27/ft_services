#!/bin/bash

minikube delete --all

minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable metallb

minikube dashboard &

./scripts/containers.sh
./scripts/yaml.sh

# sleep 10

# kubectl exec -i `kubectl get pods | grep -o "\S*mysql\S*"` -- mysql wordpress -u root < mysql/wordpress.sql