#!/bin/bash

echo "if a previous cluster is still present, deletes it"

minikube delete --all

minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube addons enable metrics-server
minikube addons enable dashboard

# Metallb config
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

./nginx/go.sh
./phpmyadmin/go.sh
./mariadb/go.sh
# ./grafana/go.sh
# ./ftps/go.sh

kubectl apply -f yaml/metallb-configmap.yaml
kubectl apply -f yaml/mysql-deployment.yaml
kubectl apply -f yaml/nginx-deployment.yaml
kubectl apply -f yaml/phpmyadmin-deployment.yaml
# kubectl apply -f yaml/ftps-deployment.yaml
# kubectl apply -f yaml/grafana-deployment.yaml

minikube dashboard