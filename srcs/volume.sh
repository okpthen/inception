mkdir -p /home/kazuhiro/Desktop/inception/data/mariadb
mkdir -p /home/kazuhiro/Desktop/inception/data/wordpress
docker compose down
docker compose build
docker compose up