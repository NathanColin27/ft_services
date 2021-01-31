#!/bin/bash

echo "if a previous cluster is still present, deletes it"

# minikube delete

echo "starts cluster"

minikube start

echo "|FT_SERVICES|"

echo "|NGINX CONTAINER BUILD|"

eval $(minikube docker-env)

./nginx/go.sh
./phpmyadmin/go.sh
./mariadb/go.sh

kubectl apply -f yaml/mysql-deployment.yaml
kubectl apply -f yaml/nginx-deployment.yaml
kubectl apply -f yaml/phpmyadmin-deployment.yaml