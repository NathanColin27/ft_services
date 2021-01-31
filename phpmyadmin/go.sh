docker rmi -f ft_phpmyadmin_image;
docker rm -f ft_phpmyadmin;
docker build ./phpmyadmin -t ft_phpmyadmin_image;
# docker run -tid -p 5000:5000 --name ft_phpmyadmin ft_phpmyadmin_image;
# docker exec -ti ft_phpmyadmin ash