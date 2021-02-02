docker rmi -f ft_ftps_image;
docker rm -f ft_ftps;
docker build ./ftps -t ft_ftps_image;