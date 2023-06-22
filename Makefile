.PHONY: psql 

DOCKER_COMPOSE_CMD ?= $(shell command -v docker-compose 2> /dev/null)

psql:
	$(DOCKER_COMPOSE_CMD) exec postgres psql -U postgresql -d postgresql


