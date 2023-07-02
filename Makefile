.PHONY: postgres.up postgres.psql redis.up redis.cli

DOCKER_COMPOSE_CMD ?= $(shell command -v docker-compose 2> /dev/null)

postgres.up:
	$(DOCKER_COMPOSE_CMD) up -d postgres

postgres.psql:
	$(DOCKER_COMPOSE_CMD) exec postgres psql -U postgresql -d postgresql

redis.up:
	$(DOCKER_COMPOSE_CMD) up -d redis

redis.cli:
	$(DOCKER_COMPOSE_CMD) exec redis redis-cli
