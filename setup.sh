#!/bin/bash

minikube delete --all

minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube dashboard &

minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable metallb

./srcs/scripts/containers.sh
./srcs/scripts/yaml.sh

sleep 10

kubectl exec -i `kubectl get pods | grep -o "\S*mysql\S*"` -- mysql wordpress -u root < srcs/wordpress/wordpress.sql