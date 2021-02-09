docker rmi -f ft_nginx_image;
docker rm -f ft_nginx;
docker build ./nginx -t ft_nginx_image;
