docker rmi -f ft_mysql_image;
docker rm -f ft_mysql;
docker build ./mysql/ -t ft_mysql_image;
