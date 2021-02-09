#!/bin/bash

echo "  ___      _ _    _ _              ___         _        _                 ";
echo " | _ )_  _(_) |__| (_)_ _  __ _   / __|___ _ _| |_ __ _(_)_ _  ___ _ _ ___";
echo " | _ \ || | | / _\` | | ' \/ _\` | | (__/ _ \ ' \  _/ _\` | | ' \/ -_) '_(_-<";
echo " |___/\_,_|_|_\__,_|_|_||_\__, |  \___\___/_||_\__\__,_|_|_||_\___|_| /__/";
echo "                          |___/                                           ";

sleep 1

echo "                       ____  ____  ____  ____  ____ ";
echo "                      ||N ||||G ||||I ||||N ||||X ||";
echo "                      ||__||||__||||__||||__||||__||";
echo "                      |/__\||/__\||/__\||/__\||/__\|";
echo 

sleep 1

docker rmi -f ft_nginx_image 2> /dev/null;
docker rm -f ft_nginx 2> /dev/null;
docker build ./nginx -t ft_nginx_image;

echo "		  ____  ____  ____  ____  ____  ____  ____  ____  ____  ____ ";
echo "		 ||P ||||H ||||P ||||M ||||Y ||||A ||||D ||||M ||||I ||||N ||";
echo "		 ||__||||__||||__||||__||||__||||__||||__||||__||||__||||__||";
echo "		 |/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\|";
echo

sleep 1

docker rmi -f ft_phpmyadmin_image 2> /dev/null;
docker rm -f ft_phpmyadmin 2> /dev/null;
docker build ./phpmyadmin -t ft_phpmyadmin_image;


echo "					 ____  ____  ____  ____  ____ ";
echo "					||M ||||Y ||||S ||||Q ||||L ||";
echo "					||__||||__||||__||||__||||__||";
echo "					|/__\||/__\||/__\||/__\||/__\|";
echo

sleep 1

docker rmi -f ft_mysql_image 2> /dev/null;
docker rm -f ft_mysql 2> /dev/null;
docker build ./mysql/ -t ft_mysql_image;


echo "				   ____  ____  ____  ____  ____  ____  ____ ";
echo "				  ||G ||||R ||||A ||||F ||||A ||||N ||||A ||";
echo "				  ||__||||__||||__||||__||||__||||__||||__||";
echo "				  |/__\||/__\||/__\||/__\||/__\||/__\||/__\|";
echo

sleep 1

docker rmi -f ft_grafana_image 2> /dev/null;
docker rm -f ft_grafana 2> /dev/null;
docker build ./grafana -t ft_grafana_image;

echo "						   ____  ____  ____  ____ ";
echo "						  ||F ||||T ||||P ||||S ||";
echo "						  ||__||||__||||__||||__||";
echo "						  |/__\||/__\||/__\||/__\|";
echo

sleep 1

docker rmi -f ft_ftps_image 2> /dev/null;
docker rm -f ft_ftps 2> /dev/null;
docker build ./ftps -t ft_ftps_image;

echo "			   ____  ____  ____  ____  ____  ____  ____  ____ ";
echo "			  ||I ||||N ||||F ||||L ||||U ||||X ||||D ||||B ||";
echo "			  ||__||||__||||__||||__||||__||||__||||__||||__||";
echo "			  |/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\|";
echo

sleep 1

docker rmi -f ft_influxdb_image 2> /dev/null;
docker rm -f ft_influxdb 2> /dev/null;
docker build ./influxdb/ -t ft_influxdb_image;


echo "		    ____  ____  ____  ____  ____  ____  ____  ____  ____ ";
echo "		   ||W ||||O ||||R ||||D ||||P ||||R ||||E ||||S ||||S ||";
echo "		   ||__||||__||||__||||__||||__||||__||||__||||__||||__||";
echo "		   |/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\|";

sleep 1

docker rmi -f ft_wordpress_image 2> /dev/null;
docker rm -f ft_wordpress 2> /dev/null;
docker build ./wordpress -t ft_wordpress_image;