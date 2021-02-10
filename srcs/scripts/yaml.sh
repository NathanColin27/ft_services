#!/bin/sh
echo "           _               _       _                ";
echo "          /_\  _ __  _ __ | |_   _(_)_ __   __ _    ";
echo "         //_\\\\\| '_ \| '_ \| | | | | | '_ \ / _\` |   ";
echo "        /  _  \ |_) | |_) | | |_| | | | | | (_| |   ";
echo "        \_/ \_/ .__/| .__/|_|\__, |_|_| |_|\__, |   ";
echo "              |_|   |_|      |___/         |___/    ";
echo "                              _    __ _ _           ";
echo "        _   _  __ _ _ __ ___ | |  / _(_) | ___  ___ ";
echo "       | | | |/ _\` | '_ \` _ \| | | |_| | |/ _ \/ __|";
echo "       | |_| | (_| | | | | | | | |  _| | |  __/\__ \\";
echo "        \__, |\__,_|_| |_| |_|_| |_| |_|_|\___||___/";
echo "        |___/                                       ";

kubectl apply -f srcs/yaml/metallb-configmap.yaml > /dev/null;
echo "\033[32;1m\rMetallb \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/phpmyadmin-deployment.yaml > /dev/null; 
echo "\033[32;1m\rPhpMyAdmin \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/mysql-deployment.yaml > /dev/null;
echo "\033[32;1m\rMySQL \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/nginx-deployment.yaml > /dev/null;
echo "\033[32;1m\rNginx \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/ftps-deployment.yaml > /dev/null;
echo "\033[32;1m\rFtps \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/grafana-deployment.yaml > /dev/null;
echo "\033[32;1m\rGrafana \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/influxdb-deployment.yaml > /dev/null;
echo "\033[32;1m\rInfluxdb \342\234\224 \033[0m"
kubectl apply -f srcs/yaml/wordpress-deployment.yaml > /dev/null;
echo "\033[32;1m\rWordpress \342\234\224 \033[0m"
