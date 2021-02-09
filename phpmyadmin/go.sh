docker rmi -f ft_phpmyadmin_image;
docker rm -f ft_phpmyadmin;
docker build ./phpmyadmin -t ft_phpmyadmin_image;
