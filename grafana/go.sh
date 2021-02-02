docker rmi -f ft_grafana_image;
docker rm -f ft_grafana;
docker build ./grafana -t ft_grafana_image;