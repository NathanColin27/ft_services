docker rmi -f ft_server_image;
docker rm -f ft_server;
docker build . -t ft_server_image;
docker run -tid -p 80:80 --name ft_server ft_server_image;
docker exec -ti ft_server ash