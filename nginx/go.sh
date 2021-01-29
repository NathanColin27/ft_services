docker rmi -f ft_nginx_image;
docker rm -f ft_nginx;
docker build . -t ft_nginx_image;
docker run -tid -p 80:80 --name ft_nginx ft_nginx_image;
docker exec -ti ft_nginx ash