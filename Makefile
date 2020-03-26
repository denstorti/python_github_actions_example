DOCKER_COMPOSE_PYTHON = docker-compose run --rm python bash

build: clean
	${DOCKER_COMPOSE_PYTHON} ./scripts/build.sh

_build:
	./scripts/build.sh

clean:
	-rm -rf output/
