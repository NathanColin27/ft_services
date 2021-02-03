docker rmi -f ft_wordpress_image;
docker rm -f ft_wordpress;
docker build ./wordpress -t ft_wordpress_image;