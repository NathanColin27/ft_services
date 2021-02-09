docker rmi -f ft_influxdb_image;
docker rm -f ft_influxdb;
docker build ./influxdb/ -t ft_influxdb_image;