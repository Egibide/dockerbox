help:
	@echo Opciones:
	@echo start / stop / restart / stop-all
	@echo workspace
	@echo build / build-nocache

start:
	@docker-compose up -d

stop:
	@docker-compose stop

restart: stop start

stop-all:
	@docker stop `docker ps -aq`

workspace:
	@docker-compose exec php /bin/sh

build:
	@docker-compose pull && docker-compose build --pull --parallel

build-nocache:
	@docker-compose pull && docker-compose build --pull --parallel --no-cache