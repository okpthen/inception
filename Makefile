WP_PATH = /home/kazuhiro/data/wp
DB_PATH = /home/kazuhiro/data/db

all: up

up:
	@mkdir -p $(WP_PATH)
	@mkdir -p $(DB_PATH)
	@sudo chmod -R 777 $(WP_PATH)
	@sudo chmod -R 777 $(DB_PATH)
	docker compose -f srcs/docker-compose.yml up

build:
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

stop:
	docker compose -f srcs/docker-compose.yml stop

volumerm:
	@rm -rf $(WP_PATH)
	@rm -rf $(DB_PATH)
	docker volume rm wordpress
	docker volume rm mariadb

clean:
	docker rmi wordpress mariadb nginx