mkdir -p /home/kazuhiro/data/wp
mkdir -p /home/kazuhiro/data/db
docker compose down
docker compose build
docker compose up