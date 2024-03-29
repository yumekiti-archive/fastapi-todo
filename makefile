dc := docker-compose -f ./docker/docker-compose.yml

.PHONY: init
init:
	$(dc) up -d --build
	bash ./docker/mysql/sql.sh

.PHONY: up
up:
	$(dc) up -d --build
	bash ./docker/mysql/sql.sh

.PHONY: down
down:
	$(dc) down

.PHONY: restart
restart:
	$(dc) restart

.PHONY: rm
rm:
	$(dc) down --rmi all

.PHONY: logs
logs:
	$(dc) logs -f

.PHONY: db
db:
	$(dc) exec db /bin/sh
