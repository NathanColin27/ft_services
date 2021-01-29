docker rmi -f ft_mysql_image;
docker rm -f ft_mysql;
docker build . -t ft_mysql_image;
docker run -tid -p 3306:3306 --name ft_mysql ft_mysql_image;
docker exec -ti ft_mysql ash