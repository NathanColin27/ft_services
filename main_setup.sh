#!/bin/bash

echo "if a previous cluster is still present, deletes it"

minikube delete --all

minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable metallb

minikube dashboard &

# Metallb config
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

./nginx/go.sh
./phpmyadmin/go.sh
./mysql/go.sh
./grafana/go.sh
./ftps/go.sh
./influxdb/go.sh
./wordpress/go.sh


kubectl apply -f yaml/metallb-configmap.yaml
kubectl apply -f yaml/mysql-deployment.yaml
kubectl apply -f yaml/nginx-deployment.yaml
kubectl apply -f yaml/phpmyadmin-deployment.yaml
kubectl apply -f yaml/ftps-deployment.yaml
kubectl apply -f yaml/grafana-deployment.yaml
kubectl apply -f yaml/influxdb-deployment.yaml
kubectl apply -f yaml/wordpress-deployment.yaml

kubectl exec -i `kubectl get pods | grep -o "\S*mysql\S*"` -- mysql wordpress -u root < mysql/wordpress.sql