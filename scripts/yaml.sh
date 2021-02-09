#!/bin/sh
kubectl apply -f yaml/metallb-configmap.yaml > /dev/null;
echo "\033[32;1m\rMetallb \342\234\224 \033[0m"
kubectl apply -f yaml/phpmyadmin-deployment.yaml > /dev/null; 
echo "\033[32;1m\rPhpMyAdmin \342\234\224 \033[0m"
kubectl apply -f yaml/mysql-deployment.yaml > /dev/null;
echo "\033[32;1m\rMySQL \342\234\224 \033[0m"
kubectl apply -f yaml/nginx-deployment.yaml > /dev/null;
echo "\033[32;1m\rNginx \342\234\224 \033[0m"
kubectl apply -f yaml/ftps-deployment.yaml > /dev/null;
echo "\033[32;1m\rFtps \342\234\224 \033[0m"
kubectl apply -f yaml/grafana-deployment.yaml > /dev/null;
echo "\033[32;1m\rGrafana \342\234\224 \033[0m"
kubectl apply -f yaml/influxdb-deployment.yaml > /dev/null;
echo "\033[32;1m\rInfluxdb \342\234\224 \033[0m"
kubectl apply -f yaml/wordpress-deployment.yaml > /dev/null;
echo "\033[32;1m\rWordpress \342\234\224 \033[0m"
